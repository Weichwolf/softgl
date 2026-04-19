#include "harness.h"

/* glPolygonMode(GL_FRONT, GL_LINE) + glPolygonMode(GL_BACK, GL_FILL).
 * Two triangles, left is CCW (front), right is CW (back). With FRONT=LINE,
 * BACK=FILL and culling DISABLED, left comes as wireframe, right as filled. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.15f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glFrontFace(GL_CCW);
    glDisable(GL_CULL_FACE);
    glPolygonMode(GL_FRONT, GL_LINE);
    glPolygonMode(GL_BACK,  GL_FILL);

    /* Left CCW triangle -> FRONT -> wireframe */
    glColor3f(1.f, 1.f, 0.f);
    glBegin(GL_TRIANGLES);
        glVertex2f(-0.9f, -0.5f);
        glVertex2f(-0.2f, -0.5f);
        glVertex2f(-0.55f, 0.5f);
    glEnd();

    /* Right CW triangle -> BACK -> filled */
    glColor3f(0.2f, 0.6f, 1.f);
    glBegin(GL_TRIANGLES);
        glVertex2f( 0.2f, -0.5f);
        glVertex2f( 0.55f, 0.5f);
        glVertex2f( 0.9f, -0.5f);
    glEnd();
}
