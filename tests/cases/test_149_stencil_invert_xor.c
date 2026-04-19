#include "harness.h"

/* Symmetric difference (XOR) via INVERT: two overlapping quads invert the
 * stencil. Fields set by only one quad are 0xFF; overlap bits are 0x00 again.
 * Third pass EQUAL 0xFF reveals the XOR region. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.12f, 0.0f, 0.2f, 1.f);
    glClearStencil(0);
    glClear(GL_COLOR_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glEnable(GL_STENCIL_TEST);
    glStencilFunc(GL_ALWAYS, 0, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_INVERT);

    /* Two axis-aligned overlapping quads. */
    glColor3f(0.f, 0.f, 0.f);
    glBegin(GL_TRIANGLES);
        /* Quad A: left-center */
        glVertex2f(-0.7f, -0.4f);
        glVertex2f( 0.1f, -0.4f);
        glVertex2f(-0.7f,  0.4f);
        glVertex2f(-0.7f,  0.4f);
        glVertex2f( 0.1f, -0.4f);
        glVertex2f( 0.1f,  0.4f);
    glEnd();
    glBegin(GL_TRIANGLES);
        /* Quad B: right-center, overlaps middle of A */
        glVertex2f(-0.1f, -0.4f);
        glVertex2f( 0.7f, -0.4f);
        glVertex2f(-0.1f,  0.4f);
        glVertex2f(-0.1f,  0.4f);
        glVertex2f( 0.7f, -0.4f);
        glVertex2f( 0.7f,  0.4f);
    glEnd();

    /* Reveal XOR region (stencil == 0xFF). */
    glStencilFunc(GL_EQUAL, 0xFF, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_KEEP);
    glColor3f(0.2f, 0.9f, 1.0f);
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
