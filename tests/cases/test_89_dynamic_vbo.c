#include "harness.h"
#include <math.h>

/* Compute N positions for a rotating-fan animation frame, upload via
 * glBufferData each "frame". Here we simulate a single frame at t=0.3. */

#define FN 12
static float verts[FN * 3 * 7];

static void build(float t) {
    for (int i = 0; i < FN; i++) {
        float a0 = (float)i / FN * 6.28f + t;
        float a1 = (float)(i + 1) / FN * 6.28f + t;
        float r = 0.6f + 0.1f * sinf(t * 3.f + i);
        float *p = verts + i * 3 * 7;
        p[0] = 0; p[1] = 0; p[2] = 0;
        p[3] = (float)i / FN; p[4] = 1.f - (float)i / FN; p[5] = 0.6f; p[6] = 1;
        p[7]  = cosf(a0) * r; p[8]  = sinf(a0) * r; p[9]  = 0;
        p[10] = 0.2f; p[11] = 0.8f; p[12] = 0.4f; p[13] = 1;
        p[14] = cosf(a1) * r; p[15] = sinf(a1) * r; p[16] = 0;
        p[17] = 0.8f; p[18] = 0.2f; p[19] = 0.4f; p[20] = 1;
    }
}

void run_test(int w, int h) {
    build(0.3f);
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_DYNAMIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_COLOR_ARRAY);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, FN * 3);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_COLOR_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
