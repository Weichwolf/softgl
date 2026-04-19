#include "harness.h"
#include <math.h>

#define TU 24
#define TV 16
static float verts[TU * TV * 6 * 6];

static void build(void) {
    const float R = 0.5f, r = 0.2f;
    int k = 0;
    for (int j = 0; j < TV; j++) {
        float v0 = (float)j       / TV * 6.2831853f;
        float v1 = (float)(j + 1) / TV * 6.2831853f;
        for (int i = 0; i < TU; i++) {
            float u0 = (float)i       / TU * 6.2831853f;
            float u1 = (float)(i + 1) / TU * 6.2831853f;
            float us[2] = { u0, u1 };
            float vs[2] = { v0, v1 };
            float p[4][3], n[4][3];
            int idx = 0;
            for (int a = 0; a < 2; a++)
                for (int b = 0; b < 2; b++) {
                    float cu = cosf(us[b]), su = sinf(us[b]);
                    float cv = cosf(vs[a]), sv = sinf(vs[a]);
                    p[idx][0] = (R + r * cv) * cu;
                    p[idx][1] = r * sv;
                    p[idx][2] = (R + r * cv) * su;
                    n[idx][0] = cv * cu;
                    n[idx][1] = sv;
                    n[idx][2] = cv * su;
                    idx++;
                }
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
    glClearColor(0.f, 0.02f, 0.05f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE); glCullFace(GL_BACK); glFrontFace(GL_CCW);
    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glRotatef(55.f, 1.f, 0.3f, 0.f);

    const float pos[4] = { 0.5f, 0.8f, 0.6f, 0.f };
    const float dif[4] = { 1.f, 1.f, 1.f, 1.f };
    const float amb[4] = { 0.08f, 0.08f, 0.1f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos); glLightfv(GL_LIGHT0, GL_DIFFUSE, dif); glLightfv(GL_LIGHT0, GL_AMBIENT, amb);
    const float mdif[4] = { 0.8f, 0.7f, 0.2f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_NORMAL_ARRAY);
    glVertexPointer(3, GL_FLOAT, 6 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, TU * TV * 6);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_NORMAL_ARRAY);
    glDisable(GL_LIGHTING); glDisable(GL_CULL_FACE); glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
