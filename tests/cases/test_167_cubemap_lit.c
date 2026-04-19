#include "harness.h"
#include <math.h>

/* Two passes in one scene:
 *   (a) Six "skybox panels" textured from the cube map (no lighting).
 *   (b) A simple lit triangle in the center (ordinary gouraud). */

static unsigned char faces[6][4*4*4];

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
}

void run_test(int w, int h) {
    make();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint cube; glGenTextures(1, &cube);
    glBindTexture(GL_TEXTURE_CUBE_MAP, cube);
    GLenum ttargets[6] = {
        GL_TEXTURE_CUBE_MAP_POSITIVE_X, GL_TEXTURE_CUBE_MAP_NEGATIVE_X,
        GL_TEXTURE_CUBE_MAP_POSITIVE_Y, GL_TEXTURE_CUBE_MAP_NEGATIVE_Y,
        GL_TEXTURE_CUBE_MAP_POSITIVE_Z, GL_TEXTURE_CUBE_MAP_NEGATIVE_Z };
    for (int f = 0; f < 6; f++)
        glTexImage2D(ttargets[f], 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, faces[f]);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

    /* Pass (a): 3 stripes using cube map. */
    glEnable(GL_TEXTURE_CUBE_MAP);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);
    glBegin(GL_QUADS);
        glTexCoord3f( 1.f, 0.f, 0.f); glVertex2f(-0.9f,  0.6f);
        glTexCoord3f( 1.f, 0.f, 0.f); glVertex2f( 0.9f,  0.6f);
        glTexCoord3f( 1.f, 0.f, 0.f); glVertex2f( 0.9f,  0.85f);
        glTexCoord3f( 1.f, 0.f, 0.f); glVertex2f(-0.9f,  0.85f);

        glTexCoord3f( 0.f, 1.f, 0.f); glVertex2f(-0.9f,  0.35f);
        glTexCoord3f( 0.f, 1.f, 0.f); glVertex2f( 0.9f,  0.35f);
        glTexCoord3f( 0.f, 1.f, 0.f); glVertex2f( 0.9f,  0.55f);
        glTexCoord3f( 0.f, 1.f, 0.f); glVertex2f(-0.9f,  0.55f);

        glTexCoord3f( 0.f, 0.f, 1.f); glVertex2f(-0.9f,  0.1f);
        glTexCoord3f( 0.f, 0.f, 1.f); glVertex2f( 0.9f,  0.1f);
        glTexCoord3f( 0.f, 0.f, 1.f); glVertex2f( 0.9f,  0.3f);
        glTexCoord3f( 0.f, 0.f, 1.f); glVertex2f(-0.9f,  0.3f);
    glEnd();
    glDisable(GL_TEXTURE_CUBE_MAP);

    /* Pass (b): lit triangle. */
    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    const float pos[4] = { 0.5f, 0.7f, 1.f, 0.f };
    const float dif[4] = { 1.f, 0.8f, 0.4f, 1.f };
    const float amb[4] = { 0.1f, 0.1f, 0.1f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE,  dif);
    glLightfv(GL_LIGHT0, GL_AMBIENT,  amb);
    const float mdif[4] = { 1.f, 1.f, 1.f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    glBegin(GL_TRIANGLES);
        glNormal3f(0.f, 0.f, 1.f);
        glVertex2f(-0.35f, -0.6f);
        glVertex2f( 0.35f, -0.6f);
        glVertex2f( 0.f,   -0.05f);
    glEnd();

    glDisable(GL_LIGHTING); glDisable(GL_LIGHT0);
    glDeleteTextures(1, &cube);
}
