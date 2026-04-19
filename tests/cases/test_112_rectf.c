#include "harness.h"

/* glRectf convenience: equivalent to glBegin(GL_POLYGON) with 4 verts. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    glColor3f(0.8f, 0.3f, 0.9f);
    glRectf(-0.6f, -0.4f, 0.6f, 0.4f);
}
