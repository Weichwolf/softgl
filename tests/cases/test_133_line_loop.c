#include "harness.h"
#include <math.h>

/* GL_LINE_LOOP: closed pentagon. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.15f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glColor3f(1.f, 0.5f, 0.f);
    glBegin(GL_LINE_LOOP);
    for (int i = 0; i < 5; i++) {
        float a = (float)i * (6.28318530718f / 5.f) + 1.570796f;
        float r = 0.7f;
        glVertex2f(r * cosf(a), r * sinf(a));
    }
    glEnd();
}
