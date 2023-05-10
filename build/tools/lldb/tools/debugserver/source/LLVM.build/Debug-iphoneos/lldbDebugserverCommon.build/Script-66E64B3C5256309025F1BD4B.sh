#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/tools/lldb/tools/debugserver/source
  mig -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS16.4.sdk /Users/bangcle/apple-llvm-project_ios/lldb/tools/debugserver/source/MacOSX/dbgnub-mig.defs
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/tools/lldb/tools/debugserver/source
  mig -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS16.4.sdk /Users/bangcle/apple-llvm-project_ios/lldb/tools/debugserver/source/MacOSX/dbgnub-mig.defs
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/tools/lldb/tools/debugserver/source
  mig -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS16.4.sdk /Users/bangcle/apple-llvm-project_ios/lldb/tools/debugserver/source/MacOSX/dbgnub-mig.defs
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/bangcle/apple-llvm-project_ios/build/tools/lldb/tools/debugserver/source
  mig -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS16.4.sdk /Users/bangcle/apple-llvm-project_ios/lldb/tools/debugserver/source/MacOSX/dbgnub-mig.defs
fi

