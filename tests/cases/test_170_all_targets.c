#include "harness.h"

/* 2x2 grid with one quad per texture target:
 *   top-left: 1D gradient
 *   top-right: 2D checkerboard
 *   bottom-left: 3D mid-slice
 *   bottom-right: cube-map face via direction vector */

static unsigned char tex1d[8*4];
static unsigned char tex2d[8*8*4];
static unsigned char tex3d[4*4*4*4];
static unsigned char cube_faces[6][4*4*4];

static void make(void) {
    for (int x = 0; x < 8; x++) {
        float t = (float)x / 7.f;
        tex1d[x*4+0] = (unsigned char)((1.f - t) * 255);
        tex1d[x*4+1] = 0;
        tex1d[x*4+2] = (unsigned char)(t * 255);
        tex1d[x*4+3] = 255;
    }
    for (int y = 0; y < 8; y++)
        for (int x = 0; x < 8; x++) {
            int i = (y*8 + x) * 4;
            int c = ((x/2) + (y/2)) & 1;
            tex2d[i+0] = c ? 230 : 60;
            tex2d[i+1] = c ? 180 : 100;
            tex2d[i+2] = c ?  40 : 160;
            tex2d[i+3] = 255;
        }
    for (int z = 0; z < 4; z++)
      for (int y = 0; y < 4; y++)
        for (int x = 0; x < 4; x++) {
            int i = ((z*4 + y)*4 + x) * 4;
            tex3d[i+0] = (unsigned char)(x*80);
            tex3d[i+1] = (unsigned char)(y*80);
            tex3d[i+2] = (unsigned char)(z*80);
            tex3d[i+3] = 255;
        }
    struct { unsigned char r, g, b; } col[6] = {
        {200,  60,  60}, { 60, 200,  60},
        { 60,  60, 200}, {200, 200,  60},
        { 60, 200, 200}, {200,  60, 200}
    };
    for (int f = 0; f < 6; f++)
        for (int i = 0; i < 16; i++) {
            cube_faces[f][i*4+0] = col[f].r;
            cube_faces[f][i*4+1] = col[f].g;
            cube_faces[f][i*4+2] = col[f].b;
            cube_faces[f][i*4+3] = 255;
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

    GLuint id_1d, id_2d, id_3d, id_cube;
    glGenTextures(1, &id_1d);
    glGenTextures(1, &id_2d);
    glGenTextures(1, &id_3d);
    glGenTextures(1, &id_cube);

    glBindTexture(GL_TEXTURE_1D, id_1d);
    glTexImage1D(GL_TEXTURE_1D, 0, GL_RGBA, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex1d);
    glTexParameteri(GL_TEXTURE_1D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_1D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_1D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);

    glBindTexture(GL_TEXTURE_2D, id_2d);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex2d);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

    glBindTexture(GL_TEXTURE_3D, id_3d);
    glTexImage3D(GL_TEXTURE_3D, 0, GL_RGBA, 4, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex3d);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_3D, GL_TEXTURE_WRAP_R, GL_CLAMP_TO_EDGE);

    glBindTexture(GL_TEXTURE_CUBE_MAP, id_cube);
    GLenum tt[6] = {
        GL_TEXTURE_CUBE_MAP_POSITIVE_X, GL_TEXTURE_CUBE_MAP_NEGATIVE_X,
        GL_TEXTURE_CUBE_MAP_POSITIVE_Y, GL_TEXTURE_CUBE_MAP_NEGATIVE_Y,
        GL_TEXTURE_CUBE_MAP_POSITIVE_Z, GL_TEXTURE_CUBE_MAP_NEGATIVE_Z };
    for (int f = 0; f < 6; f++)
        glTexImage2D(tt[f], 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, cube_faces[f]);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);
    glColor3f(1.f, 1.f, 1.f);

    /* Top-left: 1D. */
    glBindTexture(GL_TEXTURE_1D, id_1d);
    glEnable(GL_TEXTURE_1D);
    glBegin(GL_QUADS);
        glTexCoord1f(0.f); glVertex2f(-0.9f,  0.1f);
        glTexCoord1f(1.f); glVertex2f(-0.05f, 0.1f);
        glTexCoord1f(1.f); glVertex2f(-0.05f, 0.85f);
        glTexCoord1f(0.f); glVertex2f(-0.9f,  0.85f);
    glEnd();
    glDisable(GL_TEXTURE_1D);

    /* Top-right: 2D. */
    glBindTexture(GL_TEXTURE_2D, id_2d);
    glEnable(GL_TEXTURE_2D);
    glBegin(GL_QUADS);
        glTexCoord2f(0.f, 0.f); glVertex2f( 0.05f, 0.1f);
        glTexCoord2f(1.f, 0.f); glVertex2f( 0.9f,  0.1f);
        glTexCoord2f(1.f, 1.f); glVertex2f( 0.9f,  0.85f);
        glTexCoord2f(0.f, 1.f); glVertex2f( 0.05f, 0.85f);
    glEnd();
    glDisable(GL_TEXTURE_2D);

    /* Bottom-left: 3D mid-slice. */
    glBindTexture(GL_TEXTURE_3D, id_3d);
    glEnable(GL_TEXTURE_3D);
    glBegin(GL_QUADS);
        glTexCoord3f(0.f, 0.f, 0.5f); glVertex2f(-0.9f, -0.85f);
        glTexCoord3f(1.f, 0.f, 0.5f); glVertex2f(-0.05f,-0.85f);
        glTexCoord3f(1.f, 1.f, 0.5f); glVertex2f(-0.05f,-0.1f);
        glTexCoord3f(0.f, 1.f, 0.5f); glVertex2f(-0.9f, -0.1f);
    glEnd();
    glDisable(GL_TEXTURE_3D);

    /* Bottom-right: cube +Y face (blue). */
    glBindTexture(GL_TEXTURE_CUBE_MAP, id_cube);
    glEnable(GL_TEXTURE_CUBE_MAP);
    glBegin(GL_QUADS);
        glTexCoord3f(0.f, 1.f, 0.f); glVertex2f( 0.05f,-0.85f);
        glTexCoord3f(0.f, 1.f, 0.f); glVertex2f( 0.9f, -0.85f);
        glTexCoord3f(0.f, 1.f, 0.f); glVertex2f( 0.9f, -0.1f);
        glTexCoord3f(0.f, 1.f, 0.f); glVertex2f( 0.05f,-0.1f);
    glEnd();
    glDisable(GL_TEXTURE_CUBE_MAP);

    glDeleteTextures(1, &id_1d);
    glDeleteTextures(1, &id_2d);
    glDeleteTextures(1, &id_3d);
    glDeleteTextures(1, &id_cube);
}
