#include "harness.h"

/* Opaque blue quad behind, translucent red quad in front. Depth test keeps
 * the blue visible only where it isn't covered by the red. Blend+depth work
 * together. */
static const float blue[] = {
    -0.7f, -0.7f, -0.5f,   0.1f, 0.1f, 1.f, 1.f,
     0.7f, -0.7f, -0.5f,   0.1f, 0.1f, 1.f, 1.f,
    -0.7f,  0.7f, -0.5f,   0.1f, 0.1f, 1.f, 1.f,
    -0.7f,  0.7f, -0.5f,   0.1f, 0.1f, 1.f, 1.f,
     0.7f, -0.7f, -0.5f,   0.1f, 0.1f, 1.f, 1.f,
     0.7f,  0.7f, -0.5f,   0.1f, 0.1f, 1.f, 1.f,
};
static const float red[] = {
    -0.4f, -0.4f, -0.2f,   1.f, 0.1f, 0.1f, 0.5f,
     0.4f, -0.4f, -0.2f,   1.f, 0.1f, 0.1f, 0.5f,
    -0.4f,  0.4f, -0.2f,   1.f, 0.1f, 0.1f, 0.5f,
    -0.4f,  0.4f, -0.2f,   1.f, 0.1f, 0.1f, 0.5f,
     0.4f, -0.4f, -0.2f,   1.f, 0.1f, 0.1f, 0.5f,
     0.4f,  0.4f, -0.2f,   1.f, 0.1f, 0.1f, 0.5f,
};

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClearDepth(1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, 0, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);

    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_COLOR_ARRAY);
    GLuint vbo; glGenBuffers(1, &vbo);

    /* Draw opaque first */
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(blue), blue, GL_STATIC_DRAW);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 6);

    /* Translucent second */
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    glBufferData(GL_ARRAY_BUFFER, sizeof(red), red, GL_STATIC_DRAW);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 6);

    glDisable(GL_BLEND);
    glDisable(GL_DEPTH_TEST);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_COLOR_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
