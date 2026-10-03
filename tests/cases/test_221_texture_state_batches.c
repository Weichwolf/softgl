#include "harness.h"

static void panel(int w, int h, int index) {
    float x0 = (float)((index % 3) * w / 3 + 4);
    float x1 = (float)(((index % 3) + 1) * w / 3 - 4);
    float y0 = (float)((index / 3) * h / 2 + 4);
    float y1 = (float)(((index / 3) + 1) * h / 2 - 4);
    glBegin(GL_QUADS);
    glTexCoord2f(-0.5f, -0.5f); glVertex2f(x0, y0);
    glTexCoord2f( 1.5f, -0.5f); glVertex2f(x1, y0);
    glTexCoord2f( 1.5f,  1.5f); glVertex2f(x1, y1);
    glTexCoord2f(-0.5f,  1.5f); glVertex2f(x0, y1);
    glEnd();
}

/* Worker texture preparation must follow bindings, storage replacements,
 * sampler/env changes, and enable/disable transitions between batches. */
void run_test(int w, int h) {
    const unsigned char red[] = {255, 0, 0, 255};
    const unsigned char green[] = {0, 255, 0, 255};
    const unsigned char blue[] = {0, 0, 255, 255};
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    GLuint textures[2];
    glGenTextures(2, textures);
    for (int i = 0; i < 2; i++) {
        glBindTexture(GL_TEXTURE_2D, textures[i]);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 1, 1, 0,
                     GL_RGBA, GL_UNSIGNED_BYTE, i ? green : red);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    }
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);
    glBindTexture(GL_TEXTURE_2D, textures[0]);
    panel(w, h, 0);
    glBindTexture(GL_TEXTURE_2D, textures[1]);
    panel(w, h, 1);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 1, 1, 0,
                 GL_RGBA, GL_UNSIGNED_BYTE, blue);
    panel(w, h, 2);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);
    glColor4f(0.5f, 1.f, 0.25f, 1.f);
    panel(w, h, 3);
    glDisable(GL_TEXTURE_2D);
    glColor3f(1.f, 1.f, 0.f);
    panel(w, h, 4);
    glEnable(GL_TEXTURE_2D);
    glBindTexture(GL_TEXTURE_2D, textures[0]);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);
    panel(w, h, 5);
    glDeleteTextures(2, textures);
}
