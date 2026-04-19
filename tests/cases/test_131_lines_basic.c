#include "harness.h"

/* GL_LINES: 2 separate line segments from 4 vertices. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glColor3f(1.f, 1.f, 1.f);
    glBegin(GL_LINES);
        glVertex2f(-0.8f, -0.5f); glVertex2f( 0.8f, -0.5f);
        glVertex2f(-0.8f,  0.5f); glVertex2f( 0.8f,  0.5f);
    glEnd();
}
