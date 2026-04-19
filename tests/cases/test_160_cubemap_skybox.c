#include "harness.h"

/* Cube-map with 6 face-specific colors. Rendered as 6 quads (one per face)
 * each textured by the cube map with a direction vector. */

static unsigned char face_pos_x[4*4*4]; /* red   */
static unsigned char face_neg_x[4*4*4]; /* green */
static unsigned char face_pos_y[4*4*4]; /* blue  */
static unsigned char face_neg_y[4*4*4]; /* yellow*/
static unsigned char face_pos_z[4*4*4]; /* cyan  */
static unsigned char face_neg_z[4*4*4]; /* magenta*/

static void fill(unsigned char *p, unsigned char r, unsigned char g, unsigned char b) {
    for (int i = 0; i < 16; i++) {
        p[i*4+0] = r; p[i*4+1] = g; p[i*4+2] = b; p[i*4+3] = 255;
    }
}

static void make_faces(void) {
    fill(face_pos_x, 230,  40,  40);
    fill(face_neg_x,  40, 230,  40);
    fill(face_pos_y,  40,  40, 230);
    fill(face_neg_y, 230, 230,  40);
    fill(face_pos_z,  40, 230, 230);
    fill(face_neg_z, 230,  40, 230);
}

/* Flat quad sampling the cube-map with a fixed direction = face normal. */
static void quad(float x0, float y0, float x1, float y1,
                 float dx, float dy, float dz) {
    glBegin(GL_QUADS);
        glTexCoord3f(dx, dy, dz); glVertex2f(x0, y0);
        glTexCoord3f(dx, dy, dz); glVertex2f(x1, y0);
        glTexCoord3f(dx, dy, dz); glVertex2f(x1, y1);
        glTexCoord3f(dx, dy, dz); glVertex2f(x0, y1);
    glEnd();
}

void run_test(int w, int h) {
    make_faces();
    glViewport(0, 0, w, h);
    glClearColor(0.1f, 0.1f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint id; glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_CUBE_MAP, id);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X, 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, face_pos_x);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_NEGATIVE_X, 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, face_neg_x);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_Y, 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, face_pos_y);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_NEGATIVE_Y, 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, face_neg_y);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_Z, 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, face_pos_z);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_NEGATIVE_Z, 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, face_neg_z);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_CUBE_MAP);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    /* 6 small quads arranged in a 3x2 grid. Each shows one face color. */
    float x0 = -0.9f, x1 = -0.35f;
    quad(x0,  0.1f, x1,  0.85f,  1.f,  0.f, 0.f); /* +X red   */
    x0 = -0.25f; x1 = 0.25f;
    quad(x0,  0.1f, x1,  0.85f, -1.f,  0.f, 0.f); /* -X green */
    x0 =  0.35f; x1 = 0.9f;
    quad(x0,  0.1f, x1,  0.85f,  0.f,  1.f, 0.f); /* +Y blue  */

    x0 = -0.9f; x1 = -0.35f;
    quad(x0, -0.85f, x1, -0.1f,  0.f, -1.f, 0.f); /* -Y yellow */
    x0 = -0.25f; x1 = 0.25f;
    quad(x0, -0.85f, x1, -0.1f,  0.f,  0.f, 1.f); /* +Z cyan   */
    x0 =  0.35f; x1 = 0.9f;
    quad(x0, -0.85f, x1, -0.1f,  0.f,  0.f,-1.f); /* -Z magenta*/

    glDisable(GL_TEXTURE_CUBE_MAP);
    glDeleteTextures(1, &id);
}
