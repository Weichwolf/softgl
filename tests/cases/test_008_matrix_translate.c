#include "harness.h"

void run_test(int w, int h) {
    (void)w; (void)h;
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    glTranslatef(0.3f, -0.7f, 2.5f);

    GLfloat m[16];
    glGetFloatv(GL_MODELVIEW_MATRIX, m);

    /* After glTranslatef, the translation column is (0.3, -0.7, 2.5, 1).
     * Encode its length into the clear color. */
    float tx = m[12], ty = m[13], tz = m[14];
    glClearColor(tx + 0.5f, ty + 1.0f, tz * 0.25f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
}
