# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "coop_towing: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icoop_towing:/home/samer/catkin_ws/src/coop_towing/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(coop_towing_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(coop_towing
  "/home/samer/catkin_ws/src/coop_towing/msg/sensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/coop_towing
)

### Generating Services

### Generating Module File
_generate_module_cpp(coop_towing
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/coop_towing
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(coop_towing_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(coop_towing_generate_messages coop_towing_generate_messages_cpp)

# target for backward compatibility
add_custom_target(coop_towing_gencpp)
add_dependencies(coop_towing_gencpp coop_towing_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS coop_towing_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(coop_towing
  "/home/samer/catkin_ws/src/coop_towing/msg/sensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/coop_towing
)

### Generating Services

### Generating Module File
_generate_module_lisp(coop_towing
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/coop_towing
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(coop_towing_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(coop_towing_generate_messages coop_towing_generate_messages_lisp)

# target for backward compatibility
add_custom_target(coop_towing_genlisp)
add_dependencies(coop_towing_genlisp coop_towing_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS coop_towing_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(coop_towing
  "/home/samer/catkin_ws/src/coop_towing/msg/sensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/coop_towing
)

### Generating Services

### Generating Module File
_generate_module_py(coop_towing
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/coop_towing
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(coop_towing_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(coop_towing_generate_messages coop_towing_generate_messages_py)

# target for backward compatibility
add_custom_target(coop_towing_genpy)
add_dependencies(coop_towing_genpy coop_towing_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS coop_towing_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/coop_towing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/coop_towing
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(coop_towing_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/coop_towing)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/coop_towing
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(coop_towing_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/coop_towing)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/coop_towing\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/coop_towing
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(coop_towing_generate_messages_py std_msgs_generate_messages_py)
