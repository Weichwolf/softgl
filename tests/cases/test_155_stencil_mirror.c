#include "harness.h"

/* Mirror effect: mask quad (lower half of screen) stamps stencil=1; second
 * pass renders a mirrored copy of the foreground triangle only where
 * stencil == 1. We render an "upper" triangle normally, then reflect it
 * through y=0 into the mirrored region. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.05f, 0.05f, 0.08f, 1.f);
    glClearStencil(0);
    glClear(GL_COLOR_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Upper triangle (the "real" object). */
    glColor3f(1.f, 0.7f, 0.2f);
    glBegin(GL_TRIANGLES);
        glVertex2f(-0.3f, 0.1f);
        glVertex2f( 0.3f, 0.1f);
        glVertex2f( 0.f,  0.7f);
    glEnd();

    /* Pass 1: mark lower half of screen in stencil. */
    glEnable(GL_STENCIL_TEST);
    glStencilFunc(GL_ALWAYS, 1, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_REPLACE);
    glColor3f(0.15f, 0.15f, 0.25f);  /* visible "mirror ground" tint */
    glBegin(GL_TRIANGLES);
        glVertex2f(-0.9f, -0.9f);
        glVertex2f( 0.9f, -0.9f);
        glVertex2f(-0.9f,  0.0f);
        glVertex2f(-0.9f,  0.0f);
        glVertex2f( 0.9f, -0.9f);
        glVertex2f( 0.9f,  0.0f);
    glEnd();

    /* Pass 2: reflected triangle, only where stencil == 1 (lower half). */
    glStencilFunc(GL_EQUAL, 1, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_KEEP);

    /* Dim the reflection. */
    glColor3f(0.55f, 0.4f, 0.1f);
    glBegin(GL_TRIANGLES);
        /* Same triangle mirrored across y=0. */
        glVertex2f(-0.3f, -0.1f);
        glVertex2f( 0.3f, -0.1f);
        glVertex2f( 0.f,  -0.7f);
    glEnd();

    glDisable(GL_STENCIL_TEST);
}
