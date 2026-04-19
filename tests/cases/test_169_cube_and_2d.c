#include "harness.h"

/* Skybox (cube map) on top half, 2D-textured ground quad on bottom half. */

static unsigned char faces[6][4*4*4];
static unsigned char ground[8*8*4];

static void make(void) {
    struct { unsigned char r, g, b; } col[6] = {
        {200,  60,  60}, { 60, 200,  60},
        { 60,  60, 200}, {200, 200,  60},
        { 60, 200, 200}, {200,  60, 200}
    };
    for (int f = 0; f < 6; f++)
        for (int i = 0; i < 16; i++) {
            faces[f][i*4+0] = col[f].r;
            faces[f][i*4+1] = col[f].g;
            faces[f][i*4+2] = col[f].b;
            faces[f][i*4+3] = 255;
        }
    for (int y = 0; y < 8; y++)
        for (int x = 0; x < 8; x++) {
            int i = (y*8 + x) * 4;
            int c = ((x/2) + (y/2)) & 1;
            ground[i+0] = c ? 150 : 40;
            ground[i+1] = c ? 100 : 20;
            ground[i+2] = c ?  50 : 10;
            ground[i+3] = 255;
        }
}

void run_test(int w, int h) {
    make();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint tex2d, cube;
    glGenTextures(1, &tex2d);
    glGenTextures(1, &cube);

    glBindTexture(GL_TEXTURE_2D, tex2d);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, ground);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);

    glBindTexture(GL_TEXTURE_CUBE_MAP, cube);
    GLenum tt[6] = {
        GL_TEXTURE_CUBE_MAP_POSITIVE_X, GL_TEXTURE_CUBE_MAP_NEGATIVE_X,
        GL_TEXTURE_CUBE_MAP_POSITIVE_Y, GL_TEXTURE_CUBE_MAP_NEGATIVE_Y,
        GL_TEXTURE_CUBE_MAP_POSITIVE_Z, GL_TEXTURE_CUBE_MAP_NEGATIVE_Z };
    for (int f = 0; f < 6; f++)
        glTexImage2D(tt[f], 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, faces[f]);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);
    glColor3f(1.f, 1.f, 1.f);

    /* Sky (top): use cube map. */
    glBindTexture(GL_TEXTURE_CUBE_MAP, cube);
    glEnable(GL_TEXTURE_CUBE_MAP);
    glBegin(GL_QUADS);
        glTexCoord3f(0.f, 1.f, 0.f); glVertex2f(-0.95f, 0.f);
        glTexCoord3f(0.f, 1.f, 0.f); glVertex2f( 0.95f, 0.f);
        glTexCoord3f(0.f, 1.f, 0.f); glVertex2f( 0.95f, 0.85f);
        glTexCoord3f(0.f, 1.f, 0.f); glVertex2f(-0.95f, 0.85f);
    glEnd();
    glDisable(GL_TEXTURE_CUBE_MAP);

    /* Ground: use 2D. */
    glBindTexture(GL_TEXTURE_2D, tex2d);
    glEnable(GL_TEXTURE_2D);
    glBegin(GL_QUADS);
        glTexCoord2f(0.f, 0.f); glVertex2f(-0.95f, -0.85f);
        glTexCoord2f(2.f, 0.f); glVertex2f( 0.95f, -0.85f);
        glTexCoord2f(2.f, 2.f); glVertex2f( 0.95f,  0.f);
        glTexCoord2f(0.f, 2.f); glVertex2f(-0.95f,  0.f);
    glEnd();
    glDisable(GL_TEXTURE_2D);

    glDeleteTextures(1, &tex2d);
    glDeleteTextures(1, &cube);
}
