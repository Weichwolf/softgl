#include "harness.h"

/* GL_POINTS: 16 points arranged in a 4x4 grid. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glColor3f(0.2f, 1.0f, 0.6f);
    glBegin(GL_POINTS);
    for (int j = 0; j < 4; j++) {
        for (int i = 0; i < 4; i++) {
            float x = -0.7f + (float)i * (1.4f / 3.f);
            float y = -0.7f + (float)j * (1.4f / 3.f);
            glVertex2f(x, y);
        }
    }
    glEnd();
}
