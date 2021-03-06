# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "laser_simulator: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ilaser_simulator:/home/monroe/catkin_ws/src/Scarabs/scarab/laser_simulator/msg;-Inav_msgs:/opt/ros/hydro/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/hydro/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/hydro/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(laser_simulator_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(laser_simulator
  "/home/monroe/catkin_ws/src/Scarabs/scarab/laser_simulator/msg/ScanPair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_simulator
)
_generate_msg_cpp(laser_simulator
  "/home/monroe/catkin_ws/src/Scarabs/scarab/laser_simulator/msg/PoseStampedNamedArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/home/monroe/catkin_ws/src/Scarabs/scarab/laser_simulator/msg/PoseStampedNamed.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_simulator
)
_generate_msg_cpp(laser_simulator
  "/home/monroe/catkin_ws/src/Scarabs/scarab/laser_simulator/msg/PoseStampedNamed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_simulator
)

### Generating Services

### Generating Module File
_generate_module_cpp(laser_simulator
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_simulator
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(laser_simulator_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(laser_simulator_generate_messages laser_simulator_generate_messages_cpp)

# target for backward compatibility
add_custom_target(laser_simulator_gencpp)
add_dependencies(laser_simulator_gencpp laser_simulator_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_simulator_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(laser_simulator
  "/home/monroe/catkin_ws/src/Scarabs/scarab/laser_simulator/msg/ScanPair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_simulator
)
_generate_msg_lisp(laser_simulator
  "/home/monroe/catkin_ws/src/Scarabs/scarab/laser_simulator/msg/PoseStampedNamedArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/home/monroe/catkin_ws/src/Scarabs/scarab/laser_simulator/msg/PoseStampedNamed.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_simulator
)
_generate_msg_lisp(laser_simulator
  "/home/monroe/catkin_ws/src/Scarabs/scarab/laser_simulator/msg/PoseStampedNamed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_simulator
)

### Generating Services

### Generating Module File
_generate_module_lisp(laser_simulator
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_simulator
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(laser_simulator_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(laser_simulator_generate_messages laser_simulator_generate_messages_lisp)

# target for backward compatibility
add_custom_target(laser_simulator_genlisp)
add_dependencies(laser_simulator_genlisp laser_simulator_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_simulator_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(laser_simulator
  "/home/monroe/catkin_ws/src/Scarabs/scarab/laser_simulator/msg/ScanPair.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/hydro/share/sensor_msgs/cmake/../msg/LaserScan.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_simulator
)
_generate_msg_py(laser_simulator
  "/home/monroe/catkin_ws/src/Scarabs/scarab/laser_simulator/msg/PoseStampedNamedArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/home/monroe/catkin_ws/src/Scarabs/scarab/laser_simulator/msg/PoseStampedNamed.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_simulator
)
_generate_msg_py(laser_simulator
  "/home/monroe/catkin_ws/src/Scarabs/scarab/laser_simulator/msg/PoseStampedNamed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_simulator
)

### Generating Services

### Generating Module File
_generate_module_py(laser_simulator
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_simulator
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(laser_simulator_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(laser_simulator_generate_messages laser_simulator_generate_messages_py)

# target for backward compatibility
add_custom_target(laser_simulator_genpy)
add_dependencies(laser_simulator_genpy laser_simulator_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_simulator_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_simulator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_simulator
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(laser_simulator_generate_messages_cpp nav_msgs_generate_messages_cpp)
add_dependencies(laser_simulator_generate_messages_cpp sensor_msgs_generate_messages_cpp)
add_dependencies(laser_simulator_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_simulator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_simulator
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(laser_simulator_generate_messages_lisp nav_msgs_generate_messages_lisp)
add_dependencies(laser_simulator_generate_messages_lisp sensor_msgs_generate_messages_lisp)
add_dependencies(laser_simulator_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_simulator)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_simulator\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_simulator
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(laser_simulator_generate_messages_py nav_msgs_generate_messages_py)
add_dependencies(laser_simulator_generate_messages_py sensor_msgs_generate_messages_py)
add_dependencies(laser_simulator_generate_messages_py geometry_msgs_generate_messages_py)
