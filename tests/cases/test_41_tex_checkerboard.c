#include "harness.h"

/* 4x4 procedural checker texture, nearest sampling, full-screen quad. */
static unsigned char tex[4 * 4 * 4];

static void make_checker(void) {
    for (int y = 0; y < 4; y++) {
        for (int x = 0; x < 4; x++) {
            int on = (x + y) & 1;
            int i = (y * 4 + x) * 4;
            tex[i+0] = on ? 230 : 50;
            tex[i+1] = on ? 80  : 20;
            tex[i+2] = on ? 50  : 200;
            tex[i+3] = 255;
        }
    }
}

static const float verts[] = {
    -0.8f, -0.8f, 0.f,  0, 0,
     0.8f, -0.8f, 0.f,  1, 0,
    -0.8f,  0.8f, 0.f,  0, 1,
    -0.8f,  0.8f, 0.f,  0, 1,
     0.8f, -0.8f, 0.f,  1, 0,
     0.8f,  0.8f, 0.f,  1, 1,
};

void run_test(int w, int h) {
    make_checker();

    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    GLuint texid;
    glGenTextures(1, &texid);
    glBindTexture(GL_TEXTURE_2D, texid);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 4, 4, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT);
    glEnable(GL_TEXTURE_2D);

    glColor4f(1.f, 1.f, 1.f, 1.f);

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
    glDeleteTextures(1, &texid);
}
