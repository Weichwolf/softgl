#include "harness.h"

/* Line that extends outside the frustum — must be clipped at frustum edges. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* One line with both ends outside the ortho bounds, crossing through. */
    glColor3f(1.f, 0.5f, 0.5f);
    glBegin(GL_LINES);
        glVertex2f(-3.0f, -0.5f); glVertex2f(3.0f, 0.5f);
    glEnd();
}
