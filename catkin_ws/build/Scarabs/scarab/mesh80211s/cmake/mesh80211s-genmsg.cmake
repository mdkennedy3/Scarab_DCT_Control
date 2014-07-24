# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mesh80211s: 2 messages, 0 services")

set(MSG_I_FLAGS "-Imesh80211s:/home/monroe/catkin_ws/src/Scarabs/scarab/mesh80211s/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mesh80211s_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mesh80211s
  "/home/monroe/catkin_ws/src/Scarabs/scarab/mesh80211s/msg/MeshStation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mesh80211s
)
_generate_msg_cpp(mesh80211s
  "/home/monroe/catkin_ws/src/Scarabs/scarab/mesh80211s/msg/MeshStations.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/monroe/catkin_ws/src/Scarabs/scarab/mesh80211s/msg/MeshStation.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mesh80211s
)

### Generating Services

### Generating Module File
_generate_module_cpp(mesh80211s
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mesh80211s
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mesh80211s_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mesh80211s_generate_messages mesh80211s_generate_messages_cpp)

# target for backward compatibility
add_custom_target(mesh80211s_gencpp)
add_dependencies(mesh80211s_gencpp mesh80211s_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mesh80211s_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mesh80211s
  "/home/monroe/catkin_ws/src/Scarabs/scarab/mesh80211s/msg/MeshStation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mesh80211s
)
_generate_msg_lisp(mesh80211s
  "/home/monroe/catkin_ws/src/Scarabs/scarab/mesh80211s/msg/MeshStations.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/monroe/catkin_ws/src/Scarabs/scarab/mesh80211s/msg/MeshStation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mesh80211s
)

### Generating Services

### Generating Module File
_generate_module_lisp(mesh80211s
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mesh80211s
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mesh80211s_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mesh80211s_generate_messages mesh80211s_generate_messages_lisp)

# target for backward compatibility
add_custom_target(mesh80211s_genlisp)
add_dependencies(mesh80211s_genlisp mesh80211s_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mesh80211s_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mesh80211s
  "/home/monroe/catkin_ws/src/Scarabs/scarab/mesh80211s/msg/MeshStation.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mesh80211s
)
_generate_msg_py(mesh80211s
  "/home/monroe/catkin_ws/src/Scarabs/scarab/mesh80211s/msg/MeshStations.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/monroe/catkin_ws/src/Scarabs/scarab/mesh80211s/msg/MeshStation.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mesh80211s
)

### Generating Services

### Generating Module File
_generate_module_py(mesh80211s
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mesh80211s
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mesh80211s_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mesh80211s_generate_messages mesh80211s_generate_messages_py)

# target for backward compatibility
add_custom_target(mesh80211s_genpy)
add_dependencies(mesh80211s_genpy mesh80211s_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mesh80211s_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mesh80211s)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mesh80211s
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(mesh80211s_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mesh80211s)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mesh80211s
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(mesh80211s_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mesh80211s)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mesh80211s\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mesh80211s
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(mesh80211s_generate_messages_py std_msgs_generate_messages_py)
