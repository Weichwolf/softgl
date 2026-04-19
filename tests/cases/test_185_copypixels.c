#include "harness.h"

/* glCopyPixels: render a colored scene, then copy an 80x80 rectangle
 * within the framebuffer to a new location using glCopyPixels(GL_COLOR). */

static const float verts[] = {
    -0.9f, -0.9f, 0.f,  1.f, 0.f, 0.5f, 1.f,
     0.1f, -0.9f, 0.f,  0.f, 1.f, 0.f,  1.f,
    -0.4f,  0.8f, 0.f,  1.f, 1.f, 0.f,  1.f,
};

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.15f, 0.1f, 0.2f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-1, 1, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint vbo;
    glGenBuffers(1, &vbo);
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

    /* Copy 80x80 from (150, 80) to raster_pos (350, 180). */
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glRasterPos2i(350, 180);
    glCopyPixels(150, 80, 80, 80, GL_COLOR);
}
