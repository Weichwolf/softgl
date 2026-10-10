#include "harness.h"
#include <math.h>

/* A fan of triangles, some entirely inside, some crossing frustum edges.
 * Many independent clip cases in one draw call. */

#define N 32

static float verts[N * 3 * 7];

static void build_verts(void) {
    for (int i = 0; i < N; i++) {
        float a0 = (float)i       / N * 6.2831853f;
        float a1 = (float)(i + 1) / N * 6.2831853f;
        /* radius alternates between inside-viewport and outside */
        float r0 = (i & 1) ? 1.6f : 0.8f;
        float r1 = r0;
        float *p = verts + i * 3 * 7;
        p[0] = 0.0f;       p[1] = 0.0f;       p[2] = 0.f;
        p[3] = (float)i / N; p[4] = 1.f - (float)i / N; p[5] = 0.5f; p[6] = 1.f;
        p[7]  = cosf(a0) * r0; p[8]  = sinf(a0) * r0; p[9]  = 0.f;
        p[10] = 0.2f; p[11] = 0.8f; p[12] = 0.3f; p[13] = 1.f;
        p[14] = cosf(a1) * r1; p[15] = sinf(a1) * r1; p[16] = 0.f;
        p[17] = 0.8f; p[18] = 0.2f; p[19] = 0.3f; p[20] = 1.f;
    }
}

void run_test(int w, int h) {
    build_verts();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.15f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);
    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, N * 3);
    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
