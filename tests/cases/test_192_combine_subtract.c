#include "harness.h"

/* GL_COMBINE + GL_SUBTRACT.
 * Per-vertex color = mid-gray (0.7). Unit 0 enabled with a checkerboard
 * detail texture (light/dark). Combiner does arg0 - arg1 with
 * arg0 = PRIMARY_COLOR (mid-gray), arg1 = TEXTURE (detail).
 * Result: wherever the detail is light, we subtract more → darker; where
 * dark, we subtract less → stays close to gray. Clamped to [0,1]. */

static unsigned char detail[8 * 8 * 4];

static void make_detail(void) {
    for (int y = 0; y < 8; y++)
        for (int x = 0; x < 8; x++) {
            int i = (y * 8 + x) * 4;
            int s = ((x / 2) + (y / 2)) & 1;
            unsigned char v = s ? 180 : 50;
            detail[i+0] = detail[i+1] = detail[i+2] = v;
            detail[i+3] = 255;
        }
}

void run_test(int w, int h) {
    make_detail();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    GLuint tex; glGenTextures(1, &tex);
    glBindTexture(GL_TEXTURE_2D, tex);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, detail);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glEnable(GL_TEXTURE_2D);

    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
    glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, GL_SUBTRACT);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, GL_PRIMARY_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_RGB, GL_SRC_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, GL_TEXTURE);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND1_RGB, GL_SRC_COLOR);

    glColor3f(0.7f, 0.7f, 0.7f);
    glBegin(GL_QUADS);
        glTexCoord2f(0.f, 0.f); glVertex2f(-0.7f, -0.7f);
        glTexCoord2f(1.f, 0.f); glVertex2f( 0.7f, -0.7f);
        glTexCoord2f(1.f, 1.f); glVertex2f( 0.7f,  0.7f);
        glTexCoord2f(0.f, 1.f); glVertex2f(-0.7f,  0.7f);
    glEnd();

    glDisable(GL_TEXTURE_2D);
    glDeleteTextures(1, &tex);
}
