#include "harness.h"

/* Premultiplied alpha: src color already includes alpha, use ONE / ONE_MINUS_SRC_ALPHA. */
static const float verts[] = {
    -0.5f, -0.5f, 0.f,   0.8f, 0.1f, 0.1f, 0.8f,   /* color = color*alpha */
     0.5f, -0.5f, 0.f,   0.8f, 0.1f, 0.1f, 0.8f,
    -0.5f,  0.5f, 0.f,   0.8f, 0.1f, 0.1f, 0.8f,
    -0.5f,  0.5f, 0.f,   0.8f, 0.1f, 0.1f, 0.8f,
     0.5f, -0.5f, 0.f,   0.8f, 0.1f, 0.1f, 0.8f,
     0.5f,  0.5f, 0.f,   0.8f, 0.1f, 0.1f, 0.8f,
};

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.2f, 0.5f, 0.2f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    glEnable(GL_BLEND);
    glBlendFunc(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_COLOR_ARRAY);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 6);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_COLOR_ARRAY);
    glDisable(GL_BLEND);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
