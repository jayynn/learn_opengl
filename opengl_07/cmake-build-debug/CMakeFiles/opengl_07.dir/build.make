# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jiangzhenyuan/Desktop/personal/c++/opengl_07

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/opengl_07.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/opengl_07.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/opengl_07.dir/flags.make

CMakeFiles/opengl_07.dir/main.cpp.o: CMakeFiles/opengl_07.dir/flags.make
CMakeFiles/opengl_07.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/opengl_07.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opengl_07.dir/main.cpp.o -c /Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/main.cpp

CMakeFiles/opengl_07.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opengl_07.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/main.cpp > CMakeFiles/opengl_07.dir/main.cpp.i

CMakeFiles/opengl_07.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opengl_07.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/main.cpp -o CMakeFiles/opengl_07.dir/main.cpp.s

CMakeFiles/opengl_07.dir/glad/glad.c.o: CMakeFiles/opengl_07.dir/flags.make
CMakeFiles/opengl_07.dir/glad/glad.c.o: ../glad/glad.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/opengl_07.dir/glad/glad.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/opengl_07.dir/glad/glad.c.o   -c /Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/glad/glad.c

CMakeFiles/opengl_07.dir/glad/glad.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/opengl_07.dir/glad/glad.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/glad/glad.c > CMakeFiles/opengl_07.dir/glad/glad.c.i

CMakeFiles/opengl_07.dir/glad/glad.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/opengl_07.dir/glad/glad.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/glad/glad.c -o CMakeFiles/opengl_07.dir/glad/glad.c.s

CMakeFiles/opengl_07.dir/includes/stb_image.cpp.o: CMakeFiles/opengl_07.dir/flags.make
CMakeFiles/opengl_07.dir/includes/stb_image.cpp.o: ../includes/stb_image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/opengl_07.dir/includes/stb_image.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/opengl_07.dir/includes/stb_image.cpp.o -c /Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/includes/stb_image.cpp

CMakeFiles/opengl_07.dir/includes/stb_image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opengl_07.dir/includes/stb_image.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/includes/stb_image.cpp > CMakeFiles/opengl_07.dir/includes/stb_image.cpp.i

CMakeFiles/opengl_07.dir/includes/stb_image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opengl_07.dir/includes/stb_image.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/includes/stb_image.cpp -o CMakeFiles/opengl_07.dir/includes/stb_image.cpp.s

# Object files for target opengl_07
opengl_07_OBJECTS = \
"CMakeFiles/opengl_07.dir/main.cpp.o" \
"CMakeFiles/opengl_07.dir/glad/glad.c.o" \
"CMakeFiles/opengl_07.dir/includes/stb_image.cpp.o"

# External object files for target opengl_07
opengl_07_EXTERNAL_OBJECTS =

opengl_07: CMakeFiles/opengl_07.dir/main.cpp.o
opengl_07: CMakeFiles/opengl_07.dir/glad/glad.c.o
opengl_07: CMakeFiles/opengl_07.dir/includes/stb_image.cpp.o
opengl_07: CMakeFiles/opengl_07.dir/build.make
opengl_07: /usr/local/Cellar/glfw/3.2.1/lib/libglfw.3.dylib
opengl_07: CMakeFiles/opengl_07.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable opengl_07"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opengl_07.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/opengl_07.dir/build: opengl_07

.PHONY : CMakeFiles/opengl_07.dir/build

CMakeFiles/opengl_07.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/opengl_07.dir/cmake_clean.cmake
.PHONY : CMakeFiles/opengl_07.dir/clean

CMakeFiles/opengl_07.dir/depend:
	cd /Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jiangzhenyuan/Desktop/personal/c++/opengl_07 /Users/jiangzhenyuan/Desktop/personal/c++/opengl_07 /Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/cmake-build-debug /Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/cmake-build-debug /Users/jiangzhenyuan/Desktop/personal/c++/opengl_07/cmake-build-debug/CMakeFiles/opengl_07.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/opengl_07.dir/depend

