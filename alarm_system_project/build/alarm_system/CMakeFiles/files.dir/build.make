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
include alarm_system/CMakeFiles/files.dir/depend.make

# Include the progress variables for this target.
include alarm_system/CMakeFiles/files.dir/progress.make

# Include the compile flags for this target's objects.
include alarm_system/CMakeFiles/files.dir/flags.make

alarm_system/CMakeFiles/files.dir/alarm_system.c.o: alarm_system/CMakeFiles/files.dir/flags.make
alarm_system/CMakeFiles/files.dir/alarm_system.c.o: ../alarm_system/alarm_system.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anna/CLionProjects/alarm_system_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object alarm_system/CMakeFiles/files.dir/alarm_system.c.o"
	cd /home/anna/CLionProjects/alarm_system_project/build/alarm_system && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/files.dir/alarm_system.c.o   -c /home/anna/CLionProjects/alarm_system_project/alarm_system/alarm_system.c

alarm_system/CMakeFiles/files.dir/alarm_system.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/files.dir/alarm_system.c.i"
	cd /home/anna/CLionProjects/alarm_system_project/build/alarm_system && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anna/CLionProjects/alarm_system_project/alarm_system/alarm_system.c > CMakeFiles/files.dir/alarm_system.c.i

alarm_system/CMakeFiles/files.dir/alarm_system.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/files.dir/alarm_system.c.s"
	cd /home/anna/CLionProjects/alarm_system_project/build/alarm_system && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anna/CLionProjects/alarm_system_project/alarm_system/alarm_system.c -o CMakeFiles/files.dir/alarm_system.c.s

alarm_system/CMakeFiles/files.dir/alarm_system.c.o.requires:

.PHONY : alarm_system/CMakeFiles/files.dir/alarm_system.c.o.requires

alarm_system/CMakeFiles/files.dir/alarm_system.c.o.provides: alarm_system/CMakeFiles/files.dir/alarm_system.c.o.requires
	$(MAKE) -f alarm_system/CMakeFiles/files.dir/build.make alarm_system/CMakeFiles/files.dir/alarm_system.c.o.provides.build
.PHONY : alarm_system/CMakeFiles/files.dir/alarm_system.c.o.provides

alarm_system/CMakeFiles/files.dir/alarm_system.c.o.provides.build: alarm_system/CMakeFiles/files.dir/alarm_system.c.o


alarm_system/CMakeFiles/files.dir/logger.c.o: alarm_system/CMakeFiles/files.dir/flags.make
alarm_system/CMakeFiles/files.dir/logger.c.o: ../alarm_system/logger.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/anna/CLionProjects/alarm_system_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object alarm_system/CMakeFiles/files.dir/logger.c.o"
	cd /home/anna/CLionProjects/alarm_system_project/build/alarm_system && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/files.dir/logger.c.o   -c /home/anna/CLionProjects/alarm_system_project/alarm_system/logger.c

alarm_system/CMakeFiles/files.dir/logger.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/files.dir/logger.c.i"
	cd /home/anna/CLionProjects/alarm_system_project/build/alarm_system && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/anna/CLionProjects/alarm_system_project/alarm_system/logger.c > CMakeFiles/files.dir/logger.c.i

alarm_system/CMakeFiles/files.dir/logger.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/files.dir/logger.c.s"
	cd /home/anna/CLionProjects/alarm_system_project/build/alarm_system && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/anna/CLionProjects/alarm_system_project/alarm_system/logger.c -o CMakeFiles/files.dir/logger.c.s

alarm_system/CMakeFiles/files.dir/logger.c.o.requires:

.PHONY : alarm_system/CMakeFiles/files.dir/logger.c.o.requires

alarm_system/CMakeFiles/files.dir/logger.c.o.provides: alarm_system/CMakeFiles/files.dir/logger.c.o.requires
	$(MAKE) -f alarm_system/CMakeFiles/files.dir/build.make alarm_system/CMakeFiles/files.dir/logger.c.o.provides.build
.PHONY : alarm_system/CMakeFiles/files.dir/logger.c.o.provides

alarm_system/CMakeFiles/files.dir/logger.c.o.provides.build: alarm_system/CMakeFiles/files.dir/logger.c.o


# Object files for target files
files_OBJECTS = \
"CMakeFiles/files.dir/alarm_system.c.o" \
"CMakeFiles/files.dir/logger.c.o"

# External object files for target files
files_EXTERNAL_OBJECTS =

alarm_system/libfiles.a: alarm_system/CMakeFiles/files.dir/alarm_system.c.o
alarm_system/libfiles.a: alarm_system/CMakeFiles/files.dir/logger.c.o
alarm_system/libfiles.a: alarm_system/CMakeFiles/files.dir/build.make
alarm_system/libfiles.a: alarm_system/CMakeFiles/files.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/anna/CLionProjects/alarm_system_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library libfiles.a"
	cd /home/anna/CLionProjects/alarm_system_project/build/alarm_system && $(CMAKE_COMMAND) -P CMakeFiles/files.dir/cmake_clean_target.cmake
	cd /home/anna/CLionProjects/alarm_system_project/build/alarm_system && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/files.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
alarm_system/CMakeFiles/files.dir/build: alarm_system/libfiles.a

.PHONY : alarm_system/CMakeFiles/files.dir/build

alarm_system/CMakeFiles/files.dir/requires: alarm_system/CMakeFiles/files.dir/alarm_system.c.o.requires
alarm_system/CMakeFiles/files.dir/requires: alarm_system/CMakeFiles/files.dir/logger.c.o.requires

.PHONY : alarm_system/CMakeFiles/files.dir/requires

alarm_system/CMakeFiles/files.dir/clean:
	cd /home/anna/CLionProjects/alarm_system_project/build/alarm_system && $(CMAKE_COMMAND) -P CMakeFiles/files.dir/cmake_clean.cmake
.PHONY : alarm_system/CMakeFiles/files.dir/clean

alarm_system/CMakeFiles/files.dir/depend:
	cd /home/anna/CLionProjects/alarm_system_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/anna/CLionProjects/alarm_system_project /home/anna/CLionProjects/alarm_system_project/alarm_system /home/anna/CLionProjects/alarm_system_project/build /home/anna/CLionProjects/alarm_system_project/build/alarm_system /home/anna/CLionProjects/alarm_system_project/build/alarm_system/CMakeFiles/files.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : alarm_system/CMakeFiles/files.dir/depend

