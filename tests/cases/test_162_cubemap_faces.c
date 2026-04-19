#include "harness.h"

/* Explicit test that uploading via individual GL_TEXTURE_CUBE_MAP_{POS,NEG}_*
 * face targets works. Visualise with a 3-axis "probe" scheme: we draw 6
 * strips; each strip's color comes from one face via a direction vector. */

static unsigned char faces[6][4*4*4];

static void make(void) {
    struct { unsigned char r, g, b; } col[6] = {
        {255,  0,  0},
        {  0,128,  0},
        {  0,  0,255},
        {255,255,  0},
        {  0,255,255},
        {255,  0,255},
    };
    for (int f = 0; f < 6; f++) {
        for (int i = 0; i < 16; i++) {
            faces[f][i*4+0] = col[f].r;
            faces[f][i*4+1] = col[f].g;
            faces[f][i*4+2] = col[f].b;
            faces[f][i*4+3] = 255;
        }
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

    GLuint id; glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_CUBE_MAP, id);
    GLenum targets[6] = {
        GL_TEXTURE_CUBE_MAP_POSITIVE_X, GL_TEXTURE_CUBE_MAP_NEGATIVE_X,
        GL_TEXTURE_CUBE_MAP_POSITIVE_Y, GL_TEXTURE_CUBE_MAP_NEGATIVE_Y,
        GL_TEXTURE_CUBE_MAP_POSITIVE_Z, GL_TEXTURE_CUBE_MAP_NEGATIVE_Z };
    for (int f = 0; f < 6; f++)
        glTexImage2D(targets[f], 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, faces[f]);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_CUBE_MAP);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    /* Six horizontal stripes with different sample directions. */
    float dir[6][3] = {
        { 1, 0, 0}, {-1, 0, 0},
        { 0, 1, 0}, { 0,-1, 0},
        { 0, 0, 1}, { 0, 0,-1}
    };
    for (int i = 0; i < 6; i++) {
        float y0 = -0.9f + i * 0.3f;
        float y1 = y0 + 0.25f;
        glBegin(GL_QUADS);
            glTexCoord3f(dir[i][0], dir[i][1], dir[i][2]); glVertex2f(-0.9f, y0);
            glTexCoord3f(dir[i][0], dir[i][1], dir[i][2]); glVertex2f( 0.9f, y0);
            glTexCoord3f(dir[i][0], dir[i][1], dir[i][2]); glVertex2f( 0.9f, y1);
            glTexCoord3f(dir[i][0], dir[i][1], dir[i][2]); glVertex2f(-0.9f, y1);
        glEnd();
    }

    glDisable(GL_TEXTURE_CUBE_MAP);
    glDeleteTextures(1, &id);
}
