#include "harness.h"

/* TRIANGLES, mixing glVertex2f / 3f / 4f (w=1) to exercise all widths. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.1f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    glColor3f(1.f, 1.f, 0.f);
    glBegin(GL_TRIANGLES);
        glVertex2f(-0.7f, -0.5f);
        glVertex3f( 0.7f, -0.5f, 0.0f);
        glVertex4f( 0.0f,  0.6f, 0.0f, 1.0f);
    glEnd();
}
