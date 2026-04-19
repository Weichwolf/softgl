#include "harness.h"

/* Render 4 quads each sampling a different r-slice of a 4x4x4 3D texture. */
static unsigned char vol[4 * 4 * 4 * 4];

static void make_tex(void) {
    for (int z = 0; z < 4; z++)
      for (int y = 0; y < 4; y++)
        for (int x = 0; x < 4; x++) {
            int i = ((z * 4 + y) * 4 + x) * 4;
            vol[i+0] = (unsigned char)(x * 80);
            vol[i+1] = (unsigned char)(y * 80);
            vol[i+2] = (unsigned char)(z * 80);
            vol[i+3] = 255;
        }
}

static void quad(float x0, float y0, float x1, float y1, float r) {
    glBegin(GL_QUADS);
        glTexCoord3f(0.f, 0.f, r); glVertex2f(x0, y0);
        glTexCoord3f(1.f, 0.f, r); glVertex2f(x1, y0);
        glTexCoord3f(1.f, 1.f, r); glVertex2f(x1, y1);
        glTexCoord3f(0.f, 1.f, r); glVertex2f(x0, y1);
    glEnd();
}

void run_test(int w, int h) {
    make_tex();
    glViewport(0, 0, w, h);
    glClearColor(0.0f, 0.0f, 0.0f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint id; glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_3D, id);
    glTexImage3D(GL_TEXTURE_3D, 0, GL_RGBA, 4, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, vol);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_3D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    /* 4 quads, each a different z-slice. */
    quad(-0.9f,  0.1f, -0.05f,  0.85f, 0.125f);   /* slice 0 */
    quad( 0.05f, 0.1f,  0.9f,   0.85f, 0.375f);   /* slice 1 */
    quad(-0.9f, -0.85f,-0.05f, -0.1f,  0.625f);   /* slice 2 */
    quad( 0.05f,-0.85f, 0.9f,  -0.1f,  0.875f);   /* slice 3 */

    glDisable(GL_TEXTURE_3D);
    glDeleteTextures(1, &id);
}
