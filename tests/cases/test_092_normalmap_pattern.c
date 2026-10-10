#include "harness.h"
#include <math.h>

/* Procedural normal map encoding a bump pattern. Dot3 with a fixed light
 * produces a shaded pattern. */
#define NM 32
static unsigned char normalmap[NM * NM * 4];

static void make_normal(void) {
    for (int y = 0; y < NM; y++)
        for (int x = 0; x < NM; x++) {
            float u = (float)x / NM;
            float v = (float)y / NM;
            /* Sinusoidal bumps */
            float nx = 0.6f * sinf(12.f * u);
            float ny = 0.6f * sinf(12.f * v);
            float nz = sqrtf(fmaxf(0.f, 1.f - nx*nx - ny*ny));
            int i = (y * NM + x) * 4;
            normalmap[i+0] = (unsigned char)((nx * 0.5f + 0.5f) * 255);
            normalmap[i+1] = (unsigned char)((ny * 0.5f + 0.5f) * 255);
            normalmap[i+2] = (unsigned char)((nz * 0.5f + 0.5f) * 255);
            normalmap[i+3] = 255;
        }
}

static const float lr = 0.5f + 0.3f * 0.5f;
static const float lg = 0.5f + 0.2f * 0.5f;
static const float lb = 0.5f + 0.93f * 0.5f;

void run_test(int w, int h) {
    make_normal();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    GLuint tex; glGenTextures(1, &tex);
    glBindTexture(GL_TEXTURE_2D, tex);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, NM, NM, 0, GL_RGBA, GL_UNSIGNED_BYTE, normalmap);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
    glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, GL_DOT3_RGB);

    float verts[] = {
        -0.8f, -0.8f, 0.f,  lr, lg, lb, 1.f,  0, 0,
         0.8f, -0.8f, 0.f,  lr, lg, lb, 1.f,  1, 0,
        -0.8f,  0.8f, 0.f,  lr, lg, lb, 1.f,  0, 1,
        -0.8f,  0.8f, 0.f,  lr, lg, lb, 1.f,  0, 1,
         0.8f, -0.8f, 0.f,  lr, lg, lb, 1.f,  1, 0,
         0.8f,  0.8f, 0.f,  lr, lg, lb, 1.f,  1, 1,
    };
    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    glVertexPointer(3, GL_FLOAT, 9 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 9 * sizeof(float), (void*)(3 * sizeof(float)));
    glTexCoordPointer(2, GL_FLOAT, 9 * sizeof(float), (void*)(7 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 6);
    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);
    glDisableClientState(GL_TEXTURE_COORD_ARRAY);
    glDisable(GL_TEXTURE_2D);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
    glDeleteTextures(1, &tex);
}
