#include "harness.h"
#include <math.h>

/* Loft: circle scaled along a spine — tube with varying radius. */
#define LS 24
#define LN 16
static float verts[(LS - 1) * LN * 6 * 6];

static void build(void) {
    int k = 0;
    for (int i = 0; i < LS - 1; i++) {
        float t0 = (float)i       / (LS - 1);
        float t1 = (float)(i + 1) / (LS - 1);
        float r0 = 0.1f + 0.25f * sinf(t0 * 6.28f);
        float r1 = 0.1f + 0.25f * sinf(t1 * 6.28f);
        float z0 = -0.7f + 1.4f * t0;
        float z1 = -0.7f + 1.4f * t1;
        for (int j = 0; j < LN; j++) {
            float a0 = (float)j       / LN * 6.28f;
            float a1 = (float)(j + 1) / LN * 6.28f;
            float c0 = cosf(a0), s0 = sinf(a0);
            float c1 = cosf(a1), s1 = sinf(a1);
            float p[4][3] = {
                { c0 * r0, s0 * r0, z0 },
                { c1 * r0, s1 * r0, z0 },
                { c0 * r1, s0 * r1, z1 },
                { c1 * r1, s1 * r1, z1 },
            };
            float n[4][3] = {
                { c0, s0, 0 }, { c1, s1, 0 }, { c0, s0, 0 }, { c1, s1, 0 }
            };
            int tri[6] = { 0, 1, 2, 2, 1, 3 };
            for (int t = 0; t < 6; t++) {
                int v = tri[t];
                verts[k++] = p[v][0]; verts[k++] = p[v][1]; verts[k++] = p[v][2];
                verts[k++] = n[v][0]; verts[k++] = n[v][1]; verts[k++] = n[v][2];
            }
        }
    }
}

void run_test(int w, int h) {
    build();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.0f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE); glCullFace(GL_BACK); glFrontFace(GL_CCW);
    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glRotatef(30.f, 1.f, 0.4f, 0.f);

    const float pos[4] = { 0.5f, 0.7f, 1.f, 0.f };
    const float dif[4] = { 1.f, 1.f, 1.f, 1.f };
    const float amb[4] = { 0.1f, 0.1f, 0.15f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos); glLightfv(GL_LIGHT0, GL_DIFFUSE, dif); glLightfv(GL_LIGHT0, GL_AMBIENT, amb);
    const float mdif[4] = { 0.3f, 0.6f, 0.9f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_NORMAL_ARRAY);
    glVertexPointer(3, GL_FLOAT, 6 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, (LS - 1) * LN * 6);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_NORMAL_ARRAY);
    glDisable(GL_LIGHTING); glDisable(GL_CULL_FACE); glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
