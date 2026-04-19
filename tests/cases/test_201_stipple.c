#include "harness.h"
#include <string.h>

/* Phase X — Line stipple + Polygon stipple.
 *
 *  - Left half: stipple-patterned polygon (diagonal 32x32 mask).
 *  - Right half: stipple-patterned lines (pattern 0xAAAA = dash-dot).
 */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-1, 1, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    glClearColor(0.1f, 0.1f, 0.15f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    /* --- Stippled polygon on the left half. --- */
    /* Diagonal mask: bit set if (x+y) & 2. 32x32 = 128 bytes. */
    GLubyte mask[128];
    for (int y = 0; y < 32; y++) {
        for (int bx = 0; bx < 4; bx++) {
            GLubyte b = 0;
            for (int i = 0; i < 8; i++) {
                int x = bx * 8 + i;
                if ((x + y) & 2) b |= (GLubyte)(0x80 >> i);
            }
            mask[y * 4 + bx] = b;
        }
    }
    glPolygonStipple(mask);
    glEnable(GL_POLYGON_STIPPLE);
    glColor3f(1.f, 0.8f, 0.3f);
    glBegin(GL_QUADS);
    glVertex2f(-0.9f, -0.8f);
    glVertex2f(-0.1f, -0.8f);
    glVertex2f(-0.1f,  0.8f);
    glVertex2f(-0.9f,  0.8f);
    glEnd();
    glDisable(GL_POLYGON_STIPPLE);

    /* --- Stippled lines on the right half. --- */
    glLineStipple(2, 0xAAAA);
    glEnable(GL_LINE_STIPPLE);
    glColor3f(0.3f, 0.9f, 1.f);
    glBegin(GL_LINES);
    glVertex2f( 0.1f, -0.7f); glVertex2f( 0.9f,  0.7f);
    glVertex2f( 0.1f,  0.7f); glVertex2f( 0.9f, -0.7f);
    glVertex2f( 0.1f,  0.0f); glVertex2f( 0.9f,  0.0f);
    glEnd();
    glDisable(GL_LINE_STIPPLE);
}
