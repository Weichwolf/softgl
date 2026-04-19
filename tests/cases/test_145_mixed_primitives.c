#include "harness.h"

/* Mixed scene: one triangle (filled), one set of lines, and points — all in
 * separate glBegin blocks within a single context. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Filled triangle on the left. */
    glBegin(GL_TRIANGLES);
        glColor3f(0.4f, 1.f, 0.4f); glVertex2f(-0.9f, -0.6f);
        glColor3f(0.1f, 0.4f, 0.1f); glVertex2f(-0.3f, -0.6f);
        glColor3f(0.6f, 1.f, 0.6f); glVertex2f(-0.6f,  0.2f);
    glEnd();

    /* Two lines in the middle. */
    glColor3f(1.f, 0.9f, 0.2f);
    glBegin(GL_LINES);
        glVertex2f(-0.1f, -0.6f); glVertex2f(0.1f, 0.6f);
        glVertex2f(-0.1f,  0.6f); glVertex2f(0.1f, -0.6f);
    glEnd();

    /* Points on the right. */
    glPointSize(4.0f);
    glColor3f(1.f, 0.4f, 0.8f);
    glBegin(GL_POINTS);
        glVertex2f(0.4f, -0.4f);
        glVertex2f(0.6f,  0.0f);
        glVertex2f(0.8f,  0.4f);
    glEnd();
}
