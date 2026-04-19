#include "harness.h"
#include <math.h>

/* Portal effect: mask quad cuts a hexagon shape into the stencil; second
 * pass renders the "inside" scene (colored background + a bright triangle)
 * only where the portal has been stamped. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.2f, 0.1f, 0.05f, 1.f);  /* "outside" */
    glClearStencil(0);
    glClear(GL_COLOR_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Pre-compute hexagon vertices. */
    float pts[7][2];
    const float R = 0.45f;
    for (int i = 0; i < 6; i++) {
        float ang = (float)i * (6.2831853f / 6.f);
        pts[i][0] = R * cosf(ang);
        pts[i][1] = R * sinf(ang);
    }
    pts[6][0] = pts[0][0]; pts[6][1] = pts[0][1];

    /* Pass 1: stamp stencil=1 inside the hexagon. */
    glEnable(GL_STENCIL_TEST);
    glStencilFunc(GL_ALWAYS, 1, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_REPLACE);
    glColor3f(0.f, 0.f, 0.f);
    glBegin(GL_TRIANGLES);
        for (int i = 0; i < 6; i++) {
            glVertex2f(0.f, 0.f);
            glVertex2f(pts[i][0],   pts[i][1]);
            glVertex2f(pts[i+1][0], pts[i+1][1]);
        }
    glEnd();

    /* Pass 2: draw the "inside" scene only where stencil == 1. */
    glStencilFunc(GL_EQUAL, 1, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_KEEP);

    glColor3f(0.1f, 0.4f, 0.9f);
    glBegin(GL_TRIANGLES);
        glVertex2f(-0.9f, -0.9f);
        glVertex2f( 0.9f, -0.9f);
        glVertex2f(-0.9f,  0.9f);
        glVertex2f(-0.9f,  0.9f);
        glVertex2f( 0.9f, -0.9f);
        glVertex2f( 0.9f,  0.9f);
    glEnd();

    glColor3f(1.f, 0.9f, 0.3f);
    glBegin(GL_TRIANGLES);
        glVertex2f(-0.3f, -0.25f);
        glVertex2f( 0.3f, -0.25f);
        glVertex2f( 0.f,   0.3f);
    glEnd();

    glDisable(GL_STENCIL_TEST);
}
