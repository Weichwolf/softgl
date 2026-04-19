#include "harness.h"

/* Allocate a 64x64 texture with a uniform base color. Draw a scene with a
 * bright circle, then glCopyTexSubImage2D the bright region into a corner
 * of the texture. Render the texture afterwards. */

static unsigned char base[64*64*4];

void run_test(int w, int h) {
    for (int i = 0; i < 64*64; i++) {
        base[i*4+0] = 40; base[i*4+1] = 40; base[i*4+2] = 80; base[i*4+3] = 255;
    }

    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Draw a bright yellow quad near pixel (100, 100). */
    glColor3f(1.f, 0.9f, 0.2f);
    glBegin(GL_QUADS);
        glVertex2f(-0.6f, -0.3f);
        glVertex2f(-0.2f, -0.3f);
        glVertex2f(-0.2f,  0.1f);
        glVertex2f(-0.6f,  0.1f);
    glEnd();

    /* Upload baseline texture. */
    GLuint id; glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_2D, id);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 64, 64, 0, GL_RGBA, GL_UNSIGNED_BYTE, base);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

    /* Copy a 32x32 screen region (over the yellow quad) into a corner. */
    glCopyTexSubImage2D(GL_TEXTURE_2D, 0, 16, 16, 120, 120, 32, 32);

    /* Clear and display. */
    glClearColor(0.0f, 0.f, 0.0f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
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
