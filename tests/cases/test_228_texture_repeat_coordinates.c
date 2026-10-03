#include "harness.h"

/* LINEAR/REPEAT texel and weight conversion: negative integer seams,
 * large signed offsets and fractions around the 8-bit weight half-way.
 * Exercise both texture environments and POT/non-POT dimensions. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
    GLuint texture;
    glGenTextures(1, &texture);
    glBindTexture(GL_TEXTURE_2D, texture);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
    for (int row = 0; row < 4; row++) {
        int tw = row & 1 ? 7 : 8, th = row & 1 ? 5 : 8;
        unsigned char texels[8 * 8 * 4];
        for (int y = 0; y < th; y++) for (int x = 0; x < tw; x++) {
            int p = (y * tw + x) * 4;
            texels[p] = (unsigned char)(x * 29);
            texels[p + 1] = (unsigned char)(y * 29);
            texels[p + 2] = (unsigned char)((x + y) * 13);
            texels[p + 3] = 255;
        }
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, tw, th, 0,
                     GL_RGBA, GL_UNSIGNED_BYTE, texels);
        glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE,
                  row < 2 ? GL_REPLACE : GL_MODULATE);
        glColor4f(173.f / 255.f, 211.f / 255.f, 127.f / 255.f, 1.f);
        for (int cell = 0; cell < 32; cell++) {
            const float offsets[] = {-1024.f, -3.f, 0.f, 1024.f};
            float offset = offsets[cell / 8];
            float epsilon = cell & 1 ? .00001f : -.00001f;
            float u, v;
            if (cell % 8 < 4) {
                u = offset + (float)(cell % 4) / (float)tw + epsilon;
                v = -offset + epsilon;
            } else {
                float weight = ((float)(cell % 4) * 64.f + .5f) / 256.f;
                u = offset + (.5f + weight + epsilon) / (float)tw;
                v = -offset + (.5f + 1.f - weight - epsilon) / (float)th;
            }
            float x0 = (float)(cell * w / 32), x1 = (float)((cell + 1) * w / 32);
            float y0 = (float)(row * h / 4), y1 = (float)((row + 1) * h / 4);
            glTexCoord2f(u, v);
            glBegin(GL_QUADS);
            glVertex2f(x0, y0);
            glVertex2f(x1, y0);
            glVertex2f(x1, y1);
            glVertex2f(x0, y1);
            glEnd();
        }
    }
    glDeleteTextures(1, &texture);
}
