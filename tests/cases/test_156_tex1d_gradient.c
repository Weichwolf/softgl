#include "harness.h"

/* 1D texture: red->blue gradient, sampled across a quad via glTexCoord1f. */
static unsigned char tex1d[16 * 4];

static void make_tex(void) {
    for (int x = 0; x < 16; x++) {
        float t = (float)x / 15.f;
        tex1d[x * 4 + 0] = (unsigned char)((1.f - t) * 255.f);
        tex1d[x * 4 + 1] = 0;
        tex1d[x * 4 + 2] = (unsigned char)(t * 255.f);
        tex1d[x * 4 + 3] = 255;
    }
}

void run_test(int w, int h) {
    make_tex();
    glViewport(0, 0, w, h);
    glClearColor(0.05f, 0.05f, 0.08f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint id; glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_1D, id);
    glTexImage1D(GL_TEXTURE_1D, 0, GL_RGBA, 16, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex1d);
    glTexParameteri(GL_TEXTURE_1D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_1D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_1D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_1D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    glColor3f(1.f, 1.f, 1.f);
    glBegin(GL_QUADS);
        glTexCoord1f(0.f); glVertex2f(-0.8f, -0.6f);
        glTexCoord1f(1.f); glVertex2f( 0.8f, -0.6f);
        glTexCoord1f(1.f); glVertex2f( 0.8f,  0.6f);
        glTexCoord1f(0.f); glVertex2f(-0.8f,  0.6f);
    glEnd();

    glDisable(GL_TEXTURE_1D);
    glDeleteTextures(1, &id);
}
