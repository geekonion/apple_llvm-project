#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/NATIVE
  /Applications/CMake.app/Contents/bin/cmake --build /Users/bangcle/apple-llvm-project_ios/build/NATIVE --target llvm-tblgen --config Release
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/NATIVE
  /Applications/CMake.app/Contents/bin/cmake --build /Users/bangcle/apple-llvm-project_ios/build/NATIVE --target llvm-tblgen --config Release
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/NATIVE
  /Applications/CMake.app/Contents/bin/cmake --build /Users/bangcle/apple-llvm-project_ios/build/NATIVE --target llvm-tblgen --config Release
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/NATIVE
  /Applications/CMake.app/Contents/bin/cmake --build /Users/bangcle/apple-llvm-project_ios/build/NATIVE --target llvm-tblgen --config Release
fi

