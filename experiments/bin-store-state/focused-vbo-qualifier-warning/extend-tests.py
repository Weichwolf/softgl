from pathlib import Path
r=Path(__file__).resolve().parent;p=r/'source-root/tests/msaa_store.c';t=p.read_text().replace('#include <math.h>','#include <math.h>\n#include <stddef.h>')
pos=t.index('static uint32_t rng')
t=t[:pos]+'''/* Reuse reserved bytes without changing existing bin members or stride. */
typedef struct {
    sg_worker_tri *tris;
    uint32_t *sort_keys;
    int count, cap, ix0, ix1;
    GLuint64 query_samples;
    int coverage_count, depth_capture;
    uint8_t pad[56];
} sg_prior_worker_bin;
_Static_assert(sizeof(sg_worker_bin) == sizeof(sg_prior_worker_bin), "bin stride unchanged");
_Static_assert(offsetof(sg_worker_bin, depth_capture) == offsetof(sg_prior_worker_bin, depth_capture),
               "existing bin fields unchanged");
_Static_assert(offsetof(sg_worker_bin, common_store) == offsetof(sg_prior_worker_bin, pad),
               "eligibility occupies reserved bytes");

'''+t[pos:]
pos=t.index('int sg_store_contract(void)')
addition='''/* Actual queued draws alternate eligible and general state, recycle slots,
 * and compare every color/depth/stencil plane against a query-forced writer. */
static int render_bin_states(softgl_ctx *c, const float positions[][3], int count, int oracle) {
    softgl_make_current(c);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glOrtho(0, c->fb.w, 0, c->fb.h, -1, 1);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
    glDisable(GL_ALPHA_TEST); glDisable(GL_STENCIL_TEST); glDisable(GL_BLEND);
    glDisable(GL_COLOR_LOGIC_OP); glDisable(GL_SCISSOR_TEST);
    glDisable(GL_SAMPLE_COVERAGE); glDisable(GL_SAMPLE_ALPHA_TO_ONE);
    glDisable(GL_SAMPLE_ALPHA_TO_COVERAGE); glEnable(GL_MULTISAMPLE);
    glColorMask(1, 1, 1, 1); glDepthMask(GL_TRUE);
    glClearColor(.13f, .27f, .41f, .59f); glClearDepth(1); glClearStencil(3);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
    glEnable(GL_DEPTH_TEST); glDepthFunc(GL_LEQUAL);
    glEnableClientState(GL_VERTEX_ARRAY); glVertexPointer(3, GL_FLOAT, 0, positions);
    GLuint query = 0;
    if (oracle) { glGenQueries(1, &query); glBeginQuery(GL_SAMPLES_PASSED, query); }
    int queued = 0;
    for (int state = 0; state < 12; state++) {
        if (state == 1) { glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER, .4f); }
        else glDisable(GL_ALPHA_TEST);
        if (state == 3) {
            glEnable(GL_STENCIL_TEST); glStencilFunc(GL_ALWAYS, 3, 255);
            glStencilOp(GL_KEEP, GL_KEEP, GL_INCR);
        } else glDisable(GL_STENCIL_TEST);
        if (state == 5) { glEnable(GL_COLOR_LOGIC_OP); glLogicOp(GL_COPY_INVERTED); }
        else glDisable(GL_COLOR_LOGIC_OP);
        glColorMask(1, state != 7, 1, 1);
        if (state & 1) {
            glEnable(GL_BLEND);
            glBlendFunc(state == 9 ? GL_DST_COLOR : GL_SRC_ALPHA,
                        state == 11 ? GL_ONE_MINUS_SRC_ALPHA : GL_ONE);
        } else glDisable(GL_BLEND);
        glDepthMask(state & 1 ? GL_FALSE : GL_TRUE);
        glSampleCoverage(.5f, GL_FALSE);
        if (state == 10) glEnable(GL_SAMPLE_COVERAGE); else glDisable(GL_SAMPLE_COVERAGE);
        if (state == 6) glEnable(GL_SAMPLE_ALPHA_TO_COVERAGE); else glDisable(GL_SAMPLE_ALPHA_TO_COVERAGE);
        for (int draw = 0; draw < 6; draw++) {
            glColor4f(.55f + .05f * (draw % 3), .7f, .9f, .25f + .15f * (draw % 4));
            glDrawArrays(GL_TRIANGLES, 0, count);
            if (!oracle && ((sg_worker_pool *)c->workers)->async_pending == 3) queued++;
        }
    }
    if (oracle) { glEndQuery(GL_SAMPLES_PASSED); glDeleteQueries(1, &query); }
    softgl_read_rgba8(c);
    CHECK(!sg_raster_bin);
    sg_worker_pool *pool = c->workers;
    for (int bin = 0; bin < pool->nbins; bin++) CHECK(!pool->bins[bin].common_store);
    CHECK(glGetError() == GL_NO_ERROR);
    CHECK(oracle || queued > 0);
    return 0;
}

static int check_bin_states(int samples, int width, int workers) {
    enum { HEIGHT = 31, COUNT = 1536 };
    softgl_ctx *c = softgl_create_multisample(width, HEIGHT, samples); CHECK(c);
    softgl_make_current(c); sg_workers_shutdown(c); sg_workers_init(c, workers);
    GLuint textures[4]; glGenTextures(4, textures);
    const uint8_t white[4] = {255, 255, 255, 255};
    const float constant[4] = {1, 1, 1, .7f};
    for (int u = 0; u < 4; u++) {
        glActiveTexture(GL_TEXTURE0 + u); glEnable(GL_TEXTURE_2D);
        glBindTexture(GL_TEXTURE_2D, textures[u]);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 1, 1, 0, GL_RGBA, GL_UNSIGNED_BYTE, white);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
        glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_RGB, u ? GL_MODULATE : GL_DOT3_RGB);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_RGB, u ? GL_PREVIOUS : GL_TEXTURE);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE1_RGB, !u ? GL_PRIMARY_COLOR :
                  u == 1 ? GL_PREVIOUS : u == 2 ? GL_TEXTURE : GL_CONSTANT);
        glTexEnvi(GL_TEXTURE_ENV, GL_COMBINE_ALPHA, GL_REPLACE);
        glTexEnvi(GL_TEXTURE_ENV, GL_SOURCE0_ALPHA, u == 3 ? GL_CONSTANT : GL_PREVIOUS);
        glTexEnvfv(GL_TEXTURE_ENV, GL_TEXTURE_ENV_COLOR, constant);
    }
    glActiveTexture(GL_TEXTURE0);
    float positions[COUNT][3];
    for (int i = 0; i < COUNT / 3; i++) {
        float x = (i % 16) * (width / 16.f), y = (i / 16 % 8) * 3.f;
        positions[i * 3][0] = x; positions[i * 3][1] = y;
        positions[i * 3 + 1][0] = x + 4.75f; positions[i * 3 + 1][1] = y + .25f;
        positions[i * 3 + 2][0] = x + .25f; positions[i * 3 + 2][1] = y + 4.75f;
        for (int v = 0; v < 3; v++) positions[i * 3 + v][2] = -.25f;
    }
    size_t pixels = (size_t)width * HEIGHT, count = samples ? samples : 1;
    size_t color_bytes = pixels * count * 4, stencil_bytes = pixels * count;
    uint8_t *expected_color = malloc(color_bytes), *expected_stencil = malloc(stencil_bytes);
    float *expected_depth = malloc(color_bytes);
    CHECK(expected_color && expected_stencil && expected_depth);
    uint8_t *color = samples ? c->fb.sample_color : c->fb.color;
    float *depth = samples ? c->fb.sample_depth : c->fb.depth;
    uint8_t *stencil = samples ? c->fb.sample_stencil : c->fb.stencil;
    CHECK(!render_bin_states(c, positions, COUNT, 0));
    memcpy(expected_color, color, color_bytes); memcpy(expected_depth, depth, color_bytes);
    memcpy(expected_stencil, stencil, stencil_bytes);
    CHECK(!render_bin_states(c, positions, COUNT, 1));
    CHECK(!memcmp(expected_color, color, color_bytes));
    CHECK(!memcmp(expected_depth, depth, color_bytes));
    CHECK(!memcmp(expected_stencil, stencil, stencil_bytes));
    free(expected_color); free(expected_depth); free(expected_stencil);
    glDeleteTextures(4, textures); softgl_destroy(c);
    printf("bin state: samples=%d width=%d workers=%d, 72 queued state-transition draws exact to query oracle\\n",
           samples, width, workers);
    return 0;
}

'''
t=t[:pos]+addition+t[pos:]
t=t.replace('    puts("262144 exact RGBA quantizations passed");','    puts("262144 exact RGBA quantizations passed");\n    const int modes[] = {0, 2, 4}, widths[] = {47, 128}, workers[] = {1, 3, 8};\n    for (int m = 0; m < 3; m++) for (int w = 0; w < 2; w++) for (int n = 0; n < 3; n++)\n        CHECK(!check_bin_states(modes[m], widths[w], workers[n]));')
p.write_text(t);print('Added layout assertions and 18 actual queued state-transition/query-oracle configurations')
