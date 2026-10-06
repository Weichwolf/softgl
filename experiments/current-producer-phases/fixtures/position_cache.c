#include "types.h"
#include "workers.h"
#include <stdio.h>
#include <stddef.h>

#define CHECK(x) do { if (!(x)) { \
    fprintf(stderr, "%s:%d: %s\n", __FILE__, __LINE__, #x); return 1; \
} } while (0)
void sg_prepare_nm_cache(softgl_ctx *c);
enum { LIMIT = 72000, COUNT = 6003, FIRST = 17 };
typedef struct { float pad, position[4], tail[3]; } record;

static int compare(softgl_ctx *c, int first, int count) {
    sg_prepare_nm_cache(c);
    const sg_vert *actual = sg_workers_transform_compact(c, first, count);
    CHECK(actual);
    const uint8_t *inside = sg_workers_inside_frustum(c);
    for (int i = 0; i < count; i++) {
        sg_vert expected;
        int expected_inside = sg_process_vertex_at(c, first + i, &expected);
        CHECK(!memcmp(&expected, &actual[i], sizeof(expected)));
        CHECK(inside[i] == expected_inside);
    }
    return 0;
}

int sg_position_contract(int samples, int workers) {
    record *vertices = malloc((size_t)LIMIT * sizeof(*vertices));
    float (*uv)[4] = malloc((size_t)LIMIT * sizeof(*uv));
    CHECK(vertices && uv);
    for (int i = 0; i < LIMIT; i++) {
        vertices[i].pad = 123.f;
        for (int k = 0; k < 3; k++) vertices[i].tail[k] = (float)k * .25f;
        vertices[i].position[0] = (i % 53 - 26) * .25f;
        vertices[i].position[1] = (i % 31 - 15) * .25f;
        vertices[i].position[2] = -1.f - (i % 17) * .125f;
        vertices[i].position[3] = i % 5 ? 1.f : 2.f;
        for (int k = 0; k < 4; k++) uv[i][k] = (i % 7 + k) * .125f;
    }
    softgl_ctx *c = softgl_create_multisample(65, 35, samples); CHECK(c);
    softgl_make_current(c); sg_workers_shutdown(c); sg_workers_init(c, workers);
    GLuint buffer; glGenBuffers(1, &buffer); glBindBuffer(GL_ARRAY_BUFFER, buffer);
    glBufferData(GL_ARRAY_BUFFER, (GLsizeiptr)((size_t)LIMIT * sizeof(*vertices)), vertices, GL_STATIC_DRAW);
    glVertexPointer(4, GL_FLOAT, sizeof(record), (void *)offsetof(record, position));
    glEnableClientState(GL_VERTEX_ARRAY);
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glTexCoordPointer(4, GL_FLOAT, 0, uv); glEnableClientState(GL_TEXTURE_COORD_ARRAY);
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glFrustum(-1, 1, -1, 1, 1, 12);
    glMatrixMode(GL_MODELVIEW); glLoadIdentity(); glRotatef(23, 0, 1, 0);
    glNormal3f(.3f, .4f, .8f); glColor4f(.25f, .5f, .75f, .625f);
    CHECK(!compare(c, FIRST, COUNT));
    sg_worker_pool *p = c->workers;
    CHECK(p->job_position_count == 6);
    sg_position_page *saved[6];
    for (int page = 0; page < 6; page++) {
        saved[page] = p->job_position_pages[page]; CHECK(saved[page]);
    }
    int outside = 0;
    for (int i = FIRST; i < FIRST + COUNT; i++) {
        uint8_t flags = saved[i / 1024]->flags[i % 1024];
        CHECK(flags & 2); if (!(flags & 1)) outside++;
    }
    CHECK(outside > 0 && outside < COUNT);
    /* A new local array offset addresses the same global records. Only the
     * position cache is shared; UVs and normals keep their source indices. */
    glBindBuffer(GL_ARRAY_BUFFER, buffer);
    glVertexPointer(4, GL_FLOAT, sizeof(record),
                    (void *)(1024 * sizeof(record) + offsetof(record, position)));
    glEdgeFlag(GL_FALSE); glColor4f(.75f, .25f, .5f, .375f);
    for (int i = FIRST; i < FIRST + COUNT; i++) uv[i][0] += .125f;
    glEnable(GL_LIGHTING); glEnable(GL_LIGHT0); glEnable(GL_NORMALIZE);
    glLightModeli(GL_LIGHT_MODEL_TWO_SIDE, GL_TRUE); glNormal3f(.8f, -.4f, .2f);
    CHECK(!compare(c, FIRST, COUNT - 1024));
    CHECK(p->job_position_pages[0] == saved[1]);
    CHECK(p->job_position_pages[0]->page == 1);
    /* State that does not alter coordinates preserves the cached pages. */
    sg_position_vertex geometry = saved[1]->vertices[FIRST];
    glEnable(GL_FOG); glEnable(GL_CLIP_PLANE0); glEnable(GL_BLEND);
    glViewport(0, 0, 65, 35);
    CHECK(!compare(c, FIRST, COUNT - 1024));
    CHECK(!memcmp(&geometry, &saved[1]->vertices[FIRST], sizeof(geometry)));
    /* Each real position-storage identity change invalidates the old data. */
    record changed = vertices[1024 + FIRST]; changed.position[0] += .5f;
    glBufferSubData(GL_ARRAY_BUFFER, (1024 + FIRST) * sizeof(record), sizeof(changed), &changed);
    CHECK(!compare(c, FIRST, COUNT - 1024));
    record *mapped = glMapBuffer(GL_ARRAY_BUFFER, GL_READ_WRITE); CHECK(mapped);
    mapped[1024 + FIRST].position[1] -= .375f; CHECK(glUnmapBuffer(GL_ARRAY_BUFFER));
    CHECK(!compare(c, FIRST, COUNT - 1024));
    CHECK(glMapBuffer(GL_ARRAY_BUFFER, GL_READ_ONLY));
    CHECK(!compare(c, FIRST, COUNT - 1024)); CHECK(p->job_position_count == 0);
    CHECK(glUnmapBuffer(GL_ARRAY_BUFFER)); CHECK(!compare(c, FIRST, COUNT - 1024));
    glMatrixMode(GL_MODELVIEW); glTranslatef(.125f, -.25f, -.5f);
    CHECK(!compare(c, FIRST, COUNT - 1024));
    glMatrixMode(GL_PROJECTION); glLoadIdentity(); glFrustum(-1, 1, -1, 1, .75, 10);
    glViewport(2, 3, 57, 27); CHECK(!compare(c, FIRST, COUNT - 1024));
    glDeleteBuffers(1, &buffer); glBindBuffer(GL_ARRAY_BUFFER, buffer);
    glBufferData(GL_ARRAY_BUFFER, (GLsizeiptr)((size_t)LIMIT * sizeof(*vertices)), vertices, GL_STATIC_DRAW);
    CHECK(!compare(c, FIRST, COUNT - 1024));
    /* More than 64 pages takes the ordinary transform path, then a later
     * smaller draw must recover caching without stale classifications. */
    CHECK(!compare(c, FIRST, 66000)); CHECK(p->job_position_count == 0);
    CHECK(!compare(c, FIRST, COUNT)); CHECK(p->job_position_count > 0);
    /* More distinct source fields than cache slots exercises bounded eviction
     * and allocation reuse. */
    for (int offset = 0; offset < 80; offset++) {
        glVertexPointer(3, GL_FLOAT, 32 * sizeof(float), (void *)(offset * sizeof(float)));
        CHECK(!compare(c, FIRST, 1025));
    }
    glDisable(GL_LIGHTING); glDisableClientState(GL_VERTEX_ARRAY);
    CHECK(!compare(c, FIRST, 1025)); CHECK(p->job_position_count == 0);
    CHECK(glGetError() == GL_NO_ERROR);
    softgl_destroy(c); free(uv); free(vertices);
    return 0;
}
int main(void) {
    const int samples[] = {0, 2, 4}, workers[] = {1, 3, 8};
    for (int s = 0; s < 3; s++) for (int w = 0; w < 3; w++)
        CHECK(!sg_position_contract(samples[s], workers[w]));
    puts("Position cache: exact transform/attributes, canonical offsets, clipping, storage and eviction passed");
    return 0;
}
