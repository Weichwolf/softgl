#include "harness.h"

/* Square in XY plane rotated 45° around X — becomes a thin horizontal band. */
static const float verts[] = {
    -0.5f, -0.5f, 0.f,   1.f, 0.3f, 0.3f, 1.f,
     0.5f, -0.5f, 0.f,   1.f, 0.3f, 0.3f, 1.f,
    -0.5f,  0.5f, 0.f,   1.f, 0.3f, 0.3f, 1.f,

    -0.5f,  0.5f, 0.f,   1.f, 0.3f, 0.3f, 1.f,
     0.5f, -0.5f, 0.f,   1.f, 0.3f, 0.3f, 1.f,
     0.5f,  0.5f, 0.f,   1.f, 0.3f, 0.3f, 1.f,
};

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glRotatef(75.f, 1.f, 0.f, 0.f);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 6);
    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
