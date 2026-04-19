#include "harness.h"

/* glLineWidth(3.0) + single horizontal line. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glLineWidth(3.0f);
    glColor3f(1.f, 1.f, 1.f);
    glBegin(GL_LINES);
        glVertex2f(-0.9f, 0.0f); glVertex2f(0.9f, 0.0f);
    glEnd();
}
