#include "harness.h"

/* Long ground plane receding into the distance — GL_EXP2 fog fades color
 * to the fog color. */
static const float verts[] = {
    /* pos,              color */
    -1.f, -0.8f, -0.1f,   0.8f, 0.2f, 0.2f, 1.f,
     1.f, -0.8f, -0.1f,   0.8f, 0.2f, 0.2f, 1.f,
    -1.f,  0.8f, -8.0f,   0.8f, 0.2f, 0.2f, 1.f,
    -1.f,  0.8f, -8.0f,   0.8f, 0.2f, 0.2f, 1.f,
     1.f, -0.8f, -0.1f,   0.8f, 0.2f, 0.2f, 1.f,
     1.f,  0.8f, -8.0f,   0.8f, 0.2f, 0.2f, 1.f,
};

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.3f, 0.4f, 0.5f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect, aspect, -1, 1, 1.0, 20.0);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();

    glEnable(GL_FOG);
    glFogi(GL_FOG_MODE, GL_EXP2);
    glFogf(GL_FOG_DENSITY, 0.25f);
    const float fc[4] = { 0.3f, 0.4f, 0.5f, 1.f };
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
