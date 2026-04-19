#include "harness.h"

/* glLogicOp(GL_INVERT): the source color is ignored, destination bits are
 * bitwise-inverted. A quad over a known background becomes the negation of
 * that background in the quad's footprint. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    /* 64/255 background — byte-exact; inverted -> 191. */
    glClearColor(64.f / 255.f, 128.f / 255.f, 192.f / 255.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glLogicOp(GL_INVERT);
    glEnable(GL_COLOR_LOGIC_OP);

    /* Source color is irrelevant under GL_INVERT, but we still pick one. */
    glColor4f(0.f, 0.f, 0.f, 1.f);
    glBegin(GL_QUADS);
        glVertex3f(-0.5f, -0.4f, 0.f);
        glVertex3f( 0.5f, -0.4f, 0.f);
        glVertex3f( 0.5f,  0.4f, 0.f);
        glVertex3f(-0.5f,  0.4f, 0.f);
    glEnd();

    glDisable(GL_COLOR_LOGIC_OP);
}
