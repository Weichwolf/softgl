#include "harness.h"

/* Shadow-volume z-fail (simplified, single quad). Scene:
 *   - black background
 *   - gray occluder quad at z=0.4
 *   - shadow probe quad at z=0.8, larger than occluder
 * Probe runs with depth test on and dpfail=INCR: wherever the probe is
 * behind the occluder, stencil increments to 1; elsewhere probe writes
 * its black color (invisible on black background) and keeps stencil 0.
 * Final full-screen pass with NOTEQUAL 0 paints shadow tint over the
 * shadowed region (which lies within the occluder rectangle). */
void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClearDepth(1.f);
    glClearStencil(0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);  glLoadIdentity();

    /* Occluder (gray, z=0.4). */
    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);
    glColor3f(0.5f, 0.5f, 0.5f);
    glBegin(GL_TRIANGLES);
        glVertex3f(-0.4f, -0.4f, 0.4f);
        glVertex3f( 0.4f, -0.4f, 0.4f);
        glVertex3f(-0.4f,  0.4f, 0.4f);
        glVertex3f(-0.4f,  0.4f, 0.4f);
        glVertex3f( 0.4f, -0.4f, 0.4f);
        glVertex3f( 0.4f,  0.4f, 0.4f);
    glEnd();

    /* Shadow probe (black, z=0.8). dpfail=INCR. Depth write off so probe
     * doesn't hide subsequent passes. */
    glEnable(GL_STENCIL_TEST);
    glStencilFunc(GL_ALWAYS, 0, 0xFF);
    glStencilOp(GL_KEEP, GL_INCR, GL_KEEP);
    glDepthMask(GL_FALSE);
    glColor3f(0.f, 0.f, 0.f);
    glBegin(GL_TRIANGLES);
        glVertex3f(-0.6f, -0.6f, 0.8f);
        glVertex3f( 0.6f, -0.6f, 0.8f);
        glVertex3f(-0.6f,  0.6f, 0.8f);
        glVertex3f(-0.6f,  0.6f, 0.8f);
        glVertex3f( 0.6f, -0.6f, 0.8f);
        glVertex3f( 0.6f,  0.6f, 0.8f);
    glEnd();
    glDepthMask(GL_TRUE);

    /* Full-screen shade: stencil != 0 → shadow tint. */
    glDisable(GL_DEPTH_TEST);
    glStencilFunc(GL_NOTEQUAL, 0, 0xFF);
    glStencilOp(GL_KEEP, GL_KEEP, GL_KEEP);
    glColor3f(0.2f, 0.2f, 0.35f);
    glBegin(GL_TRIANGLES);
        glVertex2f(-1.f, -1.f);
        glVertex2f( 1.f, -1.f);
        glVertex2f(-1.f,  1.f);
        glVertex2f(-1.f,  1.f);
        glVertex2f( 1.f, -1.f);
        glVertex2f( 1.f,  1.f);
    glEnd();

    glDisable(GL_STENCIL_TEST);
}
