#include "harness.h"

/* 4x4x4 volume initially all green. glTexSubImage3D replaces the z=1 slice
 * with a red pattern. Render the updated slice to confirm. */

static unsigned char vol[4*4*4*4];
static unsigned char slice[4*4*4];

void run_test(int w, int h) {
    for (int i = 0; i < 64; i++) {
        vol[i*4+0] = 40; vol[i*4+1] = 200; vol[i*4+2] = 60; vol[i*4+3] = 255;
    }
    for (int i = 0; i < 16; i++) {
        slice[i*4+0] = 230; slice[i*4+1] = 60; slice[i*4+2] = 60; slice[i*4+3] = 255;
    }

    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint id; glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_3D, id);
    glTexImage3D(GL_TEXTURE_3D, 0, GL_RGBA, 4, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, vol);
    glTexSubImage3D(GL_TEXTURE_3D, 0, 0, 0, 1, 4, 4, 1, GL_RGBA, GL_UNSIGNED_BYTE, slice);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_3D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    /* Left quad: sample slice 0 -> green. Right quad: slice 1 -> red. */
    glColor3f(1.f, 1.f, 1.f);
    glBegin(GL_QUADS);
        glTexCoord3f(0.f, 0.f, 0.125f); glVertex2f(-0.85f, -0.7f);
        glTexCoord3f(1.f, 0.f, 0.125f); glVertex2f(-0.05f, -0.7f);
        glTexCoord3f(1.f, 1.f, 0.125f); glVertex2f(-0.05f,  0.7f);
        glTexCoord3f(0.f, 1.f, 0.125f); glVertex2f(-0.85f,  0.7f);

        glTexCoord3f(0.f, 0.f, 0.375f); glVertex2f( 0.05f, -0.7f);
        glTexCoord3f(1.f, 0.f, 0.375f); glVertex2f( 0.85f, -0.7f);
        glTexCoord3f(1.f, 1.f, 0.375f); glVertex2f( 0.85f,  0.7f);
        glTexCoord3f(0.f, 1.f, 0.375f); glVertex2f( 0.05f,  0.7f);
    glEnd();

    glDisable(GL_TEXTURE_3D);
    glDeleteTextures(1, &id);
}
