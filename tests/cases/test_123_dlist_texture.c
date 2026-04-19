#include "harness.h"
#include <string.h>

/* Display list that records glTexImage2D. The pixel data must be
 * deep-copied into the list — we zero out the source after EndList and
 * still expect the replay to produce the correct texture.  */

static unsigned char tex[8 * 8 * 4];

static void make_tex(void) {
    for (int y = 0; y < 8; y++)
        for (int x = 0; x < 8; x++) {
            int i = (y * 8 + x) * 4;
            int s = ((x / 2) + (y / 2)) & 1;
            tex[i+0] = s ? 240 : 40;
            tex[i+1] = s ? 60  : 200;
            tex[i+2] = s ? 120 : 40;
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

    GLuint list = glGenLists(1);
    glNewList(list, GL_COMPILE);
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
    glEndList();

    /* Destroy the caller's pixel buffer — the list's deep-copy must survive. */
    memset(tex, 0, sizeof(tex));

    glCallList(list);

    glDeleteLists(list, 1);
    glDeleteTextures(1, &id);
}
