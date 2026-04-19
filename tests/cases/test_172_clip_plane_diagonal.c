#include "harness.h"

/* Diagonal user clip plane: x + y >= 0.2 — cuts a quad diagonally.
 * Only the upper-right wedge survives. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.05f, 0.0f, 0.05f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* x + y - 0.2 >= 0 */
    const GLdouble eq[4] = { 1.0, 1.0, 0.0, -0.2 };
    glClipPlane(GL_CLIP_PLANE2, eq);
    glEnable(GL_CLIP_PLANE2);

    glColor3f(0.2f, 0.9f, 0.3f);
    glBegin(GL_QUADS);
        glVertex3f(-0.8f, -0.8f, 0.f);
        glVertex3f( 0.8f, -0.8f, 0.f);
        glVertex3f( 0.8f,  0.8f, 0.f);
        glVertex3f(-0.8f,  0.8f, 0.f);
    glEnd();

    glDisable(GL_CLIP_PLANE2);
}
