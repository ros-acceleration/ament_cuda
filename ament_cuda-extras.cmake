# Copyright (c) 2022, Acceleration Robotics. All Rights Reserved.
#
# include hardware CUDA extras

find_package(ament_cmake_core QUIET REQUIRED)

# various functions / macros
foreach(filename
  "ros_cuda"
  "opencv_fix"
)
  include(${ament_cuda_DIR}/${filename}.cmake)
endforeach()
