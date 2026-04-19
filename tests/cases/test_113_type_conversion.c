#include "harness.h"

/* Mixed-type entry points:
 *   glColor3ub(255,128,0)   — orange via unsigned-byte normalization
 *   glVertex2s(...)         — integer vertex coordinates into scaled world space
 *   glNormal3b(...)         — signed-byte normal (no lighting here; sanity only)
 *
 * The scene draws a unit-coordinate triangle and pre-multiplies the
 * modelview with a 1/200 scale so that integer shorts like 100 land
 * at [-0.5, 0.5] in NDC. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.05f, 0.05f, 0.05f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);
    glScalef(1.f / 200.f, 1.f / 200.f, 1.f);

    glBegin(GL_TRIANGLES);
        glColor3ub(255, 128, 0);  glNormal3b(-127,  127, 0);
        glVertex2s(-120, -100);
        glColor3ub(  0, 255, 128); glNormal3b( 127,  127, 0);
        glVertex2s( 120, -100);
        glColor3ub(128,   0, 255); glNormal3b(   0, -127, 0);
        glVertex2s(   0,  120);
    glEnd();
}
