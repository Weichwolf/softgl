#include "harness.h"
#include <math.h>

/* Phase X — Accumulation buffer, 4-sample jittered AA.
 *
 * We render one rotated triangle four times with sub-pixel translations
 * in the projection matrix, accumulating each pass at 0.25 weight. The
 * final GL_RETURN blits the blended image into the color buffer.
 *
 *   pass 0..3:
 *     clear color; setup jittered ortho; draw triangle;
 *     glAccum(i == 0 ? GL_LOAD : GL_ACCUM, 0.25)
 *   end:
 *     glAccum(GL_RETURN, 1.0)
 */

static void draw_scene(int w, int h, float jx, float jy) {
    (void)h;
    /* Sub-pixel jitter: 1/w shifts by exactly one pixel. */
    float px = jx / (float)w * 2.f;
    float py = jy / 360.f * 2.f;

    glClearColor(0.08f, 0.08f, 0.12f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-1 - px, 1 - px, -1 - py, 1 - py, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glRotatef(15.f, 0.f, 0.f, 1.f);

    glBegin(GL_TRIANGLES);
    glColor3f(1.f, 0.3f, 0.2f); glVertex2f(-0.7f, -0.6f);
    glColor3f(0.2f, 1.0f, 0.4f); glVertex2f( 0.7f, -0.6f);
    glColor3f(0.3f, 0.4f, 1.0f); glVertex2f( 0.0f,  0.7f);
    glEnd();
}

void run_test(int w, int h) {
    glViewport(0, 0, w, h);

    /* Four jittered samples on a 2x2 sub-pixel pattern. */
    const float jx[4] = { -0.25f,  0.25f, -0.25f,  0.25f };
    const float jy[4] = { -0.25f, -0.25f,  0.25f,  0.25f };

    for (int i = 0; i < 4; i++) {
        draw_scene(w, h, jx[i], jy[i]);
        glAccum(i == 0 ? GL_LOAD : GL_ACCUM, 0.25f);
    }
    glAccum(GL_RETURN, 1.f);
}
