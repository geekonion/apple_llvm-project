# Install script for directory: /Users/bangcle/apple-llvm-project_ios/lldb/source/API

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

set(CMAKE_BINARY_DIR "/Users/bangcle/apple-llvm-project_ios/build/NATIVE")

if(NOT PLATFORM_NAME)
  if(NOT "$ENV{PLATFORM_NAME}" STREQUAL "")
    set(PLATFORM_NAME "$ENV{PLATFORM_NAME}")
  endif()
  if(NOT PLATFORM_NAME)
    set(PLATFORM_NAME iphoneos)
  endif()
endif()

if(NOT EFFECTIVE_PLATFORM_NAME)
  if(NOT "$ENV{EFFECTIVE_PLATFORM_NAME}" STREQUAL "")
    set(EFFECTIVE_PLATFORM_NAME "$ENV{EFFECTIVE_PLATFORM_NAME}")
  endif()
  if(NOT EFFECTIVE_PLATFORM_NAME)
    set(EFFECTIVE_PLATFORM_NAME -iphoneos)
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "liblldb" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/bangcle/apple-llvm-project_ios/build/NATIVE/Debug/lib/liblldb.15.0.0git.dylib")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.15.0.0git.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.15.0.0git.dylib")
      execute_process(COMMAND /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/install_name_tool
        -delete_rpath "/Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.9/lib"
        -add_rpath "@loader_path/../../../../../../../../Library/Frameworks/"
        -add_rpath "@loader_path/../../../../../Developer/Library/Frameworks/"
        -add_rpath "@loader_path/../../../../Developer/Library/Frameworks/"
        -add_rpath "@loader_path/../../../../Frameworks"
        -add_rpath "@loader_path/../../../"
        -add_rpath "/Library/Developer/CommandLineTools/Library/Frameworks"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.15.0.0git.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.15.0.0git.dylib")
      endif()
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/bangcle/apple-llvm-project_ios/build/NATIVE/Release/lib/liblldb.15.0.0git.dylib")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.15.0.0git.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.15.0.0git.dylib")
      execute_process(COMMAND /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/install_name_tool
        -delete_rpath "/Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.9/lib"
        -add_rpath "@loader_path/../../../../../../../../Library/Frameworks/"
        -add_rpath "@loader_path/../../../../../Developer/Library/Frameworks/"
        -add_rpath "@loader_path/../../../../Developer/Library/Frameworks/"
        -add_rpath "@loader_path/../../../../Frameworks"
        -add_rpath "@loader_path/../../../"
        -add_rpath "/Library/Developer/CommandLineTools/Library/Frameworks"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.15.0.0git.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.15.0.0git.dylib")
      endif()
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/bangcle/apple-llvm-project_ios/build/NATIVE/MinSizeRel/lib/liblldb.15.0.0git.dylib")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.15.0.0git.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.15.0.0git.dylib")
      execute_process(COMMAND /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/install_name_tool
        -delete_rpath "/Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.9/lib"
        -add_rpath "@loader_path/../../../../../../../../Library/Frameworks/"
        -add_rpath "@loader_path/../../../../../Developer/Library/Frameworks/"
        -add_rpath "@loader_path/../../../../Developer/Library/Frameworks/"
        -add_rpath "@loader_path/../../../../Frameworks"
        -add_rpath "@loader_path/../../../"
        -add_rpath "/Library/Developer/CommandLineTools/Library/Frameworks"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.15.0.0git.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.15.0.0git.dylib")
      endif()
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/bangcle/apple-llvm-project_ios/build/NATIVE/RelWithDebInfo/lib/liblldb.15.0.0git.dylib")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.15.0.0git.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.15.0.0git.dylib")
      execute_process(COMMAND /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/install_name_tool
        -delete_rpath "/Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.9/lib"
        -add_rpath "@loader_path/../../../../../../../../Library/Frameworks/"
        -add_rpath "@loader_path/../../../../../Developer/Library/Frameworks/"
        -add_rpath "@loader_path/../../../../Developer/Library/Frameworks/"
        -add_rpath "@loader_path/../../../../Frameworks"
        -add_rpath "@loader_path/../../../"
        -add_rpath "/Library/Developer/CommandLineTools/Library/Frameworks"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.15.0.0git.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.15.0.0git.dylib")
      endif()
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "liblldb" OR NOT CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/bangcle/apple-llvm-project_ios/build/NATIVE/Debug/lib/liblldb.dylib")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.dylib")
      execute_process(COMMAND /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/install_name_tool
        -delete_rpath "/Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.9/lib"
        -add_rpath "@loader_path/../../../../../../../../Library/Frameworks/"
        -add_rpath "@loader_path/../../../../../Developer/Library/Frameworks/"
        -add_rpath "@loader_path/../../../../Developer/Library/Frameworks/"
        -add_rpath "@loader_path/../../../../Frameworks"
        -add_rpath "@loader_path/../../../"
        -add_rpath "/Library/Developer/CommandLineTools/Library/Frameworks"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.dylib")
      endif()
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/bangcle/apple-llvm-project_ios/build/NATIVE/Release/lib/liblldb.dylib")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.dylib")
      execute_process(COMMAND /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/install_name_tool
        -delete_rpath "/Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.9/lib"
        -add_rpath "@loader_path/../../../../../../../../Library/Frameworks/"
        -add_rpath "@loader_path/../../../../../Developer/Library/Frameworks/"
        -add_rpath "@loader_path/../../../../Developer/Library/Frameworks/"
        -add_rpath "@loader_path/../../../../Frameworks"
        -add_rpath "@loader_path/../../../"
        -add_rpath "/Library/Developer/CommandLineTools/Library/Frameworks"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.dylib")
      endif()
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/bangcle/apple-llvm-project_ios/build/NATIVE/MinSizeRel/lib/liblldb.dylib")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.dylib")
      execute_process(COMMAND /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/install_name_tool
        -delete_rpath "/Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.9/lib"
        -add_rpath "@loader_path/../../../../../../../../Library/Frameworks/"
        -add_rpath "@loader_path/../../../../../Developer/Library/Frameworks/"
        -add_rpath "@loader_path/../../../../Developer/Library/Frameworks/"
        -add_rpath "@loader_path/../../../../Frameworks"
        -add_rpath "@loader_path/../../../"
        -add_rpath "/Library/Developer/CommandLineTools/Library/Frameworks"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.dylib")
      endif()
    endif()
  elseif(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/bangcle/apple-llvm-project_ios/build/NATIVE/RelWithDebInfo/lib/liblldb.dylib")
    if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.dylib" AND
       NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.dylib")
      execute_process(COMMAND /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/install_name_tool
        -delete_rpath "/Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.9/lib"
        -add_rpath "@loader_path/../../../../../../../../Library/Frameworks/"
        -add_rpath "@loader_path/../../../../../Developer/Library/Frameworks/"
        -add_rpath "@loader_path/../../../../Developer/Library/Frameworks/"
        -add_rpath "@loader_path/../../../../Frameworks"
        -add_rpath "@loader_path/../../../"
        -add_rpath "/Library/Developer/CommandLineTools/Library/Frameworks"
        "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.dylib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblldb.dylib")
      endif()
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(MAKE_DIRECTORY /Users/bangcle/apple-llvm-project_ios/build/NATIVE/$(CONFIGURATION)$(EFFECTIVE_PLATFORM_NAME)/lib/lldb)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/lldb/" TYPE DIRECTORY FILES "/Users/bangcle/apple-llvm-project_ios/build/NATIVE/$(CONFIGURATION)$(EFFECTIVE_PLATFORM_NAME)/lib/lldb/clang")
endif()

