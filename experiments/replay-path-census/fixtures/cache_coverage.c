#include "types.h"
#include "workers.h"
#include <stdio.h>

#define REQUIRE(x) do { if (!(x)) { fprintf(stderr, "%s:%d: %s\n", __FILE__, __LINE__, #x); return 1; } } while (0)
enum { W = 47, H = 31, N = 384, COUNT = N * 3 };

static void clear_planes(void) {
    softgl_ctx *c = sg_current();
    int mask[4]; memcpy(mask, c->color_mask, sizeof(mask));
    int depth_mask = c->depth_mask, scissor = c->scissor_enabled;
    GLuint stencil_mask = c->stencil_write_mask;
    glDisable(GL_SCISSOR_TEST);
    glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);
    glDepthMask(GL_TRUE); glStencilMask(0xff);
    glClearColor(0.f, 0.f, 0.f, 0.f); glClearDepth(1.); glClearStencil(0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
    glColorMask(mask[0], mask[1], mask[2], mask[3]);
    glDepthMask(depth_mask); glStencilMask(stencil_mask);
    if (scissor) glEnable(GL_SCISSOR_TEST);
}

static void seed_state(void) {
    glDisable(GL_SCISSOR_TEST); glDisable(GL_DEPTH_TEST); glDisable(GL_STENCIL_TEST);
    glDisable(GL_BLEND); glDisable(GL_ALPHA_TEST); glDisable(GL_FOG);
    glDisable(GL_COLOR_LOGIC_OP); glDisable(GL_SAMPLE_COVERAGE);
    glDisable(GL_SAMPLE_ALPHA_TO_COVERAGE); glDisable(GL_SAMPLE_ALPHA_TO_ONE);
    glDisable(GL_POLYGON_OFFSET_FILL); glEnable(GL_MULTISAMPLE);
    glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE); glDepthMask(GL_TRUE);
    glStencilMask(0xff); glColor4f(.4f, .7f, .9f, .6f);
    glViewport(0, 0, W, H);
    glMatrixMode(GL_PROJECTION); glLoadIdentity();
    glMatrixMode(GL_MODELVIEW); glLoadIdentity();
}

static void case_state(int test, float positions[COUNT][3], GLuint position_buffer) {
    switch (test) {
        case 1: glEnable(GL_DEPTH_TEST); glDepthFunc(GL_EQUAL); glDepthMask(GL_FALSE); break;
        case 2:
            glEnable(GL_STENCIL_TEST); glStencilFunc(GL_ALWAYS, 7, 0xff);
            glStencilOp(GL_KEEP, GL_KEEP, GL_INCR); break;
        case 3: glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_NEVER, .4f); break;
        case 4: glEnable(GL_SAMPLE_COVERAGE); glSampleCoverage(.375f, GL_TRUE); break;
        case 5: glEnable(GL_SAMPLE_ALPHA_TO_COVERAGE); glEnable(GL_SAMPLE_ALPHA_TO_ONE); break;
        case 6:
            glColorMask(GL_TRUE, GL_FALSE, GL_TRUE, GL_FALSE);
            glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA, GL_ONE); break;
        case 7: glEnable(GL_SCISSOR_TEST); glScissor(5, 3, 29, 20); break;
        case 8:
            glEnable(GL_STENCIL_TEST); glStencilFunc(GL_NOTEQUAL, 5, 0xff);
            glStencilOp(GL_INCR, GL_REPLACE, GL_INVERT); glStencilMask(0x3f); break;
        case 9: glEnable(GL_POLYGON_OFFSET_FILL); glPolygonOffset(1.f, 1.f); break;
        case 10: glDisable(GL_MULTISAMPLE); break;
        case 11:
            positions[0][0] += .13f;
            glBindBuffer(GL_ARRAY_BUFFER, position_buffer);
            glBufferSubData(GL_ARRAY_BUFFER, 0, sizeof(float) * COUNT * 3, positions); break;
        case 12: glViewport(0, 0, W - 1, H - 1); break;
        case 13: glTranslatef(.031f, .011f, 0.f); break;
    }
}

/* Actual warm (potentially compacted) bins versus a forced VBO-revision miss.
 * Compare query counts, resolved pixels and every color/depth/stencil sample.
 * Seed with two textures so the ordinary queue is used, including sample-empty
 * subpixel triangles. Fragment-state changes must never turn Z/alpha rejection
 * into geometry rejection; geometry/MS/viewport mutations must invalidate. */
static int run_configuration(int samples, int workers) {
    softgl_ctx *c = softgl_create_multisample(W, H, samples);
    REQUIRE(c); softgl_make_current(c);
    sg_workers_shutdown(c); sg_workers_init(c, workers);
    float positions[COUNT][3]; GLuint indices[COUNT];
    GLuint buffers[2], textures[2], query;
    glGenBuffers(2, buffers); glGenTextures(2, textures); glGenQueries(1, &query);
    glBindBuffer(GL_ARRAY_BUFFER, buffers[0]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(positions), NULL, GL_DYNAMIC_DRAW);
    glVertexPointer(3, GL_FLOAT, 0, NULL); glEnableClientState(GL_VERTEX_ARRAY);
    for (int i = 0; i < COUNT; i++) indices[i] = (GLuint)i;
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, buffers[1]);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);
    const uint8_t white[16] = {255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255};
    for (int u = 0; u < 2; u++) {
        glActiveTexture(GL_TEXTURE0 + u); glBindTexture(GL_TEXTURE_2D, textures[u]);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 2, 2, 0, GL_RGBA, GL_UNSIGNED_BYTE, white);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        glEnable(GL_TEXTURE_2D); glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE);
    }
    const size_t color_bytes = (size_t)W * H * samples * 4;
    const size_t depth_bytes = (size_t)W * H * samples * sizeof(float);
    const size_t stencil_bytes = (size_t)W * H * samples;
    uint8_t *expected = malloc(W * H * 4 + color_bytes + depth_bytes + stencil_bytes);
    REQUIRE(expected);
    for (int test = 0; test < 14; test++) {
        for (int i = 0; i < N; i++) {
            float x = -.9f + (i % 16) * .1f;
            float y = -.9f + ((i / 16) % 16) * .1f;
            float extent = (i & 1) ? .013f : .07f;
            for (int v = 0; v < 3; v++) {
                positions[i * 3 + v][0] = x + (v == 1 ? extent : 0.f);
                positions[i * 3 + v][1] = y + (v == 2 ? extent : 0.f);
                positions[i * 3 + v][2] = .2f;
            }
        }
        seed_state(); glBindBuffer(GL_ARRAY_BUFFER, buffers[0]);
        glBufferSubData(GL_ARRAY_BUFFER, 0, sizeof(positions), positions);
        clear_planes(); glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL);
        softgl_read_rgba8(c); /* Existing finish/reclamation publishes only completed results. */
        case_state(test, positions, buffers[0]);
        uint32_t first, last; int hit;
        REQUIRE(sg_workers_geometry_lookup(c, COUNT, GL_UNSIGNED_INT, NULL, &first, &last, &hit));
        REQUIRE(hit == (test < 10));
        GLuint warm_samples = 0, cold_samples = 0;
        for (int cold = 0; cold < 2; cold++) {
            if (cold) {
                glBindBuffer(GL_ARRAY_BUFFER, buffers[0]);
                glBufferSubData(GL_ARRAY_BUFFER, 0, sizeof(positions), positions);
            }
            clear_planes(); glBeginQuery(GL_SAMPLES_PASSED, query);
            glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL);
            glEndQuery(GL_SAMPLES_PASSED);
            glGetQueryObjectuiv(query, GL_QUERY_RESULT, cold ? &cold_samples : &warm_samples);
            const uint8_t *pixels = softgl_read_rgba8(c);
            const void *planes[] = {pixels, c->fb.sample_color, c->fb.sample_depth, c->fb.sample_stencil};
            const size_t lengths[] = {W * H * 4, color_bytes, depth_bytes, stencil_bytes};
            size_t offset = 0;
            for (int plane = 0; plane < 4; plane++) {
                if (cold) REQUIRE(!memcmp(expected + offset, planes[plane], lengths[plane]));
                else memcpy(expected + offset, planes[plane], lengths[plane]);
                offset += lengths[plane];
            }
        }
        REQUIRE(warm_samples == cold_samples);
        REQUIRE(glGetError() == GL_NO_ERROR);
    }
    free(expected); glDeleteQueries(1, &query); glDeleteTextures(2, textures);
    glDeleteBuffers(2, buffers); softgl_destroy(c);
    printf("cache replay sample planes/query counts: samples=%d workers=%d, 14 state/mutation cases passed\n", samples, workers);
    return 0;
}

int main(void) {
    const int workers[] = {1, 3, 8};
    for (int samples = 2; samples <= 4; samples += 2)
        for (int i = 0; i < 3; i++) REQUIRE(!run_configuration(samples, workers[i]));
    return 0;
}
