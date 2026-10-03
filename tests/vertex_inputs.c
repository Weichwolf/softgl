#include "types.h"
#include "workers.h"
#include "vertex_inputs.h"
#include <stdio.h>

#define CHECK(x) do { if (!(x)) { \
    fprintf(stderr, "%s:%d: %s\n", __FILE__, __LINE__, #x); return 1; \
} } while (0)

void sg_prepare_nm_cache(softgl_ctx *c);
int sg_process_vertex_prepared(softgl_ctx *c, int index, sg_vert *out,
                               const sg_vertex_inputs *inputs);
void sg_process_vertex_replay_prepared(softgl_ctx *c, int index,
    const sg_position_vertex *geometry, sg_vert *out, const sg_vertex_inputs *inputs);

enum { N = 37 };

static int compare_inputs(softgl_ctx *c) {
    sg_vertex_inputs inputs;
    sg_prepare_vertex_inputs(c, &inputs);
    sg_prepare_nm_cache(c);
    for (int i = 0; i < N; i++) {
        SG_ALIGN16 sg_vert expected, actual, replayed;
        int inside = sg_process_vertex_at(c, i, &expected);
        CHECK(sg_process_vertex_prepared(c, i, &actual, &inputs) == inside);
        CHECK(!memcmp(&expected, &actual, sizeof(actual)));
        sg_position_vertex position = {expected.clip, expected.ndc, expected.eye};
        sg_process_vertex_replay_prepared(c, i, &position, &replayed, &inputs);
        CHECK(!memcmp(&expected, &replayed, sizeof(replayed)));
    }
    CHECK(glGetError() == GL_NO_ERROR);
    return 0;
}

int sg_input_contract(int samples, int workers) {
    softgl_ctx *c = softgl_create_multisample(65, 35, samples);
    CHECK(c);
    softgl_make_current(c);
    sg_workers_shutdown(c);
    sg_workers_init(c, workers);
    GLuint buffers[7];
    glGenBuffers(7, buffers);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glFrustum(-1, 1, -1, 1, .5, 10);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity(); glRotatef(23, 0, 1, 0); glScalef(1.2f, .8f, 1.1f);
    glEnable(GL_LIGHT0); glEnable(GL_NORMALIZE);
    glLightModeli(GL_LIGHT_MODEL_TWO_SIDE, GL_TRUE);
    glEnableClientState(GL_VERTEX_ARRAY);
    for (int variant = 0; variant < 16; variant++) {
        void *data[7] = {0};
        size_t bytes[7];
        int sizes[7] = {2 + variant % 3, 3, 3 + (variant & 1), 1, 2, 3, 4};
        GLenum types[7] = {GL_FLOAT, GL_FLOAT, GL_FLOAT, GL_FLOAT, GL_FLOAT, GL_FLOAT, GL_FLOAT};
        if (variant & 4) { types[0] = GL_SHORT; types[1] = GL_SHORT; }
        if (variant & 2) types[2] = GL_UNSIGNED_BYTE;
        for (int a = 0; a < 7; a++) {
            int scalar = types[a] == GL_UNSIGNED_BYTE ? 1 : types[a] == GL_SHORT ? 2 : 4;
            bytes[a] = (size_t)N * sizes[a] * scalar;
            data[a] = malloc(bytes[a]);
            CHECK(data[a]);
            for (int i = 0; i < N * sizes[a]; i++) {
                if (types[a] == GL_FLOAT) ((float *)data[a])[i] = ((i % 13) - 6) * .125f;
                else if (types[a] == GL_SHORT) ((GLshort *)data[a])[i] = (GLshort)((i % 19) - 9);
                else ((GLubyte *)data[a])[i] = (GLubyte)(i * 17);
            }
            glBindBuffer(GL_ARRAY_BUFFER, (variant + a) % 2 ? buffers[a] : 0);
            const void *pointer = data[a];
            if ((variant + a) % 2) {
                glBufferData(GL_ARRAY_BUFFER, bytes[a], data[a], GL_STATIC_DRAW);
                pointer = NULL;
            }
            int stride = types[a] == GL_SHORT ? sizes[a] * 2 : 0;
            if (a == 0) glVertexPointer(sizes[a], types[a], stride, pointer);
            else if (a == 1) glNormalPointer(types[a], stride, pointer);
            else if (a == 2) glColorPointer(sizes[a], types[a], stride, pointer);
            else {
                glClientActiveTexture(GL_TEXTURE0 + a - 3);
                glTexCoordPointer(sizes[a], types[a], stride, pointer);
                glEnableClientState(GL_TEXTURE_COORD_ARRAY);
            }
        }
        glClientActiveTexture(GL_TEXTURE0);
        if (variant % 5) glEnableClientState(GL_NORMAL_ARRAY); else glDisableClientState(GL_NORMAL_ARRAY);
        if (variant % 7) glEnableClientState(GL_COLOR_ARRAY); else glDisableClientState(GL_COLOR_ARRAY);
        if (variant & 1) glEnable(GL_LIGHTING); else glDisable(GL_LIGHTING);
        glColor4f(.25f, .5f, .75f, .625f); glNormal3f(.3f, .4f, .8f);
        glEdgeFlag((variant & 1) ? GL_TRUE : GL_FALSE);
        CHECK(!compare_inputs(c));
        /* Client contents and VBO allocation may change between joined jobs.
         * Each preparation must resolve current storage afresh. */
        for (int a = 0; a < 7; a++) {
            if (types[a] == GL_FLOAT) ((float *)data[a])[0] += .25f;
            else if (types[a] == GL_SHORT) ((GLshort *)data[a])[0] += 1;
            else ((GLubyte *)data[a])[0] ^= 127;
            if ((variant + a) % 2) {
                glBindBuffer(GL_ARRAY_BUFFER, buffers[a]);
                glBufferData(GL_ARRAY_BUFFER, bytes[a], data[a], GL_DYNAMIC_DRAW);
            }
        }
        CHECK(!compare_inputs(c));
        for (int a = 0; a < 7; a++) free(data[a]);
    }
    softgl_destroy(c);
    return 0;
}

int main(void) {
    const int samples[] = {0, 2, 4}, workers[] = {1, 3, 8};
    for (int s = 0; s < 3; s++) for (int w = 0; w < 3; w++)
        CHECK(!sg_input_contract(samples[s], workers[w]));
    puts("Prepared inputs: exact geometry/lighting/attributes, short arrays, typed conversion and storage changes passed");
    return 0;
}
