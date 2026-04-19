#include "harness.h"

/* Two user clip planes active simultaneously: y >= -0.3 AND x <= 0.3.
 * Their intersection with the quad forms an L-ish surviving region. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.0f, 0.05f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* y + 0.3 >= 0 */
    const GLdouble eq0[4] = { 0.0, 1.0, 0.0, 0.3 };
    /* -x + 0.3 >= 0  ==>  x <= 0.3 */
    const GLdouble eq1[4] = { -1.0, 0.0, 0.0, 0.3 };
    glClipPlane(GL_CLIP_PLANE1, eq0);
    glClipPlane(GL_CLIP_PLANE3, eq1);
    glEnable(GL_CLIP_PLANE1);
    glEnable(GL_CLIP_PLANE3);

    glColor3f(0.9f, 0.4f, 0.8f);
    glBegin(GL_QUADS);
        glVertex3f(-0.8f, -0.8f, 0.f);
        glVertex3f( 0.8f, -0.8f, 0.f);
        glVertex3f( 0.8f,  0.8f, 0.f);
        glVertex3f(-0.8f,  0.8f, 0.f);
    glEnd();

    glDisable(GL_CLIP_PLANE1);
    glDisable(GL_CLIP_PLANE3);
}
