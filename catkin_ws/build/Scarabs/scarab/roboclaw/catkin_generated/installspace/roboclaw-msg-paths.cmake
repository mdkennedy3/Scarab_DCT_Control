# generated from genmsg/cmake/pkg-msg-paths.cmake.em

# message include dirs in installspace
_prepend_path("${roboclaw_DIR}/.." "msg" roboclaw_MSG_INCLUDE_DIRS UNIQUE)
set(roboclaw_MSG_DEPENDENCIES geometry_msgs;std_msgs)
