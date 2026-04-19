#include "harness.h"

/* glPolygonMode(GL_FRONT_AND_BACK, GL_LINE) -> triangle as wireframe. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.05f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    glColor3f(1.f, 1.f, 0.f);
    glBegin(GL_TRIANGLES);
        glVertex2f(-0.7f, -0.5f);
        glVertex2f( 0.7f, -0.5f);
        glVertex2f( 0.0f,  0.6f);
    glEnd();
}
