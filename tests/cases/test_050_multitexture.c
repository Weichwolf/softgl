#include "harness.h"

/* Two texture units: unit 0 supplies the base color, unit 1 modulates it.
 * Uses different UVs per unit to shift one pattern against the other. */
static unsigned char tex0[8 * 8 * 4];
static unsigned char tex1[8 * 8 * 4];

static void make_tex(void) {
    for (int y = 0; y < 8; y++)
        for (int x = 0; x < 8; x++) {
            int i = (y * 8 + x) * 4;
            tex0[i+0] = (unsigned char)(x * 32);
            tex0[i+1] = (unsigned char)(y * 32);
            tex0[i+2] = 128;
            tex0[i+3] = 255;
            int s = ((x / 2) + (y / 2)) & 1;
            tex1[i+0] = s ? 255 : 64;
            tex1[i+1] = s ? 255 : 64;
            tex1[i+2] = s ? 255 : 64;
            tex1[i+3] = 255;
        }
}

static const float verts[] = {
    /* pos,       color,                   uv0,   uv1  */
    -0.7f, -0.7f, 0.f,   1,1,1,1,  0, 0,   0, 0,
     0.7f, -0.7f, 0.f,   1,1,1,1,  1, 0,   2, 0,
    -0.7f,  0.7f, 0.f,   1,1,1,1,  0, 1,   0, 2,
    -0.7f,  0.7f, 0.f,   1,1,1,1,  0, 1,   0, 2,
     0.7f, -0.7f, 0.f,   1,1,1,1,  1, 0,   2, 0,
     0.7f,  0.7f, 0.f,   1,1,1,1,  1, 1,   2, 2,
};

void run_test(int w, int h) {
    make_tex();
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    GLuint ids[2]; glGenTextures(2, ids);

    glActiveTexture(GL_TEXTURE0);
    glBindTexture(GL_TEXTURE_2D, ids[0]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex0);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);

    glActiveTexture(GL_TEXTURE1);
    glBindTexture(GL_TEXTURE_2D, ids[1]);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex1);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    glVertexPointer(3, GL_FLOAT, 11 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 11 * sizeof(float), (void*)(3 * sizeof(float)));

    glClientActiveTexture(GL_TEXTURE0);
    glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    glTexCoordPointer(2, GL_FLOAT, 11 * sizeof(float), (void*)(7 * sizeof(float)));
    glClientActiveTexture(GL_TEXTURE1);
    glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    glTexCoordPointer(2, GL_FLOAT, 11 * sizeof(float), (void*)(9 * sizeof(float)));

    glDrawArrays(GL_TRIANGLES, 0, 6);

    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);
    glClientActiveTexture(GL_TEXTURE0);
    glDisableClientState(GL_TEXTURE_COORD_ARRAY);
    glClientActiveTexture(GL_TEXTURE1);
    glDisableClientState(GL_TEXTURE_COORD_ARRAY);
    glActiveTexture(GL_TEXTURE1); glDisable(GL_TEXTURE_2D);
    glActiveTexture(GL_TEXTURE0); glDisable(GL_TEXTURE_2D);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
    glDeleteTextures(2, ids);
}
