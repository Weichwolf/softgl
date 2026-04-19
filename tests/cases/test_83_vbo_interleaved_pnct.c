#include "harness.h"

/* Fully interleaved: position (3) + normal (3) + color (4) + uv (2) = 12 floats */
static const float verts[] = {
    -0.6f, -0.6f, 0.f,  0, 0, 1,  1, 0.5f, 0, 1,  0, 0,
     0.6f, -0.6f, 0.f,  0, 0, 1,  0, 1, 0, 1,  1, 0,
    -0.6f,  0.6f, 0.f,  0, 0, 1,  0, 0, 1, 1,  0, 1,
    -0.6f,  0.6f, 0.f,  0, 0, 1,  0, 0, 1, 1,  0, 1,
     0.6f, -0.6f, 0.f,  0, 0, 1,  0, 1, 0, 1,  1, 0,
     0.6f,  0.6f, 0.f,  0, 0, 1,  1, 1, 0, 1,  1, 1,
};
static unsigned char tex[2 * 2 * 4] = {
    255,255,255,255,   50,50,50,255,
    50,50,50,255,      255,255,255,255,
};

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    GLuint texid; glGenTextures(1, &texid);
    glBindTexture(GL_TEXTURE_2D, texid);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 2, 2, 0, GL_RGBA, GL_UNSIGNED_BYTE, tex);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glEnable(GL_TEXTURE_2D);

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);

    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_NORMAL_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    glVertexPointer(3, GL_FLOAT, 12 * sizeof(float), (void*)0);
    glNormalPointer(GL_FLOAT, 12 * sizeof(float), (void*)(3 * sizeof(float)));
    glColorPointer(4, GL_FLOAT, 12 * sizeof(float), (void*)(6 * sizeof(float)));
    glTexCoordPointer(2, GL_FLOAT, 12 * sizeof(float), (void*)(10 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 6);

    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_NORMAL_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);
    glDisableClientState(GL_TEXTURE_COORD_ARRAY);
    glDisable(GL_TEXTURE_2D);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
    glDeleteTextures(1, &texid);
}
