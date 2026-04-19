#include "harness.h"

/* glClearStencil + GL_STENCIL_BUFFER_BIT: pre-fill stencil with 7, then use a
 * stencil test (EQUAL, 7) to reveal the cleared value via color. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.05f, 0.05f, 0.2f, 1.f);
    glClearStencil(7);
    glClear(GL_COLOR_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Stencil test: only draw where stencil == 7. Whole screen should pass. */
    glEnable(GL_STENCIL_TEST);
    glStencilFunc(GL_EQUAL, 7, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_KEEP);

    glColor3f(0.9f, 0.3f, 0.3f);
    glBegin(GL_TRIANGLES);
        glVertex2f(-0.8f, -0.6f);
        glVertex2f( 0.8f, -0.6f);
        glVertex2f(-0.8f,  0.6f);
        glVertex2f(-0.8f,  0.6f);
        glVertex2f( 0.8f, -0.6f);
        glVertex2f( 0.8f,  0.6f);
    glEnd();

    glDisable(GL_STENCIL_TEST);
}
