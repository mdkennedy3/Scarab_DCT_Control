# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "peb_scar: 0 messages, 6 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(peb_scar_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/clear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/peb_scar
)
_generate_srv_cpp(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/right.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/peb_scar
)
_generate_srv_cpp(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/quit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/peb_scar
)
_generate_srv_cpp(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/left.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/peb_scar
)
_generate_srv_cpp(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/down.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/peb_scar
)
_generate_srv_cpp(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/up.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/peb_scar
)

### Generating Module File
_generate_module_cpp(peb_scar
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/peb_scar
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(peb_scar_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(peb_scar_generate_messages peb_scar_generate_messages_cpp)

# target for backward compatibility
add_custom_target(peb_scar_gencpp)
add_dependencies(peb_scar_gencpp peb_scar_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS peb_scar_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/clear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/peb_scar
)
_generate_srv_lisp(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/right.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/peb_scar
)
_generate_srv_lisp(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/quit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/peb_scar
)
_generate_srv_lisp(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/left.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/peb_scar
)
_generate_srv_lisp(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/down.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/peb_scar
)
_generate_srv_lisp(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/up.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/peb_scar
)

### Generating Module File
_generate_module_lisp(peb_scar
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/peb_scar
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(peb_scar_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(peb_scar_generate_messages peb_scar_generate_messages_lisp)

# target for backward compatibility
add_custom_target(peb_scar_genlisp)
add_dependencies(peb_scar_genlisp peb_scar_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS peb_scar_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/clear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/peb_scar
)
_generate_srv_py(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/right.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/peb_scar
)
_generate_srv_py(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/quit.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/peb_scar
)
_generate_srv_py(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/left.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/peb_scar
)
_generate_srv_py(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/down.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/peb_scar
)
_generate_srv_py(peb_scar
  "/home/samer/catkin_ws/src/peb_scar/srv/up.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/peb_scar
)

### Generating Module File
_generate_module_py(peb_scar
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/peb_scar
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(peb_scar_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(peb_scar_generate_messages peb_scar_generate_messages_py)

# target for backward compatibility
add_custom_target(peb_scar_genpy)
add_dependencies(peb_scar_genpy peb_scar_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS peb_scar_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/peb_scar)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/peb_scar
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(peb_scar_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/peb_scar)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/peb_scar
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(peb_scar_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/peb_scar)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/peb_scar\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/peb_scar
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(peb_scar_generate_messages_py std_msgs_generate_messages_py)
