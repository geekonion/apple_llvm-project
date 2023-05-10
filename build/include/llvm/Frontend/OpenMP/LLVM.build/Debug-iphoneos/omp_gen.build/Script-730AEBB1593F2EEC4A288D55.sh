#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/include/llvm/Frontend/OpenMP
  /Users/bangcle/apple-llvm-project_ios/build/NATIVE/Release/bin/llvm-tblgen --gen-directive-decl -I /Users/bangcle/apple-llvm-project_ios/llvm/include/llvm/Frontend/OpenMP -I/Users/bangcle/apple-llvm-project_ios/build/include -I/Users/bangcle/apple-llvm-project_ios/llvm/include /Users/bangcle/apple-llvm-project_ios/llvm/include/llvm/Frontend/OpenMP/OMP.td --write-if-changed -o /Users/bangcle/apple-llvm-project_ios/build/include/llvm/Frontend/OpenMP/OMP.h.inc
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/include/llvm/Frontend/OpenMP
  /Users/bangcle/apple-llvm-project_ios/build/NATIVE/Release/bin/llvm-tblgen --gen-directive-decl -I /Users/bangcle/apple-llvm-project_ios/llvm/include/llvm/Frontend/OpenMP -I/Users/bangcle/apple-llvm-project_ios/build/include -I/Users/bangcle/apple-llvm-project_ios/llvm/include /Users/bangcle/apple-llvm-project_ios/llvm/include/llvm/Frontend/OpenMP/OMP.td --write-if-changed -o /Users/bangcle/apple-llvm-project_ios/build/include/llvm/Frontend/OpenMP/OMP.h.inc
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/include/llvm/Frontend/OpenMP
  /Users/bangcle/apple-llvm-project_ios/build/NATIVE/Release/bin/llvm-tblgen --gen-directive-decl -I /Users/bangcle/apple-llvm-project_ios/llvm/include/llvm/Frontend/OpenMP -I/Users/bangcle/apple-llvm-project_ios/build/include -I/Users/bangcle/apple-llvm-project_ios/llvm/include /Users/bangcle/apple-llvm-project_ios/llvm/include/llvm/Frontend/OpenMP/OMP.td --write-if-changed -o /Users/bangcle/apple-llvm-project_ios/build/include/llvm/Frontend/OpenMP/OMP.h.inc
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/include/llvm/Frontend/OpenMP
  /Users/bangcle/apple-llvm-project_ios/build/NATIVE/Release/bin/llvm-tblgen --gen-directive-decl -I /Users/bangcle/apple-llvm-project_ios/llvm/include/llvm/Frontend/OpenMP -I/Users/bangcle/apple-llvm-project_ios/build/include -I/Users/bangcle/apple-llvm-project_ios/llvm/include /Users/bangcle/apple-llvm-project_ios/llvm/include/llvm/Frontend/OpenMP/OMP.td --write-if-changed -o /Users/bangcle/apple-llvm-project_ios/build/include/llvm/Frontend/OpenMP/OMP.h.inc
fi

