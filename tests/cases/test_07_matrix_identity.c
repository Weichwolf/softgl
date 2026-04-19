#include "harness.h"

/* Load identity into modelview, read back, encode checksum as clear color. */
void run_test(int w, int h) {
    (void)w; (void)h;
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();

    GLfloat m[16];
    glGetFloatv(GL_MODELVIEW_MATRIX, m);

    /* Identity: trace = 4. Use this to derive a stable clear color. */
    float trace = m[0] + m[5] + m[10] + m[15];
    float off   = m[1] + m[2] + m[4] + m[6] + m[8] + m[9] + m[12] + m[13] + m[14];

    glClearColor(trace * 0.25f, (off + 1.f) * 0.5f, 0.25f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
}
