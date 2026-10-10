#include "harness.h"

/* Triangle that crosses the far plane. far=10, one vertex at eye.z=-12 beyond. */
static const float verts[] = {
    -0.5f, -0.5f, -2.0f,   0.3f, 1.f, 0.5f, 1.f,
     0.5f, -0.5f, -2.0f,   0.3f, 1.f, 0.5f, 1.f,
     0.0f,  0.5f, -12.f,   0.3f, 1.f, 0.5f, 1.f,
};

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect, aspect, -1, 1, 1.0, 10.0);
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
