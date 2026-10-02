#include "harness.h"

/* A two-triangle batch sorts the nearer triangle to index 0. A subsequent
 * singleton batch must reset that index rather than reuse the old ordering. */
static void draw_triangle(float z, float r, float g, float b) {
    glColor3f(r, g, b);
    glVertex3f(-0.9f, -0.8f, z);
    glVertex3f( 0.9f, -0.8f, z);
    glVertex3f( 0.0f,  0.8f, z);
}

void run_test(int w, int h) {
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(-1, 1, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glBegin(GL_TRIANGLES);
    draw_triangle(-0.4f, 1.f, 0.f, 0.f);
    draw_triangle( 0.4f, 0.f, 0.f, 1.f);
    glEnd();

    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glBegin(GL_TRIANGLES);
    draw_triangle(0.f, 0.f, 1.f, 0.f);
    glEnd();
}
