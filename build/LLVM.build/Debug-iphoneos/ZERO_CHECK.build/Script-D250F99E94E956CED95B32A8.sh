#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build
  make -f /Users/bangcle/apple-llvm-project_ios/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build
  make -f /Users/bangcle/apple-llvm-project_ios/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build
  make -f /Users/bangcle/apple-llvm-project_ios/build/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build
  make -f /Users/bangcle/apple-llvm-project_ios/build/CMakeScripts/ReRunCMake.make
fi

