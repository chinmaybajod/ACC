# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jarvis/ACC/slim-use

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jarvis/ACC/slim-use/build

# Include any dependencies generated for this target.
include CMakeFiles/cs-ssa.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cs-ssa.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cs-ssa.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cs-ssa.dir/flags.make

CMakeFiles/cs-ssa.dir/main.cpp.o: CMakeFiles/cs-ssa.dir/flags.make
CMakeFiles/cs-ssa.dir/main.cpp.o: ../main.cpp
CMakeFiles/cs-ssa.dir/main.cpp.o: CMakeFiles/cs-ssa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jarvis/ACC/slim-use/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cs-ssa.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/cs-ssa.dir/main.cpp.o -MF CMakeFiles/cs-ssa.dir/main.cpp.o.d -o CMakeFiles/cs-ssa.dir/main.cpp.o -c /home/jarvis/ACC/slim-use/main.cpp

CMakeFiles/cs-ssa.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cs-ssa.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jarvis/ACC/slim-use/main.cpp > CMakeFiles/cs-ssa.dir/main.cpp.i

CMakeFiles/cs-ssa.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cs-ssa.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jarvis/ACC/slim-use/main.cpp -o CMakeFiles/cs-ssa.dir/main.cpp.s

# Object files for target cs-ssa
cs__ssa_OBJECTS = \
"CMakeFiles/cs-ssa.dir/main.cpp.o"

# External object files for target cs-ssa
cs__ssa_EXTERNAL_OBJECTS =

cs-ssa: CMakeFiles/cs-ssa.dir/main.cpp.o
cs-ssa: CMakeFiles/cs-ssa.dir/build.make
cs-ssa: /usr/local/lib/libslim.so
cs-ssa: /usr/lib/llvm-14/lib/libLLVM-14.so.1
cs-ssa: CMakeFiles/cs-ssa.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jarvis/ACC/slim-use/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cs-ssa"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cs-ssa.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cs-ssa.dir/build: cs-ssa
.PHONY : CMakeFiles/cs-ssa.dir/build

CMakeFiles/cs-ssa.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cs-ssa.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cs-ssa.dir/clean

CMakeFiles/cs-ssa.dir/depend:
	cd /home/jarvis/ACC/slim-use/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jarvis/ACC/slim-use /home/jarvis/ACC/slim-use /home/jarvis/ACC/slim-use/build /home/jarvis/ACC/slim-use/build /home/jarvis/ACC/slim-use/build/CMakeFiles/cs-ssa.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cs-ssa.dir/depend

