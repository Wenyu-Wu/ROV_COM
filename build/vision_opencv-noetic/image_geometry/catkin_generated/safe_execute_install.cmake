execute_process(COMMAND "/home/davidwu/Research/rov_ws/build/vision_opencv-noetic/image_geometry/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/davidwu/Research/rov_ws/build/vision_opencv-noetic/image_geometry/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
