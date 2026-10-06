#include "types.h"
#include "workers.h"
#include <stdio.h>

#define CHECK(expr) do { if (!(expr)) { \
    fprintf(stderr, "%s:%d: %s\n", __FILE__, __LINE__, #expr); return 1; \
} } while (0)

enum { W = 47, H = 31, N = 384, COUNT = N * 3 };

static sg_geometry_entry *lookup(softgl_ctx *c, int *hit) {
    uint32_t first = 0, last = 0;
    return sg_workers_geometry_lookup(c, COUNT, GL_UNSIGNED_INT, NULL,
                                      &first, &last, hit);
}

/* Compare a real cache replay against a cold preparation with identical GL
 * state, including query counts and freshly changed color attributes. */
static int compare_replay(softgl_ctx *c) {
    uint8_t expected[W * H * 4];
    GLuint query, expected_samples, actual_samples;
    int hit;
    CHECK(lookup(c, &hit) && hit);
    glGenQueries(1, &query);
    for (int cold = 0; cold < 2; cold++) {
        if (cold) {
            glMatrixMode(GL_MODELVIEW); glTranslatef(.001f, 0.f, 0.f);
            CHECK(lookup(c, &hit) && !hit);
            glLoadIdentity();
        }
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
        glBeginQuery(GL_SAMPLES_PASSED, query);
        glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL);
        glEndQuery(GL_SAMPLES_PASSED);
        glGetQueryObjectuiv(query, GL_QUERY_RESULT,
                           cold ? &actual_samples : &expected_samples);
        const uint8_t *pixels = softgl_read_rgba8(c);
        if (cold) CHECK(!memcmp(expected, pixels, sizeof(expected)));
        else memcpy(expected, pixels, sizeof(expected));
    }
    CHECK(expected_samples == actual_samples);
    CHECK(lookup(c, &hit) && hit);
    CHECK(glGetError() == GL_NO_ERROR);
    glDeleteQueries(1, &query);
    return 0;
}

int sg_geometry_contract(int samples, int workers) {
    float positions[COUNT][3];
    GLuint indices[COUNT];
    for (int i = 0; i < N; i++) {
        float x = -.9f + (i % 16) * .11f;
        float y = -.9f + ((i / 16) % 16) * .11f;
        const float offsets[3][2] = {{0,0}, {.13f,0}, {0,.13f}};
        for (int v = 0; v < 3; v++) {
            positions[i * 3 + v][0] = x + offsets[v][0];
            positions[i * 3 + v][1] = y + offsets[v][1];
            positions[i * 3 + v][2] = (i % 7) * .1f;
            indices[i * 3 + v] = (GLuint)(i * 3 + v);
        }
    }
    softgl_ctx *c = samples ? softgl_create_multisample(W, H, samples) : softgl_create(W, H);
    CHECK(c); softgl_make_current(c);
    sg_workers_shutdown(c); sg_workers_init(c, workers);
    GLuint buffers[2]; glGenBuffers(2, buffers);
    glBindBuffer(GL_ARRAY_BUFFER, buffers[0]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(positions), positions, GL_STATIC_DRAW);
    glVertexPointer(3, GL_FLOAT, 0, NULL); glEnableClientState(GL_VERTEX_ARRAY);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, buffers[1]);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);
    glViewport(0, 0, W, H);
    glEnable(GL_DEPTH_TEST); glEnable(GL_CULL_FACE);
    int hit;
    CHECK(lookup(c, &hit) && !hit);
    glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL);
    glColor4f(.2f, .6f, .8f, .7f);
    CHECK(!compare_replay(c));

    /* Read-only maps preserve the identity; writable maps and uploads change
     * it even when the backing allocation or numeric buffer name is reused. */
    CHECK(glMapBuffer(GL_ARRAY_BUFFER, GL_READ_ONLY));
    CHECK(!lookup(c, &hit)); CHECK(glUnmapBuffer(GL_ARRAY_BUFFER));
    CHECK(lookup(c, &hit) && hit);
    float (*mapped)[3] = glMapBuffer(GL_ARRAY_BUFFER, GL_WRITE_ONLY); CHECK(mapped);
    mapped[0][0] += .03f; CHECK(glUnmapBuffer(GL_ARRAY_BUFFER));
    CHECK(lookup(c, &hit) && !hit);
    glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL); CHECK(!compare_replay(c));
    glBufferSubData(GL_ARRAY_BUFFER, 0, sizeof(positions), positions);
    CHECK(lookup(c, &hit) && !hit);
    glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL);
    GLuint *elements = glMapBuffer(GL_ELEMENT_ARRAY_BUFFER, GL_READ_WRITE); CHECK(elements);
    elements[1] = 2; elements[2] = 1; CHECK(glUnmapBuffer(GL_ELEMENT_ARRAY_BUFFER));
    CHECK(lookup(c, &hit) && !hit);
    glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL); CHECK(!compare_replay(c));
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);
    CHECK(lookup(c, &hit) && !hit);
    glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL);
    glFrontFace(GL_CW); CHECK(lookup(c, &hit) && !hit);
    glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL); CHECK(!compare_replay(c));
    glFrontFace(GL_CCW); glCullFace(GL_FRONT);
    CHECK(lookup(c, &hit) && !hit);
    glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL); CHECK(!compare_replay(c));
    glDisable(GL_CULL_FACE); glViewport(2, 1, W - 4, H - 2);
    CHECK(lookup(c, &hit) && !hit);
    glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL); CHECK(!compare_replay(c));
    glMatrixMode(GL_PROJECTION); glScalef(.8f, .9f, 1.f);
    CHECK(lookup(c, &hit) && !hit);
    glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL); CHECK(!compare_replay(c));
    glEnable(GL_BLEND); glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
    CHECK(!compare_replay(c));
    glDisable(GL_BLEND); glEnable(GL_ALPHA_TEST); glAlphaFunc(GL_GREATER, .5f);
    CHECK(!compare_replay(c)); glDisable(GL_ALPHA_TEST);
    glEnable(GL_STENCIL_TEST); glStencilFunc(GL_ALWAYS, 1, ~0u);
    glStencilOp(GL_KEEP, GL_KEEP, GL_REPLACE); CHECK(!compare_replay(c));
    glDisable(GL_STENCIL_TEST); glEnable(GL_SCISSOR_TEST); glScissor(7, 5, 23, 17);
    CHECK(!compare_replay(c)); glDisable(GL_SCISSOR_TEST);
    if (samples) {
        glDisable(GL_MULTISAMPLE); CHECK(lookup(c, &hit) && !hit);
        glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL); CHECK(!compare_replay(c));
    }
    /* Unsupported clipping and polygon modes must never replay cached bins. */
    glEnable(GL_CLIP_PLANE0); CHECK(!lookup(c, &hit)); glDisable(GL_CLIP_PLANE0);
    glPolygonMode(GL_FRONT_AND_BACK, GL_LINE); CHECK(!lookup(c, &hit));
    glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
    glLightModeli(GL_LIGHT_MODEL_TWO_SIDE, GL_TRUE); CHECK(!lookup(c, &hit));
    glLightModeli(GL_LIGHT_MODEL_TWO_SIDE, GL_FALSE);
    glDeleteBuffers(1, &buffers[0]); glBindBuffer(GL_ARRAY_BUFFER, buffers[0]);
    glBufferData(GL_ARRAY_BUFFER, sizeof(positions), positions, GL_STATIC_DRAW);
    glVertexPointer(3, GL_FLOAT, 0, NULL);
    CHECK(lookup(c, &hit) && !hit);
    glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL); CHECK(!compare_replay(c));
    /* A changed vertex outside the frustum goes through clipping and cannot
     * populate a transformed-bin snapshot, including an otherwise empty draw. */
    float outside[3] = {2.f, 0.f, 0.f};
    glBufferSubData(GL_ARRAY_BUFFER, 0, sizeof(outside), outside);
    glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL);
    CHECK(lookup(c, &hit) && !hit);
    glBufferSubData(GL_ARRAY_BUFFER, 0, sizeof(positions), positions);
    glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL);
    CHECK(lookup(c, &hit) && hit);
    uint32_t first, last;
    CHECK(sg_workers_geometry_lookup(c, COUNT, GL_UNSIGNED_SHORT, NULL,
                                    &first, &last, &hit) && !hit);
    CHECK(sg_workers_geometry_lookup(c, COUNT, GL_UNSIGNED_INT, (void *)4,
                                    &first, &last, &hit) && !hit);
    for (int i = 1; i < 80; i++)
        glDrawElements(GL_TRIANGLES, COUNT - i * 3, GL_UNSIGNED_INT, NULL);
    CHECK(lookup(c, &hit) && !hit); /* bounded LRU evicted the first key */
    glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL); CHECK(!compare_replay(c));
    glDeleteBuffers(1, &buffers[1]); glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, buffers[1]);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);
    CHECK(lookup(c, &hit) && !hit);
    glDrawElements(GL_TRIANGLES, COUNT, GL_UNSIGNED_INT, NULL); CHECK(!compare_replay(c));
    CHECK(glGetError() == GL_NO_ERROR);
    softgl_destroy(c);
    return 0;
}

int main(void) {
    const int samples[] = {0, 2, 4}, workers[] = {1, 3, 8};
    for (int s = 0; s < 3; s++) for (int w = 0; w < 3; w++)
        CHECK(!sg_geometry_contract(samples[s], workers[w]));
    puts("Geometry cache: replay, attributes, queries, buffer identities and GL state passed");
    return 0;
}
