#include "harness.h"

/* glMultiTexCoord2f on two units, immediate-mode quad. */

static unsigned char tex0[8 * 8 * 4];
static unsigned char tex1[8 * 8 * 4];

static void make_tex(void) {
    for (int y = 0; y < 8; y++)
        for (int x = 0; x < 8; x++) {
            int i = (y * 8 + x) * 4;
            tex0[i+0] = (unsigned char)(x * 32);
            tex0[i+1] = (unsigned char)(y * 32);
            tex0[i+2] = 128;
            tex0[i+3] = 255;
            int s = ((x / 2) + (y / 2)) & 1;
            tex1[i+0] = s ? 255 : 64;
            tex1[i+1] = s ? 255 : 64;
            tex1[i+2] = s ? 255 : 64;
            tex1[i+3] = 255;
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

    GLuint ids[2]; glGenTextures(2, ids);

    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, ids[0]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex0);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, ids[1]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex1);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

    glColor3f(1.f, 1.f, 1.f);
    glBegin(GL_QUADS);
        glMultiTexCoord2f(GL_TEXTURE0, 0.f, 0.f);
        glMultiTexCoord2f(GL_TEXTURE1, 0.f, 0.f);
        glVertex2f(-0.7f, -0.7f);

        glMultiTexCoord2f(GL_TEXTURE0, 1.f, 0.f);
        glMultiTexCoord2f(GL_TEXTURE1, 2.f, 0.f);
        glVertex2f( 0.7f, -0.7f);

        glMultiTexCoord2f(GL_TEXTURE0, 1.f, 1.f);
        glMultiTexCoord2f(GL_TEXTURE1, 2.f, 2.f);
        glVertex2f( 0.7f,  0.7f);

        glMultiTexCoord2f(GL_TEXTURE0, 0.f, 1.f);
        glMultiTexCoord2f(GL_TEXTURE1, 0.f, 2.f);
        glVertex2f(-0.7f,  0.7f);
    glEnd();

    glActiveTexture(GL_TEXTURE1); glDisable(GL_TEXTURE_2D);
    glActiveTexture(GL_TEXTURE0); glDisable(GL_TEXTURE_2D);
    glDeleteTextures(2, ids);
}
