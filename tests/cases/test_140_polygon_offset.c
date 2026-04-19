#include "harness.h"

/* glPolygonOffset + co-planar geometry: a filled back quad plus a wireframe
 * overlay. With GL_POLYGON_OFFSET_LINE applied as negative offset the line
 * wins the depth test reliably. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClearDepth(1.0f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LEQUAL);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Filled quad at z = 0 */
    glColor3f(0.2f, 0.2f, 0.6f);
    glBegin(GL_QUADS);
        glVertex3f(-0.6f, -0.6f, 0.0f);
        glVertex3f( 0.6f, -0.6f, 0.0f);
        glVertex3f( 0.6f,  0.6f, 0.0f);
        glVertex3f(-0.6f,  0.6f, 0.0f);
    glEnd();

    /* Co-planar wireframe triangle at z=0 with negative polygon offset. */
    glEnable(GL_POLYGON_OFFSET_LINE);
    glPolygonOffset(-1.0f, -1.0f);
    glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
    glColor3f(1.f, 1.f, 1.f);
    glBegin(GL_TRIANGLES);
        glVertex3f(-0.5f, -0.5f, 0.0f);
        glVertex3f( 0.5f, -0.5f, 0.0f);
        glVertex3f( 0.0f,  0.5f, 0.0f);
    glEnd();
}
