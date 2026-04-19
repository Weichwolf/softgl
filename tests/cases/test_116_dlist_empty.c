#include "harness.h"

/* Empty display list: glNewList/glEndList with zero body, then glCallList.
 * Result: the clear color fills the framebuffer, unchanged by the no-op call. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.15f, 0.05f, 0.25f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    GLuint list = glGenLists(1);
    glNewList(list, GL_COMPILE);
    glEndList();

    /* Call empty list — must not touch the framebuffer. */
    glCallList(list);
    glCallList(list);
    glCallList(list);

    glDeleteLists(list, 1);
}
