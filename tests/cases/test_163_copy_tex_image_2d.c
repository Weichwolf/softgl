#include "harness.h"

/* Pass 1: draw a colourful scene.
 * Pass 2: glCopyTexImage2D copies the framebuffer into a 2D texture.
 * Pass 3: clear the screen and re-draw using the captured texture. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.0f, 0.0f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Pass 1: draw a red + green + blue triangle trio. */
    glBegin(GL_TRIANGLES);
        glColor3f(1.f, 0.2f, 0.2f);
        glVertex2f(-0.6f, -0.5f); glVertex2f(-0.1f, -0.5f); glVertex2f(-0.35f, 0.1f);
        glColor3f(0.2f, 1.f, 0.2f);
        glVertex2f( 0.1f, -0.5f); glVertex2f( 0.6f, -0.5f); glVertex2f( 0.35f, 0.1f);
        glColor3f(0.2f, 0.2f, 1.f);
        glVertex2f(-0.3f,  0.2f); glVertex2f( 0.3f,  0.2f); glVertex2f( 0.0f,  0.7f);
    glEnd();

    /* Pass 2: capture. We copy a 256x256 region centered-ish on the scene. */
    GLuint id; glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_2D, id);
    glCopyTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA,
                     (w - 256) / 2, (h - 256) / 2, 256, 256, 0);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

    /* Pass 3: clear to a new color, render the capture. */
    glClearColor(0.08f, 0.0f, 0.0f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);
    glColor3f(1.f, 1.f, 1.f);
    glBegin(GL_QUADS);
        glTexCoord2f(0.f, 0.f); glVertex2f(-0.7f, -0.55f);
        glTexCoord2f(1.f, 0.f); glVertex2f( 0.7f, -0.55f);
        glTexCoord2f(1.f, 1.f); glVertex2f( 0.7f,  0.55f);
        glTexCoord2f(0.f, 1.f); glVertex2f(-0.7f,  0.55f);
    glEnd();

    glDisable(GL_TEXTURE_2D);
    glDeleteTextures(1, &id);
}
