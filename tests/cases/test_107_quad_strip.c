#include "harness.h"

/* QUAD_STRIP with 6 vertices → 2 quads.  The spec ordering is
 * quad_k = (v[2k], v[2k+1], v[2k+3], v[2k+2]) — it's intentionally
 * NOT the same as TRIANGLE_STRIP.  This exercises that ordering. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.1f, 0.1f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    glBegin(GL_QUAD_STRIP);
        glColor3f(1.f, 0.f, 0.f); glVertex2f(-0.7f, -0.5f);
        glColor3f(1.f, 1.f, 0.f); glVertex2f(-0.7f,  0.5f);
        glColor3f(0.f, 1.f, 0.f); glVertex2f( 0.0f, -0.5f);
        glColor3f(0.f, 1.f, 1.f); glVertex2f( 0.0f,  0.5f);
        glColor3f(0.f, 0.f, 1.f); glVertex2f( 0.7f, -0.5f);
        glColor3f(1.f, 0.f, 1.f); glVertex2f( 0.7f,  0.5f);
    glEnd();
}
