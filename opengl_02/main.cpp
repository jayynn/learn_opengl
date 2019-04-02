#include <iostream>

#include <glad.h>
#include <glfw3.h>
#include "includes/shader_s.h"

using namespace std;

const int SCR_WIDTH = 800;
const int SCR_HEIGHT = 600;

#pragma mark --回调事件
void framebuffer_size_callback(GLFWwindow *window, int width, int height);

void processInput(GLFWwindow *);

int main() {


    //  初始化glfw
    if (!glfwInit()) {
        cout << "glfwInit failed" << endl;
        glfwTerminate();
        return -1;
    }

    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

#ifdef __APPLE__
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif

    //  创建窗口
    GLFWwindow *window = glfwCreateWindow(SCR_WIDTH, SCR_HEIGHT, "矩形", NULL, NULL);
    if (window == NULL) {
        cout << "Failed to create GLFW window" << endl;
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);

    //  初始化GLAD
    if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
        cout << "Failed to initialize GLAD" << endl;
        return -1;
    }

    //  窗口大小改变
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);

    //  顶点数据
    GLfloat vertices[] = {
            // 第一个三角形
            -0.5f, -0.5f, 0.0f,
             0.5f, -0.5f, 0.0f,
             0.0f,  0.5f, 0.0f
    };

    //  顶点数组对象
    GLuint VAO;
    glGenVertexArrays(1, &VAO);
    glBindVertexArray(VAO);

    //  顶点缓冲对象
    GLuint VBO;
    glGenBuffers(1, &VBO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3* sizeof(GLfloat), (void *)0);
    glEnableVertexAttribArray(0);

    Shader ourShader("./resource/shaders/shader.vs", "./resource/shaders/shader.fs");

    //  渲染循环
    while (!glfwWindowShouldClose(window)) {
        //  input
        processInput(window);

        //  render
        glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        ourShader.use();

        GLfloat xOffset = 0.5f;
        ourShader.setFloat("xOffset", xOffset);

        glBindVertexArray(VAO);
        glDrawArrays(GL_TRIANGLES, 0, 3);
        glBindVertexArray(0);

        glfwSwapBuffers(window);
        glfwPollEvents();
    }

    return 0;
}

void framebuffer_size_callback(GLFWwindow *window, int width, int height) {
    glViewport(0, 0, width, height);
}

void processInput(GLFWwindow *window) {
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS) {
        glfwSetWindowShouldClose(window, GL_TRUE);
    }
}