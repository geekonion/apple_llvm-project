# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/bangcle/apple-llvm-project_ios/llvm/runtimes/../../runtimes"
  "/Users/bangcle/apple-llvm-project_ios/build/runtimes/runtimes-bins"
  "/Users/bangcle/apple-llvm-project_ios/build/projects/runtimes"
  "/Users/bangcle/apple-llvm-project_ios/build/projects/runtimes/tmp"
  "/Users/bangcle/apple-llvm-project_ios/build/runtimes/runtimes-stamps"
  "/Users/bangcle/apple-llvm-project_ios/build/projects/runtimes/src"
  "/Users/bangcle/apple-llvm-project_ios/build/runtimes/runtimes-stamps"
)

set(configSubDirs Debug;Release;MinSizeRel;RelWithDebInfo)
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/bangcle/apple-llvm-project_ios/build/runtimes/runtimes-stamps/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/bangcle/apple-llvm-project_ios/build/runtimes/runtimes-stamps${cfgdir}") # cfgdir has leading slash
endif()
