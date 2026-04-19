#include "harness.h"
#include <stdlib.h>

/* Render a colored scene, glReadPixels a 64x64 region, then glDrawPixels the
 * same region at a new raster position to produce a mirror on the right. */

static const float verts[] = {
    /*  x    y   z     r    g    b    a  */
    -0.9f, -0.9f, 0.f,  1.f, 0.2f, 0.f, 1.f,
     0.2f, -0.9f, 0.f,  0.f, 1.f, 0.3f, 1.f,
    -0.3f,  0.8f, 0.f,  0.2f, 0.3f, 1.f, 1.f,
};

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.1f, 0.1f, 0.2f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    /* Render a triangle first. */
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

    /* Read 64x64 from (200, 100). */
    const int rw = 64, rh = 64;
    unsigned char *pix = (unsigned char*)malloc(rw * rh * 4);
    glPixelStorei(GL_PACK_ALIGNMENT, 1);
    glReadPixels(200, 100, rw, rh, GL_RGBA, GL_UNSIGNED_BYTE, pix);

    /* Now replay at (450, 200). */
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();
    glPixelStorei(GL_UNPACK_ALIGNMENT, 1);
    glRasterPos2i(450, 200);
    glDrawPixels(rw, rh, GL_RGBA, GL_UNSIGNED_BYTE, pix);

    free(pix);
}
