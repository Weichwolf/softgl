#include "harness.h"
#include <math.h>

/* Classic chrome-ball environment mapping. The cube-map holds 6 distinct
 * face gradients simulating a studio environment. Per-vertex we compute
 * R = 2*(N·V)*N - V with V=(0,0,1), then hand R to the cube-map as
 * tex-coord. The result is a mirror-chrome sphere where the environment's
 * faces are visible as bent highlights. */

#define LAT 14
#define LON 22
#define F 16

static unsigned char faces[6][F*F*4];

static void fill_face(unsigned char *p, float r0, float g0, float b0, float r1, float g1, float b1) {
    for (int y = 0; y < F; y++)
      for (int x = 0; x < F; x++) {
        float u = (float)x / (F-1);
        float v = (float)y / (F-1);
        float t = 0.5f * (u + v);
        float r = r0 * (1-t) + r1 * t;
        float g = g0 * (1-t) + g1 * t;
        float b = b0 * (1-t) + b1 * t;
        int i = (y * F + x) * 4;
        p[i+0] = (unsigned char)(r * 255);
        p[i+1] = (unsigned char)(g * 255);
        p[i+2] = (unsigned char)(b * 255);
        p[i+3] = 255;
      }
}

void run_test(int w, int h) {
    /* Studio: sky (top) pale blue → cyan; ground (bottom) tan; side walls
     * warm brown / cool teal / pink / green accents. */
    fill_face(faces[0], 0.85f, 0.6f, 0.4f,  0.55f, 0.35f, 0.25f); /* +X */
    fill_face(faces[1], 0.2f, 0.7f, 0.75f,  0.1f, 0.45f, 0.55f);  /* -X */
    fill_face(faces[2], 0.75f, 0.9f, 1.f,   0.4f, 0.6f, 0.9f);    /* +Y sky */
    fill_face(faces[3], 0.5f, 0.45f, 0.35f, 0.25f, 0.22f, 0.18f); /* -Y ground */
    fill_face(faces[4], 0.95f, 0.85f, 0.55f, 0.6f, 0.4f, 0.3f);   /* +Z */
    fill_face(faces[5], 0.35f, 0.6f, 0.45f, 0.2f, 0.35f, 0.25f);  /* -Z */

    glViewport(0, 0, w, h);
    glClearColor(0.05f, 0.05f, 0.08f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint id; glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_CUBE_MAP, id);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X, 0, GL_RGBA, F, F, 0, GL_RGBA, GL_UNSIGNED_BYTE, faces[0]);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_NEGATIVE_X, 0, GL_RGBA, F, F, 0, GL_RGBA, GL_UNSIGNED_BYTE, faces[1]);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_Y, 0, GL_RGBA, F, F, 0, GL_RGBA, GL_UNSIGNED_BYTE, faces[2]);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_NEGATIVE_Y, 0, GL_RGBA, F, F, 0, GL_RGBA, GL_UNSIGNED_BYTE, faces[3]);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_Z, 0, GL_RGBA, F, F, 0, GL_RGBA, GL_UNSIGNED_BYTE, faces[4]);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_NEGATIVE_Z, 0, GL_RGBA, F, F, 0, GL_RGBA, GL_UNSIGNED_BYTE, faces[5]);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_CUBE_MAP);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    const float R = 0.8f;
    glBegin(GL_TRIANGLES);
    for (int j = 0; j < LAT; j++) {
        float v0 = (float)j       / LAT;
        float v1 = (float)(j + 1) / LAT;
        float phi0 = (v0 - 0.5f) * 3.14159f;
        float phi1 = (v1 - 0.5f) * 3.14159f;
        for (int i = 0; i < LON; i++) {
            float u0 = (float)i       / LON;
            float u1 = (float)(i + 1) / LON;
            float a0 = u0 * 6.28318f;
            float a1 = u1 * 6.28318f;
            float n[4][3] = {
                { cosf(phi0)*cosf(a0), sinf(phi0), cosf(phi0)*sinf(a0) },
                { cosf(phi0)*cosf(a1), sinf(phi0), cosf(phi0)*sinf(a1) },
                { cosf(phi1)*cosf(a0), sinf(phi1), cosf(phi1)*sinf(a0) },
                { cosf(phi1)*cosf(a1), sinf(phi1), cosf(phi1)*sinf(a1) },
            };
            float p[4][3], r[4][3];
            for (int k = 0; k < 4; k++) {
                p[k][0] = n[k][0] * R;
                p[k][1] = n[k][1] * R;
                p[k][2] = n[k][2] * R;
                /* V = (0,0,1), R = 2*(N·V)*N - V */
                float nv = n[k][2];
                r[k][0] = 2.f * nv * n[k][0];
                r[k][1] = 2.f * nv * n[k][1];
                r[k][2] = 2.f * nv * n[k][2] - 1.f;
            }
            int tri[6] = { 0, 1, 2, 2, 1, 3 };
            for (int t = 0; t < 6; t++) {
                int vv = tri[t];
                glTexCoord3f(r[vv][0], r[vv][1], r[vv][2]);
                glVertex3f(p[vv][0], p[vv][1], p[vv][2]);
            }
        }
    }
    glEnd();

    glDisable(GL_TEXTURE_CUBE_MAP);
    glDisable(GL_DEPTH_TEST);
    glDeleteTextures(1, &id);
}
