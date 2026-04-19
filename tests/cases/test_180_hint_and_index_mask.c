#include "harness.h"

/* Sanity check for glHint + glIndexMask — both are state-only. Set some
 * hints and an index mask, read them back via glGetIntegerv, and encode
 * the readback into the clear color. Same pattern as test 07/08/09.
 *
 * Channels:
 *   R = 1 iff GL_PERSPECTIVE_CORRECTION_HINT readback == GL_NICEST
 *   G = 1 iff GL_POINT_SMOOTH_HINT readback == GL_FASTEST
 *   B = 1 iff GL_LINE_SMOOTH_HINT readback == GL_DONT_CARE
 *   A = index_mask low byte / 255
 */
void run_test(int w, int h) {
    (void)w; (void)h;
    /* Ensure a deterministic starting state — some drivers may initialize
     * hints to GL_FASTEST rather than GL_DONT_CARE. */
    glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);
    glHint(GL_POINT_SMOOTH_HINT,           GL_FASTEST);
    glHint(GL_LINE_SMOOTH_HINT,            GL_DONT_CARE);

    glIndexMask(0xAA);

    GLint persp = 0, pt = 0, ln = 0, im = 0;
    glGetIntegerv(GL_PERSPECTIVE_CORRECTION_HINT, &persp);
    glGetIntegerv(GL_POINT_SMOOTH_HINT,           &pt);
    glGetIntegerv(GL_LINE_SMOOTH_HINT,            &ln);
    glGetIntegerv(GL_INDEX_WRITEMASK,             &im);

    float r = (persp == (GLint)GL_NICEST)    ? 1.f : 0.f;
    float g = (pt    == (GLint)GL_FASTEST)   ? 1.f : 0.f;
    float b = (ln    == (GLint)GL_DONT_CARE) ? 1.f : 0.f;
    float a = (float)(im & 0xFF) / 255.f;

    glClearColor(r, g, b, a);
    glClear(GL_COLOR_BUFFER_BIT);
}
