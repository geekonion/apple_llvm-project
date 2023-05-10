# Install script for directory: /Users/bangcle/apple-llvm-project_ios/clang/lib/Headers

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
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

set(CMAKE_BINARY_DIR "/Users/bangcle/apple-llvm-project_ios/build")

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "clang-resource-headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/builtins.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/float.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/inttypes.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/iso646.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/limits.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/module.modulemap"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/stdalign.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/stdarg.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/stdatomic.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/stdbool.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/stddef.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__stddef_max_align_t.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/stdint.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/stdnoreturn.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/tgmath.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/unwind.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/varargs.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/arm_acle.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/arm_cmse.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/armintr.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/arm64intr.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_builtin_vars.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_math.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_cmath.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_complex_builtins.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_device_functions.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_intrinsics.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_texture_intrinsics.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_libdevice_declares.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_math_forward_declares.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_runtime_wrapper.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/hexagon_circ_brev_intrinsics.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/hexagon_protos.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/hexagon_types.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/hvx_hexagon_protos.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_hip_libdevice_declares.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_hip_cmath.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_hip_math.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_hip_runtime_wrapper.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/msa.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/opencl-c.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/opencl-c-base.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/altivec.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/htmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/htmxlintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/s390intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/vecintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/velintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/velintrin_gen.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/velintrin_approx.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/adxintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ammintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/amxintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx2intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512bf16intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512bitalgintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512bwintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512cdintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512dqintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512erintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512fintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512fp16intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512ifmaintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512ifmavlintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512pfintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vbmi2intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vbmiintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vbmivlintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlbf16intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlbitalgintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlbwintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlcdintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vldqintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlfp16intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlvbmi2intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlvnniintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlvp2intersectintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vnniintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vp2intersectintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vpopcntdqintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vpopcntdqvlintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avxintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avxvnniintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/bmi2intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/bmiintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/cetintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/cldemoteintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/clflushoptintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/clwbintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/clzerointrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/crc32intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/emmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/enqcmdintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/f16cintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/fma4intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/fmaintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/fxsrintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/gfniintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/hresetintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ia32intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/immintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/invpcidintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/keylockerintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/lwpintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/lzcntintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/mm3dnow.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/mmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/movdirintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/mwaitxintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/nmmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/pconfigintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/pkuintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/pmmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/popcntintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/prfchwintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ptrauth.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ptwriteintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/rdseedintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/rtmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/serializeintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/sgxintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/shaintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/smmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/tbmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/tmmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/tsxldtrkintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/uintrintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/vaesintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/vpclmulqdqintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/waitpkgintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/wbnoinvdintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__wmmintrin_aes.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/wmmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__wmmintrin_pclmul.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/x86gprintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/x86intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/xmmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/xopintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/xsavecintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/xsaveintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/xsaveoptintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/xsavesintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/xtestintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/cet.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/cpuid.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/wasm_simd128.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/vadefs.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/mm_malloc.h"
    "/Users/bangcle/apple-llvm-project_ios/build/tools/clang/lib/Headers/arm_neon.h"
    "/Users/bangcle/apple-llvm-project_ios/build/tools/clang/lib/Headers/arm_fp16.h"
    "/Users/bangcle/apple-llvm-project_ios/build/tools/clang/lib/Headers/arm_sve.h"
    "/Users/bangcle/apple-llvm-project_ios/build/tools/clang/lib/Headers/arm_bf16.h"
    "/Users/bangcle/apple-llvm-project_ios/build/tools/clang/lib/Headers/arm_mve.h"
    "/Users/bangcle/apple-llvm-project_ios/build/tools/clang/lib/Headers/arm_cde.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "clang-resource-headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include/cuda_wrappers" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/cuda_wrappers/algorithm"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/cuda_wrappers/complex"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/cuda_wrappers/new"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "clang-resource-headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include/ppc_wrappers" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/mmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/xmmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/mm_malloc.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/emmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/pmmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/tmmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/smmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/bmiintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/bmi2intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/immintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/x86intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/x86gprintrin.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "clang-resource-headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include/openmp_wrappers" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/openmp_wrappers/math.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/openmp_wrappers/cmath"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/openmp_wrappers/complex.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/openmp_wrappers/complex"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/openmp_wrappers/__clang_openmp_device_functions.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/openmp_wrappers/complex_cmath.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/openmp_wrappers/new"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "core-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/builtins.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/float.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/inttypes.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/iso646.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/limits.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/module.modulemap"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/stdalign.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/stdarg.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/stdatomic.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/stdbool.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/stddef.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__stddef_max_align_t.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/stdint.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/stdnoreturn.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/tgmath.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/unwind.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/varargs.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "arm-common-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/arm_acle.h"
    "/Users/bangcle/apple-llvm-project_ios/build/tools/clang/lib/Headers/arm_neon.h"
    "/Users/bangcle/apple-llvm-project_ios/build/tools/clang/lib/Headers/arm_fp16.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "arm-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/arm_cmse.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/armintr.h"
    "/Users/bangcle/apple-llvm-project_ios/build/tools/clang/lib/Headers/arm_mve.h"
    "/Users/bangcle/apple-llvm-project_ios/build/tools/clang/lib/Headers/arm_cde.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "aarch64-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/arm64intr.h"
    "/Users/bangcle/apple-llvm-project_ios/build/tools/clang/lib/Headers/arm_sve.h"
    "/Users/bangcle/apple-llvm-project_ios/build/tools/clang/lib/Headers/arm_bf16.h"
    "/Users/bangcle/apple-llvm-project_ios/build/$(CONFIGURATION)$(EFFECTIVE_PLATFORM_NAME)/lib/clang/15.0.0/include/arm_neon_sve_bridge.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "cuda-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include/cuda_wrappers" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/cuda_wrappers/algorithm"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/cuda_wrappers/complex"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/cuda_wrappers/new"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "cuda-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_builtin_vars.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_math.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_cmath.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_complex_builtins.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_device_functions.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_intrinsics.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_texture_intrinsics.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_libdevice_declares.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_math_forward_declares.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_cuda_runtime_wrapper.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "hexagon-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/hexagon_circ_brev_intrinsics.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/hexagon_protos.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/hexagon_types.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/hvx_hexagon_protos.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "hip-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_hip_libdevice_declares.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_hip_cmath.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_hip_math.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__clang_hip_runtime_wrapper.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "mips-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include" TYPE FILE FILES "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/msa.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ppc-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include/ppc_wrappers" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/mmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/xmmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/mm_malloc.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/emmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/pmmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/tmmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/smmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/bmiintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/bmi2intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/immintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/x86intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ppc_wrappers/x86gprintrin.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ppc-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/altivec.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/htmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/htmxlintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/mm_malloc.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "systemz-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/s390intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/vecintrin.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ve-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/velintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/velintrin_gen.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/velintrin_approx.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "webassembly-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include" TYPE FILE FILES "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/wasm_simd128.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "x86-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/adxintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ammintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/amxintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx2intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512bf16intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512bitalgintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512bwintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512cdintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512dqintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512erintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512fintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512fp16intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512ifmaintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512ifmavlintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512pfintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vbmi2intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vbmiintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vbmivlintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlbf16intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlbitalgintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlbwintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlcdintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vldqintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlfp16intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlvbmi2intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlvnniintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vlvp2intersectintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vnniintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vp2intersectintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vpopcntdqintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avx512vpopcntdqvlintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avxintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/avxvnniintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/bmi2intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/bmiintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/cetintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/cldemoteintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/clflushoptintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/clwbintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/clzerointrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/crc32intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/emmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/enqcmdintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/f16cintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/fma4intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/fmaintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/fxsrintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/gfniintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/hresetintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ia32intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/immintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/invpcidintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/keylockerintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/lwpintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/lzcntintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/mm3dnow.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/mmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/movdirintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/mwaitxintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/nmmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/pconfigintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/pkuintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/pmmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/popcntintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/prfchwintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ptrauth.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/ptwriteintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/rdseedintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/rtmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/serializeintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/sgxintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/shaintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/smmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/tbmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/tmmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/tsxldtrkintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/uintrintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/vaesintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/vpclmulqdqintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/waitpkgintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/wbnoinvdintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__wmmintrin_aes.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/wmmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/__wmmintrin_pclmul.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/x86gprintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/x86intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/xmmintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/xopintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/xsavecintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/xsaveintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/xsaveoptintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/xsavesintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/xtestintrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/cet.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/cpuid.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "opencl-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/opencl-c.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/opencl-c-base.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "openmp-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include/openmp_wrappers" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/openmp_wrappers/math.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/openmp_wrappers/cmath"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/openmp_wrappers/complex.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/openmp_wrappers/complex"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/openmp_wrappers/__clang_openmp_device_functions.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/openmp_wrappers/complex_cmath.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/openmp_wrappers/new"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "utility-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include" TYPE FILE FILES "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/mm_malloc.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "windows-resource-headers")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/15.0.0/include" TYPE FILE FILES
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/intrin.h"
    "/Users/bangcle/apple-llvm-project_ios/clang/lib/Headers/vadefs.h"
    )
endif()

