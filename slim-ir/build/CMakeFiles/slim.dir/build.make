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
CMAKE_SOURCE_DIR = /home/jarvis/ACC/slim-ir

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jarvis/ACC/slim-ir/build

# Include any dependencies generated for this target.
include CMakeFiles/slim.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/slim.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/slim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/slim.dir/flags.make

CMakeFiles/slim.dir/IR.cpp.o: CMakeFiles/slim.dir/flags.make
CMakeFiles/slim.dir/IR.cpp.o: ../IR.cpp
CMakeFiles/slim.dir/IR.cpp.o: CMakeFiles/slim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jarvis/ACC/slim-ir/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/slim.dir/IR.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/slim.dir/IR.cpp.o -MF CMakeFiles/slim.dir/IR.cpp.o.d -o CMakeFiles/slim.dir/IR.cpp.o -c /home/jarvis/ACC/slim-ir/IR.cpp

CMakeFiles/slim.dir/IR.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/slim.dir/IR.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jarvis/ACC/slim-ir/IR.cpp > CMakeFiles/slim.dir/IR.cpp.i

CMakeFiles/slim.dir/IR.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/slim.dir/IR.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jarvis/ACC/slim-ir/IR.cpp -o CMakeFiles/slim.dir/IR.cpp.s

CMakeFiles/slim.dir/Instructions.cpp.o: CMakeFiles/slim.dir/flags.make
CMakeFiles/slim.dir/Instructions.cpp.o: ../Instructions.cpp
CMakeFiles/slim.dir/Instructions.cpp.o: CMakeFiles/slim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jarvis/ACC/slim-ir/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/slim.dir/Instructions.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/slim.dir/Instructions.cpp.o -MF CMakeFiles/slim.dir/Instructions.cpp.o.d -o CMakeFiles/slim.dir/Instructions.cpp.o -c /home/jarvis/ACC/slim-ir/Instructions.cpp

CMakeFiles/slim.dir/Instructions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/slim.dir/Instructions.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jarvis/ACC/slim-ir/Instructions.cpp > CMakeFiles/slim.dir/Instructions.cpp.i

CMakeFiles/slim.dir/Instructions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/slim.dir/Instructions.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jarvis/ACC/slim-ir/Instructions.cpp -o CMakeFiles/slim.dir/Instructions.cpp.s

CMakeFiles/slim.dir/Operand.cpp.o: CMakeFiles/slim.dir/flags.make
CMakeFiles/slim.dir/Operand.cpp.o: ../Operand.cpp
CMakeFiles/slim.dir/Operand.cpp.o: CMakeFiles/slim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jarvis/ACC/slim-ir/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/slim.dir/Operand.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/slim.dir/Operand.cpp.o -MF CMakeFiles/slim.dir/Operand.cpp.o.d -o CMakeFiles/slim.dir/Operand.cpp.o -c /home/jarvis/ACC/slim-ir/Operand.cpp

CMakeFiles/slim.dir/Operand.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/slim.dir/Operand.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jarvis/ACC/slim-ir/Operand.cpp > CMakeFiles/slim.dir/Operand.cpp.i

CMakeFiles/slim.dir/Operand.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/slim.dir/Operand.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jarvis/ACC/slim-ir/Operand.cpp -o CMakeFiles/slim.dir/Operand.cpp.s

# Object files for target slim
slim_OBJECTS = \
"CMakeFiles/slim.dir/IR.cpp.o" \
"CMakeFiles/slim.dir/Instructions.cpp.o" \
"CMakeFiles/slim.dir/Operand.cpp.o"

# External object files for target slim
slim_EXTERNAL_OBJECTS =

libslim.so: CMakeFiles/slim.dir/IR.cpp.o
libslim.so: CMakeFiles/slim.dir/Instructions.cpp.o
libslim.so: CMakeFiles/slim.dir/Operand.cpp.o
libslim.so: CMakeFiles/slim.dir/build.make
libslim.so: /usr/lib/llvm-14/lib/libLLVM-14.so.1
libslim.so: CMakeFiles/slim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jarvis/ACC/slim-ir/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library libslim.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/slim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/slim.dir/build: libslim.so
.PHONY : CMakeFiles/slim.dir/build

CMakeFiles/slim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/slim.dir/cmake_clean.cmake
.PHONY : CMakeFiles/slim.dir/clean

CMakeFiles/slim.dir/depend:
	cd /home/jarvis/ACC/slim-ir/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jarvis/ACC/slim-ir /home/jarvis/ACC/slim-ir /home/jarvis/ACC/slim-ir/build /home/jarvis/ACC/slim-ir/build /home/jarvis/ACC/slim-ir/build/CMakeFiles/slim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/slim.dir/depend

