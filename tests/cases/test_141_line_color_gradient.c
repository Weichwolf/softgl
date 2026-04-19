#include "harness.h"

/* Line with color interpolation: left endpoint red, right endpoint blue. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glBegin(GL_LINES);
        glColor3f(1.f, 0.f, 0.f); glVertex2f(-0.9f, 0.f);
        glColor3f(0.f, 0.f, 1.f); glVertex2f( 0.9f, 0.f);
    glEnd();
}
