/* FP-3 benchmark: compares float and fixed backends on a few heavy
 * fill scenes. Not a correctness gate -- just a timing harness so we
 * can validate that the SIMD-quad rasterizer actually pays off.
 *
 * Scenes:
 *   fullquad   : 640x360 full-screen gradient quad, 600 iterations.
 *   tess       : 96x96 tessellated grid (~18k triangles), 100 iters.
 *   overdraw   : 32 stacked fullscreen quads, 100 iters.
 *
 * Usage: bench_fp [iters_mult]
 *   iters_mult scales all iteration counts (default 1).
 *
 * Output:
 *   scene        float  fixed  speedup
 *   fullquad     X.Xms  Y.Yms  Z.ZZx
 *   ...
 */

#include <GL/softgl.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include <string.h>

#define W 640
#define H 360

/* ------------------------------------------------------------------ */
/* Scenes                                                              */
/* ------------------------------------------------------------------ */

static void scene_fullquad(void) {
    glViewport(0, 0, W, H);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-1, 1, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glBegin(GL_TRIANGLES);
      glColor4f(1,0,0,1); glVertex3f(-1,-1,0);
      glColor4f(0,1,0,1); glVertex3f( 1,-1,0);
      glColor4f(0,0,1,1); glVertex3f(-1, 1,0);
      glColor4f(0,0,1,1); glVertex3f(-1, 1,0);
      glColor4f(0,1,0,1); glVertex3f( 1,-1,0);
      glColor4f(1,1,0,1); glVertex3f( 1, 1,0);
    glEnd();
}

#define LS 96
static float tess_verts[LS * LS * 6 * 7];

static void scene_tess_build(void) {
    int k = 0;
    for (int j = 0; j < LS; j++) {
        for (int i = 0; i < LS; i++) {
            float u0 = (float)i / LS - 0.5f;
            float v0 = (float)j / LS - 0.5f;
            float u1 = (float)(i + 1) / LS - 0.5f;
            float v1 = (float)(j + 1) / LS - 0.5f;
            float p[4][2] = { {u0, v0}, {u1, v0}, {u0, v1}, {u1, v1} };
            float col[3] = {
                (float)i / LS,
                (float)j / LS,
                0.5f + 0.3f * sinf(8 * (u0 + v0)),
            };
            int tri[6] = { 0, 1, 2, 2, 1, 3 };
            for (int t = 0; t < 6; t++) {
                tess_verts[k++] = p[tri[t]][0];
                tess_verts[k++] = p[tri[t]][1];
                tess_verts[k++] = 0.0f;
                tess_verts[k++] = col[0];
                tess_verts[k++] = col[1];
                tess_verts[k++] = col[2];
                tess_verts[k++] = 1.0f;
            }
        }
    }
}

static void scene_tess(void) {
    glViewport(0, 0, W, H);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-1, 1, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();

    glEnableClientState(GL_VERTEX_ARRAY);
    glEnableClientState(GL_COLOR_ARRAY);
    glVertexPointer(3, GL_FLOAT, 7 * sizeof(float), tess_verts);
    glColorPointer(4, GL_FLOAT, 7 * sizeof(float), tess_verts + 3);
    glDrawArrays(GL_TRIANGLES, 0, LS * LS * 6);
    glDisableClientState(GL_VERTEX_ARRAY);
    glDisableClientState(GL_COLOR_ARRAY);
}

static void scene_overdraw(void) {
    glViewport(0, 0, W, H);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-1, 1, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();

    for (int k = 0; k < 32; k++) {
        float t = (float)k / 32.f;
        glBegin(GL_TRIANGLES);
          glColor4f(t,   1-t, 0.5f, 1);
          glVertex3f(-1,-1, 0);
          glVertex3f( 1,-1, 0);
          glVertex3f(-1, 1, 0);
          glVertex3f(-1, 1, 0);
          glVertex3f( 1,-1, 0);
          glVertex3f( 1, 1, 0);
        glEnd();
    }
}

/* Depth + alpha-blend overdraw: exercises the full SIMD fragment stack
 * (depth test, alpha compare, src-alpha / one-minus-src-alpha blend). */
static void scene_blend_stack(void) {
    glViewport(0, 0, W, H);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-1, 1, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();

    glEnable(GL_DEPTH_TEST);
    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

    for (int k = 0; k < 24; k++) {
        float t = (float)k / 24.f;
        float z = -0.9f + 1.8f * t;
        glBegin(GL_TRIANGLES);
          glColor4f(t, 1.f - t, 0.5f, 0.5f);
          glVertex3f(-1,-1, z);
          glVertex3f( 1,-1, z);
          glVertex3f(-1, 1, z);
          glVertex3f(-1, 1, z);
          glVertex3f( 1,-1, z);
          glVertex3f( 1, 1, z);
        glEnd();
    }
    glDisable(GL_BLEND);
    glDisable(GL_DEPTH_TEST);
}

/* ------------------------------------------------------------------ */
/* Timing                                                              */
/* ------------------------------------------------------------------ */

typedef void (*scene_fn)(void);

static double time_scene(scene_fn fn, int iters) {
    softgl_ctx *ctx = softgl_create(W, H);
    softgl_make_current(ctx);

    /* Warm-up iteration, not counted. */
    fn();

    clock_t t0 = clock();
    for (int i = 0; i < iters; i++) fn();
    clock_t t1 = clock();

    softgl_destroy(ctx);

    double ms = 1000.0 * (double)(t1 - t0) / (double)CLOCKS_PER_SEC;
    return ms / (double)iters;
}

static void run_scene(const char *name, scene_fn fn, int iters) {
    double ms = time_scene(fn, iters);
    printf("  %-10s  %6.2fms  (iters=%d)\n", name, ms, iters);
}

int main(int argc, char **argv) {
    int mult = 1;
    if (argc > 1) mult = atoi(argv[1]);
    if (mult < 1) mult = 1;

    scene_tess_build();

    const char *tag = "";
#ifdef SG_DISABLE_SIMD
    tag = " [noSIMD build]";
#endif
    printf("fp benchmark (%dx%d)%s\n", W, H, tag);

    run_scene("fullquad", scene_fullquad,    300 * mult);
    run_scene("tess",     scene_tess,         50 * mult);
    run_scene("overdraw", scene_overdraw,     50 * mult);
    run_scene("blend",    scene_blend_stack,  50 * mult);

    return 0;
}
