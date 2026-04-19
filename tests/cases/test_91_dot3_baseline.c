#include "harness.h"

/* Flat surface normal map (all (0,0,1) → RGB=(128,128,255)). Per-vertex color
 * encodes a fixed tangent-space light direction. Dot3 combiner produces a
 * uniform brightness equal to the light's z-component. */
static unsigned char normalmap[4 * 4 * 4];

static void make_normal(void) {
    for (int i = 0; i < 16; i++) {
        normalmap[i*4+0] = 128;
        normalmap[i*4+1] = 128;
        normalmap[i*4+2] = 255;
        normalmap[i*4+3] = 255;
    }
}

/* Light direction (0.3, 0.2, 0.93) encoded as vertex color (l+1)/2. */
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
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, normalmap);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glEnable(GL_TEXTURE_2D);

    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
    glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, GL_DOT3_RGB);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, GL_TEXTURE);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND0_RGB, GL_SRC_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, GL_PRIMARY_COLOR);
    glTexEnvi(GL_TEXTURE_ENV, GL_OPERAND1_RGB, GL_SRC_COLOR);

    float verts[] = {
        -0.7f, -0.7f, 0.f,  lr, lg, lb, 1.f,  0, 0,
         0.7f, -0.7f, 0.f,  lr, lg, lb, 1.f,  1, 0,
        -0.7f,  0.7f, 0.f,  lr, lg, lb, 1.f,  0, 1,
        -0.7f,  0.7f, 0.f,  lr, lg, lb, 1.f,  0, 1,
         0.7f, -0.7f, 0.f,  lr, lg, lb, 1.f,  1, 0,
         0.7f,  0.7f, 0.f,  lr, lg, lb, 1.f,  1, 1,
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
