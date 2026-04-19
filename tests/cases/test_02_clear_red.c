#include "harness.h"

void run_test(int w, int h) {
    (void)w; (void)h;
    glClearColor(0.8f, 0.2f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
}
