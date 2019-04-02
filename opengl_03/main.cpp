#include <iostream>

#include <glad.h>
#include <glfw3.h>
#include <math.h>

#include "includes/stb_image.h"
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
            // ---- 位置 ----  - 纹理坐标 -
            -0.5f, -0.5f, 0.0f,  0.0f, 0.0f,
             0.5f, -0.5f, 0.0f,  1.0f, 0.0f,
             0.0f,  0.5f, 0.0f,  0.5f, 1.0f
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
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(GLfloat), (void *)0);
    glEnableVertexAttribArray(0);

    Shader ourShader("./resource/shaders/shader.vs", "./resource/shaders/shader.fs");


    //  纹理生成
    GLuint texture;
    glGenTextures(1, &texture);
    glBindTexture(GL_TEXTURE_2D, texture);
    //  为当前绑定的纹理对象设置环绕、过滤方式
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    //  加载并生成纹理
    int width, height, nrChannels;
    unsigned char* data = stbi_load("./resource/textures/wall.jpg", &width, &height, &nrChannels, 0);
    if (data) {
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data);
        glGenerateMipmap(GL_TEXTURE_2D);
    } else {
        cout << "Failed to load texture" << endl;
    }
    stbi_image_free(data);

    glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(GLfloat), (void *)(3 * sizeof(GLfloat)));
    glEnableVertexAttribArray(1);


    //  渲染循环
    while (!glfwWindowShouldClose(window)) {
        //  input
        processInput(window);

        //  render
        glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        ourShader.use();


        GLfloat xOffset = sin(glfwGetTime())/2.0;
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