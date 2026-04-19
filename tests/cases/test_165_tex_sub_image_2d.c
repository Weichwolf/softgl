#include "harness.h"

/* Fill a 32x32 texture with blue, then use glTexSubImage2D to paint a 16x16
 * yellow square in the center. */

static unsigned char base[32*32*4];
static unsigned char patch[16*16*4];

void run_test(int w, int h) {
    for (int i = 0; i < 32*32; i++) {
        base[i*4+0] = 40; base[i*4+1] = 80; base[i*4+2] = 200; base[i*4+3] = 255;
    }
    for (int i = 0; i < 16*16; i++) {
        patch[i*4+0] = 240; patch[i*4+1] = 220; patch[i*4+2] = 40; patch[i*4+3] = 255;
    }

    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint id; glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_2D, id);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 32, 32, 0, GL_RGBA, GL_UNSIGNED_BYTE, base);
    glTexSubImage2D(GL_TEXTURE_2D, 0, 8, 8, 16, 16, GL_RGBA, GL_UNSIGNED_BYTE, patch);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    glColor3f(1.f, 1.f, 1.f);
    glBegin(GL_QUADS);
        glTexCoord2f(0.f, 0.f); glVertex2f(-0.7f, -0.7f);
        glTexCoord2f(1.f, 0.f); glVertex2f( 0.7f, -0.7f);
        glTexCoord2f(1.f, 1.f); glVertex2f( 0.7f,  0.7f);
        glTexCoord2f(0.f, 1.f); glVertex2f(-0.7f,  0.7f);
    glEnd();

    glDisable(GL_TEXTURE_2D);
    glDeleteTextures(1, &id);
}
