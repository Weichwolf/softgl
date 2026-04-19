#include "harness.h"
#include <math.h>

/* 1D texture as a 4-step "ramp" LUT. We sample it with a u coordinate that
 * varies horizontally across a quad (acting as a poor-man's light ramp). */
static unsigned char lut[8 * 4];

static void make_lut(void) {
    /* 8 discrete tones, banded as 4 groups of 2 for visible stepping. */
    unsigned char steps[4][3] = {
        {30,  30,  50},
        {90,  60,  80},
        {180, 150, 110},
        {250, 240, 200}
    };
    for (int i = 0; i < 8; i++) {
        int g = i / 2;
        lut[i*4+0] = steps[g][0];
        lut[i*4+1] = steps[g][1];
        lut[i*4+2] = steps[g][2];
        lut[i*4+3] = 255;
    }
}

void run_test(int w, int h) {
    make_lut();
    glViewport(0, 0, w, h);
    glClearColor(0.0f, 0.0f, 0.0f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint id; glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_1D, id);
    glTexImage1D(GL_TEXTURE_1D, 0, GL_RGBA, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, lut);
    glTexParameteri(GL_TEXTURE_1D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_1D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_1D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_1D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    /* Two stacked quads: one ramping 0->1, one ramping 1->0. */
    glBegin(GL_QUADS);
        glTexCoord1f(0.f); glVertex2f(-0.9f,  0.05f);
        glTexCoord1f(1.f); glVertex2f( 0.9f,  0.05f);
        glTexCoord1f(1.f); glVertex2f( 0.9f,  0.8f);
        glTexCoord1f(0.f); glVertex2f(-0.9f,  0.8f);

        glTexCoord1f(1.f); glVertex2f(-0.9f, -0.8f);
        glTexCoord1f(0.f); glVertex2f( 0.9f, -0.8f);
        glTexCoord1f(0.f); glVertex2f( 0.9f, -0.05f);
        glTexCoord1f(1.f); glVertex2f(-0.9f, -0.05f);
    glEnd();

    glDisable(GL_TEXTURE_1D);
    glDeleteTextures(1, &id);
}
