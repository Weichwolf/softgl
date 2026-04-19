#include "harness.h"
#include <math.h>

/* Two rooms connected by a portal. Room A is rendered first (warm amber).
 * A portal-shaped quad stamps stencil=1. Room B (cool blue with geometry)
 * is rendered only where stencil == 1, so it appears to be visible through
 * the portal. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearStencil(0);
    glClearDepth(1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Room A: full-screen amber floor + a centered pillar. */
    glColor3f(0.55f, 0.35f, 0.2f);
    glBegin(GL_QUADS);
        glVertex2f(-aspect, -1); glVertex2f(aspect, -1);
        glVertex2f( aspect,  1); glVertex2f(-aspect, 1);
    glEnd();
    glColor3f(0.7f, 0.55f, 0.25f);
    glBegin(GL_QUADS);
        glVertex2f(-1.1f, -0.9f); glVertex2f(-0.75f, -0.9f);
        glVertex2f(-0.75f, 0.8f); glVertex2f(-1.1f, 0.8f);
        glVertex2f( 0.75f, -0.9f); glVertex2f( 1.1f, -0.9f);
        glVertex2f( 1.1f,  0.8f); glVertex2f( 0.75f, 0.8f);
    glEnd();

    /* Stencil-stamp the portal shape (arched rectangle). */
    glEnable(GL_STENCIL_TEST);
    glStencilFunc(GL_ALWAYS, 1, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_REPLACE);
    glColorMask(GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE);
    glBegin(GL_QUADS);
        glVertex2f(-0.4f, -0.7f); glVertex2f( 0.4f, -0.7f);
        glVertex2f( 0.4f,  0.5f); glVertex2f(-0.4f, 0.5f);
    glEnd();
    /* Arch top: semicircle fan centered at (0, 0.5), radius 0.4. */
    glBegin(GL_TRIANGLE_FAN);
        glVertex2f(0.f, 0.5f);
        for (int i = 0; i <= 16; i++) {
            float ang = 3.14159f * (float)i / 16.f;
            float x = 0.4f * cosf(ang);
            float y = 0.5f + 0.4f * sinf(ang);
            glVertex2f(x, y);
        }
    glEnd();
    glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);

    /* Room B only inside the stencil. */
    glStencilFunc(GL_EQUAL, 1, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_KEEP);
    /* Ceiling-to-floor gradient. */
    glBegin(GL_QUADS);
        glColor3f(0.05f, 0.1f, 0.25f);
        glVertex2f(-aspect, -1); glVertex2f(aspect, -1);
        glColor3f(0.2f, 0.45f, 0.75f);
        glVertex2f( aspect,  1); glVertex2f(-aspect, 1);
    glEnd();
    /* Distant object in room B. */
    glColor3f(0.95f, 0.9f, 0.6f);
    glBegin(GL_TRIANGLES);
        glVertex2f(-0.15f, -0.3f); glVertex2f( 0.15f, -0.3f); glVertex2f( 0.f, 0.2f);
    glEnd();
    glColor3f(0.4f, 0.75f, 0.95f);
    glBegin(GL_QUADS);
        glVertex2f(-0.3f, -0.65f); glVertex2f( 0.3f, -0.65f);
        glVertex2f( 0.3f, -0.45f); glVertex2f(-0.3f, -0.45f);
    glEnd();

    glDisable(GL_STENCIL_TEST);
}
