#include "harness.h"
#include <stdlib.h>

/* glPixelStorei(GL_UNPACK_ROW_LENGTH, big) + GL_UNPACK_SKIP_PIXELS /
 * GL_UNPACK_SKIP_ROWS: we pack a large backing image and ask glDrawPixels
 * to only see a sub-window of it. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.05f, 0.05f, 0.05f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Large backing image 128x64 RGBA. Diagonal gradient. */
    const int big_w = 128, big_h = 64;
    unsigned char *big = (unsigned char*)malloc(big_w * big_h * 4);
    for (int y = 0; y < big_h; y++) {
        for (int x = 0; x < big_w; x++) {
            unsigned char *p = big + (y * big_w + x) * 4;
            p[0] = (unsigned char)((x * 255) / (big_w - 1));
            p[1] = (unsigned char)((y * 255) / (big_h - 1));
            p[2] = ((x ^ y) & 0x10) ? 200 : 50;
            p[3] = 255;
        }
    }

    /* Extract a 40x24 window starting at (20, 10) of the backing image. */
    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
    glPixelStorei(GL_UNPACK_ROW_LENGTH,  big_w);
    glPixelStorei(GL_UNPACK_SKIP_PIXELS, 20);
    glPixelStorei(GL_UNPACK_SKIP_ROWS,   10);

    glRasterPos2i(200, 150);
    glDrawPixels(40, 24, GL_RGBA, GL_UNSIGNED_BYTE, big);

    /* Reset to defaults to avoid leaking state. */
    glPixelStorei(GL_UNPACK_ROW_LENGTH,  0);
    glPixelStorei(GL_UNPACK_SKIP_PIXELS, 0);
    glPixelStorei(GL_UNPACK_SKIP_ROWS,   0);

    free(big);
}
