# Copyright (c) 2022, Acceleration Robotics. All Rights Reserved.
#
# Fix NVIDIA's OpenCV macros with regard CUDA
#
# Shortly, NVIDIA OpenCV's CMake infrastructure has been hacked
# to force CUDA. This leads to a number of inconsistencies while
# cross-compiling which is widely reported (and still creating 
# issues!). This CMake logic aims to mitigate some of the issues
# so that cross-compilation can happen seamlessly.

# find_host_package (PROGRAM ARGS)
#  A macro used to find executable programs on the host system, not within the iOS environment.
#  Thanks to the android-cmake project for providing the command

macro(find_host_package)
  message("find_host_package: " ${ARGN})
endmacro()
macro(find_cuda_helper_libs)
  message("find_cuda_helper_libs: " ${ARGN})
endmacro()

## the official implementation
## TODO: further look at https://cmake.org/cmake/help/git-master/command/find_package.html
# macro(find_host_package)
#   set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
#   set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY NEVER)
#   set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE NEVER)

#   find_package(${ARGN})

#   set(IOS TRUE)
#   set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM ONLY)
#   set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
#   set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
# endmacro(find_host_package)