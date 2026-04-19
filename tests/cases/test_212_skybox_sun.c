#include "harness.h"

/* Cube-mapped skybox with a sun billboard. 6 gradient faces (sky-blue at
 * top, warm horizon at bottom). After the sky, a small additive "sun"
 * billboard is drawn. Both use glDepthMask(GL_FALSE) — skybox stays at
 * infinity, sun writes no depth. */

#define F 16
static unsigned char faces[6][F*F*4];

static void fill_face(unsigned char *p,
                      float r0, float g0, float b0, /* top */
                      float r1, float g1, float b1  /* bottom */) {
    for (int y = 0; y < F; y++)
      for (int x = 0; x < F; x++) {
        float t = (float)y / (F - 1);
        float r = r0 * t + r1 * (1 - t);
        float g = g0 * t + g1 * (1 - t);
        float b = b0 * t + b1 * (1 - t);
        int i = (y * F + x) * 4;
        p[i+0] = (unsigned char)(r * 255);
        p[i+1] = (unsigned char)(g * 255);
        p[i+2] = (unsigned char)(b * 255);
        p[i+3] = 255;
      }
}

void run_test(int w, int h) {
    /* Cube-map convention: +Y is up (sky top), -Y is down (ground).
     * Side faces show horizon gradient. */
    fill_face(faces[0], 0.30f, 0.55f, 0.85f,  0.9f, 0.75f, 0.6f); /* +X */
    fill_face(faces[1], 0.30f, 0.55f, 0.85f,  0.9f, 0.75f, 0.6f); /* -X */
    fill_face(faces[2], 0.15f, 0.35f, 0.7f,   0.5f, 0.7f, 0.9f);  /* +Y top */
    fill_face(faces[3], 0.2f, 0.18f, 0.15f,   0.35f, 0.3f, 0.22f);/* -Y ground */
    fill_face(faces[4], 0.30f, 0.55f, 0.85f,  1.f, 0.85f, 0.65f); /* +Z: horizon warmer (sun side) */
    fill_face(faces[5], 0.30f, 0.55f, 0.85f,  0.85f, 0.7f, 0.55f);/* -Z */

    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClearDepth(1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glFrustum(-aspect, aspect, -1, 1, 1, 30);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();

    /* Skybox as a cube around the camera with cube-map lookups using the
     * vertex direction. Depth write off. */
    GLuint cm; glGenTextures(1, &cm);
    glBindTexture(GL_TEXTURE_CUBE_MAP, cm);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_X, 0, GL_RGBA, F, F, 0, GL_RGBA, GL_UNSIGNED_BYTE, faces[0]);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_NEGATIVE_X, 0, GL_RGBA, F, F, 0, GL_RGBA, GL_UNSIGNED_BYTE, faces[1]);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_Y, 0, GL_RGBA, F, F, 0, GL_RGBA, GL_UNSIGNED_BYTE, faces[2]);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_NEGATIVE_Y, 0, GL_RGBA, F, F, 0, GL_RGBA, GL_UNSIGNED_BYTE, faces[3]);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_POSITIVE_Z, 0, GL_RGBA, F, F, 0, GL_RGBA, GL_UNSIGNED_BYTE, faces[4]);
    glTexImage2D(GL_TEXTURE_CUBE_MAP_NEGATIVE_Z, 0, GL_RGBA, F, F, 0, GL_RGBA, GL_UNSIGNED_BYTE, faces[5]);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_CUBE_MAP, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_CUBE_MAP);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    glDepthMask(GL_FALSE);

    const float R = 10.f;
    /* Skybox cube, inside faces visible. For each face emit a quad and
     * use its outward normal as tex-coord direction. */
    static const float verts[6][4][3] = {
        { { R,-R, R},{ R,-R,-R},{ R, R,-R},{ R, R, R} }, /* +X */
        { {-R,-R,-R},{-R,-R, R},{-R, R, R},{-R, R,-R} }, /* -X */
        { {-R, R, R},{ R, R, R},{ R, R,-R},{-R, R,-R} }, /* +Y */
        { {-R,-R,-R},{ R,-R,-R},{ R,-R, R},{-R,-R, R} }, /* -Y */
        { {-R,-R, R},{ R,-R, R},{ R, R, R},{-R, R, R} }, /* +Z */
        { { R,-R,-R},{-R,-R,-R},{-R, R,-R},{ R, R,-R} }, /* -Z */
    };
    static const float dirs[6][3] = {
        { 1,0,0},{-1,0,0},{0,1,0},{0,-1,0},{0,0,1},{0,0,-1}
    };
    glBegin(GL_QUADS);
    for (int f = 0; f < 6; f++) {
        for (int v = 0; v < 4; v++) {
            /* For each vertex, use direction from origin to that vertex. */
            float x = verts[f][v][0], y = verts[f][v][1], z = verts[f][v][2];
            glTexCoord3f(x, y, z);
            glVertex3f(x, y, z);
        }
        (void)dirs;
    }
    glEnd();

    glDisable(GL_TEXTURE_CUBE_MAP);

    /* Sun billboard: additive quad in the +Z direction (sun at (1.5, 3, 8)
     * roughly). Place by rendering as a screen-space quad at a fixed
     * position (assuming camera at origin looking -Z: this is in front of
     * the camera plus offset). */
    glEnable(GL_BLEND);
    glBlendFunc(GL_ONE, GL_ONE);
    glColor3f(1.f, 0.95f, 0.75f);
    /* Sun center projected: approx (0.35*aspect, 0.35) on screen. Place
     * the quad at z = -9 with size 0.9. */
    glBegin(GL_QUADS);
        glVertex3f( 1.5f - 0.45f, 3.f - 0.45f, -9.f);
        glVertex3f( 1.5f + 0.45f, 3.f - 0.45f, -9.f);
        glVertex3f( 1.5f + 0.45f, 3.f + 0.45f, -9.f);
        glVertex3f( 1.5f - 0.45f, 3.f + 0.45f, -9.f);
    glEnd();
    glDisable(GL_BLEND);

    glDepthMask(GL_TRUE);
    glDeleteTextures(1, &cm);
}
