# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/jetbrains/apps/CLion/ch-0/211.7442.42/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/jetbrains/apps/CLion/ch-0/211.7442.42/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/paolinsky/CLionProjects/PASH

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/paolinsky/CLionProjects/PASH/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/pash.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pash.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pash.dir/flags.make

CMakeFiles/pash.dir/main.c.o: CMakeFiles/pash.dir/flags.make
CMakeFiles/pash.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paolinsky/CLionProjects/PASH/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/pash.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pash.dir/main.c.o -c /home/paolinsky/CLionProjects/PASH/main.c

CMakeFiles/pash.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pash.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/paolinsky/CLionProjects/PASH/main.c > CMakeFiles/pash.dir/main.c.i

CMakeFiles/pash.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pash.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/paolinsky/CLionProjects/PASH/main.c -o CMakeFiles/pash.dir/main.c.s

CMakeFiles/pash.dir/shell_usage/term_utils.c.o: CMakeFiles/pash.dir/flags.make
CMakeFiles/pash.dir/shell_usage/term_utils.c.o: ../shell_usage/term_utils.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paolinsky/CLionProjects/PASH/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/pash.dir/shell_usage/term_utils.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pash.dir/shell_usage/term_utils.c.o -c /home/paolinsky/CLionProjects/PASH/shell_usage/term_utils.c

CMakeFiles/pash.dir/shell_usage/term_utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pash.dir/shell_usage/term_utils.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/paolinsky/CLionProjects/PASH/shell_usage/term_utils.c > CMakeFiles/pash.dir/shell_usage/term_utils.c.i

CMakeFiles/pash.dir/shell_usage/term_utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pash.dir/shell_usage/term_utils.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/paolinsky/CLionProjects/PASH/shell_usage/term_utils.c -o CMakeFiles/pash.dir/shell_usage/term_utils.c.s

CMakeFiles/pash.dir/shell_usage/shell_commands.c.o: CMakeFiles/pash.dir/flags.make
CMakeFiles/pash.dir/shell_usage/shell_commands.c.o: ../shell_usage/shell_commands.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paolinsky/CLionProjects/PASH/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/pash.dir/shell_usage/shell_commands.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pash.dir/shell_usage/shell_commands.c.o -c /home/paolinsky/CLionProjects/PASH/shell_usage/shell_commands.c

CMakeFiles/pash.dir/shell_usage/shell_commands.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pash.dir/shell_usage/shell_commands.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/paolinsky/CLionProjects/PASH/shell_usage/shell_commands.c > CMakeFiles/pash.dir/shell_usage/shell_commands.c.i

CMakeFiles/pash.dir/shell_usage/shell_commands.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pash.dir/shell_usage/shell_commands.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/paolinsky/CLionProjects/PASH/shell_usage/shell_commands.c -o CMakeFiles/pash.dir/shell_usage/shell_commands.c.s

CMakeFiles/pash.dir/utils/utils.c.o: CMakeFiles/pash.dir/flags.make
CMakeFiles/pash.dir/utils/utils.c.o: ../utils/utils.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/paolinsky/CLionProjects/PASH/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/pash.dir/utils/utils.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pash.dir/utils/utils.c.o -c /home/paolinsky/CLionProjects/PASH/utils/utils.c

CMakeFiles/pash.dir/utils/utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pash.dir/utils/utils.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/paolinsky/CLionProjects/PASH/utils/utils.c > CMakeFiles/pash.dir/utils/utils.c.i

CMakeFiles/pash.dir/utils/utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pash.dir/utils/utils.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/paolinsky/CLionProjects/PASH/utils/utils.c -o CMakeFiles/pash.dir/utils/utils.c.s

# Object files for target pash
pash_OBJECTS = \
"CMakeFiles/pash.dir/main.c.o" \
"CMakeFiles/pash.dir/shell_usage/term_utils.c.o" \
"CMakeFiles/pash.dir/shell_usage/shell_commands.c.o" \
"CMakeFiles/pash.dir/utils/utils.c.o"

# External object files for target pash
pash_EXTERNAL_OBJECTS =

pash: CMakeFiles/pash.dir/main.c.o
pash: CMakeFiles/pash.dir/shell_usage/term_utils.c.o
pash: CMakeFiles/pash.dir/shell_usage/shell_commands.c.o
pash: CMakeFiles/pash.dir/utils/utils.c.o
pash: CMakeFiles/pash.dir/build.make
pash: CMakeFiles/pash.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/paolinsky/CLionProjects/PASH/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable pash"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pash.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pash.dir/build: pash

.PHONY : CMakeFiles/pash.dir/build

CMakeFiles/pash.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pash.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pash.dir/clean

CMakeFiles/pash.dir/depend:
	cd /home/paolinsky/CLionProjects/PASH/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/paolinsky/CLionProjects/PASH /home/paolinsky/CLionProjects/PASH /home/paolinsky/CLionProjects/PASH/cmake-build-debug /home/paolinsky/CLionProjects/PASH/cmake-build-debug /home/paolinsky/CLionProjects/PASH/cmake-build-debug/CMakeFiles/pash.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pash.dir/depend

