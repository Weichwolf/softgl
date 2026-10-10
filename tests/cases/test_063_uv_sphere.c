#include "harness.h"
#include <math.h>

#define US 24  /* stacks */
#define UR 24  /* slices */
static float verts[US * UR * 6 * 6];

static void build(void) {
    int k = 0;
    for (int j = 0; j < US; j++) {
        float v0 = (float)j       / US;
        float v1 = (float)(j + 1) / US;
        float phi0 = (v0 - 0.5f) * 3.14159265f;
        float phi1 = (v1 - 0.5f) * 3.14159265f;
        for (int i = 0; i < UR; i++) {
            float u0 = (float)i       / UR * 6.2831853f;
            float u1 = (float)(i + 1) / UR * 6.2831853f;
            float p00[3] = { cosf(phi0)*cosf(u0), sinf(phi0), cosf(phi0)*sinf(u0) };
            float p10[3] = { cosf(phi0)*cosf(u1), sinf(phi0), cosf(phi0)*sinf(u1) };
            float p01[3] = { cosf(phi1)*cosf(u0), sinf(phi1), cosf(phi1)*sinf(u0) };
            float p11[3] = { cosf(phi1)*cosf(u1), sinf(phi1), cosf(phi1)*sinf(u1) };
            float (*p[4])[3] = { &p00, &p10, &p01, &p11 };
            int tri[6] = { 0, 1, 2, 2, 1, 3 };
            for (int t = 0; t < 6; t++) {
                const float *pp = (*p[tri[t]]);
                verts[k++] = pp[0]*0.7f; verts[k++] = pp[1]*0.7f; verts[k++] = pp[2]*0.7f;
                verts[k++] = pp[0];      verts[k++] = pp[1];      verts[k++] = pp[2];
            }
        }
    }
}

void run_test(int w, int h) {
    build();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.02f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE); glCullFace(GL_BACK); glFrontFace(GL_CCW);
    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    const float pos[4] = { 0.5f, 0.8f, 1.f, 0.f };
    const float dif[4] = { 1.f, 1.f, 1.f, 1.f };
    const float amb[4] = { 0.08f, 0.05f, 0.1f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos); glLightfv(GL_LIGHT0, GL_DIFFUSE, dif); glLightfv(GL_LIGHT0, GL_AMBIENT, amb);
    const float mdif[4] = { 0.2f, 0.5f, 0.9f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_NORMAL_ARRAY);
    glVertexPointer(3, GL_FLOAT, 6 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, US * UR * 6);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_NORMAL_ARRAY);
    glDisable(GL_LIGHTING); glDisable(GL_CULL_FACE); glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
