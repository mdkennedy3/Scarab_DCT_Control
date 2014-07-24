# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pebble: 1 messages, 2 services")

set(MSG_I_FLAGS "-Ipebble:/home/samer/catkin_ws/src/pebble/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pebble_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pebble
  "/home/samer/catkin_ws/src/pebble/msg/accel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pebble
)

### Generating Services
_generate_srv_cpp(pebble
  "/home/samer/catkin_ws/src/pebble/srv/getMenu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pebble
)
_generate_srv_cpp(pebble
  "/home/samer/catkin_ws/src/pebble/srv/callMenu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pebble
)

### Generating Module File
_generate_module_cpp(pebble
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pebble
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pebble_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pebble_generate_messages pebble_generate_messages_cpp)

# target for backward compatibility
add_custom_target(pebble_gencpp)
add_dependencies(pebble_gencpp pebble_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pebble_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pebble
  "/home/samer/catkin_ws/src/pebble/msg/accel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pebble
)

### Generating Services
_generate_srv_lisp(pebble
  "/home/samer/catkin_ws/src/pebble/srv/getMenu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pebble
)
_generate_srv_lisp(pebble
  "/home/samer/catkin_ws/src/pebble/srv/callMenu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pebble
)

### Generating Module File
_generate_module_lisp(pebble
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pebble
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pebble_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pebble_generate_messages pebble_generate_messages_lisp)

# target for backward compatibility
add_custom_target(pebble_genlisp)
add_dependencies(pebble_genlisp pebble_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pebble_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pebble
  "/home/samer/catkin_ws/src/pebble/msg/accel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pebble
)

### Generating Services
_generate_srv_py(pebble
  "/home/samer/catkin_ws/src/pebble/srv/getMenu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pebble
)
_generate_srv_py(pebble
  "/home/samer/catkin_ws/src/pebble/srv/callMenu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pebble
)

### Generating Module File
_generate_module_py(pebble
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pebble
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pebble_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pebble_generate_messages pebble_generate_messages_py)

# target for backward compatibility
add_custom_target(pebble_genpy)
add_dependencies(pebble_genpy pebble_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pebble_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pebble)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pebble
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(pebble_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pebble)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pebble
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(pebble_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pebble)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pebble\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pebble
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(pebble_generate_messages_py std_msgs_generate_messages_py)
