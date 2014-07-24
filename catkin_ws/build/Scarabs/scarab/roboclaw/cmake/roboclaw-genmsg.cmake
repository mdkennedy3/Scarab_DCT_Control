# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roboclaw: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iroboclaw:/home/samer/catkin_ws/src/Scarabs/scarab/roboclaw/msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roboclaw_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(roboclaw
  "/home/samer/catkin_ws/src/Scarabs/scarab/roboclaw/msg/motor_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboclaw
)

### Generating Services

### Generating Module File
_generate_module_cpp(roboclaw
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboclaw
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roboclaw_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roboclaw_generate_messages roboclaw_generate_messages_cpp)

# target for backward compatibility
add_custom_target(roboclaw_gencpp)
add_dependencies(roboclaw_gencpp roboclaw_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboclaw_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(roboclaw
  "/home/samer/catkin_ws/src/Scarabs/scarab/roboclaw/msg/motor_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboclaw
)

### Generating Services

### Generating Module File
_generate_module_lisp(roboclaw
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboclaw
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roboclaw_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roboclaw_generate_messages roboclaw_generate_messages_lisp)

# target for backward compatibility
add_custom_target(roboclaw_genlisp)
add_dependencies(roboclaw_genlisp roboclaw_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboclaw_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(roboclaw
  "/home/samer/catkin_ws/src/Scarabs/scarab/roboclaw/msg/motor_state.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboclaw
)

### Generating Services

### Generating Module File
_generate_module_py(roboclaw
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboclaw
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roboclaw_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roboclaw_generate_messages roboclaw_generate_messages_py)

# target for backward compatibility
add_custom_target(roboclaw_genpy)
add_dependencies(roboclaw_genpy roboclaw_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboclaw_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboclaw)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboclaw
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(roboclaw_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(roboclaw_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboclaw)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboclaw
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(roboclaw_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(roboclaw_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboclaw)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboclaw\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboclaw
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(roboclaw_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(roboclaw_generate_messages_py std_msgs_generate_messages_py)
