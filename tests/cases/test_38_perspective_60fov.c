#include "harness.h"
#include <math.h>

/* 60-degree vertical FOV perspective, triangle at z=-3. */
static const float verts[] = {
    -1.0f, -1.0f, -3.f,   1.f, 0.1f, 0.1f, 1.f,
     1.0f, -1.0f, -3.f,   0.1f, 1.f, 0.1f, 1.f,
     0.0f,  1.0f, -3.f,   0.1f, 0.1f, 1.f, 1.f,
};

static void gl_perspective(float fovy_deg, float aspect, float zn, float zf) {
    float f = 1.0f / tanf(fovy_deg * 3.14159265f / 360.f);
    /* Column-major */
    float m[16] = {
        f / aspect, 0, 0, 0,
        0,          f, 0, 0,
        0,          0, (zf + zn) / (zn - zf), -1,
        0,          0, (2 * zf * zn) / (zn - zf), 0
    };
    glMultMatrixf(m);
}

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.05f, 0.05f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    gl_perspective(60.f, (float)w / (float)h, 0.5f, 50.f);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();

    GLuint vbo; glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 3);
    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
