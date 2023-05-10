#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build
  /Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/bangcle/apple-llvm-project_ios/build/NATIVE
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build
  /Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/bangcle/apple-llvm-project_ios/build/NATIVE
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build
  /Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/bangcle/apple-llvm-project_ios/build/NATIVE
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build
  /Applications/CMake.app/Contents/bin/cmake -E make_directory /Users/bangcle/apple-llvm-project_ios/build/NATIVE
fi

