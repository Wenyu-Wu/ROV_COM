# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rov_datacom: 2 messages, 0 services")

set(MSG_I_FLAGS "-Irov_datacom:/home/davidwu/Research/rov_ws/src/rov_datacom/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rov_datacom_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/imu.msg" NAME_WE)
add_custom_target(_rov_datacom_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rov_datacom" "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/imu.msg" ""
)

get_filename_component(_filename "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/raw_imu.msg" NAME_WE)
add_custom_target(_rov_datacom_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rov_datacom" "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/raw_imu.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rov_datacom
  "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_datacom
)
_generate_msg_cpp(rov_datacom
  "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/raw_imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_datacom
)

### Generating Services

### Generating Module File
_generate_module_cpp(rov_datacom
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_datacom
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rov_datacom_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rov_datacom_generate_messages rov_datacom_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/imu.msg" NAME_WE)
add_dependencies(rov_datacom_generate_messages_cpp _rov_datacom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/raw_imu.msg" NAME_WE)
add_dependencies(rov_datacom_generate_messages_cpp _rov_datacom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rov_datacom_gencpp)
add_dependencies(rov_datacom_gencpp rov_datacom_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rov_datacom_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rov_datacom
  "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_datacom
)
_generate_msg_eus(rov_datacom
  "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/raw_imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_datacom
)

### Generating Services

### Generating Module File
_generate_module_eus(rov_datacom
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_datacom
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rov_datacom_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rov_datacom_generate_messages rov_datacom_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/imu.msg" NAME_WE)
add_dependencies(rov_datacom_generate_messages_eus _rov_datacom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/raw_imu.msg" NAME_WE)
add_dependencies(rov_datacom_generate_messages_eus _rov_datacom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rov_datacom_geneus)
add_dependencies(rov_datacom_geneus rov_datacom_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rov_datacom_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rov_datacom
  "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_datacom
)
_generate_msg_lisp(rov_datacom
  "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/raw_imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_datacom
)

### Generating Services

### Generating Module File
_generate_module_lisp(rov_datacom
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_datacom
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rov_datacom_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rov_datacom_generate_messages rov_datacom_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/imu.msg" NAME_WE)
add_dependencies(rov_datacom_generate_messages_lisp _rov_datacom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/raw_imu.msg" NAME_WE)
add_dependencies(rov_datacom_generate_messages_lisp _rov_datacom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rov_datacom_genlisp)
add_dependencies(rov_datacom_genlisp rov_datacom_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rov_datacom_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rov_datacom
  "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_datacom
)
_generate_msg_nodejs(rov_datacom
  "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/raw_imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_datacom
)

### Generating Services

### Generating Module File
_generate_module_nodejs(rov_datacom
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_datacom
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rov_datacom_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rov_datacom_generate_messages rov_datacom_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/imu.msg" NAME_WE)
add_dependencies(rov_datacom_generate_messages_nodejs _rov_datacom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/raw_imu.msg" NAME_WE)
add_dependencies(rov_datacom_generate_messages_nodejs _rov_datacom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rov_datacom_gennodejs)
add_dependencies(rov_datacom_gennodejs rov_datacom_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rov_datacom_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rov_datacom
  "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_datacom
)
_generate_msg_py(rov_datacom
  "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/raw_imu.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_datacom
)

### Generating Services

### Generating Module File
_generate_module_py(rov_datacom
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_datacom
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rov_datacom_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rov_datacom_generate_messages rov_datacom_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/imu.msg" NAME_WE)
add_dependencies(rov_datacom_generate_messages_py _rov_datacom_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/davidwu/Research/rov_ws/src/rov_datacom/msg/raw_imu.msg" NAME_WE)
add_dependencies(rov_datacom_generate_messages_py _rov_datacom_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rov_datacom_genpy)
add_dependencies(rov_datacom_genpy rov_datacom_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rov_datacom_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_datacom)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rov_datacom
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rov_datacom_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_datacom)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rov_datacom
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rov_datacom_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_datacom)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rov_datacom
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rov_datacom_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_datacom)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rov_datacom
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rov_datacom_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_datacom)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_datacom\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rov_datacom
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rov_datacom_generate_messages_py std_msgs_generate_messages_py)
endif()
