#include "harness.h"
#include <math.h>

#define CS 24
static float verts[CS * 6 * 6];

static void build(void) {
    int k = 0;
    for (int i = 0; i < CS; i++) {
        float a0 = (float)i       / CS * 6.2831853f;
        float a1 = (float)(i + 1) / CS * 6.2831853f;
        float c0 = cosf(a0), s0 = sinf(a0);
        float c1 = cosf(a1), s1 = sinf(a1);
        float r = 0.4f;
        float zt = -0.6f, zb = 0.6f;
        float p[4][3] = {
            {c0*r, zt, s0*r}, {c1*r, zt, s1*r},
            {c0*r, zb, s0*r}, {c1*r, zb, s1*r},
        };
        float n[4][3] = {
            {c0, 0, s0}, {c1, 0, s1}, {c0, 0, s0}, {c1, 0, s1}
        };
        int tri[6] = { 0, 1, 2, 2, 1, 3 };
        for (int t = 0; t < 6; t++) {
            int v = tri[t];
            verts[k++] = p[v][0]; verts[k++] = p[v][1]; verts[k++] = p[v][2];
            verts[k++] = n[v][0]; verts[k++] = n[v][1]; verts[k++] = n[v][2];
        }
    }
}

void run_test(int w, int h) {
    build();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.05f, 0.05f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST); glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    glEnable(GL_CULL_FACE); glCullFace(GL_BACK); glFrontFace(GL_CCW);
    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glRotatef(20.f, 1.f, 0.3f, 0.f);
    const float pos[4] = { 1.f, 0.5f, 0.5f, 0.f };
    const float dif[4] = { 1.f, 1.f, 1.f, 1.f };
    const float amb[4] = { 0.1f, 0.1f, 0.1f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos); glLightfv(GL_LIGHT0, GL_DIFFUSE, dif); glLightfv(GL_LIGHT0, GL_AMBIENT, amb);
    const float mdif[4] = { 0.9f, 0.3f, 0.5f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_NORMAL_ARRAY);
    glVertexPointer(3, GL_FLOAT, 6 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, CS * 6);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_NORMAL_ARRAY);
    glDisable(GL_LIGHTING); glDisable(GL_CULL_FACE); glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
