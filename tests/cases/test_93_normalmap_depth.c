#include "harness.h"
#include <math.h>

/* Depth-tested grid of small normal-mapped tiles with slight per-tile offset. */
#define GN 4
static unsigned char normalmap[8 * 8 * 4];

static void make_normal(void) {
    for (int y = 0; y < 8; y++)
        for (int x = 0; x < 8; x++) {
            float u = ((float)x + 0.5f) / 8.f - 0.5f;
            float v = ((float)y + 0.5f) / 8.f - 0.5f;
            float nx = -u * 0.8f;
            float ny = -v * 0.8f;
            float nz = sqrtf(fmaxf(0.f, 1.f - nx*nx - ny*ny));
            int i = (y * 8 + x) * 4;
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
    glClearDepth(1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);
    glEnable(GL_DEPTH_TEST);

    GLuint tex; glGenTextures(1, &tex);
    glBindTexture(GL_TEXTURE_2D, tex);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, normalmap);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
    glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, GL_DOT3_RGB);

    for (int j = 0; j < GN; j++) {
        for (int i = 0; i < GN; i++) {
            float cx = -0.6f + (float)i / (GN - 1) * 1.2f;
            float cy = -0.6f + (float)j / (GN - 1) * 1.2f;
            float z = -0.1f - 0.05f * ((i + j) & 1);
            float s = 0.2f;
            float verts[] = {
                cx - s, cy - s, z,  lr, lg, lb, 1,  0, 0,
                cx + s, cy - s, z,  lr, lg, lb, 1,  1, 0,
                cx - s, cy + s, z,  lr, lg, lb, 1,  0, 1,
                cx - s, cy + s, z,  lr, lg, lb, 1,  0, 1,
                cx + s, cy - s, z,  lr, lg, lb, 1,  1, 0,
                cx + s, cy + s, z,  lr, lg, lb, 1,  1, 1,
            };
            GLuint vbo; glGenBuffers(1, &vbo);
            glBindBuffer(GL_ARRAY_BUFFER, vbo);
            glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STREAM_DRAW);
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
            glBindBuffer(GL_ARRAY_BUFFER, 0);
            glDeleteBuffers(1, &vbo);
        }
    }
    glDisable(GL_TEXTURE_2D);
    glDisable(GL_DEPTH_TEST);
    glDeleteTextures(1, &tex);
}
