#include "harness.h"

/* Allocate larger buffer, then rewrite middle via glBufferSubData. */
static const float initial[6 * 7] = {
    /* first tri: red, will stay */
    -0.7f, -0.4f, 0.f,   1.f, 0.f, 0.f, 1.f,
    -0.1f, -0.4f, 0.f,   1.f, 0.f, 0.f, 1.f,
    -0.4f,  0.3f, 0.f,   1.f, 0.f, 0.f, 1.f,
    /* second tri placeholder (gray) — overwritten via glBufferSubData */
     0.1f, -0.4f, 0.f,   0.5f, 0.5f, 0.5f, 1.f,
     0.7f, -0.4f, 0.f,   0.5f, 0.5f, 0.5f, 1.f,
     0.4f,  0.3f, 0.f,   0.5f, 0.5f, 0.5f, 1.f,
};
static const float replacement[3 * 7] = {
     0.1f, -0.4f, 0.f,   0.f, 1.f, 0.3f, 1.f,
     0.7f, -0.4f, 0.f,   0.f, 1.f, 0.3f, 1.f,
     0.4f,  0.3f, 0.f,   0.f, 1.f, 0.3f, 1.f,
};

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(initial), initial, GL_DYNAMIC_DRAW);
    /* Rewrite the second half */
    glBufferSubData(GL_ARRAY_BUFFER, 3 * 7 * sizeof(float), sizeof(replacement), replacement);

    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_COLOR_ARRAY);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 6);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_COLOR_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
