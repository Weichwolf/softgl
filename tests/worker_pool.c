#include <GL/softgl.h>
#include "workers.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define CHECK(condition) do { if (!(condition)) { \
    fprintf(stderr, "line %d: %s\n", __LINE__, #condition); exit(1); } } while (0)

static void quad(int w, int h) {
    glBegin(GL_QUADS);
    glVertex2f(0.f, 0.f); glVertex2f((float)w, 0.f);
    glVertex2f((float)w, (float)h); glVertex2f(0.f, (float)h);
    glEnd();
}

/* A producer can leave helpers idle between jobs or before destruction.
 * Exercise both near-term generation handoff and the parked-worker fallback. */
static void idle_briefly(void) {
    struct timespec start, now;
    timespec_get(&start, TIME_UTC);
    do {
        timespec_get(&now, TIME_UTC);
    } while ((now.tv_sec-start.tv_sec)*1000000000LL+now.tv_nsec-start.tv_nsec < 2000000LL);
}

static void check_idle_resume(int workers) {
    const int w = 640, h = 360;
    softgl_ctx *c = softgl_create(w,h); CHECK(c);
    softgl_make_current(c); sg_workers_shutdown(c); sg_workers_init(c,workers);
    glViewport(0,0,w,h);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(0,w,0,h,-1,1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    for (int frame = 0; frame < 12; frame++) {
        if (frame%2 == 0) idle_briefly();
        uint8_t red = (uint8_t)(32+frame*8);
        glClearColor(0,0,0,1); glClear(GL_COLOR_BUFFER_BIT);
        glColor4ub(red,128,220,255); quad(w,h);
        const uint8_t *rgba = softgl_read_rgba8(c);
        for (int i = 0; i < w*h; i++)
            CHECK(rgba[i*4] == red && rgba[i*4+1] == 128 && rgba[i*4+2] == 220 && rgba[i*4+3] == 255);
    }
    CHECK(glGetError() == GL_NO_ERROR);
    idle_briefly();
    softgl_destroy(c);
}

static void depth_quad(int w, int h, float z) {
    glVertex3f(0.f, 0.f, z); glVertex3f((float)w, 0.f, z);
    glVertex3f((float)w, (float)h, z); glVertex3f(0.f, (float)h, z);
}

static void check_frame(int w, int h, int workers) {
    softgl_ctx *c = softgl_create(w, h); CHECK(c);
    softgl_make_current(c);
    sg_workers_shutdown(c); sg_workers_init(c, workers);
    CHECK(sg_thread_count(c) == workers);
    glViewport(0, 0, w, h);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(0, w, 0, h, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glClearColor(0.f, 0.f, 0.f, 1.f); glClear(GL_COLOR_BUFFER_BIT);
    glEnable(GL_BLEND); glBlendFunc(GL_ONE, GL_ONE);
    glColor4f(1.f/255.f, 2.f/255.f, 3.f/255.f, 0.f);
    GLuint query, samples;
    glGenQueries(1, &query); glBeginQuery(GL_SAMPLES_PASSED, query);
    for (int layer = 0; layer < 12; layer++) quad(w, h);
    glEndQuery(GL_SAMPLES_PASSED);
    glGetQueryObjectuiv(query, GL_QUERY_RESULT, &samples);
    CHECK(samples == (GLuint)(12*w*h));
    const uint8_t *rgba = softgl_read_rgba8(c);
    for (int i = 0; i < w*h; i++) {
        CHECK(rgba[i*4] == 12 && rgba[i*4+1] == 24);
        CHECK(rgba[i*4+2] == 36 && rgba[i*4+3] == 255);
    }
    /* Two partial flushes reuse the query and change which regions work.
     * Color masking must not suppress counts or retain stale bin counters. */
    glDisable(GL_BLEND); glColorMask(GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE);
    glEnable(GL_SCISSOR_TEST);
    int cw = w/2 ? w/2 : 1, ch = h/2 ? h/2 : 1;
    glBeginQuery(GL_SAMPLES_PASSED, query);
    glScissor(0, 0, cw, ch); quad(w, h);
    glScissor(w-cw, h-ch, cw, ch); quad(w, h);
    glEndQuery(GL_SAMPLES_PASSED);
    glGetQueryObjectuiv(query, GL_QUERY_RESULT, &samples);
    CHECK(samples == (GLuint)(2*cw*ch));
    /* Back-to-front submission lets both surfaces pass the depth test.
     * Reordering them would incorrectly halve the query result. */
    glDisable(GL_SCISSOR_TEST);
    glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);
    glEnable(GL_DEPTH_TEST); glDepthFunc(GL_LESS); glDepthMask(GL_TRUE);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glBeginQuery(GL_SAMPLES_PASSED, query);
    glBegin(GL_QUADS);
    depth_quad(w, h, -.5f); depth_quad(w, h, .5f);
    glEnd(); glEndQuery(GL_SAMPLES_PASSED);
    glGetQueryObjectuiv(query, GL_QUERY_RESULT, &samples);
    CHECK(samples == (GLuint)(2*w*h));
    /* Without depth writes, the last submitted surface supplies the color. */
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glDepthMask(GL_FALSE);
    glBegin(GL_QUADS);
    glColor3f(1.f, 0.f, 0.f); depth_quad(w, h, -.5f);
    glColor3f(0.f, 1.f, 0.f); depth_quad(w, h, .5f);
    glEnd();
    rgba = softgl_read_rgba8(c);
    for (int i = 0; i < w*h; i++)
        CHECK(rgba[i*4] == 0 && rgba[i*4+1] == 255 && rgba[i*4+2] == 0);
    CHECK(glGetError() == GL_NO_ERROR);
    glDeleteQueries(1, &query); softgl_destroy(c);
}

void sg_prepare_nm_cache(softgl_ctx *c);

static void check_transforms(int workers) {
    const int limit = 17000;
    const int counts[] = {1023, 1024, 1025, 4095, 4096, 4097, 8193};
    float (*positions)[3] = malloc((size_t)limit * sizeof(*positions));
    sg_vert *expected = sg_aligned_alloc((size_t)limit * sizeof(*expected), 16);
    uint8_t *inside = malloc((size_t)limit);
    CHECK(positions && expected && inside);
    for (int i = 0; i < limit; i++) {
        positions[i][0] = (float)(i%23 - 11) * .25f;
        positions[i][1] = (float)(i%19 - 9) * .25f;
        positions[i][2] = -1.f - (float)(i%37) * .125f;
    }
    softgl_ctx *c = softgl_create(65, 35); CHECK(c);
    softgl_make_current(c);
    sg_workers_shutdown(c); sg_workers_init(c, workers);
    glVertexPointer(3, GL_FLOAT, 0, positions);
    glEnableClientState(GL_VERTEX_ARRAY);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glFrustum(-1, 1, -1, 1, 1, 9);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glTranslatef(.2f, -.1f, -.5f); glRotatef(23.f, 0.f, 1.f, 0.f);
    glScalef(.9f, 1.2f, .8f);
    glNormal3f(.3f, .4f, .8f);
    glEnable(GL_NORMALIZE); glEnable(GL_LIGHT0);
    glLightModeli(GL_LIGHT_MODEL_TWO_SIDE, GL_TRUE);
    for (int lighting = 0; lighting < 2; lighting++) {
        if (lighting) glEnable(GL_LIGHTING); else glDisable(GL_LIGHTING);
        sg_prepare_nm_cache(c);
        for (int i = 0; i < limit; i++)
            inside[i] = (uint8_t)sg_process_vertex_at(c, i, &expected[i]);
        CHECK(sg_workers_transform_range(c, 0, limit));
        sg_worker_pool *p = (sg_worker_pool *)c->workers;
        for (unsigned k = 0; k < sizeof(counts)/sizeof(counts[0]); k++) {
            int count = counts[k], first = 17;
            memset(p->transformed, 0xA5, (size_t)limit * sizeof(*p->transformed));
            memset(p->inside_frustum, 0xA5, (size_t)limit);
            const sg_vert *actual = sg_workers_transform_range(c, first, count);
            CHECK(actual);
            for (int i = 0; i < limit; i++) {
                if (i >= first && i < first+count) {
                    CHECK(memcmp(&actual[i], &expected[i], sizeof(*actual)) == 0);
                    CHECK(p->inside_frustum[i] == inside[i]);
                } else {
                    CHECK(p->inside_frustum[i] == 0xA5);
                    const uint8_t *bytes = (const uint8_t *)&actual[i];
                    for (size_t b = 0; b < sizeof(*actual); b++) CHECK(bytes[b] == 0xA5);
                }
            }

        }
    }
    CHECK(glGetError() == GL_NO_ERROR);
    softgl_destroy(c);
    free(inside); sg_aligned_free(expected); free(positions);
}

/* Thin triangles near half-pixel boundaries must produce the same pixels and
 * query counts with direct rasterization, copied bins and transformed bins. */
static void check_subpixel_bins(int workers) {
    enum { W = 65, H = 35, N = 1024 };
    float positions[N * 3][2];
    GLuint indices[N * 3];
    for (int i = 0; i < N; i++) {
        float x = (float)(i % (W + 2) - 1);
        float y = (float)((i / (W + 2)) % (H + 2) - 1);
        const float starts[] = {.125f, .49609375f, .5f, .50390625f};
        float start = starts[i % 4];
        float extent = i % 5 == 0 ? .75f : .015625f;
        positions[i * 3][0] = x + start;
        positions[i * 3][1] = y + start;
        positions[i * 3 + 1][0] = x + start + extent;
        positions[i * 3 + 1][1] = y + start;
        positions[i * 3 + 2][0] = x + start;
        positions[i * 3 + 2][1] = y + start + extent;
        for (int k = 0; k < 3; k++) indices[i * 3 + k] = (GLuint)(i * 3 + k);
    }
    uint8_t expected[W * H * 4];
    GLuint expected_samples = 0;
    for (int indexed = 0; indexed < 2; indexed++) {
        for (int scissor = 0; scissor < 2; scissor++) {
            for (int variant = 0; variant < 2; variant++) {
                softgl_ctx *c = softgl_create(W, H); CHECK(c);
                softgl_make_current(c);
                sg_workers_shutdown(c); sg_workers_init(c, variant ? workers : 0);
                glViewport(0, 0, W, H);
                glMatrixMode(GL_PROJECTION); glLoadIdentity(); glOrtho(0, W, 0, H, -1, 1);
                glMatrixMode(GL_MODELVIEW); glLoadIdentity();
                glClearColor(0.f, 0.f, 0.f, 1.f); glClear(GL_COLOR_BUFFER_BIT);
                if (scissor) { glEnable(GL_SCISSOR_TEST); glScissor(3, 2, W - 7, H - 5); }
                GLuint query, samples;
                glGenQueries(1, &query); glBeginQuery(GL_SAMPLES_PASSED, query);
                if (indexed) {
                    glVertexPointer(2, GL_FLOAT, 0, positions);
                    glEnableClientState(GL_VERTEX_ARRAY);
                    glDrawElements(GL_TRIANGLES, N * 3, GL_UNSIGNED_INT, indices);
                } else {
                    glBegin(GL_TRIANGLES);
                    for (int i = 0; i < N * 3; i++) glVertex2fv(positions[i]);
                    glEnd();
                }
                glEndQuery(GL_SAMPLES_PASSED);
                glGetQueryObjectuiv(query, GL_QUERY_RESULT, &samples);
                const uint8_t *pixels = softgl_read_rgba8(c);
                if (variant) {
                    CHECK(samples == expected_samples);
                    CHECK(memcmp(pixels, expected, sizeof(expected)) == 0);
                } else {
                    CHECK(samples > 0);
                    expected_samples = samples;
                    memcpy(expected, pixels, sizeof(expected));
                }
                CHECK(glGetError() == GL_NO_ERROR);
                glDeleteQueries(1, &query); softgl_destroy(c);
            }
        }
    }
}

int main(void) {
    const int widths[] = {1, 2, 3, 15, 31, 32, 33, 65, 641};
    const int workers[] = {1, 3, SG_MAX_TILES};
    for (unsigned i = 0; i < sizeof(workers)/sizeof(workers[0]); i++) {
        check_idle_resume(workers[i]);
        check_transforms(workers[i]);
        check_subpixel_bins(workers[i]);
        for (unsigned j = 0; j < sizeof(widths)/sizeof(widths[0]); j++)
            check_frame(widths[j], j%2 ? 17 : 35, workers[i]);
    }
    puts("Worker pool: dense transforms, odd/tiny widths, pixels, queries and depth-order contracts passed");
    return 0;
}
