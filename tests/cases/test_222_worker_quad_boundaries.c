#include "harness.h"

/* Repeated additive layers amplify lost writes where a SIMD pixel pair
 * crosses a worker's X-stripe. Integer colors allow an exact comparison. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    glEnable(GL_BLEND);
    glBlendFunc(GL_ONE, GL_ONE);
    glColor4f(1.f / 255.f, 2.f / 255.f, 3.f / 255.f, 0.f);
    glBegin(GL_QUADS);
    for (int layer = 0; layer < 64; layer++) {
        glVertex2f(1.f, 0.f);
        glVertex2f((float)w - 1.f, 0.f);
        glVertex2f((float)w - 1.f, (float)h);
        glVertex2f(1.f, (float)h);
    }
    glEnd();
}
