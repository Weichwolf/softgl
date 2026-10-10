#include "harness.h"

/* Bright fog color saturates everything past the fog end. */
static const float verts[] = {
    -0.9f, -0.9f, -0.5f,   1.f, 0.1f, 0.1f, 1.f,
     0.9f, -0.9f, -0.5f,   0.1f, 1.f, 0.1f, 1.f,
    -0.9f,  0.9f, -5.0f,   0.1f, 0.1f, 1.f, 1.f,
    -0.9f,  0.9f, -5.0f,   0.1f, 0.1f, 1.f, 1.f,
     0.9f, -0.9f, -0.5f,   0.1f, 1.f, 0.1f, 1.f,
     0.9f,  0.9f, -5.0f,   1.f, 1.f, 0.1f, 1.f,
};

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(1.f, 0.6f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect, aspect, -1, 1, 1.0, 20.0);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();

    glEnable(GL_FOG);
    glFogi(GL_FOG_MODE, GL_LINEAR);
    glFogf(GL_FOG_START, 1.0f);
    glFogf(GL_FOG_END,   4.5f);
    const float fc[4] = { 1.f, 0.6f, 0.1f, 1.f };
    glFogfv(GL_FOG_COLOR, fc);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_COLOR_ARRAY);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 6);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_COLOR_ARRAY);
    glDisable(GL_FOG);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
