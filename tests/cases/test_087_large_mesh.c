#include "harness.h"
#include <math.h>

/* 96x96 tessellated disk → ~9200 triangles, all through one VBO. */
#define LS 96
static float verts[LS * LS * 6 * 7];

static void build(void) {
    int k = 0;
    for (int j = 0; j < LS; j++)
        for (int i = 0; i < LS; i++) {
            float u0 = (float)i / LS - 0.5f;
            float v0 = (float)j / LS - 0.5f;
            float u1 = (float)(i + 1) / LS - 0.5f;
            float v1 = (float)(j + 1) / LS - 0.5f;
            float p[4][2] = { {u0, v0}, {u1, v0}, {u0, v1}, {u1, v1} };
            float col[3] = {
                (float)i / LS,
                (float)j / LS,
                0.5f + 0.3f * sinf(8 * (u0 + v0)),
            };
            int tri[6] = { 0, 1, 2, 2, 1, 3 };
            for (int t = 0; t < 6; t++) {
                int vi = tri[t];
                verts[k++] = p[vi][0] * 1.6f;
                verts[k++] = p[vi][1] * 1.6f;
                verts[k++] = 0.f;
                verts[k++] = col[0];
                verts[k++] = col[1];
                verts[k++] = col[2];
                verts[k++] = 1.f;
            }
        }
}

void run_test(int w, int h) {
    build();
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
    glDrawArrays(GL_TRIANGLES, 0, LS * LS * 6);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_COLOR_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
