#include "harness.h"

/* Perspective-projected line going from near z to far z; depth buffer engaged. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClearDepth(1.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect * 0.1, aspect * 0.1, -0.1, 0.1, 0.1, 10.0);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* One line from (-0.5,0,-1) to (0.5,0,-5). */
    glColor3f(1.f, 1.f, 1.f);
    glBegin(GL_LINES);
        glVertex3f(-0.5f, 0.f, -1.f);
        glVertex3f( 0.5f, 0.f, -5.f);
    glEnd();
}
