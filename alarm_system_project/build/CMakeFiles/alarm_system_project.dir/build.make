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
CMAKE_SOURCE_DIR = /home/anna/CLionProjects/alarm_system_project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/anna/CLionProjects/alarm_system_project/build

# Include any dependencies generated for this target.
include CMakeFiles/alarm_system_project.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/alarm_system_project.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/alarm_system_project.dir/flags.make

CMakeFiles/alarm_system_project.dir/alarm_system/main.c.o: CMakeFiles/alarm_system_project.dir/flags.make
CMakeFiles/alarm_system_project.dir/alarm_system/main.c.o: ../alarm_system/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anna/CLionProjects/alarm_system_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/alarm_system_project.dir/alarm_system/main.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/alarm_system_project.dir/alarm_system/main.c.o   -c /home/anna/CLionProjects/alarm_system_project/alarm_system/main.c

CMakeFiles/alarm_system_project.dir/alarm_system/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/alarm_system_project.dir/alarm_system/main.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anna/CLionProjects/alarm_system_project/alarm_system/main.c > CMakeFiles/alarm_system_project.dir/alarm_system/main.c.i

CMakeFiles/alarm_system_project.dir/alarm_system/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/alarm_system_project.dir/alarm_system/main.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anna/CLionProjects/alarm_system_project/alarm_system/main.c -o CMakeFiles/alarm_system_project.dir/alarm_system/main.c.s

CMakeFiles/alarm_system_project.dir/alarm_system/main.c.o.requires:

.PHONY : CMakeFiles/alarm_system_project.dir/alarm_system/main.c.o.requires

CMakeFiles/alarm_system_project.dir/alarm_system/main.c.o.provides: CMakeFiles/alarm_system_project.dir/alarm_system/main.c.o.requires
	$(MAKE) -f CMakeFiles/alarm_system_project.dir/build.make CMakeFiles/alarm_system_project.dir/alarm_system/main.c.o.provides.build
.PHONY : CMakeFiles/alarm_system_project.dir/alarm_system/main.c.o.provides

CMakeFiles/alarm_system_project.dir/alarm_system/main.c.o.provides.build: CMakeFiles/alarm_system_project.dir/alarm_system/main.c.o


# Object files for target alarm_system_project
alarm_system_project_OBJECTS = \
"CMakeFiles/alarm_system_project.dir/alarm_system/main.c.o"

# External object files for target alarm_system_project
alarm_system_project_EXTERNAL_OBJECTS =

alarm_system_project: CMakeFiles/alarm_system_project.dir/alarm_system/main.c.o
alarm_system_project: CMakeFiles/alarm_system_project.dir/build.make
alarm_system_project: CMakeFiles/alarm_system_project.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anna/CLionProjects/alarm_system_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable alarm_system_project"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/alarm_system_project.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/alarm_system_project.dir/build: alarm_system_project

.PHONY : CMakeFiles/alarm_system_project.dir/build

CMakeFiles/alarm_system_project.dir/requires: CMakeFiles/alarm_system_project.dir/alarm_system/main.c.o.requires

.PHONY : CMakeFiles/alarm_system_project.dir/requires

CMakeFiles/alarm_system_project.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/alarm_system_project.dir/cmake_clean.cmake
.PHONY : CMakeFiles/alarm_system_project.dir/clean

CMakeFiles/alarm_system_project.dir/depend:
	cd /home/anna/CLionProjects/alarm_system_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anna/CLionProjects/alarm_system_project /home/anna/CLionProjects/alarm_system_project /home/anna/CLionProjects/alarm_system_project/build /home/anna/CLionProjects/alarm_system_project/build /home/anna/CLionProjects/alarm_system_project/build/CMakeFiles/alarm_system_project.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/alarm_system_project.dir/depend
