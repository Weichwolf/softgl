#include "harness.h"

/* Four quads at different z, each translucent, drawn back-to-front. */
static const float base[] = {
    -0.4f, -0.4f, 0.f,   0.f, 0.f, 0.f, 0.4f,
     0.4f, -0.4f, 0.f,   0.f, 0.f, 0.f, 0.4f,
    -0.4f,  0.4f, 0.f,   0.f, 0.f, 0.f, 0.4f,
    -0.4f,  0.4f, 0.f,   0.f, 0.f, 0.f, 0.4f,
     0.4f, -0.4f, 0.f,   0.f, 0.f, 0.f, 0.4f,
     0.4f,  0.4f, 0.f,   0.f, 0.f, 0.f, 0.4f,
};

static void make(float *dst, float dx, float dy, float r, float g, float b) {
    for (int i = 0; i < 6; i++) {
        dst[i*7+0] = base[i*7+0] + dx;
        dst[i*7+1] = base[i*7+1] + dy;
        dst[i*7+2] = 0.f;
        dst[i*7+3] = r; dst[i*7+4] = g; dst[i*7+5] = b;
        dst[i*7+6] = 0.4f;
    }
}

void run_test(int w, int h) {
    float q[4][6 * 7];
    make(q[0], -0.2f, -0.2f, 1.f, 0.f, 0.f);
    make(q[1],  0.2f, -0.2f, 0.f, 1.f, 0.f);
    make(q[2], -0.2f,  0.2f, 0.f, 0.f, 1.f);
    make(q[3],  0.2f,  0.2f, 1.f, 1.f, 0.f);

    glViewport(0, 0, w, h);
    glClearColor(1.f, 1.f, 1.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

    GLuint vbo; glGenBuffers(1, &vbo);
    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_COLOR_ARRAY);
    for (int i = 0; i < 4; i++) {
        glBindBuffer(GL_ARRAY_BUFFER, vbo);
        glBufferData(GL_ARRAY_BUFFER, sizeof(q[0]), q[i], GL_STREAM_DRAW);
        glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
        glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
        glDrawArrays(GL_TRIANGLES, 0, 6);
    }
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_COLOR_ARRAY);
    glDisable(GL_BLEND);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
