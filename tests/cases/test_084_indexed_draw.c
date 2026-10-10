#include "harness.h"

/* Quad via glDrawElements + index buffer. */
static const float verts[] = {
    -0.6f, -0.6f, 0.f,   0.9f, 0.2f, 0.2f, 1.f,
     0.6f, -0.6f, 0.f,   0.2f, 0.9f, 0.2f, 1.f,
    -0.6f,  0.6f, 0.f,   0.2f, 0.2f, 0.9f, 1.f,
     0.6f,  0.6f, 0.f,   0.9f, 0.9f, 0.2f, 1.f,
};
static const unsigned short indices[] = { 0, 1, 2, 2, 1, 3 };

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    GLuint vbo, ebo;
    glGenBuffers(1, &vbo); glGenBuffers(1, &ebo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, ebo);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);

    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_COLOR_ARRAY);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_SHORT, (void*)0);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_COLOR_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
    glDeleteBuffers(1, &ebo);
}
