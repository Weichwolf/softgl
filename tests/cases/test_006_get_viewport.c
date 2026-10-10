#include "harness.h"

/* Set a viewport, read it back via glGetIntegerv, and color the framebuffer
 * based on the retrieved values. Both impls must report the same state. */
void run_test(int w, int h) {
    glViewport(17, 31, w - 40, h - 60);
    GLint vp[4] = { 0, 0, 0, 0 };
    glGetIntegerv(GL_VIEWPORT, vp);

    float r = (float)vp[0] / 255.0f;
    float g = (float)vp[1] / 255.0f;
    float b = (float)(vp[2] & 255) / 255.0f;
    float a = 1.0f;
    glClearColor(r, g, b, a);
    glClear(GL_COLOR_BUFFER_BIT);
}
