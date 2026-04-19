#include "harness.h"
#include <math.h>

/* UV sphere with a 2D texture blended via GL_MODULATE on top of Gouraud lighting. */
#define US 16
#define UR 24
static float verts[US * UR * 6 * 8];  /* pos3 + normal3 + uv2 = 8 */

static unsigned char tex[16 * 16 * 4];

static void make_tex(void) {
    for (int y = 0; y < 16; y++)
        for (int x = 0; x < 16; x++) {
            int i = (y * 16 + x) * 4;
            int stripe = ((x / 4 + y / 4) & 1);
            tex[i+0] = stripe ? 240 : 120;
            tex[i+1] = stripe ? 180 : 200;
            tex[i+2] = stripe ? 60  : 90;
            tex[i+3] = 255;
        }
}

static void build(void) {
    int k = 0;
    for (int j = 0; j < US; j++) {
        float v0 = (float)j       / US;
        float v1 = (float)(j + 1) / US;
        float phi0 = (v0 - 0.5f) * 3.14159f;
        float phi1 = (v1 - 0.5f) * 3.14159f;
        for (int i = 0; i < UR; i++) {
            float u0 = (float)i       / UR;
            float u1 = (float)(i + 1) / UR;
            float a0 = u0 * 6.28f;
            float a1 = u1 * 6.28f;
            float p00[3] = { cosf(phi0)*cosf(a0), sinf(phi0), cosf(phi0)*sinf(a0) };
            float p10[3] = { cosf(phi0)*cosf(a1), sinf(phi0), cosf(phi0)*sinf(a1) };
            float p01[3] = { cosf(phi1)*cosf(a0), sinf(phi1), cosf(phi1)*sinf(a0) };
            float p11[3] = { cosf(phi1)*cosf(a1), sinf(phi1), cosf(phi1)*sinf(a1) };
            float uvs[4][2] = { {u0,v0}, {u1,v0}, {u0,v1}, {u1,v1} };
            float *p[4] = { p00, p10, p01, p11 };
            int tri[6] = { 0, 1, 2, 2, 1, 3 };
            for (int t = 0; t < 6; t++) {
                int vv = tri[t];
                verts[k++] = p[vv][0] * 0.7f;
                verts[k++] = p[vv][1] * 0.7f;
                verts[k++] = p[vv][2] * 0.7f;
                verts[k++] = p[vv][0];
                verts[k++] = p[vv][1];
                verts[k++] = p[vv][2];
                verts[k++] = uvs[vv][0];
                verts[k++] = uvs[vv][1];
            }
        }
    }
}

void run_test(int w, int h) {
    make_tex();
    build();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.02f, 0.04f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE); glCullFace(GL_BACK); glFrontFace(GL_CCW);
    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    const float pos[4] = { 0.5f, 0.7f, 1.f, 0.f };
    const float dif[4] = { 1.f, 1.f, 1.f, 1.f };
    const float amb[4] = { 0.1f, 0.1f, 0.1f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos); glLightfv(GL_LIGHT0, GL_DIFFUSE, dif); glLightfv(GL_LIGHT0, GL_AMBIENT, amb);
    const float mdif[4] = { 1.f, 1.f, 1.f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    GLuint texid; glGenTextures(1, &texid);
    glBindTexture(GL_TEXTURE_2D, texid);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 16, 16, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_NORMAL_ARRAY); glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    glVertexPointer(3, GL_FLOAT, 8 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 8 * sizeof(float), (void*)(3 * sizeof(float)));
    glTexCoordPointer(2, GL_FLOAT, 8 * sizeof(float), (void*)(6 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, US * UR * 6);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_NORMAL_ARRAY); glDisableClientState(GL_TEXTURE_COORD_ARRAY);
    glDisable(GL_TEXTURE_2D);
    glDisable(GL_LIGHTING); glDisable(GL_CULL_FACE); glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
    glDeleteTextures(1, &texid);
}
