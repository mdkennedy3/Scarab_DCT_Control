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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nashed/ros/TraGen/EigenAll

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nashed/ros/TraGen/EigenAll/build

# Include any dependencies generated for this target.
include test/CMakeFiles/sparse_basic_1.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/sparse_basic_1.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/sparse_basic_1.dir/flags.make

test/CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.o: test/CMakeFiles/sparse_basic_1.dir/flags.make
test/CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.o: ../test/sparse_basic.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nashed/ros/TraGen/EigenAll/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.o"
	cd /home/nashed/ros/TraGen/EigenAll/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS)  -DEIGEN_TEST_MAX_SIZE=320 -DEIGEN_TEST_FUNC=sparse_basic  -DEIGEN_TEST_PART_1=1 -o CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.o -c /home/nashed/ros/TraGen/EigenAll/test/sparse_basic.cpp

test/CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.i"
	cd /home/nashed/ros/TraGen/EigenAll/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -DEIGEN_TEST_MAX_SIZE=320 -DEIGEN_TEST_FUNC=sparse_basic  -DEIGEN_TEST_PART_1=1 -E /home/nashed/ros/TraGen/EigenAll/test/sparse_basic.cpp > CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.i

test/CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.s"
	cd /home/nashed/ros/TraGen/EigenAll/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS)  -DEIGEN_TEST_MAX_SIZE=320 -DEIGEN_TEST_FUNC=sparse_basic  -DEIGEN_TEST_PART_1=1 -S /home/nashed/ros/TraGen/EigenAll/test/sparse_basic.cpp -o CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.s

test/CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.o.requires:
.PHONY : test/CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.o.requires

test/CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.o.provides: test/CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/sparse_basic_1.dir/build.make test/CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.o.provides.build
.PHONY : test/CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.o.provides

test/CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.o.provides.build: test/CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.o

# Object files for target sparse_basic_1
sparse_basic_1_OBJECTS = \
"CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.o"

# External object files for target sparse_basic_1
sparse_basic_1_EXTERNAL_OBJECTS =

test/sparse_basic_1: test/CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.o
test/sparse_basic_1: test/CMakeFiles/sparse_basic_1.dir/build.make
test/sparse_basic_1: test/CMakeFiles/sparse_basic_1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable sparse_basic_1"
	cd /home/nashed/ros/TraGen/EigenAll/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sparse_basic_1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/sparse_basic_1.dir/build: test/sparse_basic_1
.PHONY : test/CMakeFiles/sparse_basic_1.dir/build

test/CMakeFiles/sparse_basic_1.dir/requires: test/CMakeFiles/sparse_basic_1.dir/sparse_basic.cpp.o.requires
.PHONY : test/CMakeFiles/sparse_basic_1.dir/requires

test/CMakeFiles/sparse_basic_1.dir/clean:
	cd /home/nashed/ros/TraGen/EigenAll/build/test && $(CMAKE_COMMAND) -P CMakeFiles/sparse_basic_1.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/sparse_basic_1.dir/clean

test/CMakeFiles/sparse_basic_1.dir/depend:
	cd /home/nashed/ros/TraGen/EigenAll/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nashed/ros/TraGen/EigenAll /home/nashed/ros/TraGen/EigenAll/test /home/nashed/ros/TraGen/EigenAll/build /home/nashed/ros/TraGen/EigenAll/build/test /home/nashed/ros/TraGen/EigenAll/build/test/CMakeFiles/sparse_basic_1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/sparse_basic_1.dir/depend

