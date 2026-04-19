#include "harness.h"
#include <math.h>

/* Doom-3 style DOT3 bump-mapped brick wall.
 *
 *   Unit 0: diffuse brick (red mortar grid).
 *   Unit 1: RGBA-encoded normal map (sinusoidal bumps). Combiner is
 *           DOT3_RGB with SOURCE0=TEXTURE (the normal) and SOURCE1=PRIMARY_COLOR
 *           (the light direction packed into vertex color space — l*0.5+0.5).
 *   Final: unit0.diffuse × unit1.dot3 via chain (MODULATE on unit 1's
 *          alpha-safe path isn't needed here; we use REPLACE on unit 0 and
 *          DOT3_RGB on unit 1, then MODULATE on... wait — chain has only
 *          two stages). We therefore put DOT3 on unit 0 and MODULATE unit1
 *          (brick) against the DOT3 PREVIOUS.
 *
 * The wall lies in the XY plane so the world-space normal map is also the
 * tangent-space normal map — no TBN basis needed.
 */

#define NM 32
static unsigned char normalmap[NM * NM * 4];
#define BK 16
static unsigned char bricktex[BK * BK * 4];

static void make_normalmap(void) {
    for (int y = 0; y < NM; y++)
        for (int x = 0; x < NM; x++) {
            float u = (float)x / (NM - 1);
            float v = (float)y / (NM - 1);
            float nx = 0.45f * sinf(8.f * u);
            float ny = 0.45f * sinf(8.f * v);
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
            bricktex[i+0] = mortar ? 210 : 180;
            bricktex[i+1] = mortar ? 195 : 80;
            bricktex[i+2] = mortar ? 180 : 55;
            bricktex[i+3] = 255;
        }
}

void run_test(int w, int h) {
    make_normalmap();
    make_brick();

    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Per-vertex light-direction packed into primary color. World-space
     * light from upper-right-front. Packed l*0.5+0.5. */
    const float lx = 0.5f, ly = 0.5f, lz = 0.707f;
    const float cr = lx * 0.5f + 0.5f;
    const float cg = ly * 0.5f + 0.5f;
    const float cb = lz * 0.5f + 0.5f;

    GLuint ids[2]; glGenTextures(2, ids);

    /* Unit 0: normal map + DOT3 with PRIMARY_COLOR (light dir). */
    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, ids[0]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, NM, NM, 0, GL_RGBA, GL_UNSIGNED_BYTE, normalmap);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
    glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, GL_DOT3_RGB);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, GL_TEXTURE);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_RGB, GL_SRC_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, GL_PRIMARY_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND1_RGB, GL_SRC_COLOR);

    /* Unit 1: brick MODULATE with PREVIOUS (dot3 result). */
    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, ids[1]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, BK, BK, 0, GL_RGBA, GL_UNSIGNED_BYTE, bricktex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

    glColor3f(cr, cg, cb);
    glBegin(GL_QUADS);
        glMultiTexCoord2f(GL_TEXTURE0, 0.f, 0.f);
        glMultiTexCoord2f(GL_TEXTURE1, 0.f, 0.f);
        glVertex2f(-0.9f, -0.8f);

        glMultiTexCoord2f(GL_TEXTURE0, 2.f, 0.f);
        glMultiTexCoord2f(GL_TEXTURE1, 2.f, 0.f);
        glVertex2f( 0.9f, -0.8f);

        glMultiTexCoord2f(GL_TEXTURE0, 2.f, 2.f);
        glMultiTexCoord2f(GL_TEXTURE1, 2.f, 2.f);
        glVertex2f( 0.9f,  0.8f);

        glMultiTexCoord2f(GL_TEXTURE0, 0.f, 2.f);
        glMultiTexCoord2f(GL_TEXTURE1, 0.f, 2.f);
        glVertex2f(-0.9f,  0.8f);
    glEnd();

    glActiveTexture(GL_TEXTURE1); glDisable(GL_TEXTURE_2D);
    glActiveTexture(GL_TEXTURE0); glDisable(GL_TEXTURE_2D);
    glDeleteTextures(2, ids);
}
