#include "harness.h"
#include <stdlib.h>

/* glPixelZoom(2,2) + glDrawPixels. A 24x12 source is expanded to 48x24 pixels
 * at the raster position. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.0f, 0.0f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    const int pw = 24, ph = 12;
    unsigned char *buf = (unsigned char*)malloc(pw * ph * 4);
    for (int y = 0; y < ph; y++) {
        for (int x = 0; x < pw; x++) {
            unsigned char *p = buf + (y * pw + x) * 4;
            p[0] = (unsigned char)((x * 255) / (pw - 1));
            p[1] = (unsigned char)((y * 255) / (ph - 1));
            p[2] = ((x + y) % 3 == 0) ? 200 : 40;
            p[3] = 255;
        }
    }

    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
    glPixelZoom(2.f, 2.f);
    glRasterPos2i(150, 150);
    glDrawPixels(pw, ph, GL_RGBA, GL_UNSIGNED_BYTE, buf);
    glPixelZoom(1.f, 1.f);

    free(buf);
}
