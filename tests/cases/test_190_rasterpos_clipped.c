#include "harness.h"
#include <stdlib.h>

/* Test that a raster-pos outside the clip volume renders nothing, while a
 * subsequent in-range raster-pos does. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.05f, 0.05f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    const int pw = 50, ph = 30;
    unsigned char *buf = (unsigned char*)malloc(pw * ph * 4);
    for (int y = 0; y < ph; y++) {
        for (int x = 0; x < pw; x++) {
            unsigned char *p = buf + (y * pw + x) * 4;
            p[0] = 255;
            p[1] = (unsigned char)((x * 255) / (pw - 1));
            p[2] = (unsigned char)((y * 255) / (ph - 1));
            p[3] = 255;
        }
    }
    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);

    /* Out-of-clip raster position. With ortho (0,w,0,h), a coord at (-500, -500)
     * falls outside the frustum → raster_pos_valid = GL_FALSE, the following
     * DrawPixels is a no-op. */
    glRasterPos2i(-500, -500);
    glDrawPixels(pw, ph, GL_RGBA, GL_UNSIGNED_BYTE, buf);

    /* In-range raster position. This should render. */
    glRasterPos2i(300, 180);
    glDrawPixels(pw, ph, GL_RGBA, GL_UNSIGNED_BYTE, buf);

    free(buf);
}
