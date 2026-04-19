#include "harness.h"

/* RGBA texture with varying alpha → alpha test drops fragments with a < 0.5. */
static unsigned char tex[8 * 8 * 4];

static void make_tex(void) {
    for (int y = 0; y < 8; y++)
        for (int x = 0; x < 8; x++) {
            int i = (y * 8 + x) * 4;
            int ring = ((x - 4) * (x - 4) + (y - 4) * (y - 4));
            tex[i+0] = 255;
            tex[i+1] = 220;
            tex[i+2] = 40;
            tex[i+3] = (ring < 12) ? 255 : 0;  /* circle */
        }
}

static const float verts[] = {
    -0.7f, -0.7f, 0.f, 0, 0,
     0.7f, -0.7f, 0.f, 1, 0,
    -0.7f,  0.7f, 0.f, 0, 1,
    -0.7f,  0.7f, 0.f, 0, 1,
     0.7f, -0.7f, 0.f, 1, 0,
     0.7f,  0.7f, 0.f, 1, 1,
};

void run_test(int w, int h) {
    make_tex();
    glViewport(0, 0, w, h);
    glClearColor(0.2f, 0.3f, 0.4f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint id; glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_2D, id);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glEnable(GL_TEXTURE_2D);
    glEnable(GL_ALPHA_TEST);
    glAlphaFunc(GL_GREATER, 0.5f);
    glColor4f(1,1,1,1);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    glVertexPointer(3, GL_FLOAT, 5 * sizeof(float), (void*)0);
    glTexCoordPointer(2, GL_FLOAT, 5 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 6);
    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_TEXTURE_COORD_ARRAY);
    glDisable(GL_TEXTURE_2D);
    glDisable(GL_ALPHA_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
    glDeleteTextures(1, &id);
}
