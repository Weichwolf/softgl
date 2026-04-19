#include "harness.h"
#include <stdint.h>
#include <string.h>

/* Phase 9 / ARB_vertex_buffer_object — glMapBuffer / glUnmapBuffer.
 *
 * We allocate a VBO sized for 3 interleaved (pos.xy, color.rgb) vertices,
 * leave its contents uninitialized via glBufferData(NULL), then map it for
 * write, fill in the vertex data directly, unmap, and draw.
 *
 * The test passes if the mapped write is visible to the subsequent draw
 * call: the triangle's three colored corners must appear at their expected
 * screen positions in both the softgl and Mesa reference renders. */

struct V { GLfloat x, y, r, g, b; };

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-1, 1, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glClearColor(0.1f, 0.1f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    GLuint vbo = 0;
    glGenBuffers(1, &vbo);
    glBindBuffer(GL_ARRAY_BUFFER, vbo);
    /* Allocate uninitialized storage. */
    glBufferData(GL_ARRAY_BUFFER, 3 * sizeof(struct V), NULL, GL_STATIC_DRAW);

    /* Map for write-only access and fill in directly. */
    struct V *p = (struct V*)glMapBuffer(GL_ARRAY_BUFFER, GL_WRITE_ONLY);
    p[0].x = -0.8f; p[0].y = -0.7f; p[0].r = 1.f; p[0].g = 0.f; p[0].b = 0.f;
    p[1].x =  0.8f; p[1].y = -0.7f; p[1].r = 0.f; p[1].g = 1.f; p[1].b = 0.f;
    p[2].x =  0.0f; p[2].y =  0.8f; p[2].r = 0.f; p[2].g = 0.f; p[2].b = 1.f;
    glUnmapBuffer(GL_ARRAY_BUFFER);

    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    glVertexPointer(2, GL_FLOAT, sizeof(struct V), (const void*)0);
    glColorPointer(3, GL_FLOAT, sizeof(struct V),
                   (const void*)(uintptr_t)(2 * sizeof(GLfloat)));

    glDrawArrays(GL_TRIANGLES, 0, 3);

    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glDeleteBuffers(1, &vbo);
}
