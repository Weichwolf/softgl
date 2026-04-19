#include "harness.h"

/* Fill background blue, then scissor-clear a green rectangle in the middle. */

void run_test(int w, int h) {
    glClearColor(0.1f, 0.15f, 0.4f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    glEnable(GL_SCISSOR_TEST);
    glScissor(w/4, h/4, w/2, h/2);
    glClearColor(0.1f, 0.6f, 0.2f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
    glDisable(GL_SCISSOR_TEST);
}
