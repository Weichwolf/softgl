#include "harness.h"

/* Two QUADs side by side: 8 vertices emitted in one glBegin. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    glBegin(GL_QUADS);
        glColor3f(1.f, 0.f, 0.f);
        glVertex2f(-0.8f, -0.4f); glVertex2f(-0.1f, -0.4f);
        glVertex2f(-0.1f,  0.4f); glVertex2f(-0.8f,  0.4f);

        glColor3f(0.f, 1.f, 1.f);
        glVertex2f( 0.1f, -0.4f); glVertex2f( 0.8f, -0.4f);
        glVertex2f( 0.8f,  0.4f); glVertex2f( 0.1f,  0.4f);
    glEnd();
}
