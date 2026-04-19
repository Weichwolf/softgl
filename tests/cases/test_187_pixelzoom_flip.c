#include "harness.h"
#include <stdlib.h>

/* glPixelZoom(1, -1): vertical flip. The source block is drawn with its
 * row 0 landing at the top of the destination, not the bottom. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.1f, 0.1f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    const int pw = 40, ph = 32;
    unsigned char *buf = (unsigned char*)malloc(pw * ph * 4);
    for (int y = 0; y < ph; y++) {
        for (int x = 0; x < pw; x++) {
            unsigned char *p = buf + (y * pw + x) * 4;
            /* Make rows visually distinct: red increases with y. */
            p[0] = (unsigned char)((y * 255) / (ph - 1));
            p[1] = (unsigned char)((x * 255) / (pw - 1));
            p[2] = 60;
            p[3] = 255;
        }
    }

    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
    glPixelZoom(1.f, -1.f);
    /* Raster-pos y must be high enough that the flipped block stays in the
     * framebuffer (destination extends DOWNWARD from raster y). */
    glRasterPos2i(200, 250);
    glDrawPixels(pw, ph, GL_RGBA, GL_UNSIGNED_BYTE, buf);
    glPixelZoom(1.f, 1.f);

    free(buf);
}
