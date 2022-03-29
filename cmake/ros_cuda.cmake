# Copyright (c) 2022, Acceleration Robotics. All Rights Reserved.
#
# set the ROS_CUDA variable

# NOTE: the ROS_CUDA_TARGET variable is defined by the ament ROS 2 build system
# extensions. Particularly, from the corresponding mixin that should be used 
# while cross-compiling things for the selected target hardware.

if(NOT DEFINED ROS_CUDA)
  if(ROS_CUDA_TARGET)
    set(ROS_CUDA TRUE)
  endif()
endif()