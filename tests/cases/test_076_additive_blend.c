#include "harness.h"

/* Three overlapping primary-color quads blended additively. Center should
 * approach white where all three overlap. */
static const float r_verts[] = {
    -0.7f, -0.4f, 0.f,   1.f, 0.f, 0.f, 1.f,
     0.3f, -0.4f, 0.f,   1.f, 0.f, 0.f, 1.f,
    -0.2f,  0.6f, 0.f,   1.f, 0.f, 0.f, 1.f,
};
static const float g_verts[] = {
     0.3f, -0.4f, 0.f,   0.f, 1.f, 0.f, 1.f,
     0.7f,  0.4f, 0.f,   0.f, 1.f, 0.f, 1.f,
    -0.2f,  0.6f, 0.f,   0.f, 1.f, 0.f, 1.f,
};
static const float b_verts[] = {
    -0.7f, -0.4f, 0.f,   0.f, 0.f, 1.f, 1.f,
     0.7f,  0.4f, 0.f,   0.f, 0.f, 1.f, 1.f,
    -0.2f, -0.6f, 0.f,   0.f, 0.f, 1.f, 1.f,
};

static void draw(const float *v, int count, GLuint vbo) {
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, count * 7 * sizeof(float), v, GL_STREAM_DRAW);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, count);
}

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    glEnable(GL_BLEND);
    glBlendFunc(GL_ONE, GL_ONE);

    glEnableClientState(GL_VERTEX_ARRAY); glEnableClientState(GL_COLOR_ARRAY);
    GLuint vbo; glGenBuffers(1, &vbo);
    draw(r_verts, 3, vbo);
    draw(g_verts, 3, vbo);
    draw(b_verts, 3, vbo);
    glDisableClientState(GL_VERTEX_ARRAY); glDisableClientState(GL_COLOR_ARRAY);
    glDisable(GL_BLEND);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
