#include "harness.h"

/* Single user clip plane: y >= 0. A triangle straddling the line y=0
 * is halved: only the top portion survives. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.2f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Plane equation Ax+By+Cz+D >= 0 ==> y >= 0. */
    const GLdouble eq[4] = { 0.0, 1.0, 0.0, 0.0 };
    glClipPlane(GL_CLIP_PLANE0, eq);
    glEnable(GL_CLIP_PLANE0);

    glBegin(GL_TRIANGLES);
        glColor3f(1.f, 0.7f, 0.1f);
        glVertex3f(-0.8f, -0.8f, 0.f);
        glVertex3f( 0.8f, -0.8f, 0.f);
        glVertex3f( 0.0f,  0.8f, 0.f);
    glEnd();

    glDisable(GL_CLIP_PLANE0);
}
