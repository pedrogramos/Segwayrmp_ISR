# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/rmp/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rmp/catkin_ws/build

# Utility rule file for clean_test_results_wiimote.

# Include the progress variables for this target.
include wiimote/CMakeFiles/clean_test_results_wiimote.dir/progress.make

wiimote/CMakeFiles/clean_test_results_wiimote:
	cd /home/rmp/catkin_ws/build/wiimote && /usr/bin/python /opt/ros/kinetic/share/catkin/cmake/test/remove_test_results.py /home/rmp/catkin_ws/build/test_results/wiimote

clean_test_results_wiimote: wiimote/CMakeFiles/clean_test_results_wiimote
clean_test_results_wiimote: wiimote/CMakeFiles/clean_test_results_wiimote.dir/build.make

.PHONY : clean_test_results_wiimote

# Rule to build all files generated by this target.
wiimote/CMakeFiles/clean_test_results_wiimote.dir/build: clean_test_results_wiimote

.PHONY : wiimote/CMakeFiles/clean_test_results_wiimote.dir/build

wiimote/CMakeFiles/clean_test_results_wiimote.dir/clean:
	cd /home/rmp/catkin_ws/build/wiimote && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_wiimote.dir/cmake_clean.cmake
.PHONY : wiimote/CMakeFiles/clean_test_results_wiimote.dir/clean

wiimote/CMakeFiles/clean_test_results_wiimote.dir/depend:
	cd /home/rmp/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rmp/catkin_ws/src /home/rmp/catkin_ws/src/wiimote /home/rmp/catkin_ws/build /home/rmp/catkin_ws/build/wiimote /home/rmp/catkin_ws/build/wiimote/CMakeFiles/clean_test_results_wiimote.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : wiimote/CMakeFiles/clean_test_results_wiimote.dir/depend
