#include "harness.h"
#include <math.h>

/* Icosahedron with one level of midpoint subdivision → 80 triangles.
 * Demonstrates procedural sphere construction from minimal primitives. */

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

static float verts[80 * 3 * 6];

static void vnorm(float *v) {
    float L = sqrtf(v[0]*v[0] + v[1]*v[1] + v[2]*v[2]);
    if (L > 0) { v[0]/=L; v[1]/=L; v[2]/=L; }
}

static void push_vtx(float *out, int *idx, const float p[3]) {
    int i = *idx;
    out[i*6+0] = p[0]*0.6f; out[i*6+1] = p[1]*0.6f; out[i*6+2] = p[2]*0.6f;
    out[i*6+3] = p[0];      out[i*6+4] = p[1];      out[i*6+5] = p[2];
    (*idx)++;
}

static void build(void) {
    int idx = 0;
    float inv = 1.f / sqrtf(1.f + PHI * PHI);
    for (int t = 0; t < 20; t++) {
        float a[3] = { ico_v[ico_t[t][0]][0] * inv, ico_v[ico_t[t][0]][1] * inv, ico_v[ico_t[t][0]][2] * inv };
        float b[3] = { ico_v[ico_t[t][1]][0] * inv, ico_v[ico_t[t][1]][1] * inv, ico_v[ico_t[t][1]][2] * inv };
        float c[3] = { ico_v[ico_t[t][2]][0] * inv, ico_v[ico_t[t][2]][1] * inv, ico_v[ico_t[t][2]][2] * inv };
        float ab[3] = { (a[0]+b[0])*0.5f, (a[1]+b[1])*0.5f, (a[2]+b[2])*0.5f };
        float bc[3] = { (b[0]+c[0])*0.5f, (b[1]+c[1])*0.5f, (b[2]+c[2])*0.5f };
        float ca[3] = { (c[0]+a[0])*0.5f, (c[1]+a[1])*0.5f, (c[2]+a[2])*0.5f };
        vnorm(ab); vnorm(bc); vnorm(ca);
        push_vtx(verts, &idx, a);  push_vtx(verts, &idx, ab); push_vtx(verts, &idx, ca);
        push_vtx(verts, &idx, b);  push_vtx(verts, &idx, bc); push_vtx(verts, &idx, ab);
        push_vtx(verts, &idx, c);  push_vtx(verts, &idx, ca); push_vtx(verts, &idx, bc);
        push_vtx(verts, &idx, ab); push_vtx(verts, &idx, bc); push_vtx(verts, &idx, ca);
    }
}

void run_test(int w, int h) {
    build();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.05f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glEnable(GL_DEPTH_TEST);
    glEnable(GL_CULL_FACE); glCullFace(GL_BACK); glFrontFace(GL_CCW);
    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);

    const float pos[4] = { 0.8f, 0.4f, 1.f, 0.f };
    const float dif[4] = { 1.f, 1.f, 1.f, 1.f };
    const float amb[4] = { 0.1f, 0.1f, 0.15f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE,  dif);
    glLightfv(GL_LIGHT0, GL_AMBIENT,  amb);

    const float mdif[4] = { 0.9f, 0.5f, 0.2f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_NORMAL_ARRAY);
    glVertexPointer(3, GL_FLOAT, 6 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 80 * 3);
    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_NORMAL_ARRAY);
    glDisable(GL_LIGHTING);
    glDisable(GL_CULL_FACE);
    glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
