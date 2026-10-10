#include "harness.h"

/* 16x16 stripe texture, 16x tiled — stress case for REPEAT. */
static unsigned char tex[16 * 16 * 4];

static void make_tex(void) {
    for (int y = 0; y < 16; y++)
        for (int x = 0; x < 16; x++) {
            int i = (y * 16 + x) * 4;
            int stripe = (x / 4 + y / 4) & 1;
            tex[i+0] = stripe ? 30  : 200;
            tex[i+1] = stripe ? 120 : 40;
            tex[i+2] = stripe ? 200 : 30;
            tex[i+3] = 255;
        }
}

static const float verts[] = {
    -1.0f, -1.0f, 0.f,  0,  0,
     1.0f, -1.0f, 0.f,  16, 0,
    -1.0f,  1.0f, 0.f,  0,  16,
    -1.0f,  1.0f, 0.f,  0,  16,
     1.0f, -1.0f, 0.f,  16, 0,
     1.0f,  1.0f, 0.f,  16, 16,
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

    GLuint id; glGenTextures(1, &id);
    glBindTexture(GL_TEXTURE_2D, id);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 16, 16, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);
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
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
    glDeleteTextures(1, &id);
}
