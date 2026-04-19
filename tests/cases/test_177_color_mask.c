#include "harness.h"

/* glColorMask(1,0,0,1): a subsequent white quad draw only affects the red
 * and alpha channels. Green and blue remain at their clear values (0.4/0.8),
 * yielding teal under the quad's footprint instead of white. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.4f, 0.8f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Only write red + alpha. Green and blue are preserved. */
    glColorMask(GL_TRUE, GL_FALSE, GL_FALSE, GL_TRUE);

    glColor3f(1.f, 1.f, 1.f);
    glBegin(GL_QUADS);
        glVertex3f(-0.5f, -0.5f, 0.f);
        glVertex3f( 0.5f, -0.5f, 0.f);
        glVertex3f( 0.5f,  0.5f, 0.f);
        glVertex3f(-0.5f,  0.5f, 0.f);
    glEnd();

    /* Restore full mask so the reference and softgl both end cleanly. */
    glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);
}
