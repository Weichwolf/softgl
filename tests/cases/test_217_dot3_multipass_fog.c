#include "harness.h"
#include <math.h>

/* Doom-3 style multi-pass bump lighting. A tessellated brick floor recedes
 * into black fog, lit by three passes:
 *   Pass 0 — ambient: brick texture × dim primary color, writes depth.
 *   Pass 1 — directional light A: DOT3(normalmap, lightA_dir) × brick,
 *            additive blend, depth_func=EQUAL, no depth write.
 *   Pass 2 — directional light B: same combiner chain, different direction.
 * Linear fog towards black attenuates each pass individually, so the
 * final color is f*(ambient + dotA*brick + dotB*brick) — a realistic
 * stack of features that compound rounding (combiner, fog, additive
 * saturation) and fill-rule drift at depth-EQUAL quad boundaries. */

#define NM 32
static unsigned char normalmap[NM * NM * 4];
#define BK 16
static unsigned char bricktex[BK * BK * 4];

static void make_normalmap(void) {
    for (int y = 0; y < NM; y++)
        for (int x = 0; x < NM; x++) {
            float u = (float)x / (NM - 1);
            float v = (float)y / (NM - 1);
            float nx = 0.35f * sinf(6.f * u);
            float ny = 0.35f * sinf(6.f * v);
            float nz = sqrtf(fmaxf(0.f, 1.f - nx*nx - ny*ny));
            int i = (y * NM + x) * 4;
            normalmap[i+0] = (unsigned char)((nx * 0.5f + 0.5f) * 255);
            normalmap[i+1] = (unsigned char)((ny * 0.5f + 0.5f) * 255);
            normalmap[i+2] = (unsigned char)((nz * 0.5f + 0.5f) * 255);
            normalmap[i+3] = 255;
        }
}

static void make_brick(void) {
    for (int y = 0; y < BK; y++)
        for (int x = 0; x < BK; x++) {
            int row = y;
            int col = x + ((row / 4) & 1) * 4;
            int mortar = (row % 4 == 0) || (col % 8 == 0);
            int i = (y * BK + x) * 4;
            bricktex[i+0] = mortar ? 200 : 170;
            bricktex[i+1] = mortar ? 190 : 75;
            bricktex[i+2] = mortar ? 175 : 55;
            bricktex[i+3] = 255;
        }
}

/* Same vertex stream every pass — depth_func=EQUAL demands bitwise-matching
 * fragment z from pass 0, so positions and UVs must be emitted identically. */
static void draw_floor(int N) {
    for (int j = 0; j < N; j++) {
        float v0 = (float)j / N;
        float v1 = (float)(j + 1) / N;
        float z0 = -1.5f - v0 * 5.5f;   /* world z: -1.5 .. -7.0 */
        float z1 = -1.5f - v1 * 5.5f;
        glBegin(GL_QUAD_STRIP);
        for (int i = 0; i <= N; i++) {
            float u = (float)i / N;
            float x = (u - 0.5f) * 4.f;
            glMultiTexCoord2f(GL_TEXTURE0, u * 3.f, v0 * 3.f);
            glMultiTexCoord2f(GL_TEXTURE1, u * 3.f, v0 * 3.f);
            glVertex3f(x, -0.35f, z0);
            glMultiTexCoord2f(GL_TEXTURE0, u * 3.f, v1 * 3.f);
            glMultiTexCoord2f(GL_TEXTURE1, u * 3.f, v1 * 3.f);
            glVertex3f(x, -0.35f, z1);
        }
        glEnd();
    }
}

static void setup_ambient(GLuint brick) {
    glActiveTexture(GL_TEXTURE1); glDisable(GL_TEXTURE_2D);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, brick);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);
    glColor3f(0.20f, 0.22f, 0.28f);
}

/* Light direction packed into primary color as 0.5 + 0.4*l — the 0.4
 * scale dims the DOT3 result (since DOT3 doubles the centered inputs),
 * giving each light a ~0.64 peak intensity so two passes don't saturate
 * to white immediately. */
static void setup_light(GLuint normals, GLuint brick, float lx, float ly, float lz) {
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, normals);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
    glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, GL_DOT3_RGB);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, GL_TEXTURE);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_RGB, GL_SRC_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, GL_PRIMARY_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND1_RGB, GL_SRC_COLOR);

    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, brick);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

    glColor3f(lx * 0.4f + 0.5f, ly * 0.4f + 0.5f, lz * 0.4f + 0.5f);
}

void run_test(int w, int h) {
    make_normalmap();
    make_brick();

    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClearDepth(1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect, aspect, -1, 1, 1.0, 20.0);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glRotatef(22.f, 1.f, 0.f, 0.f);
    glTranslatef(0.f, 0.1f, 0.f);

    glEnable(GL_FOG);
    glFogi(GL_FOG_MODE, GL_LINEAR);
    glFogf(GL_FOG_START, 2.0f);
    glFogf(GL_FOG_END,   7.0f);
    const float fc[4] = { 0.f, 0.f, 0.f, 1.f };
    glFogfv(GL_FOG_COLOR, fc);

    GLuint ids[2]; glGenTextures(2, ids);
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, ids[0]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, NM, NM, 0, GL_RGBA, GL_UNSIGNED_BYTE, normalmap);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

    glBindTexture(GL_TEXTURE_2D, ids[1]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, BK, BK, 0, GL_RGBA, GL_UNSIGNED_BYTE, bricktex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

    /* Pass 0 — ambient establishes depth. */
    glDepthFunc(GL_LESS);
    glDepthMask(GL_TRUE);
    glDisable(GL_BLEND);
    setup_ambient(ids[1]);
    draw_floor(12);

    /* Passes 1+ — additive, depth_func=EQUAL, no depth write. */
    glDepthFunc(GL_EQUAL);
    glDepthMask(GL_FALSE);
    glEnable(GL_BLEND);
    glBlendFunc(GL_ONE, GL_ONE);

    setup_light(ids[0], ids[1],  0.55f,  0.30f, 0.78f);   /* right light */
    draw_floor(12);

    setup_light(ids[0], ids[1], -0.50f,  0.25f, 0.83f);   /* left light */
    draw_floor(12);

    glDepthFunc(GL_LESS);
    glDepthMask(GL_TRUE);
    glDisable(GL_BLEND);
    glDisable(GL_FOG);
    glActiveTexture(GL_TEXTURE1); glDisable(GL_TEXTURE_2D);
    glActiveTexture(GL_TEXTURE0); glDisable(GL_TEXTURE_2D);
    glDisable(GL_DEPTH_TEST);
    glDeleteTextures(2, ids);
}
