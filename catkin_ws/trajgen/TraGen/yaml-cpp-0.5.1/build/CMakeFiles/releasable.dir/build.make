# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/samer/catkin_ws/trajgen/TraGen/yaml-cpp-0.5.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/samer/catkin_ws/trajgen/TraGen/yaml-cpp-0.5.1/build

# Utility rule file for releasable.

# Include the progress variables for this target.
include CMakeFiles/releasable.dir/progress.make

CMakeFiles/releasable:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/samer/catkin_ws/trajgen/TraGen/yaml-cpp-0.5.1/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Adjusting settings for release compilation"
	$(MAKE) clean
	/usr/bin/cmake -DCMAKE_BUILD_TYPE=Release /home/samer/catkin_ws/trajgen/TraGen/yaml-cpp-0.5.1

releasable: CMakeFiles/releasable
releasable: CMakeFiles/releasable.dir/build.make
.PHONY : releasable

# Rule to build all files generated by this target.
CMakeFiles/releasable.dir/build: releasable
.PHONY : CMakeFiles/releasable.dir/build

CMakeFiles/releasable.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/releasable.dir/cmake_clean.cmake
.PHONY : CMakeFiles/releasable.dir/clean

CMakeFiles/releasable.dir/depend:
	cd /home/samer/catkin_ws/trajgen/TraGen/yaml-cpp-0.5.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/samer/catkin_ws/trajgen/TraGen/yaml-cpp-0.5.1 /home/samer/catkin_ws/trajgen/TraGen/yaml-cpp-0.5.1 /home/samer/catkin_ws/trajgen/TraGen/yaml-cpp-0.5.1/build /home/samer/catkin_ws/trajgen/TraGen/yaml-cpp-0.5.1/build /home/samer/catkin_ws/trajgen/TraGen/yaml-cpp-0.5.1/build/CMakeFiles/releasable.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/releasable.dir/depend

