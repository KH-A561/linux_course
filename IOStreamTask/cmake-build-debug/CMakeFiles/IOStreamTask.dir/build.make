# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_SOURCE_DIR = /home/alexander/Apps/clion-2018.1.5/IOStreamTask

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alexander/Apps/clion-2018.1.5/IOStreamTask/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/IOStreamTask.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/IOStreamTask.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/IOStreamTask.dir/flags.make

CMakeFiles/IOStreamTask.dir/main.cpp.o: CMakeFiles/IOStreamTask.dir/flags.make
CMakeFiles/IOStreamTask.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alexander/Apps/clion-2018.1.5/IOStreamTask/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/IOStreamTask.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/IOStreamTask.dir/main.cpp.o -c /home/alexander/Apps/clion-2018.1.5/IOStreamTask/main.cpp

CMakeFiles/IOStreamTask.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/IOStreamTask.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alexander/Apps/clion-2018.1.5/IOStreamTask/main.cpp > CMakeFiles/IOStreamTask.dir/main.cpp.i

CMakeFiles/IOStreamTask.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/IOStreamTask.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alexander/Apps/clion-2018.1.5/IOStreamTask/main.cpp -o CMakeFiles/IOStreamTask.dir/main.cpp.s

# Object files for target IOStreamTask
IOStreamTask_OBJECTS = \
"CMakeFiles/IOStreamTask.dir/main.cpp.o"

# External object files for target IOStreamTask
IOStreamTask_EXTERNAL_OBJECTS =

IOStreamTask: CMakeFiles/IOStreamTask.dir/main.cpp.o
IOStreamTask: CMakeFiles/IOStreamTask.dir/build.make
IOStreamTask: CMakeFiles/IOStreamTask.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alexander/Apps/clion-2018.1.5/IOStreamTask/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable IOStreamTask"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/IOStreamTask.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/IOStreamTask.dir/build: IOStreamTask

.PHONY : CMakeFiles/IOStreamTask.dir/build

CMakeFiles/IOStreamTask.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/IOStreamTask.dir/cmake_clean.cmake
.PHONY : CMakeFiles/IOStreamTask.dir/clean

CMakeFiles/IOStreamTask.dir/depend:
	cd /home/alexander/Apps/clion-2018.1.5/IOStreamTask/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alexander/Apps/clion-2018.1.5/IOStreamTask /home/alexander/Apps/clion-2018.1.5/IOStreamTask /home/alexander/Apps/clion-2018.1.5/IOStreamTask/cmake-build-debug /home/alexander/Apps/clion-2018.1.5/IOStreamTask/cmake-build-debug /home/alexander/Apps/clion-2018.1.5/IOStreamTask/cmake-build-debug/CMakeFiles/IOStreamTask.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/IOStreamTask.dir/depend

