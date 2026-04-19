#include "harness.h"

/* Phase 9 / ARB_occlusion_query — GL_SAMPLES_PASSED.
 *
 * A full-viewport quad is drawn. The triangles tessellating the quad cover
 * every pixel of the framebuffer exactly once, so GL_SAMPLES_PASSED must
 * equal w*h at the end of the query. We encode that count as a normalized
 * clear color channel and then clear-fill the framebuffer: the final image
 * is a uniform color whose value IS the sample count, which makes it a
 * strict equality check against Mesa's llvmpipe reference. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-1, 1, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Clear to black, then draw a full-viewport quad under a query. */
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    GLuint q = 0;
    glGenQueries(1, &q);
    glBeginQuery(GL_SAMPLES_PASSED, q);

    glColor4f(1.f, 1.f, 1.f, 1.f);
    glBegin(GL_QUADS);
        glVertex2f(-1.f, -1.f);
        glVertex2f( 1.f, -1.f);
        glVertex2f( 1.f,  1.f);
        glVertex2f(-1.f,  1.f);
    glEnd();

    glEndQuery(GL_SAMPLES_PASSED);

    GLuint samples = 0;
    glGetQueryObjectuiv(q, GL_QUERY_RESULT, &samples);

    /* Encode sample count deterministically in the clear color:
     *   R = (samples >>  0) & 0xFF
     *   G = (samples >>  8) & 0xFF
     *   B = (samples >> 16) & 0xFF
     *   A = (samples >> 24) & 0xFF
     * then clear the framebuffer to exactly those byte values. Because the
     * softgl and Mesa implementations both MUST count w*h == 640*360 samples
     * for a fully-covered viewport, the resulting buffer is byte-identical. */
    GLfloat r = (GLfloat)((samples >>  0) & 0xFFu) / 255.f;
    GLfloat g = (GLfloat)((samples >>  8) & 0xFFu) / 255.f;
    GLfloat b = (GLfloat)((samples >> 16) & 0xFFu) / 255.f;
    GLfloat a = (GLfloat)((samples >> 24) & 0xFFu) / 255.f;
    glClearColor(r, g, b, a);
    glClear(GL_COLOR_BUFFER_BIT);

    glDeleteQueries(1, &q);
}
