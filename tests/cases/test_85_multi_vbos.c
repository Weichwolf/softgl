#include "harness.h"

/* Two separate VBOs rendered in sequence. */
static const float tri1[] = {
    -0.6f, -0.3f, 0.f,   1.f, 0.4f, 0.1f, 1.f,
    -0.1f, -0.3f, 0.f,   1.f, 0.4f, 0.1f, 1.f,
    -0.35f, 0.4f, 0.f,   1.f, 0.4f, 0.1f, 1.f,
};
static const float tri2[] = {
     0.1f, -0.3f, 0.f,   0.1f, 0.4f, 1.f, 1.f,
     0.6f, -0.3f, 0.f,   0.1f, 0.4f, 1.f, 1.f,
     0.35f, 0.4f, 0.f,   0.1f, 0.4f, 1.f, 1.f,
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

    GLuint vbo[2];
    glGenBuffers(2, vbo);

    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_COLOR_ARRAY);

    glBindBuffer(GL_ARRAY_BUFFER, vbo[0]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(tri1), tri1, GL_STATIC_DRAW);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 3);

    glBindBuffer(GL_ARRAY_BUFFER, vbo[1]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(tri2), tri2, GL_STATIC_DRAW);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 3);

    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_COLOR_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(2, vbo);
}
