//===- ExtractAPI/ExtractAPIConsumer.cpp ------------------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
///
/// \file
/// This file implements the ExtractAPIAction, and ASTConsumer to collect API
/// information.
///
//===----------------------------------------------------------------------===//

#include "clang/AST/ASTConsumer.h"
#include "clang/AST/ASTContext.h"
#include "clang/Basic/DiagnosticFrontend.h"
#include "clang/Basic/SourceLocation.h"
#include "clang/Basic/SourceManager.h"
#include "clang/Basic/TargetInfo.h"
#include "clang/ExtractAPI/API.h"
#include "clang/ExtractAPI/APIIgnoresList.h"
#include "clang/ExtractAPI/ExtractAPIVisitor.h"
#include "clang/ExtractAPI/FrontendActions.h"
#include "clang/ExtractAPI/Serialization/SymbolGraphSerializer.h"
#include "clang/Frontend/ASTConsumers.h"
#include "clang/Frontend/CompilerInstance.h"
#include "clang/Frontend/FrontendOptions.h"
#include "clang/Lex/MacroInfo.h"
#include "clang/Lex/PPCallbacks.h"
#include "clang/Lex/Preprocessor.h"
#include "clang/Lex/PreprocessorOptions.h"
#include "llvm/ADT/DenseSet.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/Support/Error.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/MemoryBuffer.h"
#include "llvm/Support/Path.h"
#include "llvm/Support/Regex.h"
#include "llvm/Support/raw_ostream.h"
#include <memory>
#include <utility>

using namespace clang;
using namespace extractapi;

namespace {

StringRef getTypedefName(const TagDecl *Decl) {
  if (const auto *TypedefDecl = Decl->getTypedefNameForAnonDecl())
    return TypedefDecl->getName();

  return {};
}

Optional<std::string> getRelativeIncludeName(const CompilerInstance &CI,
                                             StringRef File,
                                             bool *IsQuoted = nullptr) {
  assert(CI.hasFileManager() &&
         "CompilerInstance does not have a FileNamager!");

  using namespace llvm::sys;
  // Matches framework include patterns
  const llvm::Regex Rule("/(.+)\\.framework/(.+)?Headers/(.+)");

  const auto &FS = CI.getVirtualFileSystem();

  SmallString<128> FilePath(File.begin(), File.end());
  FS.makeAbsolute(FilePath);
  path::remove_dots(FilePath, true);
  FilePath = path::convert_to_slash(FilePath);
  File = FilePath;

  // Checks whether `Dir` is a strict path prefix of `File`. If so returns
  // the prefix length. Otherwise return 0.
  auto CheckDir = [&](llvm::StringRef Dir) -> unsigned {
    llvm::SmallString<32> DirPath(Dir.begin(), Dir.end());
    FS.makeAbsolute(DirPath);
    path::remove_dots(DirPath, true);
    Dir = DirPath;
    for (auto NI = path::begin(File), NE = path::end(File),
              DI = path::begin(Dir), DE = path::end(Dir);
         /*termination condition in loop*/; ++NI, ++DI) {
      // '.' components in File are ignored.
      while (NI != NE && *NI == ".")
        ++NI;
      if (NI == NE)
        break;

      // '.' components in Dir are ignored.
      while (DI != DE && *DI == ".")
        ++DI;

      // Dir is a prefix of File, up to '.' components and choice of path
      // separators.
      if (DI == DE)
        return NI - path::begin(File);

      // Consider all path separators equal.
      if (NI->size() == 1 && DI->size() == 1 &&
          path::is_separator(NI->front()) && path::is_separator(DI->front()))
        continue;

      // Special case Apple .sdk folders since the search path is typically a
      // symlink like `iPhoneSimulator14.5.sdk` while the file is instead
      // located in `iPhoneSimulator.sdk` (the real folder).
      if (NI->endswith(".sdk") && DI->endswith(".sdk")) {
        StringRef NBasename = path::stem(*NI);
        StringRef DBasename = path::stem(*DI);
        if (DBasename.startswith(NBasename))
          continue;
      }

      if (*NI != *DI)
        break;
    }
    return 0;
  };

  unsigned PrefixLength = 0;

  // Go through the search paths and find the first one that is a prefix of
  // the header.
  for (const auto &Entry : CI.getHeaderSearchOpts().UserEntries) {
    // Note whether the match is found in a quoted entry.
    if (IsQuoted)
      *IsQuoted = Entry.Group == frontend::Quoted;

    if (auto EntryFile = CI.getFileManager().getOptionalFileRef(Entry.Path)) {
      if (auto HMap = HeaderMap::Create(*EntryFile, CI.getFileManager())) {
        // If this is a headermap entry, try to reverse lookup the full path
        // for a spelled name before mapping.
        StringRef SpelledFilename = HMap->reverseLookupFilename(File);
        if (!SpelledFilename.empty())
          return SpelledFilename.str();

        // No matching mapping in this headermap, try next search entry.
        continue;
      }
    }

    // Entry is a directory search entry, try to check if it's a prefix of File.
    PrefixLength = CheckDir(Entry.Path);
    if (PrefixLength > 0) {
      // The header is found in a framework path, construct the framework-style
      // include name `<Framework/Header.h>`
      if (Entry.IsFramework) {
        SmallVector<StringRef, 4> Matches;
        Rule.match(File, &Matches);
        // Returned matches are always in stable order.
        if (Matches.size() != 4)
          return None;

        return path::convert_to_slash(
            (Matches[1].drop_front(Matches[1].rfind('/') + 1) + "/" +
             Matches[3])
                .str());
      }

      // The header is found in a normal search path, strip the search path
      // prefix to get an include name.
      return path::convert_to_slash(File.drop_front(PrefixLength));
    }
  }

  // Couldn't determine a include name, use full path instead.
  return None;
}

struct LocationFileChecker {
  bool operator()(SourceLocation Loc) {
    // If the loc refers to a macro expansion we need to first get the file
    // location of the expansion.
    auto &SM = CI.getSourceManager();
    auto FileLoc = SM.getFileLoc(Loc);
    FileID FID = SM.getFileID(FileLoc);
    if (FID.isInvalid())
      return false;

    const auto *File = SM.getFileEntryForID(FID);
    if (!File)
      return false;

    if (KnownFileEntries.count(File))
      return true;

    if (ExternalFileEntries.count(File))
      return false;

    StringRef FileName = File->tryGetRealPathName().empty()
                             ? File->getName()
                             : File->tryGetRealPathName();

    // Try to reduce the include name the same way we tried to include it.
    bool IsQuoted = false;
    if (auto IncludeName = getRelativeIncludeName(CI, FileName, &IsQuoted))
      if (llvm::find_if(KnownFiles,
                        [&IsQuoted, &IncludeName](const auto &KnownFile) {
                          return KnownFile.first.equals(*IncludeName) &&
                                 KnownFile.second == IsQuoted;
                        }) != KnownFiles.end()) {
        KnownFileEntries.insert(File);
        return true;
      }

    // Record that the file was not found to avoid future reverse lookup for
    // the same file.
    ExternalFileEntries.insert(File);
    return false;
  }

  LocationFileChecker(const CompilerInstance &CI,
                      SmallVector<std::pair<SmallString<32>, bool>> &KnownFiles)
      : CI(CI), KnownFiles(KnownFiles), ExternalFileEntries() {
    for (const auto &KnownFile : KnownFiles)
      if (auto FileEntry = CI.getFileManager().getFile(KnownFile.first))
        KnownFileEntries.insert(*FileEntry);
  }

private:
  const CompilerInstance &CI;
  SmallVector<std::pair<SmallString<32>, bool>> &KnownFiles;
  llvm::DenseSet<const FileEntry *> KnownFileEntries;
  llvm::DenseSet<const FileEntry *> ExternalFileEntries;
};

class ExtractAPIConsumer : public ASTConsumer {
public:
  ExtractAPIConsumer(ASTContext &Context,
                     std::unique_ptr<LocationFileChecker> LCF, APISet &API)
      : Visitor(Context, *LCF, API), LCF(std::move(LCF)) {}

  void HandleTranslationUnit(ASTContext &Context) override {
    // Use ExtractAPIVisitor to traverse symbol declarations in the context.
    Visitor.TraverseDecl(Context.getTranslationUnitDecl());
  }

private:
  ExtractAPIVisitor Visitor;
  std::unique_ptr<LocationFileChecker> LCF;
};

class MacroCallback : public PPCallbacks {
public:
  MacroCallback(const SourceManager &SM, LocationFileChecker &LCF, APISet &API,
                Preprocessor &PP)
      : SM(SM), LCF(LCF), API(API), PP(PP) {}

  void MacroDefined(const Token &MacroNameToken,
                    const MacroDirective *MD) override {
    auto *MacroInfo = MD->getMacroInfo();

    if (MacroInfo->isBuiltinMacro())
      return;

    auto SourceLoc = MacroNameToken.getLocation();
    if (SM.isWrittenInBuiltinFile(SourceLoc) ||
        SM.isWrittenInCommandLineFile(SourceLoc))
      return;

    PendingMacros.emplace_back(MacroNameToken, MD);
  }

  // If a macro gets undefined at some point during preprocessing of the inputs
  // it means that it isn't an exposed API and we should therefore not add a
  // macro definition for it.
  void MacroUndefined(const Token &MacroNameToken, const MacroDefinition &MD,
                      const MacroDirective *Undef) override {
    // If this macro wasn't previously defined we don't need to do anything
    // here.
    if (!Undef)
      return;

    llvm::erase_if(PendingMacros, [&MD, this](const PendingMacro &PM) {
      return MD.getMacroInfo()->isIdenticalTo(*PM.MD->getMacroInfo(), PP,
                                              /*Syntactically*/ false);
    });
  }

  void EndOfMainFile() override {
    for (auto &PM : PendingMacros) {
      // `isUsedForHeaderGuard` is only set when the preprocessor leaves the
      // file so check for it here.
      if (PM.MD->getMacroInfo()->isUsedForHeaderGuard())
        continue;

      if (!LCF(PM.MacroNameToken.getLocation()))
        continue;

      StringRef Name = PM.MacroNameToken.getIdentifierInfo()->getName();
      PresumedLoc Loc = SM.getPresumedLoc(PM.MacroNameToken.getLocation());
      StringRef USR =
          API.recordUSRForMacro(Name, PM.MacroNameToken.getLocation(), SM);

      API.addMacroDefinition(
          Name, USR, Loc,
          DeclarationFragmentsBuilder::getFragmentsForMacro(Name, PM.MD),
          DeclarationFragmentsBuilder::getSubHeadingForMacro(Name),
          SM.isInSystemHeader(PM.MacroNameToken.getLocation()));
    }

    PendingMacros.clear();
  }

private:
  struct PendingMacro {
    Token MacroNameToken;
    const MacroDirective *MD;

    PendingMacro(const Token &MacroNameToken, const MacroDirective *MD)
        : MacroNameToken(MacroNameToken), MD(MD) {}
  };

  const SourceManager &SM;
  LocationFileChecker &LCF;
  APISet &API;
  Preprocessor &PP;
  llvm::SmallVector<PendingMacro> PendingMacros;
};

} // namespace

std::unique_ptr<ASTConsumer>
ExtractAPIAction::CreateASTConsumer(CompilerInstance &CI, StringRef InFile) {
  OS = CreateOutputFile(CI, InFile);
  if (!OS)
    return nullptr;

  auto ProductName = CI.getFrontendOpts().ProductName;

  // Now that we have enough information about the language options and the
  // target triple, let's create the APISet before anyone uses it.
  API = std::make_unique<APISet>(
      CI.getTarget().getTriple(),
      CI.getFrontendOpts().Inputs.back().getKind().getLanguage(), ProductName);

  auto LCF = std::make_unique<LocationFileChecker>(CI, KnownInputFiles);

  CI.getPreprocessor().addPPCallbacks(std::make_unique<MacroCallback>(
      CI.getSourceManager(), *LCF, *API, CI.getPreprocessor()));

  if (!CI.getFrontendOpts().ExtractAPIIgnoresFile.empty()) {
    llvm::handleAllErrors(
        APIIgnoresList::create(CI.getFrontendOpts().ExtractAPIIgnoresFile,
                               CI.getFileManager())
            .moveInto(IgnoresList),
        [&CI](const IgnoresFileNotFound &Err) {
          CI.getDiagnostics().Report(
              diag::err_extract_api_ignores_file_not_found)
              << Err.Path;
        });
  }

  return std::make_unique<ExtractAPIConsumer>(CI.getASTContext(),
                                              std::move(LCF), *API);
}

bool ExtractAPIAction::PrepareToExecuteAction(CompilerInstance &CI) {
  auto &Inputs = CI.getFrontendOpts().Inputs;
  if (Inputs.empty())
    return true;

  if (!CI.hasFileManager())
    if (!CI.createFileManager())
      return false;

  auto Kind = Inputs[0].getKind();

  // Convert the header file inputs into a single input buffer.
  SmallString<256> HeaderContents;
  bool IsQuoted = false;
  for (const FrontendInputFile &FIF : Inputs) {
    if (Kind.isObjectiveC())
      HeaderContents += "#import";
    else
      HeaderContents += "#include";

    StringRef FilePath = FIF.getFile();
    if (auto RelativeName = getRelativeIncludeName(CI, FilePath, &IsQuoted)) {
      if (IsQuoted)
        HeaderContents += " \"";
      else
        HeaderContents += " <";

      HeaderContents += *RelativeName;

      if (IsQuoted)
        HeaderContents += "\"\n";
      else
        HeaderContents += ">\n";
      KnownInputFiles.emplace_back(static_cast<SmallString<32>>(*RelativeName),
                                   IsQuoted);
    } else {
      HeaderContents += " \"";
      HeaderContents += FilePath;
      HeaderContents += "\"\n";
      KnownInputFiles.emplace_back(FilePath, true);
    }
  }

  if (CI.getHeaderSearchOpts().Verbose)
    CI.getVerboseOutputStream() << getInputBufferName() << ":\n"
                                << HeaderContents << "\n";

  Buffer = llvm::MemoryBuffer::getMemBufferCopy(HeaderContents,
                                                getInputBufferName());

  // Set that buffer up as our "real" input in the CompilerInstance.
  Inputs.clear();
  Inputs.emplace_back(Buffer->getMemBufferRef(), Kind, /*IsSystem*/ false);

  return true;
}

void ExtractAPIAction::EndSourceFileAction() {
  if (!OS)
    return;

  // Setup a SymbolGraphSerializer to write out collected API information in
  // the Symbol Graph format.
  // FIXME: Make the kind of APISerializer configurable.
  SymbolGraphSerializer SGSerializer(*API, IgnoresList);
  SGSerializer.serialize(*OS);
  OS.reset();
}

std::unique_ptr<raw_pwrite_stream>
ExtractAPIAction::CreateOutputFile(CompilerInstance &CI, StringRef InFile) {
  std::unique_ptr<raw_pwrite_stream> OS =
      CI.createDefaultOutputFile(/*Binary=*/false, InFile, /*Extension=*/"json",
                                 /*RemoveFileOnSignal=*/false);
  if (!OS)
    return nullptr;
  return OS;
}
