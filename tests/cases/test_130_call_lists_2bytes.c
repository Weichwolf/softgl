#include "harness.h"

/* glCallLists with GL_2_BYTES: each pair of bytes is packed big-endian
 * into one list index. We store two 2-byte indices that decode to
 * consecutive small list IDs and draw one triangle each. */

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    GLuint base = glGenLists(2);

    glNewList(base + 0, GL_COMPILE);
        glColor3f(1.f, 0.3f, 0.3f);
        glBegin(GL_TRIANGLES);
            glVertex2f(-0.6f, -0.2f);
            glVertex2f(-0.2f, -0.2f);
            glVertex2f(-0.4f,  0.2f);
        glEnd();
    glEndList();

    glNewList(base + 1, GL_COMPILE);
        glColor3f(0.3f, 0.3f, 1.f);
        glBegin(GL_TRIANGLES);
            glVertex2f( 0.2f, -0.2f);
            glVertex2f( 0.6f, -0.2f);
            glVertex2f( 0.4f,  0.2f);
        glEnd();
    glEndList();

    /* We want the decoded indices (hi<<8|lo) to map to base+0 and base+1
     * via glListBase. Build GL_2_BYTES stream that decodes to 1 and 2. */
    glListBase(base - 1);
    const unsigned char idx[] = {
        0x00, 0x01,   /* -> 1 -> list base+0 */
        0x00, 0x02,   /* -> 2 -> list base+1 */
    };
    glCallLists(2, GL_2_BYTES, idx);
    glListBase(0);

    glDeleteLists(base, 2);
}
