#include "harness.h"

void run_test(int w, int h) {
    (void)w; (void)h;
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
}
