#include "harness.h"

/* 2x2x2 3D texture with eight distinct corners. Rendered on a quad with
 * glTexCoord3f sweeping through the volume to show a 3D gradient. */
static unsigned char tex3d[2 * 2 * 2 * 4];

static void make_tex(void) {
    /* (x, y, z) in {0,1}. Use 8 distinct colors. */
    unsigned char corners[8][3] = {
        {255,   0,   0},   /* 000 red   */
        {  0, 255,   0},   /* 100 green */
        {  0,   0, 255},   /* 010 blue  */
        {255, 255,   0},   /* 110 yellow*/
        {255,   0, 255},   /* 001 magenta*/
        {  0, 255, 255},   /* 101 cyan  */
        {255, 255, 255},   /* 011 white */
        { 32,  32,  32},   /* 111 dark gray */
    };
    for (int z = 0; z < 2; z++)
      for (int y = 0; y < 2; y++)
        for (int x = 0; x < 2; x++) {
            int idx = (z * 2 + y) * 2 + x;
            int src = (z << 2) | (y << 1) | x;
            tex3d[idx*4+0] = corners[src][0];
            tex3d[idx*4+1] = corners[src][1];
            tex3d[idx*4+2] = corners[src][2];
            tex3d[idx*4+3] = 255;
        }
}

void run_test(int w, int h) {
    make_tex();
    glViewport(0, 0, w, h);
    glClearColor(0.03f, 0.03f, 0.05f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint id; glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_3D, id);
    glTexImage3D(GL_TEXTURE_3D, 0, GL_RGBA, 2, 2, 2, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex3d);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_3D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    /* Quad with (s,t) spanning the full face at r=0.5 -> mid-slice. */
    glBegin(GL_QUADS);
        glTexCoord3f(0.f, 0.f, 0.5f); glVertex2f(-0.8f, -0.7f);
        glTexCoord3f(1.f, 0.f, 0.5f); glVertex2f( 0.8f, -0.7f);
        glTexCoord3f(1.f, 1.f, 0.5f); glVertex2f( 0.8f,  0.7f);
        glTexCoord3f(0.f, 1.f, 0.5f); glVertex2f(-0.8f,  0.7f);
    glEnd();

    glDisable(GL_TEXTURE_3D);
    glDeleteTextures(1, &id);
}
