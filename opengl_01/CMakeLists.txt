cmake_minimum_required(VERSION 3.13)
project(opengl_01)

set(CMAKE_CXX_STANDARD 14)

# 添加头文件
set(GLFW_H /usr/local/Cellar/glfw/3.2.1/include/GLFW)
set(GLAD_H /usr/local/include/glad)
set(KH_H /usr/local/include/KHR)
include_directories(${GLFW_H} ${GLAD_H} ${KH_H})


# 添加目标链接
set(GLFW_LINK /usr/local/Cellar/glfw/3.2.1/lib/libglfw.3.dylib)
link_libraries(${GLFW_LINK})

# 执行编译命令
# 这个glad.c随意你放在哪，要注意路径就好
set(SOURCE_FILES main.cpp glad/glad.c)
add_executable(opengl_01 ${SOURCE_FILES})
if (APPLE)
    target_link_libraries(opengl_01 "-framework OpenGL")
    target_link_libraries(opengl_01 "-framework GLUT")
    target_link_libraries(opengl_01 "-framework Cocoa")
    target_link_libraries(opengl_01 "-framework CoreVideo")
    target_link_libraries(opengl_01 "-framework IOKit")
endif()