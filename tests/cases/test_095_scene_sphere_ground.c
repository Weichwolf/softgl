#include "harness.h"
#include <math.h>

/* Lit textured sphere above a ground plane, with fog. */

#define US 12
#define UR 18
static float sphere_verts[US * UR * 6 * 6];
static unsigned char ground_tex[4 * 4 * 4];

static void build_sphere(void) {
    int k = 0;
    for (int j = 0; j < US; j++) {
        float v0 = (float)j / US, v1 = (float)(j + 1) / US;
        float phi0 = (v0 - 0.5f) * 3.14f, phi1 = (v1 - 0.5f) * 3.14f;
        for (int i = 0; i < UR; i++) {
            float a0 = (float)i / UR * 6.28f, a1 = (float)(i + 1) / UR * 6.28f;
            float p00[3] = { cosf(phi0)*cosf(a0), sinf(phi0), cosf(phi0)*sinf(a0) };
            float p10[3] = { cosf(phi0)*cosf(a1), sinf(phi0), cosf(phi0)*sinf(a1) };
            float p01[3] = { cosf(phi1)*cosf(a0), sinf(phi1), cosf(phi1)*sinf(a0) };
            float p11[3] = { cosf(phi1)*cosf(a1), sinf(phi1), cosf(phi1)*sinf(a1) };
            float *p[4] = { p00, p10, p01, p11 };
            int tri[6] = { 0, 1, 2, 2, 1, 3 };
            for (int t = 0; t < 6; t++) {
                int vv = tri[t];
                sphere_verts[k++] = p[vv][0] * 0.4f + 0.f;
                sphere_verts[k++] = p[vv][1] * 0.4f + 0.2f;
                sphere_verts[k++] = p[vv][2] * 0.4f - 2.f;
                sphere_verts[k++] = p[vv][0];
                sphere_verts[k++] = p[vv][1];
                sphere_verts[k++] = p[vv][2];
            }
        }
    }
}

void run_test(int w, int h) {
    build_sphere();
    for (int i = 0; i < 16; i++) {
        int s = (i/4 + i%4) & 1;
        ground_tex[i*4+0] = s ? 150 : 80;
        ground_tex[i*4+1] = s ? 130 : 60;
        ground_tex[i*4+2] = s ? 110 : 40;
        ground_tex[i*4+3] = 255;
    }

    glViewport(0, 0, w, h);
    glClearColor(0.4f, 0.5f, 0.6f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect, aspect, -1, 1, 1.0, 15.0);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();

    glEnable(GL_DEPTH_TEST);
    glEnable(GL_FOG);
    glFogi(GL_FOG_MODE, GL_EXP);
    glFogf(GL_FOG_DENSITY, 0.15f);
    const float fc[4] = { 0.4f, 0.5f, 0.6f, 1.f };
    glFogfv(GL_FOG_COLOR, fc);

    /* Ground quad: big, at y = -0.3, extending far in z */
    glDisable(GL_LIGHTING);
    GLuint tex; glGenTextures(1, &tex);
    glBindTexture(GL_TEXTURE_2D, tex);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, ground_tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    float ground[] = {
        -5.f, -0.3f, -1.f,  0, 0,
         5.f, -0.3f, -1.f,  6, 0,
        -5.f, -0.3f,-12.f,  0, 10,
        -5.f, -0.3f,-12.f,  0, 10,
         5.f, -0.3f, -1.f,  6, 0,
         5.f, -0.3f,-12.f,  6, 10,
    };
    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(ground), ground, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    glVertexPointer(3, GL_FLOAT, 5 * sizeof(float), (void*)0);
    glTexCoordPointer(2, GL_FLOAT, 5 * sizeof(float), (void*)(3 * sizeof(float)));
    glColor4f(1,1,1,1);
    glDrawArrays(GL_TRIANGLES, 0, 6);
    glDisableClientState(GL_TEXTURE_COORD_ARRAY);
    glDisable(GL_TEXTURE_2D);

    /* Sphere: lit */
    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    const float pos[4] = { 0.5f, 0.8f, 0.3f, 0.f };
    const float dif[4] = { 1, 1, 0.9f, 1 };
    const float amb[4] = { 0.1f, 0.1f, 0.15f, 1 };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE, dif);
    glLightfv(GL_LIGHT0, GL_AMBIENT, amb);
    const float mdif[4] = { 0.9f, 0.5f, 0.3f, 1 };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    GLuint svbo; glGenBuffers(1, &svbo);
    glBindBuffer(GL_ARRAY_BUFFER, svbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(sphere_verts), sphere_verts, GL_STATIC_DRAW);
    glEnableClientState(GL_NORMAL_ARRAY);
    glVertexPointer(3, GL_FLOAT, 6 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 6 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, US * UR * 6);
    glDisableClientState(GL_NORMAL_ARRAY);
    glDisableClientState(GL_VERTEX_ARRAY);

    glDisable(GL_LIGHTING); glDisable(GL_FOG); glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo); glDeleteBuffers(1, &svbo);
    glDeleteTextures(1, &tex);
}
