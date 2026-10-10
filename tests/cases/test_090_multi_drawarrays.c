#include "harness.h"

/* One large VBO partitioned into ranges; multiple glDrawArrays calls with
 * different first/count. */

static const float verts[] = {
    /* Range 0: 3 verts — red triangle top-left */
    -0.8f,  0.2f, 0.f,   1.f, 0.f, 0.f, 1.f,
    -0.3f,  0.2f, 0.f,   1.f, 0.f, 0.f, 1.f,
    -0.55f, 0.7f, 0.f,   1.f, 0.f, 0.f, 1.f,
    /* Range 1: 3 verts — green tri top-right */
     0.3f,  0.2f, 0.f,   0.f, 1.f, 0.f, 1.f,
     0.8f,  0.2f, 0.f,   0.f, 1.f, 0.f, 1.f,
     0.55f, 0.7f, 0.f,   0.f, 1.f, 0.f, 1.f,
    /* Range 2: 3 verts — blue tri bottom */
    -0.25f, -0.7f, 0.f,  0.f, 0.f, 1.f, 1.f,
     0.25f, -0.7f, 0.f,  0.f, 0.f, 1.f, 1.f,
     0.0f,  -0.2f, 0.f,  0.f, 0.f, 1.f, 1.f,
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
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_COLOR_ARRAY);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 3);
    glDrawArrays(GL_TRIANGLES, 3, 3);
    glDrawArrays(GL_TRIANGLES, 6, 3);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_COLOR_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
