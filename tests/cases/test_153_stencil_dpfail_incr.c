#include "harness.h"

/* Stencil INCR only on depth-fail: marks pixels where a later fragment was
 * occluded. Scene:
 *   - front quad at z=0.3 (opaque gray) in a smaller rect
 *   - back quad at z=0.7 (we draw with stencil_op KEEP/INCR/KEEP)
 * Where back quad is behind front, INCR increments stencil → visualize via
 * full-screen pass EQUAL 1. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClearDepth(1.f);
    glClearStencil(0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);

    /* Front quad. */
    glColor3f(0.55f, 0.55f, 0.55f);
    glBegin(GL_TRIANGLES);
        glVertex3f(-0.3f, -0.3f, 0.3f);
        glVertex3f( 0.3f, -0.3f, 0.3f);
        glVertex3f(-0.3f,  0.3f, 0.3f);
        glVertex3f(-0.3f,  0.3f, 0.3f);
        glVertex3f( 0.3f, -0.3f, 0.3f);
        glVertex3f( 0.3f,  0.3f, 0.3f);
    glEnd();

    /* Back "probe" quad, INCR on depth-fail. No depth write. */
    glEnable(GL_STENCIL_TEST);
    glStencilFunc(GL_ALWAYS, 0, 0xFF);
    glStencilOp(GL_KEEP, GL_INCR, GL_KEEP);
    glDepthMask(GL_FALSE);
    glColor3f(0.f, 0.f, 0.f);
    glBegin(GL_TRIANGLES);
        glVertex3f(-0.7f, -0.5f, 0.7f);
        glVertex3f( 0.7f, -0.5f, 0.7f);
        glVertex3f(-0.7f,  0.5f, 0.7f);
        glVertex3f(-0.7f,  0.5f, 0.7f);
        glVertex3f( 0.7f, -0.5f, 0.7f);
        glVertex3f( 0.7f,  0.5f, 0.7f);
    glEnd();
    glDepthMask(GL_TRUE);

    /* Visualize. */
    glDisable(GL_DEPTH_TEST);
    glStencilFunc(GL_EQUAL, 1, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_KEEP);
    glColor3f(0.3f, 0.9f, 1.f);
    glBegin(GL_TRIANGLES);
        glVertex2f(-1.f, -1.f);
        glVertex2f( 1.f, -1.f);
        glVertex2f(-1.f,  1.f);
        glVertex2f(-1.f,  1.f);
        glVertex2f( 1.f, -1.f);
        glVertex2f( 1.f,  1.f);
    glEnd();

    glDisable(GL_STENCIL_TEST);
}
