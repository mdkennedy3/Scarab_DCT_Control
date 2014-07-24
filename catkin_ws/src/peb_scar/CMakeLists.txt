cmake_minimum_required(VERSION 2.8.3)
project(peb_scar)

find_package(catkin REQUIRED COMPONENTS roscpp message_generation)
find_package(Curses REQUIRED)

add_service_files(
  FILES
  up.srv
  down.srv
  left.srv
  right.srv
  quit.srv
  clear.srv
)
generate_messages(DEPENDENCIES std_msgs)

catkin_package(CATKIN_DEPENDS roscpp std_msgs message_runtime DEPENDS Curses)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(peb_scar_node src/peb_cont.cpp)
target_link_libraries(peb_scar_node ${catkin_LIBRARIES} ${CURSES_LIBRARIES})
