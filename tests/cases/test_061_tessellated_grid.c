#include "harness.h"
#include <math.h>

/* 32x32 grid of quads with sinusoidal height. Lit flat (normal pointing up). */

#define N 32
static float verts[(N - 1) * (N - 1) * 6 * 6];

static void build(void) {
    int k = 0;
    for (int j = 0; j < N - 1; j++) {
        for (int i = 0; i < N - 1; i++) {
            float x0 = -1.f + 2.f * i / (N - 1);
            float x1 = -1.f + 2.f * (i + 1) / (N - 1);
            float y0 = -1.f + 2.f * j / (N - 1);
            float y1 = -1.f + 2.f * (j + 1) / (N - 1);
            float h00 = 0.1f * sinf(4.f * x0) * cosf(4.f * y0);
            float h10 = 0.1f * sinf(4.f * x1) * cosf(4.f * y0);
            float h01 = 0.1f * sinf(4.f * x0) * cosf(4.f * y1);
            float h11 = 0.1f * sinf(4.f * x1) * cosf(4.f * y1);
            float p[4][3] = {
                {x0, y0, h00}, {x1, y0, h10}, {x0, y1, h01}, {x1, y1, h11}
            };
            int tri[6] = { 0, 1, 2, 2, 1, 3 };
            for (int t = 0; t < 6; t++) {
                int v = tri[t];
                verts[k++] = p[v][0]; verts[k++] = p[v][1]; verts[k++] = p[v][2];
                verts[k++] = 0.f;     verts[k++] = 0.f;     verts[k++] = 1.f;
            }
        }
    }
}

void run_test(int w, int h) {
    build();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    glEnable(GL_DEPTH_TEST);
    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    const float pos[4] = { 0.5f, 0.5f, 1.f, 0.f };
    const float dif[4] = { 0.9f, 0.9f, 0.9f, 1.f };
    const float amb[4] = { 0.1f, 0.1f, 0.1f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE,  dif);
    glLightfv(GL_LIGHT0, GL_AMBIENT,  amb);

    const float mdif[4] = { 0.3f, 0.8f, 0.5f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_NORMAL_ARRAY);
    glVertexPointer(3, GL_FLOAT, 6 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, (N - 1) * (N - 1) * 6);
    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_NORMAL_ARRAY);
    glDisable(GL_LIGHTING);
    glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
