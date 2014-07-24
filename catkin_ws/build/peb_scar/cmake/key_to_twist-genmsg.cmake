# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "key_to_twist: 0 messages, 6 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(key_to_twist_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/down.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/key_to_twist
)
_generate_srv_cpp(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/quit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/key_to_twist
)
_generate_srv_cpp(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/clear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/key_to_twist
)
_generate_srv_cpp(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/right.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/key_to_twist
)
_generate_srv_cpp(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/left.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/key_to_twist
)
_generate_srv_cpp(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/up.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/key_to_twist
)

### Generating Module File
_generate_module_cpp(key_to_twist
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/key_to_twist
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(key_to_twist_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(key_to_twist_generate_messages key_to_twist_generate_messages_cpp)

# target for backward compatibility
add_custom_target(key_to_twist_gencpp)
add_dependencies(key_to_twist_gencpp key_to_twist_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS key_to_twist_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/down.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/key_to_twist
)
_generate_srv_lisp(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/quit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/key_to_twist
)
_generate_srv_lisp(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/clear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/key_to_twist
)
_generate_srv_lisp(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/right.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/key_to_twist
)
_generate_srv_lisp(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/left.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/key_to_twist
)
_generate_srv_lisp(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/up.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/key_to_twist
)

### Generating Module File
_generate_module_lisp(key_to_twist
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/key_to_twist
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(key_to_twist_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(key_to_twist_generate_messages key_to_twist_generate_messages_lisp)

# target for backward compatibility
add_custom_target(key_to_twist_genlisp)
add_dependencies(key_to_twist_genlisp key_to_twist_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS key_to_twist_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/down.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/key_to_twist
)
_generate_srv_py(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/quit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/key_to_twist
)
_generate_srv_py(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/clear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/key_to_twist
)
_generate_srv_py(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/right.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/key_to_twist
)
_generate_srv_py(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/left.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/key_to_twist
)
_generate_srv_py(key_to_twist
  "/home/monroe/catkin_ws/src/peb_scar/srv/up.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/key_to_twist
)

### Generating Module File
_generate_module_py(key_to_twist
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/key_to_twist
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(key_to_twist_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(key_to_twist_generate_messages key_to_twist_generate_messages_py)

# target for backward compatibility
add_custom_target(key_to_twist_genpy)
add_dependencies(key_to_twist_genpy key_to_twist_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS key_to_twist_generate_messages_py)


debug_message(2 "key_to_twist: Iflags=${MSG_I_FLAGS}")


if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/key_to_twist)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/key_to_twist
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(key_to_twist_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/key_to_twist)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/key_to_twist
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(key_to_twist_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/key_to_twist)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/key_to_twist\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/key_to_twist
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(key_to_twist_generate_messages_py std_msgs_generate_messages_py)
