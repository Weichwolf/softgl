#include "harness.h"

/* Viewport-like behavior via scissor: the actual glViewport only constrains
 * the window transform, not glClear. So we scissor to a subregion. */
void run_test(int w, int h) {
    glClearColor(0.2f, 0.2f, 0.2f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    glEnable(GL_SCISSOR_TEST);
    glScissor(10, 10, w - 20, h - 20);
    glClearColor(0.9f, 0.9f, 0.9f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
    glDisable(GL_SCISSOR_TEST);
}
