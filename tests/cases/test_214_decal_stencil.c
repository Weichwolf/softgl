#include "harness.h"
#include <math.h>

/* Decal projected onto a wall, clipped to the wall surface via stencil.
 * Wall drawn first. Then:
 *  1) stamp stencil=1 over wall bounding region.
 *  2) draw decal quad with additive blend inside stencil==1. */

#define DT 16
static unsigned char decal[DT * DT * 4];

static void make_decal(void) {
    for (int y = 0; y < DT; y++)
        for (int x = 0; x < DT; x++) {
            float dx = (x - DT*0.5f + 0.5f) / (DT*0.5f);
            float dy = (y - DT*0.5f + 0.5f) / (DT*0.5f);
            float r = sqrtf(dx*dx + dy*dy);
            /* Burn-mark: dark radial pulse with a hot edge. */
            float intensity = 0.f;
            if (r < 1.f) {
                intensity = 1.f - r;
                /* Hot ring at r ~0.55. */
                intensity += fmaxf(0.f, 1.f - fabsf(r - 0.55f) * 6.f) * 0.6f;
            }
            int i = (y * DT + x) * 4;
            /* Explosion colors: orange-yellow. */
            decal[i+0] = (unsigned char)(fminf(1.f, intensity * 1.2f) * 255);
            decal[i+1] = (unsigned char)(fminf(1.f, intensity * 0.7f) * 180);
            decal[i+2] = (unsigned char)(fminf(1.f, intensity * 0.3f) * 100);
            decal[i+3] = (unsigned char)(fminf(1.f, intensity) * 255);
        }
}

void run_test(int w, int h) {
    make_decal();
    glViewport(0, 0, w, h);
    glClearColor(0.03f, 0.03f, 0.05f, 1.f);
    glClearStencil(0);
    glClear(GL_COLOR_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Wall (stone gray) with a subtle band. */
    glColor3f(0.4f, 0.4f, 0.45f);
    glBegin(GL_QUADS);
        glVertex2f(-0.8f, -0.6f); glVertex2f( 0.8f, -0.6f);
        glVertex2f( 0.8f,  0.6f); glVertex2f(-0.8f,  0.6f);
    glEnd();
    glColor3f(0.3f, 0.3f, 0.35f);
    glBegin(GL_QUADS);
        glVertex2f(-0.8f, 0.0f); glVertex2f( 0.8f, 0.0f);
        glVertex2f( 0.8f, 0.1f); glVertex2f(-0.8f, 0.1f);
    glEnd();

    /* Stencil mask = wall region. */
    glEnable(GL_STENCIL_TEST);
    glStencilFunc(GL_ALWAYS, 1, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_REPLACE);
    glColorMask(GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE);
    glBegin(GL_QUADS);
        glVertex2f(-0.8f, -0.6f); glVertex2f( 0.8f, -0.6f);
        glVertex2f( 0.8f,  0.6f); glVertex2f(-0.8f,  0.6f);
    glEnd();
    glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);

    /* Decal inside stencil==1, additive-blended. Note: the decal quad
     * extends past the wall edge; only the portion inside wall survives
     * thanks to the stencil mask. */
    glStencilFunc(GL_EQUAL, 1, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_KEEP);

    GLuint tex; glGenTextures(1, &tex);
    glBindTexture(GL_TEXTURE_2D, tex);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, DT, DT, 0, GL_RGBA, GL_UNSIGNED_BYTE, decal);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);
    glEnable(GL_BLEND);
    glBlendFunc(GL_ONE, GL_ONE);
    glColor3f(1.f, 1.f, 1.f);
    glBegin(GL_QUADS);
        /* Decal extends from (0.3, -0.2) wider than the wall-right edge. */
        glTexCoord2f(0, 0); glVertex2f(0.3f, -0.2f);
        glTexCoord2f(1, 0); glVertex2f(1.1f, -0.2f);
        glTexCoord2f(1, 1); glVertex2f(1.1f,  0.6f);
        glTexCoord2f(0, 1); glVertex2f(0.3f,  0.6f);
    glEnd();

    glDisable(GL_BLEND);
    glDisable(GL_TEXTURE_2D);
    glDisable(GL_STENCIL_TEST);
    glDeleteTextures(1, &tex);
}
