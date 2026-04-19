#include "harness.h"
#include <stdlib.h>
#include <string.h>

/* glPixelStorei(GL_UNPACK_ALIGNMENT, 1) vs the default 4. RGB/UBYTE row
 * of 3 pixels = 9 bytes, which aligns to 12 at default alignment=4. This
 * test sets alignment=1 so the packed row is exactly 9 bytes. The source
 * is constructed as a tight 9-byte-per-row buffer; reading with default
 * alignment would mis-index. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.0f, 0.05f, 0.05f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Width 3, height 16 — 9 bytes/row, alignment-1 layout. Each row a
     * different solid color so misalignment would be obvious. */
    const int pw = 3, ph = 16;
    unsigned char *buf = (unsigned char*)malloc(pw * ph * 3);
    for (int y = 0; y < ph; y++) {
        unsigned char r = (unsigned char)((y * 255) / (ph - 1));
        unsigned char g = (unsigned char)(255 - r);
        unsigned char b = 100;
        unsigned char *row = buf + y * pw * 3;
        for (int x = 0; x < pw; x++) {
            row[x*3 + 0] = r;
            row[x*3 + 1] = g;
            row[x*3 + 2] = b;
        }
    }

    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
    glPixelZoom(30.f, 10.f);  /* Zoom up so pw=3 x ph=16 is visible. */
    glRasterPos2i(100, 100);
    glDrawPixels(pw, ph, GL_RGB, GL_UNSIGNED_BYTE, buf);
    glPixelZoom(1.f, 1.f);
    glPixelStorei(GL_UNPACK_ALIGNMENT, 4);

    free(buf);
}
