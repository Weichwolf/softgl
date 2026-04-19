#include "harness.h"

/* GL_COMBINE + GL_ADD_SIGNED with GL_RGB_SCALE=2.0.
 * Classic detail-normal-map combine: output = clamp(2 * (arg0 + arg1 - 0.5)).
 * arg0 = PRIMARY_COLOR (vertex color ~0.5 -> zero after bias),
 * arg1 = TEXTURE (a mid-biased detail: values around 0.5).
 * Wherever texture is brighter than 0.5, result lifts above 0.5; wherever
 * darker, result drops below 0.5. Scale of 2.0 widens the contrast. */

static unsigned char detail[8 * 8 * 4];

static void make_detail(void) {
    for (int y = 0; y < 8; y++)
        for (int x = 0; x < 8; x++) {
            int i = (y * 8 + x) * 4;
            /* Smooth ramp 60..200 along x, fixed blue=128. */
            unsigned char v = (unsigned char)(60 + (x * 140) / 7);
            detail[i+0] = v;
            detail[i+1] = 255 - v;
            detail[i+2] = 128;
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
    glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, GL_ADD_SIGNED);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, GL_PRIMARY_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_RGB, GL_SRC_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, GL_TEXTURE);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND1_RGB, GL_SRC_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_RGB_SCALE, 2);

    glColor3f(0.5f, 0.5f, 0.5f);
    glBegin(GL_QUADS);
        glTexCoord2f(0.f, 0.f); glVertex2f(-0.7f, -0.7f);
        glTexCoord2f(1.f, 0.f); glVertex2f( 0.7f, -0.7f);
        glTexCoord2f(1.f, 1.f); glVertex2f( 0.7f,  0.7f);
        glTexCoord2f(0.f, 1.f); glVertex2f(-0.7f,  0.7f);
    glEnd();

    /* Reset RGB_SCALE so the state doesn't leak into other tests (belt-and-suspenders). */
    glTexEnvi(GL_TEXTURE_ENV, GL_RGB_SCALE, 1);

    glDisable(GL_TEXTURE_2D);
    glDeleteTextures(1, &tex);
}
