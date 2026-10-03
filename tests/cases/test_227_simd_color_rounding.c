#include "harness.h"

/* Constant and interpolated RGBA near 8-bit half-way values exercise
 * quad quantization, channel ordering, blending and scalar stripe edges.
 * Mesa permits one LSB; the browser control also checks identical hashes. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    glClearColor(23.f / 255.f, 71.f / 255.f, 109.f / 255.f, 173.f / 255.f);
    glClear(GL_COLOR_BUFFER_BIT);
    for (int row = 0; row < 4; row++) {
        if (row == 2) {
            glEnable(GL_BLEND);
            glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
        }
        if (row == 3) glColorMask(GL_TRUE, GL_FALSE, GL_TRUE, GL_FALSE);
        for (int cell = 0; cell < 64; cell++) {
            float half = (float)(cell * 4) + .5f;
            float epsilon = row == 0 ? 0.f : row == 1 ? .0001f : -.0001f;
            float r = (half + epsilon) / 255.f;
            float g = (half + 1.f - epsilon) / 255.f;
            float b = (255.f - half + epsilon) / 255.f;
            /* Exact 8-bit alpha isolates color rounding during blending. */
            float a = row == 2 ? 128.f / 255.f : (half + 2.f) / 255.f;
            float x0 = (float)(cell * w / 64), x1 = (float)((cell + 1) * w / 64);
            float y0 = (float)(row * h / 4), y1 = (float)((row + 1) * h / 4);
            glColor4f(r, g, b, a);
            glBegin(GL_QUADS);
            glVertex2f(x0, y0);
            if (row == 3) glColor4f(b, r, g, 1.f - a);
            glVertex2f(x1, y0);
            glVertex2f(x1, y1);
            glColor4f(r, g, b, a);
            glVertex2f(x0, y1);
            glEnd();
        }
        glDisable(GL_BLEND);
        glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);
    }
}
