#include "harness.h"
#include <stdlib.h>

/* glDrawPixels with GL_LUMINANCE + GL_UNSIGNED_BYTE. Each source byte
 * becomes a gray pixel (R=G=B=L, A=1). */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    const int pw = 64, ph = 32;
    unsigned char *buf = (unsigned char*)malloc(pw * ph);
    for (int y = 0; y < ph; y++) {
        for (int x = 0; x < pw; x++) {
            /* Simple radial-ish ramp — distance from center, in 0..255. */
            int cx = pw / 2, cy = ph / 2;
            int dx = x - cx, dy = y - cy;
            int d = (dx * dx + dy * dy);
            int maxd = cx * cx + cy * cy;
            int v = 255 - (d * 255) / maxd;
            if (v < 0) v = 0;
            buf[y * pw + x] = (unsigned char)v;
        }
    }

    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
    glRasterPos2i(200, 150);
    glDrawPixels(pw, ph, GL_LUMINANCE, GL_UNSIGNED_BYTE, buf);

    free(buf);
}
