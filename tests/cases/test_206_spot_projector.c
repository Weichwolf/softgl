#include "harness.h"
#include <math.h>

/* Projected-texture spotlight on a ground plane. Base texture (checker) on
 * unit 0 MODULATE-s against a spot-cone intensity texture on unit 1. The
 * spot coord is generated per-vertex by projecting the world-space position
 * through a "light matrix": orthographic frustum centered on the floor at
 * (0, 0, -3), extruded cone.
 *
 * The spot texture is a radial Gaussian; MODULATE with base → visible
 * cone of light. */

#define GT 16
static unsigned char ground_tex[GT * GT * 4];
#define ST 32
static unsigned char spot_tex[ST * ST * 4];

static void make_textures(void) {
    for (int y = 0; y < GT; y++)
        for (int x = 0; x < GT; x++) {
            int c = ((x / 4) + (y / 4)) & 1;
            int i = (y * GT + x) * 4;
            ground_tex[i+0] = c ? 150 : 90;
            ground_tex[i+1] = c ? 140 : 80;
            ground_tex[i+2] = c ? 130 : 70;
            ground_tex[i+3] = 255;
        }
    for (int y = 0; y < ST; y++)
        for (int x = 0; x < ST; x++) {
            float dx = (x - ST*0.5f) / (ST*0.5f);
            float dy = (y - ST*0.5f) / (ST*0.5f);
            float r2 = dx*dx + dy*dy;
            float v = expf(-3.f * r2);
            int i = (y * ST + x) * 4;
            unsigned char c = (unsigned char)(v * 255);
            spot_tex[i+0] = c; spot_tex[i+1] = c; spot_tex[i+2] = c; spot_tex[i+3] = 255;
        }
}

void run_test(int w, int h) {
    make_textures();
    glViewport(0, 0, w, h);
    glClearColor(0.02f, 0.02f, 0.04f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect, aspect, -1, 1, 1, 30);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glTranslatef(0.f, -0.7f, -3.f);
    glRotatef(30.f, 1.f, 0.f, 0.f);

    GLuint ids[2]; glGenTextures(2, ids);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, ids[0]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, GT, GT, 0, GL_RGBA, GL_UNSIGNED_BYTE, ground_tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, ids[1]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, ST, ST, 0, GL_RGBA, GL_UNSIGNED_BYTE, spot_tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

    glColor4f(1, 1, 1, 1);

    /* Ground grid: 10x10 tiles. Per-vertex spot-uv = projected position
     * onto the "spot plane". Spot origin at world (0, 3, -3) looking -Y.
     * For a vertex at (x, 0, z), spot uv = ((x - 0) / range, (z - (-3)) / range) + 0.5. */
    const float RANGE = 2.5f;
    const float sx = 0.f, sz = -3.f;
    const int N = 10;
    glBegin(GL_QUADS);
    for (int j = 0; j < N; j++) {
        float z0 = -1.f - (float)j * 0.5f;
        float z1 = z0 - 0.5f;
        for (int i = 0; i < N; i++) {
            float x0 = -2.5f + (float)i * 0.5f;
            float x1 = x0 + 0.5f;
            float tx0 = x0, tz0 = z0, tx1 = x1, tz1 = z1;
            /* Base UV (tile). */
            float bu0 = (float)i, bu1 = (float)(i+1);
            float bv0 = (float)j, bv1 = (float)(j+1);
            /* Spot UV: project (vx, vz) → spot plane. */
            float su00 = (tx0 - sx) / RANGE * 0.5f + 0.5f;
            float sv00 = (tz0 - sz) / RANGE * 0.5f + 0.5f;
            float su10 = (tx1 - sx) / RANGE * 0.5f + 0.5f;
            float sv10 = (tz0 - sz) / RANGE * 0.5f + 0.5f;
            float su11 = (tx1 - sx) / RANGE * 0.5f + 0.5f;
            float sv11 = (tz1 - sz) / RANGE * 0.5f + 0.5f;
            float su01 = (tx0 - sx) / RANGE * 0.5f + 0.5f;
            float sv01 = (tz1 - sz) / RANGE * 0.5f + 0.5f;
            glMultiTexCoord2f(GL_TEXTURE0, bu0, bv0); glMultiTexCoord2f(GL_TEXTURE1, su00, sv00); glVertex3f(tx0, 0, tz0);
            glMultiTexCoord2f(GL_TEXTURE0, bu1, bv0); glMultiTexCoord2f(GL_TEXTURE1, su10, sv10); glVertex3f(tx1, 0, tz0);
            glMultiTexCoord2f(GL_TEXTURE0, bu1, bv1); glMultiTexCoord2f(GL_TEXTURE1, su11, sv11); glVertex3f(tx1, 0, tz1);
            glMultiTexCoord2f(GL_TEXTURE0, bu0, bv1); glMultiTexCoord2f(GL_TEXTURE1, su01, sv01); glVertex3f(tx0, 0, tz1);
        }
    }
    glEnd();

    glActiveTexture(GL_TEXTURE1); glDisable(GL_TEXTURE_2D);
    glActiveTexture(GL_TEXTURE0); glDisable(GL_TEXTURE_2D);
    glDisable(GL_DEPTH_TEST);
    glDeleteTextures(2, ids);
}
