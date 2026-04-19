#include "harness.h"

/* GL_LINE_STRIP: 5 vertices -> 4 connected segments. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.05f, 0.05f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glColor3f(0.9f, 0.9f, 0.2f);
    glBegin(GL_LINE_STRIP);
        glVertex2f(-0.8f, -0.6f);
        glVertex2f(-0.4f,  0.6f);
        glVertex2f( 0.0f, -0.6f);
        glVertex2f( 0.4f,  0.6f);
        glVertex2f( 0.8f, -0.6f);
    glEnd();
}
