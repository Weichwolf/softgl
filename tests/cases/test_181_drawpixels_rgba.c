#include "harness.h"
#include <stdlib.h>

/* glDrawPixels basic: 32x16 RGBA/UBYTE block dropped at raster position
 * (100, 100). The block has a distinctive diagonal pattern so we can
 * recognize placement and row order. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.05f, 0.05f, 0.15f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    /* Window-space ortho so raster-pos coords are pixel coordinates. */
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Build a 32x16 RGBA source. R = x/31, G = y/15, B = (x+y)&1. */
    const int pw = 32, ph = 16;
    unsigned char *buf = (unsigned char*)malloc(pw * ph * 4);
    for (int y = 0; y < ph; y++) {
        for (int x = 0; x < pw; x++) {
            unsigned char *p = buf + (y * pw + x) * 4;
            p[0] = (unsigned char)((x * 255) / (pw - 1));
            p[1] = (unsigned char)((y * 255) / (ph - 1));
            p[2] = ((x ^ y) & 1) ? 255 : 0;
            p[3] = 255;
        }
    }

    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
    glRasterPos2i(100, 100);
    glDrawPixels(pw, ph, GL_RGBA, GL_UNSIGNED_BYTE, buf);

    free(buf);
}
