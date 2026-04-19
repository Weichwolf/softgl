#include "harness.h"

/* INCR counts fragment overlap. Two triangles intersect; stencil ends up 2
 * where they overlap, 1 elsewhere. A second full-screen pass with EQUAL 2
 * lights only the intersection. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.1f, 0.1f, 0.1f, 1.f);
    glClearStencil(0);
    glClear(GL_COLOR_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Pass 1: increment stencil for each covered fragment, color off-screen. */
    glEnable(GL_STENCIL_TEST);
    glStencilFunc(GL_ALWAYS, 0, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_INCR);

    glColor3f(0.f, 0.f, 0.f);
    glBegin(GL_TRIANGLES);
        /* Triangle A (left-leaning) */
        glVertex2f(-0.7f, -0.5f);
        glVertex2f( 0.3f, -0.5f);
        glVertex2f(-0.2f,  0.6f);
        /* Triangle B (right-leaning), overlaps middle */
        glVertex2f(-0.3f, -0.5f);
        glVertex2f( 0.7f, -0.5f);
        glVertex2f( 0.2f,  0.6f);
    glEnd();

    /* Pass 2: EQUAL 2 lights the overlap. */
    glStencilFunc(GL_EQUAL, 2, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_KEEP);
    glColor3f(1.f, 0.85f, 0.2f);
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
