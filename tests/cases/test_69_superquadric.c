#include "harness.h"
#include <math.h>

/* Superellipsoid (Barr, 1981): |x|^e + |y|^e + |z|^e = 1, parameterized as
 * P(u,v) = (cos(u)^e * cos(v)^e, sin(v)^e, sin(u)^e * cos(v)^e). */
#define SU 24
#define SV 16
static float verts[SU * SV * 6 * 6];

static float sign_pow(float x, float e) {
    float s = x < 0 ? -1.f : 1.f;
    return s * powf(fabsf(x), e);
}

static void build(void) {
    const float ex = 0.5f;
    int k = 0;
    for (int j = 0; j < SV; j++) {
        float v0 = -1.5f + 3.14159265f * (float)j       / SV;
        float v1 = -1.5f + 3.14159265f * (float)(j + 1) / SV;
        for (int i = 0; i < SU; i++) {
            float u0 = (float)i       / SU * 6.2831853f;
            float u1 = (float)(i + 1) / SU * 6.2831853f;
            float us[2] = { u0, u1 };
            float vs[2] = { v0, v1 };
            float p[4][3];
            int idx = 0;
            for (int a = 0; a < 2; a++)
                for (int b = 0; b < 2; b++) {
                    float cu = sign_pow(cosf(us[b]), ex);
                    float su = sign_pow(sinf(us[b]), ex);
                    float cv = sign_pow(cosf(vs[a]), ex);
                    float sv = sign_pow(sinf(vs[a]), ex);
                    p[idx][0] = cu * cv * 0.6f;
                    p[idx][1] = sv * 0.6f;
                    p[idx][2] = su * cv * 0.6f;
                    idx++;
                }
            /* Face normal from edges. */
            float ux = p[1][0]-p[0][0], uy = p[1][1]-p[0][1], uz = p[1][2]-p[0][2];
            float vx = p[2][0]-p[0][0], vy = p[2][1]-p[0][1], vz = p[2][2]-p[0][2];
            float nx = uy*vz - uz*vy, ny = uz*vx - ux*vz, nz = ux*vy - uy*vx;
            float L = sqrtf(nx*nx + ny*ny + nz*nz);
            if (L > 0) { nx/=L; ny/=L; nz/=L; }
            int tri[6] = { 0, 1, 2, 2, 1, 3 };
            for (int t = 0; t < 6; t++) {
                int vv = tri[t];
                verts[k++] = p[vv][0]; verts[k++] = p[vv][1]; verts[k++] = p[vv][2];
                verts[k++] = nx; verts[k++] = ny; verts[k++] = nz;
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
    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glRotatef(35.f, 1.f, 0.6f, 0.2f);

    const float pos[4] = { 0.5f, 0.8f, 1.f, 0.f };
    const float dif[4] = { 1.f, 1.f, 1.f, 1.f };
    const float amb[4] = { 0.08f, 0.05f, 0.1f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos); glLightfv(GL_LIGHT0, GL_DIFFUSE, dif); glLightfv(GL_LIGHT0, GL_AMBIENT, amb);
    const float mdif[4] = { 0.7f, 0.5f, 0.9f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_NORMAL_ARRAY);
    glVertexPointer(3, GL_FLOAT, 6 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, SU * SV * 6);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_NORMAL_ARRAY);
    glDisable(GL_LIGHTING); glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
