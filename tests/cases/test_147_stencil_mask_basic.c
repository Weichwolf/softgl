#include "harness.h"

/* Classic stencil masking: first pass writes stencil=1 in a diamond shape
 * using REPLACE, second pass renders a full-screen quad but only where
 * stencil == 1 (the diamond). */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.1f, 0.1f, 0.1f, 1.f);
    glClearStencil(0);
    glClear(GL_COLOR_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Pass 1: write stencil=1 inside a diamond, don't write color. */
    glEnable(GL_STENCIL_TEST);
    glStencilFunc(GL_ALWAYS, 1, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_REPLACE);

    glColor3f(0.f, 0.f, 0.f);
    glBegin(GL_TRIANGLES);
        glVertex2f( 0.f,  0.6f);
        glVertex2f(-0.6f, 0.f);
        glVertex2f( 0.6f, 0.f);
        glVertex2f( 0.6f, 0.f);
        glVertex2f(-0.6f, 0.f);
        glVertex2f( 0.f, -0.6f);
    glEnd();

    /* Pass 2: only where stencil == 1 draw the colored quad. */
    glStencilFunc(GL_EQUAL, 1, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_KEEP);
    glColor3f(0.3f, 0.9f, 0.4f);
    glBegin(GL_TRIANGLES);
        glVertex2f(-0.9f, -0.9f);
        glVertex2f( 0.9f, -0.9f);
        glVertex2f(-0.9f,  0.9f);
        glVertex2f(-0.9f,  0.9f);
        glVertex2f( 0.9f, -0.9f);
        glVertex2f( 0.9f,  0.9f);
    glEnd();

    glDisable(GL_STENCIL_TEST);
}
