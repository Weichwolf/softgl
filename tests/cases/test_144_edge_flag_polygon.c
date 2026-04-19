#include "harness.h"

/* glEdgeFlag(GL_FALSE) for one vertex in a GL_POLYGON + polygon-mode LINE
 * should suppress the edge STARTING at that vertex. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    glColor3f(1.f, 1.f, 1.f);
    glBegin(GL_POLYGON);
        glEdgeFlag(GL_TRUE);  glVertex2f(-0.6f, -0.5f);
        glEdgeFlag(GL_FALSE); glVertex2f( 0.6f, -0.5f);   /* edge v1->v2 suppressed */
        glEdgeFlag(GL_TRUE);  glVertex2f( 0.0f,  0.6f);
    glEnd();
}
