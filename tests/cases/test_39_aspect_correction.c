#include "harness.h"

/* Wide viewport would normally squish the geometry; projection compensates
 * via aspect ratio. Triangle should stay an equilateral. */
static const float verts[] = {
    -0.5f, -0.4f, 0.f,   1.f, 1.f, 1.f, 1.f,
     0.5f, -0.4f, 0.f,   1.f, 0.f, 0.f, 1.f,
     0.0f,  0.4f, 0.f,   0.f, 1.f, 0.f, 1.f,
};

void run_test(int w, int h) {
    /* Non-square viewport */
    int vw = w;
    int vh = h / 2;
    glViewport(0, h / 4, vw, vh);
    glClearColor(0.05f, 0.05f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)vw / (float)vh;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 3);
    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
