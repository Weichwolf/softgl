/* FP-6 final benchmark: the FP-3 fill-dominated synthetic scenes plus five
 * real test-case scenes (showcase, shadow, particles, city, icosphere).
 *
 * Each scene is rendered N times per backend and reported as ms/frame.
 * Three backends are compared (float scalar, fixed+SIMD, fixed scalar).
 * The scalar-fixed path is only available when this TU is linked against
 * the SG_DISABLE_SIMD build of libsoftgl — that lives in
 * `bench_scenes_noSIMD` below, sharing the same source file.
 *
 * Output is a grep-friendly key=value table:
 *   scene=showcase backend=float       ms=12.34
 *   scene=showcase backend=fixed       ms= 9.87 speedup=1.25x
 *   scene=showcase backend=fixed_noSIMD ms=14.21
 *
 * Usage: bench_scenes [iters_mult]
 */

#include <GL/softgl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include <time.h>

#define W 640
#define H 360

/* ------------------------------------------------------------------ */
/* High-resolution timing                                              */
/* ------------------------------------------------------------------ */

static double now_sec(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (double)ts.tv_sec + (double)ts.tv_nsec * 1e-9;
}

/* ------------------------------------------------------------------ */
/* Synthetic scenes (FP-3 legacy: fill-dominated)                      */
/* ------------------------------------------------------------------ */

static void scene_fullquad(int w, int h) {
    glViewport(0, 0, w, h);
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
static int tess_built = 0;

static void tess_build(void) {
    int k = 0;
    for (int j = 0; j < LS; j++)
    for (int i = 0; i < LS; i++) {
        float u0 = (float)i / LS - 0.5f, v0 = (float)j / LS - 0.5f;
        float u1 = (float)(i+1)/LS - 0.5f, v1 = (float)(j+1)/LS - 0.5f;
        float p[4][2] = { {u0,v0},{u1,v0},{u0,v1},{u1,v1} };
        float col[3] = { (float)i/LS, (float)j/LS, 0.5f + 0.3f*sinf(8*(u0+v0)) };
        int tri[6] = { 0,1,2,2,1,3 };
        for (int t = 0; t < 6; t++) {
            tess_verts[k++] = p[tri[t]][0];
            tess_verts[k++] = p[tri[t]][1];
            tess_verts[k++] = 0.f;
            tess_verts[k++] = col[0]; tess_verts[k++] = col[1];
            tess_verts[k++] = col[2]; tess_verts[k++] = 1.f;
        }
    }
    tess_built = 1;
}

static void scene_tess(int w, int h) {
    if (!tess_built) tess_build();
    glViewport(0, 0, w, h);
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

static void scene_overdraw(int w, int h) {
    glViewport(0, 0, w, h);
    glClearColor(0.f, 0.f, 0.f, 1.f);
    glClear(GL_COLOR_BUFFER_BIT);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(-1, 1, -1, 1, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    for (int k = 0; k < 32; k++) {
        float t = (float)k / 32.f;
        glBegin(GL_TRIANGLES);
          glColor4f(t, 1-t, 0.5f, 1);
          glVertex3f(-1,-1, 0); glVertex3f( 1,-1, 0); glVertex3f(-1, 1, 0);
          glVertex3f(-1, 1, 0); glVertex3f( 1,-1, 0); glVertex3f( 1, 1, 0);
        glEnd();
    }
}

static void scene_blend(int w, int h) {
    glViewport(0, 0, w, h);
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
          glColor4f(t, 1-t, 0.5f, 0.5f);
          glVertex3f(-1,-1, z); glVertex3f( 1,-1, z); glVertex3f(-1, 1, z);
          glVertex3f(-1, 1, z); glVertex3f( 1,-1, z); glVertex3f( 1, 1, z);
        glEnd();
    }
    glDisable(GL_BLEND); glDisable(GL_DEPTH_TEST);
}

/* ------------------------------------------------------------------ */
/* Real test-case scenes (linked in via test_NNN_xxx.c renamed)        */
/* ------------------------------------------------------------------ */

/* Forward declarations; the real symbols are injected by the CMake
 * target that renames `run_test` to `sg_bench_scene_<name>` per TU. */
extern void sg_bench_scene_showcase   (int w, int h);
extern void sg_bench_scene_shadow     (int w, int h);
extern void sg_bench_scene_particles  (int w, int h);
extern void sg_bench_scene_city       (int w, int h);
extern void sg_bench_scene_sphere_lit (int w, int h);

/* ------------------------------------------------------------------ */
/* Scene table                                                         */
/* ------------------------------------------------------------------ */

typedef void (*scene_fn)(int, int);
typedef struct { const char *name; scene_fn fn; int iters; } scene_t;

static scene_t scenes[] = {
    { "fullquad",   scene_fullquad,           300 },
    { "tess",       scene_tess,                50 },
    { "overdraw",   scene_overdraw,            50 },
    { "blend",      scene_blend,               50 },
    { "showcase",   sg_bench_scene_showcase,   50 },
    { "shadow",     sg_bench_scene_shadow,     50 },
    { "particles",  sg_bench_scene_particles,  50 },
    { "city",       sg_bench_scene_city,       50 },
    { "sphere_lit", sg_bench_scene_sphere_lit, 80 },
};
#define NUM_SCENES ((int)(sizeof(scenes) / sizeof(scenes[0])))

/* ------------------------------------------------------------------ */
/* Per-scene timing                                                    */
/* ------------------------------------------------------------------ */

static double time_scene(scene_fn fn, int iters) {
    softgl_ctx *ctx = softgl_create(W, H);
    softgl_make_current(ctx);
    fn(W, H); /* warm-up */
    double t0 = now_sec();
    for (int i = 0; i < iters; i++) fn(W, H);
    double t1 = now_sec();
    softgl_destroy(ctx);
    return 1000.0 * (t1 - t0) / (double)iters;
}

/* ------------------------------------------------------------------ */
/* Public bench API (also exported to WASM)                            */
/* ------------------------------------------------------------------ */

int sg_bench_scene_count(void) { return NUM_SCENES; }

const char *sg_bench_scene_name(int i) {
    return (i < 0 || i >= NUM_SCENES) ? "" : scenes[i].name;
}

int sg_bench_scene_iters(int i) {
    return (i < 0 || i >= NUM_SCENES) ? 0 : scenes[i].iters;
}

/* WASM/Embedded entry point: runs scene [idx] [iters] times, returns ms/frame.
 * `backend` is retained for ABI stability but is ignored (single backend). */
double sg_bench_run(int idx, int iters, int backend) {
    (void)backend;
    if (idx < 0 || idx >= NUM_SCENES || iters <= 0) return -1.0;
    return time_scene(scenes[idx].fn, iters);
}

/* ------------------------------------------------------------------ */
/* Native main                                                         */
/* ------------------------------------------------------------------ */

int main(int argc, char **argv) {
    int mult = 1;
    if (argc > 1) mult = atoi(argv[1]);
    if (mult < 1) mult = 1;

    tess_build();

    const char *tag = "";
#ifdef SG_DISABLE_SIMD
    tag = " [noSIMD build]";
#endif

    printf("# scenes benchmark (%dx%d)%s\n", W, H, tag);

    for (int s = 0; s < NUM_SCENES; s++) {
        int iters = scenes[s].iters * mult;
        double ms = time_scene(scenes[s].fn, iters);
        printf("scene=%-10s ms=%7.3f iters=%d\n",
               scenes[s].name, ms, iters);
        fflush(stdout);
    }
    return 0;
}
