#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/tools/clang/include/clang/Sema
  /Users/bangcle/apple-llvm-project_ios/build/NATIVE/Release/bin/clang-tblgen -gen-clang-attr-parsed-attr-kinds -I /Users/bangcle/apple-llvm-project_ios/clang/include/clang/Sema/../../ -I /Users/bangcle/apple-llvm-project_ios/clang/include/clang/Sema -I/Users/bangcle/apple-llvm-project_ios/clang/include -I/Users/bangcle/apple-llvm-project_ios/build/tools/clang/include -I/Users/bangcle/apple-llvm-project_ios/build/include -I/Users/bangcle/apple-llvm-project_ios/llvm/include /Users/bangcle/apple-llvm-project_ios/clang/include/clang/Sema/../Basic/Attr.td --write-if-changed -o /Users/bangcle/apple-llvm-project_ios/build/tools/clang/include/clang/Sema/AttrParsedAttrKinds.inc
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/tools/clang/include/clang/Sema
  /Users/bangcle/apple-llvm-project_ios/build/NATIVE/Release/bin/clang-tblgen -gen-clang-attr-parsed-attr-kinds -I /Users/bangcle/apple-llvm-project_ios/clang/include/clang/Sema/../../ -I /Users/bangcle/apple-llvm-project_ios/clang/include/clang/Sema -I/Users/bangcle/apple-llvm-project_ios/clang/include -I/Users/bangcle/apple-llvm-project_ios/build/tools/clang/include -I/Users/bangcle/apple-llvm-project_ios/build/include -I/Users/bangcle/apple-llvm-project_ios/llvm/include /Users/bangcle/apple-llvm-project_ios/clang/include/clang/Sema/../Basic/Attr.td --write-if-changed -o /Users/bangcle/apple-llvm-project_ios/build/tools/clang/include/clang/Sema/AttrParsedAttrKinds.inc
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/tools/clang/include/clang/Sema
  /Users/bangcle/apple-llvm-project_ios/build/NATIVE/Release/bin/clang-tblgen -gen-clang-attr-parsed-attr-kinds -I /Users/bangcle/apple-llvm-project_ios/clang/include/clang/Sema/../../ -I /Users/bangcle/apple-llvm-project_ios/clang/include/clang/Sema -I/Users/bangcle/apple-llvm-project_ios/clang/include -I/Users/bangcle/apple-llvm-project_ios/build/tools/clang/include -I/Users/bangcle/apple-llvm-project_ios/build/include -I/Users/bangcle/apple-llvm-project_ios/llvm/include /Users/bangcle/apple-llvm-project_ios/clang/include/clang/Sema/../Basic/Attr.td --write-if-changed -o /Users/bangcle/apple-llvm-project_ios/build/tools/clang/include/clang/Sema/AttrParsedAttrKinds.inc
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/tools/clang/include/clang/Sema
  /Users/bangcle/apple-llvm-project_ios/build/NATIVE/Release/bin/clang-tblgen -gen-clang-attr-parsed-attr-kinds -I /Users/bangcle/apple-llvm-project_ios/clang/include/clang/Sema/../../ -I /Users/bangcle/apple-llvm-project_ios/clang/include/clang/Sema -I/Users/bangcle/apple-llvm-project_ios/clang/include -I/Users/bangcle/apple-llvm-project_ios/build/tools/clang/include -I/Users/bangcle/apple-llvm-project_ios/build/include -I/Users/bangcle/apple-llvm-project_ios/llvm/include /Users/bangcle/apple-llvm-project_ios/clang/include/clang/Sema/../Basic/Attr.td --write-if-changed -o /Users/bangcle/apple-llvm-project_ios/build/tools/clang/include/clang/Sema/AttrParsedAttrKinds.inc
fi

