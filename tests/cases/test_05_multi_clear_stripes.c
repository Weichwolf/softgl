#include "harness.h"

/* Several scissored clears at different colors produce horizontal stripes. */
void run_test(int w, int h) {
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    glEnable(GL_SCISSOR_TEST);
    const int N = 8;
    for (int i = 0; i < N; i++) {
        int y0 = (h * i) / N;
        int y1 = (h * (i + 1)) / N;
        glScissor(0, y0, w, y1 - y0);
        float t = (float)i / (float)(N - 1);
        glClearColor(t, 1.0f - t, 0.3f + 0.5f * t, 1.f);
        glClear(GL_COLOR_BUFFER_BIT);
    }
    glDisable(GL_SCISSOR_TEST);
}
