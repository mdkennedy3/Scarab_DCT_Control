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
include doc/examples/CMakeFiles/function_taking_ref.dir/depend.make

# Include the progress variables for this target.
include doc/examples/CMakeFiles/function_taking_ref.dir/progress.make

# Include the compile flags for this target's objects.
include doc/examples/CMakeFiles/function_taking_ref.dir/flags.make

doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o: doc/examples/CMakeFiles/function_taking_ref.dir/flags.make
doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o: ../doc/examples/function_taking_ref.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/nashed/ros/TraGen/EigenAll/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o"
	cd /home/nashed/ros/TraGen/EigenAll/build/doc/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o -c /home/nashed/ros/TraGen/EigenAll/doc/examples/function_taking_ref.cpp

doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.i"
	cd /home/nashed/ros/TraGen/EigenAll/build/doc/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/nashed/ros/TraGen/EigenAll/doc/examples/function_taking_ref.cpp > CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.i

doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.s"
	cd /home/nashed/ros/TraGen/EigenAll/build/doc/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/nashed/ros/TraGen/EigenAll/doc/examples/function_taking_ref.cpp -o CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.s

doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o.requires:
.PHONY : doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o.requires

doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o.provides: doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o.requires
	$(MAKE) -f doc/examples/CMakeFiles/function_taking_ref.dir/build.make doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o.provides.build
.PHONY : doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o.provides

doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o.provides.build: doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o

# Object files for target function_taking_ref
function_taking_ref_OBJECTS = \
"CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o"

# External object files for target function_taking_ref
function_taking_ref_EXTERNAL_OBJECTS =

doc/examples/function_taking_ref: doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o
doc/examples/function_taking_ref: doc/examples/CMakeFiles/function_taking_ref.dir/build.make
doc/examples/function_taking_ref: doc/examples/CMakeFiles/function_taking_ref.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable function_taking_ref"
	cd /home/nashed/ros/TraGen/EigenAll/build/doc/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/function_taking_ref.dir/link.txt --verbose=$(VERBOSE)
	cd /home/nashed/ros/TraGen/EigenAll/build/doc/examples && ./function_taking_ref >/home/nashed/ros/TraGen/EigenAll/build/doc/examples/function_taking_ref.out

# Rule to build all files generated by this target.
doc/examples/CMakeFiles/function_taking_ref.dir/build: doc/examples/function_taking_ref
.PHONY : doc/examples/CMakeFiles/function_taking_ref.dir/build

doc/examples/CMakeFiles/function_taking_ref.dir/requires: doc/examples/CMakeFiles/function_taking_ref.dir/function_taking_ref.cpp.o.requires
.PHONY : doc/examples/CMakeFiles/function_taking_ref.dir/requires

doc/examples/CMakeFiles/function_taking_ref.dir/clean:
	cd /home/nashed/ros/TraGen/EigenAll/build/doc/examples && $(CMAKE_COMMAND) -P CMakeFiles/function_taking_ref.dir/cmake_clean.cmake
.PHONY : doc/examples/CMakeFiles/function_taking_ref.dir/clean

doc/examples/CMakeFiles/function_taking_ref.dir/depend:
	cd /home/nashed/ros/TraGen/EigenAll/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nashed/ros/TraGen/EigenAll /home/nashed/ros/TraGen/EigenAll/doc/examples /home/nashed/ros/TraGen/EigenAll/build /home/nashed/ros/TraGen/EigenAll/build/doc/examples /home/nashed/ros/TraGen/EigenAll/build/doc/examples/CMakeFiles/function_taking_ref.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/examples/CMakeFiles/function_taking_ref.dir/depend

