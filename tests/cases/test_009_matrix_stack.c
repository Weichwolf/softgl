#include "harness.h"

/* Exercise push/pop: the final state after pop must match the pre-push state. */
void run_test(int w, int h) {
    (void)w; (void)h;
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    glTranslatef(1.f, 2.f, 3.f);

    glPushMatrix();
        glScalef(7.f, 11.f, 13.f);
        glTranslatef(10.f, 20.f, 30.f);
    glPopMatrix();

    GLfloat m[16];
    glGetFloatv(GL_MODELVIEW_MATRIX, m);

    /* After pop, m should equal the translate-only matrix. */
    float tx = m[12], ty = m[13], tz = m[14];
    float s  = m[0] * 0.5f + 0.5f;   /* should be 1, so 1.0 encoded */
    glClearColor(tx / 4.f, ty / 8.f, tz / 16.f, s);
    glClear(GL_COLOR_BUFFER_BIT);
}
