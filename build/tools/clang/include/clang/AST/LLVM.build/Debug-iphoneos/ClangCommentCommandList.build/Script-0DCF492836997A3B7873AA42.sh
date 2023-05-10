#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/tools/clang/include/clang/AST
  /Users/bangcle/apple-llvm-project_ios/build/NATIVE/Release/bin/clang-tblgen -gen-clang-comment-command-list -I /Users/bangcle/apple-llvm-project_ios/clang/include/clang/AST -I/Users/bangcle/apple-llvm-project_ios/clang/include -I/Users/bangcle/apple-llvm-project_ios/build/tools/clang/include -I/Users/bangcle/apple-llvm-project_ios/build/include -I/Users/bangcle/apple-llvm-project_ios/llvm/include /Users/bangcle/apple-llvm-project_ios/clang/include/clang/AST/CommentCommands.td --write-if-changed -o /Users/bangcle/apple-llvm-project_ios/build/tools/clang/include/clang/AST/CommentCommandList.inc
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/tools/clang/include/clang/AST
  /Users/bangcle/apple-llvm-project_ios/build/NATIVE/Release/bin/clang-tblgen -gen-clang-comment-command-list -I /Users/bangcle/apple-llvm-project_ios/clang/include/clang/AST -I/Users/bangcle/apple-llvm-project_ios/clang/include -I/Users/bangcle/apple-llvm-project_ios/build/tools/clang/include -I/Users/bangcle/apple-llvm-project_ios/build/include -I/Users/bangcle/apple-llvm-project_ios/llvm/include /Users/bangcle/apple-llvm-project_ios/clang/include/clang/AST/CommentCommands.td --write-if-changed -o /Users/bangcle/apple-llvm-project_ios/build/tools/clang/include/clang/AST/CommentCommandList.inc
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/tools/clang/include/clang/AST
  /Users/bangcle/apple-llvm-project_ios/build/NATIVE/Release/bin/clang-tblgen -gen-clang-comment-command-list -I /Users/bangcle/apple-llvm-project_ios/clang/include/clang/AST -I/Users/bangcle/apple-llvm-project_ios/clang/include -I/Users/bangcle/apple-llvm-project_ios/build/tools/clang/include -I/Users/bangcle/apple-llvm-project_ios/build/include -I/Users/bangcle/apple-llvm-project_ios/llvm/include /Users/bangcle/apple-llvm-project_ios/clang/include/clang/AST/CommentCommands.td --write-if-changed -o /Users/bangcle/apple-llvm-project_ios/build/tools/clang/include/clang/AST/CommentCommandList.inc
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/tools/clang/include/clang/AST
  /Users/bangcle/apple-llvm-project_ios/build/NATIVE/Release/bin/clang-tblgen -gen-clang-comment-command-list -I /Users/bangcle/apple-llvm-project_ios/clang/include/clang/AST -I/Users/bangcle/apple-llvm-project_ios/clang/include -I/Users/bangcle/apple-llvm-project_ios/build/tools/clang/include -I/Users/bangcle/apple-llvm-project_ios/build/include -I/Users/bangcle/apple-llvm-project_ios/llvm/include /Users/bangcle/apple-llvm-project_ios/clang/include/clang/AST/CommentCommands.td --write-if-changed -o /Users/bangcle/apple-llvm-project_ios/build/tools/clang/include/clang/AST/CommentCommandList.inc
fi

