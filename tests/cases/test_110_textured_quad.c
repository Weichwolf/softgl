#include "harness.h"

/* Immediate-mode textured quad: glTexCoord2f + glBegin(GL_QUADS). */

static unsigned char tex[8 * 8 * 4];

static void make_tex(void) {
    for (int y = 0; y < 8; y++)
        for (int x = 0; x < 8; x++) {
            int i = (y * 8 + x) * 4;
            int s = ((x / 2) + (y / 2)) & 1;
            tex[i+0] = s ? 255 : 32;
            tex[i+1] = s ? 64  : 200;
            tex[i+2] = s ? 128 : 32;
            tex[i+3] = 255;
        }
}

void run_test(int w, int h) {
    make_tex();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    GLuint id; glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_2D, id);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
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
