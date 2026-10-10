#include "harness.h"
#include <math.h>

/* Extrude a pentagon along +z, giving 5 rectangular side faces. */
#define PN 5
static float verts[PN * 6 * 6];

static void build(void) {
    float prof[PN][2];
    for (int i = 0; i < PN; i++) {
        float a = (float)i / PN * 6.2831853f;
        prof[i][0] = cosf(a) * 0.4f;
        prof[i][1] = sinf(a) * 0.4f;
    }
    int k = 0;
    for (int i = 0; i < PN; i++) {
        int j = (i + 1) % PN;
        float p0[3] = { prof[i][0], prof[i][1], -0.3f };
        float p1[3] = { prof[j][0], prof[j][1], -0.3f };
        float p2[3] = { prof[i][0], prof[i][1],  0.3f };
        float p3[3] = { prof[j][0], prof[j][1],  0.3f };
        /* normal */
        float dx = p1[0] - p0[0], dy = p1[1] - p0[1];
        float nx = dy, ny = -dx;
        float L = sqrtf(nx*nx + ny*ny);
        if (L > 0) { nx/=L; ny/=L; }
        int tri[6] = { 0, 1, 2, 2, 1, 3 };
        float pp[4][3] = { {p0[0],p0[1],p0[2]}, {p1[0],p1[1],p1[2]},
                           {p2[0],p2[1],p2[2]}, {p3[0],p3[1],p3[2]} };
        for (int t = 0; t < 6; t++) {
            int v = tri[t];
            verts[k++] = pp[v][0]; verts[k++] = pp[v][1]; verts[k++] = pp[v][2];
            verts[k++] = nx; verts[k++] = ny; verts[k++] = 0.f;
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
    glRotatef(25.f, 0.8f, 1.f, 0.f);

    const float pos[4] = { 1.f, 1.f, 0.6f, 0.f };
    const float dif[4] = { 1.f, 1.f, 1.f, 1.f };
    const float amb[4] = { 0.1f, 0.1f, 0.1f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos); glLightfv(GL_LIGHT0, GL_DIFFUSE, dif); glLightfv(GL_LIGHT0, GL_AMBIENT, amb);
    const float mdif[4] = { 0.9f, 0.6f, 0.3f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_NORMAL_ARRAY);
    glVertexPointer(3, GL_FLOAT, 6 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, PN * 6);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_NORMAL_ARRAY);
    glDisable(GL_LIGHTING); glDisable(GL_CULL_FACE); glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
