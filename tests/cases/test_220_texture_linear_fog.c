#include "harness.h"

/* LINEAR/REPEAT sampling with MODULATE and REPLACE under all fog modes.
 * Alpha test and blending exercise the fragment ordering after texturing. */
void run_test(int w, int h) {
    unsigned char texels[8 * 8 * 4];
    for (int y = 0; y < 8; y++) {
        for (int x = 0; x < 8; x++) {
            int p = (y * 8 + x) * 4;
            texels[p] = (unsigned char)(x * 31);
            texels[p + 1] = (unsigned char)(y * 31);
            texels[p + 2] = (unsigned char)((x ^ y) * 31);
            texels[p + 3] = (unsigned char)(64 + ((x + y) % 7) * 31);
        }
    }
    glViewport(0, 0, w, h);
    glClearColor(0.1f, 0.12f, 0.15f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(-1, 1, -1, 1, 1, 8);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    GLuint texture;
    glGenTextures(1, &texture);
    glBindTexture(GL_TEXTURE_2D, texture);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, texels);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
    glEnable(GL_FOG);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_ALPHA_TEST);
    glAlphaFunc(GL_GREATER, 0.35f);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    const float fog_color[] = {0.25f, 0.35f, 0.45f, 1.f};
    glFogfv(GL_FOG_COLOR, fog_color);
    glFogf(GL_FOG_START, 1.5f);
    glFogf(GL_FOG_END, 6.f);
    glFogf(GL_FOG_DENSITY, 0.3f);
    const GLenum modes[] = {GL_LINEAR, GL_EXP, GL_EXP2};
    for (int row = 0; row < 2; row++) {
        glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, row ? GL_REPLACE : GL_MODULATE);
        for (int col = 0; col < 3; col++) {
            glFogi(GL_FOG_MODE, modes[col]);
            float x = -0.95f + (float)col * 0.64f;
            float y = -0.9f + (float)row * 0.95f;
            glColor4f(0.7f, 0.8f, 0.9f, 0.85f);
            glBegin(GL_QUADS);
            glTexCoord2f(-0.3f, -0.1f); glVertex3f(x, y, -2.f);
            glTexCoord2f( 2.1f, -0.1f); glVertex3f(x + 0.58f, y, -5.f);
            glTexCoord2f( 2.1f,  1.9f); glVertex3f(x + 0.58f, y + 0.8f, -5.f);
            glTexCoord2f(-0.3f,  1.9f); glVertex3f(x, y + 0.8f, -2.f);
            glEnd();
        }
    }
    glDeleteTextures(1, &texture);
}
