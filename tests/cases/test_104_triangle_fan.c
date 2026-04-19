#include "harness.h"

/* TRIANGLE_FAN: hub + 5 rim vertices → 4 triangles. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.1f, 0.f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    glBegin(GL_TRIANGLE_FAN);
        glColor3f(1.f, 1.f, 1.f); glVertex2f( 0.f,  0.f);
        glColor3f(1.f, 0.f, 0.f); glVertex2f( 0.6f, 0.f);
        glColor3f(1.f, 1.f, 0.f); glVertex2f( 0.3f, 0.6f);
        glColor3f(0.f, 1.f, 0.f); glVertex2f(-0.3f, 0.6f);
        glColor3f(0.f, 0.f, 1.f); glVertex2f(-0.6f, 0.f);
        glColor3f(1.f, 0.f, 1.f); glVertex2f(-0.3f,-0.5f);
    glEnd();
}
