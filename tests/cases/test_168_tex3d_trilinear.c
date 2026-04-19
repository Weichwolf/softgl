#include "harness.h"

/* 2x2x2 3D texture with strong slice-to-slice contrast: slice 0 = red,
 * slice 1 = blue. With GL_LINEAR on all three axes, sampling at intermediate
 * r should produce purple tones. Render three quads at r = 0.0, 0.5, 1.0. */

static unsigned char vol[2*2*2*4];

static void make(void) {
    /* z = 0 slice: red. z = 1 slice: blue. */
    for (int i = 0; i < 4; i++) {
        vol[i*4+0] = 230; vol[i*4+1] = 30; vol[i*4+2] = 30; vol[i*4+3] = 255;
    }
    for (int i = 4; i < 8; i++) {
        vol[i*4+0] = 30; vol[i*4+1] = 30; vol[i*4+2] = 230; vol[i*4+3] = 255;
    }
}

static void quad(float x0, float x1, float r) {
    glBegin(GL_QUADS);
        glTexCoord3f(0.f, 0.f, r); glVertex2f(x0, -0.6f);
        glTexCoord3f(1.f, 0.f, r); glVertex2f(x1, -0.6f);
        glTexCoord3f(1.f, 1.f, r); glVertex2f(x1,  0.6f);
        glTexCoord3f(0.f, 1.f, r); glVertex2f(x0,  0.6f);
    glEnd();
}

void run_test(int w, int h) {
    make();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint id; glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_3D, id);
    glTexImage3D(GL_TEXTURE_3D, 0, GL_RGBA, 2, 2, 2, 0, GL_RGBA, GL_UNSIGNED_BYTE, vol);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_3D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    glColor3f(1.f, 1.f, 1.f);
    quad(-0.9f, -0.35f, 0.0f);
    quad(-0.25f, 0.25f, 0.5f);
    quad( 0.35f, 0.9f,  1.0f);

    glDisable(GL_TEXTURE_3D);
    glDeleteTextures(1, &id);
}
