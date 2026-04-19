#include "harness.h"
#include <stdlib.h>

/* glDrawPixels with GL_RGB + GL_FLOAT. Float source clamped to [0,1] and
 * quantized at write time. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.1f, 0.1f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    const int pw = 48, ph = 24;
    float *buf = (float*)malloc(pw * ph * 3 * sizeof(float));
    for (int y = 0; y < ph; y++) {
        for (int x = 0; x < pw; x++) {
            float *p = buf + (y * pw + x) * 3;
            /* R = x-gradient, G = y-gradient, B = deliberately
             * out-of-range value that should clamp to 1.0. */
            p[0] = (float)x / (float)(pw - 1);
            p[1] = (float)y / (float)(ph - 1);
            p[2] = ((x + y) & 1) ? 1.5f : -0.3f;  /* test clamp */
        }
    }

    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
    glRasterPos2i(250, 200);
    glDrawPixels(pw, ph, GL_RGB, GL_FLOAT, buf);

    free(buf);
}
