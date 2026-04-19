#include "harness.h"
#include <math.h>

/* Phase X — Evaluators:
 *
 * Same 4x4 saddle Bezier patch as test 66, but rendered via the evaluator
 * fixed-function pipeline instead of manual de Casteljau + glVertex.
 *
 *   glMap2f(GL_MAP2_VERTEX_3, ...)  — upload control points
 *   glMapGrid2f(N, 0..1, N, 0..1)   — grid resolution
 *   glEvalMesh2(GL_FILL, 0..N, 0..N) — walk grid and emit quads
 *
 * GL_AUTO_NORMAL synthesizes per-vertex normals from partial derivatives so
 * we can light the surface without supplying GL_MAP2_NORMAL.
 */

static const GLfloat cp[4 * 4 * 3] = {
    /* row 0 (v = 0) */
    -1.f,   -1.f,   0.0f,   -0.33f, -1.f,   0.4f,   0.33f, -1.f,   -0.4f,  1.f, -1.f, 0.0f,
    /* row 1 */
    -1.f,   -0.33f, 0.3f,   -0.33f, -0.33f, 0.7f,   0.33f, -0.33f, -0.7f,  1.f, -0.33f, -0.3f,
    /* row 2 */
    -1.f,    0.33f, -0.3f,  -0.33f,  0.33f, -0.7f,  0.33f,  0.33f,  0.7f,  1.f,  0.33f, 0.3f,
    /* row 3 (v = 1) */
    -1.f,    1.f,    0.0f,  -0.33f,  1.f,   -0.4f,  0.33f,  1.f,    0.4f,  1.f,  1.f,  0.0f,
};

void run_test(int w, int h) {
    /* Scale the patch like test 66 does (0.7, 0.7, 0.5). Apply via matrix. */
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.1f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST);
    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0);
    glEnable(GL_AUTO_NORMAL);

    float aspect = (float)w / (float)h;
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-aspect, aspect, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glRotatef(-25.f, 1.f, 0.2f, 0.f);
    glScalef(0.7f, 0.7f, 0.5f);

    const float pos[4] = { 0.5f, 0.5f, 1.f, 0.f };
    const float dif[4] = { 1.f, 1.f, 1.f, 1.f };
    const float amb[4] = { 0.1f, 0.1f, 0.1f, 1.f };
    glLightfv(GL_LIGHT0, GL_POSITION, pos);
    glLightfv(GL_LIGHT0, GL_DIFFUSE,  dif);
    glLightfv(GL_LIGHT0, GL_AMBIENT,  amb);
    const float mdif[4] = { 0.4f, 0.8f, 0.3f, 1.f };
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mdif);

    /* Upload + enable the vertex map. ustride = 3 (one point = 3 floats in a
     * row), vstride = 12 (one row = 4 points). uorder = vorder = 4. */
    glMap2f(GL_MAP2_VERTEX_3,
            0.f, 1.f, 3, 4,
            0.f, 1.f, 12, 4,
            cp);
    glEnable(GL_MAP2_VERTEX_3);

    /* 20-segment grid matches test 66's BN = 20 (19x19 cells). */
    glMapGrid2f(19, 0.f, 1.f, 19, 0.f, 1.f);
    glEvalMesh2(GL_FILL, 0, 19, 0, 19);

    glDisable(GL_MAP2_VERTEX_3);
    glDisable(GL_AUTO_NORMAL);
    glDisable(GL_LIGHTING);
    glDisable(GL_DEPTH_TEST);
}
