#include "harness.h"
#include <math.h>

/* Icosahedron, each vertex normal = its unit position — produces a smooth
 * sphere-like Gouraud shading when lit. */

#define PHI 1.6180339887f
static const float ico_v[12][3] = {
    {-1, PHI, 0}, {1, PHI, 0}, {-1, -PHI, 0}, {1, -PHI, 0},
    {0, -1, PHI}, {0, 1, PHI}, {0, -1, -PHI}, {0, 1, -PHI},
    {PHI, 0, -1}, {PHI, 0, 1}, {-PHI, 0, -1}, {-PHI, 0, 1},
};
static const int ico_t[20][3] = {
    {0,11,5}, {0,5,1}, {0,1,7}, {0,7,10}, {0,10,11},
    {1,5,9}, {5,11,4}, {11,10,2}, {10,7,6}, {7,1,8},
    {3,9,4}, {3,4,2}, {3,2,6}, {3,6,8}, {3,8,9},
    {4,9,5}, {2,4,11}, {6,2,10}, {8,6,7}, {9,8,1},
};

static float verts[20 * 3 * 6];

static void build(void) {
    float inv = 1.f / sqrtf(1.f + PHI * PHI);
    for (int t = 0; t < 20; t++) {
        for (int i = 0; i < 3; i++) {
            int k = ico_t[t][i];
            float x = ico_v[k][0] * inv * 0.7f;
            float y = ico_v[k][1] * inv * 0.7f;
            float z = ico_v[k][2] * inv * 0.7f;
            float nx = ico_v[k][0] * inv;
            float ny = ico_v[k][1] * inv;
            float nz = ico_v[k][2] * inv;
            float *p = verts + (t * 3 + i) * 6;
            p[0]=x; p[1]=y; p[2]=z; p[3]=nx; p[4]=ny; p[5]=nz;
        }
    }
}

void run_test(int w, int h) {
    build();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClearDepth(1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);
    glEnable(GL_CULL_FACE); glCullFace(GL_BACK); glFrontFace(GL_CCW);
    glEnable(GL_LIGHTING);
    glEnable(GL_LIGHT0);

    const float zero[4] = { 0.f, 0.f, 0.f, 1.f };
    const float pos[4]  = { 0.6f, 0.8f, 0.5f, 0.f };
    const float dif[4]  = { 1.f, 1.f, 1.f, 1.f };
    const float amb[4]  = { 0.1f, 0.1f, 0.1f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE,  dif);
    glLightfv(GL_LIGHT0, GL_AMBIENT,  amb);
    glLightfv(GL_LIGHT0, GL_SPECULAR, zero);

    const float mdif[4] = { 0.8f, 0.3f, 0.5f, 1.f };
    const float mamb[4] = { 0.2f, 0.1f, 0.1f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);
    glMaterialfv(GL_FRONT, GL_AMBIENT, mamb);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_NORMAL_ARRAY);
    glVertexPointer(3, GL_FLOAT, 6 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 20 * 3);
    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_NORMAL_ARRAY);
    glDisable(GL_LIGHTING);
    glDisable(GL_CULL_FACE);
    glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
