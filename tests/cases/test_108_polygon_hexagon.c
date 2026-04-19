#include "harness.h"

#include <math.h>

/* GL_POLYGON — 6 vertices forming a hexagon, fan-triangulated. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.05f, 0.15f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    glBegin(GL_POLYGON);
    for (int i = 0; i < 6; i++) {
        float a = (float)i * (6.28318530718f / 6.f);
        float r = 0.6f;
        /* Simple per-vertex color ramp to verify Gouraud. */
        glColor3f(0.5f + 0.5f * cosf(a),
                  0.5f + 0.5f * cosf(a + 2.094395f),
                  0.5f + 0.5f * cosf(a + 4.188790f));
        glVertex2f(r * cosf(a), r * sinf(a));
    }
    glEnd();
}
