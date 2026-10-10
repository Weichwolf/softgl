#include "harness.h"

/* Two triangles that partially overlap at different z. Tests depth test with
 * inner fragment visibility. */

static const float verts[] = {
    /* ortho(0,1): eye.z in [-1,0], more negative = farther.
     * blue-green far triangle at z=-0.7 */
    -0.7f, -0.7f, -0.7f,   0.1f, 0.8f, 0.8f, 1.f,
     0.7f,  0.1f, -0.7f,   0.1f, 0.8f, 0.8f, 1.f,
    -0.7f,  0.7f, -0.7f,   0.1f, 0.8f, 0.8f, 1.f,
    /* orange near triangle at z=-0.2 */
    -0.3f, -0.3f, -0.2f,   1.0f, 0.4f, 0.1f, 1.f,
     0.5f, -0.3f, -0.2f,   1.0f, 0.4f, 0.1f, 1.f,
     0.1f,  0.5f, -0.2f,   1.0f, 0.4f, 0.1f, 1.f,
};

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClearDepth(1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(-aspect, aspect, -1, 1, 0, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glScalef(aspect, 1.f, 1.f);

    GLuint vbo;
    glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(verts), verts, GL_STATIC_DRAW);
    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), (void*)0);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), (void*)(3 * sizeof(float)));
    glDrawArrays(GL_TRIANGLES, 0, 6);

    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);
    glDisable(GL_DEPTH_TEST);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
