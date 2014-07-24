# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hfn: 7 messages, 0 services")

set(MSG_I_FLAGS "-Ihfn:/home/monroe/catkin_ws/devel/share/hfn/msg;-Iactionlib_msgs:/opt/ros/hydro/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hfn_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hfn
)
_generate_msg_cpp(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hfn
)
_generate_msg_cpp(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveResult.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveFeedback.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionFeedback.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionResult.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hfn
)
_generate_msg_cpp(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hfn
)
_generate_msg_cpp(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveGoal.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hfn
)
_generate_msg_cpp(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hfn
)
_generate_msg_cpp(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveFeedback.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hfn
)

### Generating Services

### Generating Module File
_generate_module_cpp(hfn
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hfn
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hfn_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hfn_generate_messages hfn_generate_messages_cpp)

# target for backward compatibility
add_custom_target(hfn_gencpp)
add_dependencies(hfn_gencpp hfn_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hfn_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hfn
)
_generate_msg_lisp(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hfn
)
_generate_msg_lisp(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveResult.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveFeedback.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionFeedback.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionResult.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hfn
)
_generate_msg_lisp(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hfn
)
_generate_msg_lisp(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveGoal.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hfn
)
_generate_msg_lisp(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hfn
)
_generate_msg_lisp(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveFeedback.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hfn
)

### Generating Services

### Generating Module File
_generate_module_lisp(hfn
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hfn
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hfn_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hfn_generate_messages hfn_generate_messages_lisp)

# target for backward compatibility
add_custom_target(hfn_genlisp)
add_dependencies(hfn_genlisp hfn_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hfn_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hfn
)
_generate_msg_py(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hfn
)
_generate_msg_py(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveResult.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveFeedback.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionFeedback.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionResult.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hfn
)
_generate_msg_py(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hfn
)
_generate_msg_py(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveGoal.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hfn
)
_generate_msg_py(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hfn
)
_generate_msg_py(hfn
  "/home/monroe/catkin_ws/devel/share/hfn/msg/MoveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/monroe/catkin_ws/devel/share/hfn/msg/MoveFeedback.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hfn
)

### Generating Services

### Generating Module File
_generate_module_py(hfn
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hfn
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hfn_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hfn_generate_messages hfn_generate_messages_py)

# target for backward compatibility
add_custom_target(hfn_genpy)
add_dependencies(hfn_genpy hfn_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hfn_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hfn)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hfn
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(hfn_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
add_dependencies(hfn_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hfn)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hfn
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(hfn_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
add_dependencies(hfn_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hfn)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hfn\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hfn
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(hfn_generate_messages_py actionlib_msgs_generate_messages_py)
add_dependencies(hfn_generate_messages_py geometry_msgs_generate_messages_py)
