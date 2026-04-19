#include "harness.h"

/* glLogicOp(GL_XOR) with GL_COLOR_LOGIC_OP enabled: a colored quad is
 * XOR-combined with the background. Two overlapping quads drawn with XOR
 * produce an intersection area where both XORs cancel partially. */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    /* Dark grey background — 64/255 is byte-exact. */
    glClearColor(64.f / 255.f, 64.f / 255.f, 64.f / 255.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glLogicOp(GL_XOR);
    glEnable(GL_COLOR_LOGIC_OP);

    /* First quad: pure red (255,0,0,255) XOR background. */
    glColor4f(1.f, 0.f, 0.f, 1.f);
    glBegin(GL_QUADS);
        glVertex3f(-0.6f, -0.5f, 0.f);
        glVertex3f( 0.2f, -0.5f, 0.f);
        glVertex3f( 0.2f,  0.5f, 0.f);
        glVertex3f(-0.6f,  0.5f, 0.f);
    glEnd();

    /* Second quad (overlaps): pure green (0,255,0,255) XOR current. */
    glColor4f(0.f, 1.f, 0.f, 1.f);
    glBegin(GL_QUADS);
        glVertex3f(-0.2f, -0.3f, 0.f);
        glVertex3f( 0.6f, -0.3f, 0.f);
        glVertex3f( 0.6f,  0.7f, 0.f);
        glVertex3f(-0.2f,  0.7f, 0.f);
    glEnd();

    glDisable(GL_COLOR_LOGIC_OP);
}
