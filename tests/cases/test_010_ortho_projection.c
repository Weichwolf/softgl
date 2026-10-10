#include "harness.h"

/* glOrtho sets the projection. Readback + encode the non-trivial diagonal. */
void run_test(int w, int h) {
    (void)w; (void)h;
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(-2.0, 2.0, -1.5, 1.5, 0.1, 100.0);

    GLfloat m[16];
    glGetFloatv(GL_PROJECTION_MATRIX, m);
    /* Expect m[0] = 2/(r-l) = 0.5, m[5] = 2/(t-b) = 0.6667, m[10] = -2/(f-n)= -0.02002 */

    float r = m[0];           /* ~0.5  */
    float g = m[5] * 0.75f;   /* ~0.5  */
    float b = -m[10] * 10.f;  /* ~0.2  */
    glClearColor(r, g, b, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
}
