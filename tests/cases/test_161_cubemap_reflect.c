#include "harness.h"
#include <math.h>

/* Pre-computed reflection-vector texcoords: per vertex, we store the reflected
 * view direction relative to a fixed eye. The cube-map has strong directional
 * gradients so the sphere shows the environment "mirrored" on its surface. */

#define LAT 12
#define LON 18

static unsigned char face_pos_x[8*8*4];
static unsigned char face_neg_x[8*8*4];
static unsigned char face_pos_y[8*8*4];
static unsigned char face_neg_y[8*8*4];
static unsigned char face_pos_z[8*8*4];
static unsigned char face_neg_z[8*8*4];

static void fill_gradient(unsigned char *p, unsigned char r, unsigned char g, unsigned char b) {
    for (int y = 0; y < 8; y++)
      for (int x = 0; x < 8; x++) {
        int i = (y * 8 + x) * 4;
        float f = (float)(x + y) / 14.f;
        p[i+0] = (unsigned char)(r * (0.3f + 0.7f * f));
        p[i+1] = (unsigned char)(g * (0.3f + 0.7f * f));
        p[i+2] = (unsigned char)(b * (0.3f + 0.7f * f));
        p[i+3] = 255;
      }
}

static void make_faces(void) {
    fill_gradient(face_pos_x, 230,  60,  60);
    fill_gradient(face_neg_x,  60, 230,  60);
    fill_gradient(face_pos_y,  60,  60, 230);
    fill_gradient(face_neg_y, 230, 230,  60);
    fill_gradient(face_pos_z,  60, 230, 230);
    fill_gradient(face_neg_z, 230,  60, 230);
}

void run_test(int w, int h) {
    make_faces();
    glViewport(0, 0, w, h);
    glClearColor(0.02f, 0.02f, 0.05f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint id; glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_CUBE_MAP, id);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, face_pos_x);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_NEGATIVE_X, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, face_neg_x);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_Y, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, face_pos_y);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_NEGATIVE_Y, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, face_neg_y);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_Z, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, face_pos_z);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_NEGATIVE_Z, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, face_neg_z);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_CUBE_MAP);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    /* Emit the sphere manually. For each vertex we compute a "reflection"
     * direction = 2*(N.V)*N - V, with V = (0,0,-1) (view direction). That
     * simplifies to R = (-2*Nx*Nz, -2*Ny*Nz, -2*Nz*Nz - (-1)) = ... using
     * R = V - 2*(V.N)*N; here we use R = reflect(V, N). */
    float R = 0.7f;
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
            float p[4][3];
            float r[4][3];
            for (int k = 0; k < 4; k++) {
                p[k][0] = n[k][0] * R;
                p[k][1] = n[k][1] * R;
                p[k][2] = n[k][2] * R;
                /* Reflection with V = (0,0,1) towards viewer:
                 * R = 2*(N.V)*N - V  ==  (2*nz*nx, 2*nz*ny, 2*nz*nz - 1) */
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
