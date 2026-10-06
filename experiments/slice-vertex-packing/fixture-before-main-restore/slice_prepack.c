/* Test-only translation unit: the actual candidate worker source, with an
 * allocator failure injector. Production objects contain no test hooks. */
#include "raster_hz.h"
#include "workers.h"
#include "raster_types.h"
#include "raster_vertex_pack.h"
#include <stdlib.h>
#include <string.h>
static int reject_allocation, attempted_allocations;
static void *test_aligned_alloc(size_t bytes, size_t alignment) {
    attempted_allocations++;
    return reject_allocation ? NULL : sg_aligned_alloc(bytes, alignment);
}
#define sg_aligned_alloc test_aligned_alloc
#include "../libsoftgl/src/workers.c"
#undef sg_aligned_alloc
#define main existing_queue_main
#include "ordered_draw_queue.c"
#undef main

static size_t owned_bytes(const sg_worker_pool *p) {
    size_t total = p->prepacked.capacity;
    if (p->stream_queue) for (int i = 0; i < SG_QUEUE_SLOTS; i++)
        total += sg_queue_bytes(p->stream_queue->slots[i].draw);
    return total;
}
static int fake_queue(sg_worker_pool *p) {
    p->stream_queue = calloc(1, sizeof(*p->stream_queue)); CHECK(p->stream_queue);
    atomic_init(&p->stream_queue->change, 0);
    atomic_init(&p->stream_queue->vertex_done, 0);
    for (int i = 0; i < SG_QUEUE_SLOTS; i++) {
        p->stream_queue->slots[i].draw = sg_aligned_alloc(sizeof(sg_async_raster), 64);
        CHECK(p->stream_queue->slots[i].draw);
        memset(p->stream_queue->slots[i].draw, 0, sizeof(sg_async_raster));
    }
    return 0;
}
static int slot_buffer(sg_worker_pool *p, int slot, size_t bytes, int pending) {
    sg_queue_slot *s = &p->stream_queue->slots[slot];
    s->draw->packed.data = sg_aligned_alloc(bytes, 64); CHECK(s->draw->packed.data);
    s->draw->packed.capacity = bytes; memset(s->draw->packed.data, 0x41 + slot, bytes);
    s->pending = pending;
    return 0;
}
static int exact_payload(const sg_packed_raster_vertices *packed,
                          int first, const sg_vert *vertices, int count) {
    for (int i = 0; i < count; i++) {
        const sg_vec4 *actual = packed->data + (size_t)(first + i) * packed->stride;
        CHECK(!memcmp(actual, &vertices[i].ndc, sizeof(sg_vec4)));
        CHECK(!memcmp(actual + 1, &vertices[i].color, sizeof(sg_vec4)));
        sg_vec4 eye = {vertices[i].eye.z, 0.f, 0.f, 0.f};
        CHECK(!memcmp(actual + 2, &eye, sizeof(eye)));
        for (int u = 0; u < packed->unit_count; u++)
            CHECK(!memcmp(actual + 3 + u, &vertices[i].uv[packed->units[u]], sizeof(sg_vec4)));
    }
    return 0;
}
static int private_contract(int samples) {
    enum { FIRST_VERTEX = 17, VERTICES = 1101 };
    softgl_ctx *c = softgl_create_multisample(65, 35, samples); CHECK(c);
    softgl_make_current(c); sg_workers_shutdown(c);
    GLuint textures[4]; glGenTextures(4, textures);
    const uint8_t texels[8] = {90,130,190,255,240,160,50,180};
    for (int u = 0; u < 4; u++) {
        glActiveTexture(GL_TEXTURE0 + u); glBindTexture(GL_TEXTURE_2D, textures[u]);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 2, 1, 0, GL_RGBA, GL_UNSIGNED_BYTE, texels);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
        glEnable(GL_TEXTURE_2D);
    }
    dot3_chain(1);
    sg_tex_tri_ctx context; sg_tex_tri_prepare(c, &context); CHECK(context.combine_kind);
    sg_worker_pool p = {0}; pthread_mutex_init(&p.mtx, NULL); pthread_cond_init(&p.wake, NULL);
    p.transformed_cap = 2048;
    /* The early allocator is fallible and must leave a complete late fallback. */
    reject_allocation = 1; attempted_allocations = 0;
    sg_prepack_prepare(c, &p, VERTICES, 1);
    CHECK(attempted_allocations == 1 && !p.prepack_active && !p.prepacked.data);
    reject_allocation = 0;
    /* A completely occupied budget cannot allocate or alter pending payloads. */
    CHECK(!fake_queue(&p));
    for (int i = 0; i < 4; i++) CHECK(!slot_buffer(&p, i, SG_STREAM_BYTES / 4, 1));
    attempted_allocations = 0; sg_prepack_prepare(c, &p, VERTICES, 1);
    CHECK(!p.prepack_active && !p.prepacked.data && !attempted_allocations);
    CHECK(owned_bytes(&p) == SG_STREAM_BYTES);
    for (int i = 0; i < 4; i++) {
        const unsigned char *bytes = (const unsigned char *)p.stream_queue->slots[i].draw->packed.data;
        for (size_t j = 0; j < SG_STREAM_BYTES / 4; j++) CHECK(bytes[j] == 0x41 + i);
    }
    sg_queue_destroy(&p);
    /* Only idle slots may be reclaimed to make room. */
    CHECK(!fake_queue(&p)); CHECK(!slot_buffer(&p, 0, SG_STREAM_BYTES / 2, 1));
    CHECK(!slot_buffer(&p, 1, SG_STREAM_BYTES / 2, 0));
    sg_vec4 *pending = p.stream_queue->slots[0].draw->packed.data;
    sg_prepack_prepare(c, &p, VERTICES, 1); CHECK(p.prepack_active);
    CHECK(p.stream_queue->slots[0].draw->packed.data == pending);
    CHECK(!p.stream_queue->slots[1].draw->packed.data && owned_bytes(&p) <= SG_STREAM_BYTES);
    sg_prepack_clear(&p); sg_queue_destroy(&p);
    /* Reuse transfers an idle buffer without allocation or aliasing. */
    sg_prepack_prepare(c, &p, VERTICES, 1); CHECK(p.prepack_active);
    size_t capacity = p.prepacked.capacity; sg_prepack_clear(&p);
    CHECK(!fake_queue(&p)); CHECK(!slot_buffer(&p, 2, capacity, 0));
    sg_vec4 *idle = p.stream_queue->slots[2].draw->packed.data;
    attempted_allocations = 0; sg_prepack_prepare(c, &p, VERTICES, 1);
    CHECK(p.prepacked.data == idle && !p.stream_queue->slots[2].draw->packed.data);
    CHECK(!attempted_allocations && owned_bytes(&p) <= SG_STREAM_BYTES);
    sg_prepack_clear(&p); sg_queue_destroy(&p);
    /* All original ownership partitions, partial tails and nonzero origins
     * produce the same full fields and exact packed payload. */
    float positions[FIRST_VERTEX + VERTICES][3];
    for (int i = 0; i < FIRST_VERTEX + VERTICES; i++) {
        positions[i][0] = (i % 31 - 15) / 16.f;
        positions[i][1] = (i % 17 - 8) / 9.f;
        positions[i][2] = (i % 13 - 6) / 7.f;
    }
    glVertexPointer(3, GL_FLOAT, 0, positions); glEnableClientState(GL_VERTEX_ARRAY);
    sg_prepare_vertex_inputs(c, &p.vertex_inputs);
    p.transformed = sg_aligned_alloc(2048 * sizeof(sg_vert), 64); CHECK(p.transformed);
    p.inside_frustum = calloc(2048, 1); CHECK(p.inside_frustum);
    sg_vert *expected = sg_aligned_alloc(VERTICES * sizeof(sg_vert), 64); CHECK(expected);
    for (int i = 0; i < VERTICES; i++)
        sg_process_vertex_prepared(c, FIRST_VERTEX + i, &expected[i], &p.vertex_inputs);
    sg_prepack_prepare(c, &p, VERTICES, 1); CHECK(p.prepack_active);
    for (int lane = 0; lane < 4; lane++) {
        int first = FIRST_VERTEX + VERTICES * lane / 4;
        int end = FIRST_VERTEX + VERTICES * (lane + 1) / 4;
        sg_transform_slice(c, &p, first, end, FIRST_VERTEX);
    }
    CHECK(!exact_payload(&p.prepacked, 0, expected, VERTICES));
    for (int i = 0; i < VERTICES; i++) {
        CHECK(!memcmp(&p.transformed[i].clip, &expected[i].clip, sizeof(sg_vec4)));
        CHECK(!memcmp(&p.transformed[i].ndc, &expected[i].ndc, sizeof(sg_vec4)));
    }
    /* Actual submission must adopt the prepacked buffer, keep disjoint idle
     * ownership, and append clipping output using the late path. */
    p.prepack_ready = 1; p.prepared_transformed = VERTICES;
    p.vpool_count = 3; p.vpool_cap = 3;
    p.vpool = sg_aligned_alloc(3 * sizeof(sg_vert), 64); CHECK(p.vpool);
    memcpy(p.vpool, expected, 3 * sizeof(sg_vert));
    sg_vec4 *produced = p.prepacked.data;
    memset(p.transformed, 0, VERTICES * sizeof(sg_vert));
    CHECK(!fake_queue(&p)); CHECK(!slot_buffer(&p, 0, 16384, 0));
    sg_vec4 *retained = p.stream_queue->slots[0].draw->packed.data;
    CHECK(sg_queue_submit(c, &p, NULL));
    sg_async_raster *draw = p.stream_queue->slots[0].draw;
    CHECK(draw->packed.data == produced && p.prepacked.data == retained);
    CHECK(!p.prepack_ready && !p.prepack_active && owned_bytes(&p) <= SG_STREAM_BYTES);
    CHECK(!exact_payload(&draw->packed, 0, expected, VERTICES));
    CHECK(!exact_payload(&draw->packed, VERTICES, expected, 3));
    p.async_pending = 0; sg_queue_destroy(&p);
    /* No visible triangles frees the unsubmitted packed output. */
    c->workers = &p; sg_workers_submit_stream(c);
    CHECK(!p.prepacked.data && !p.prepack_ready && !p.prepack_active); c->workers = NULL;
    sg_aligned_free(p.transformed); free(p.inside_frustum); sg_aligned_free(p.vpool);
    sg_aligned_free(expected); pthread_cond_destroy(&p.wake); pthread_mutex_destroy(&p.mtx);
    softgl_destroy(c);
    return 0;
}
int main(void) {
    for (int samples = 0; samples <= 4; samples += 2) CHECK(!private_contract(samples));
    CHECK(!existing_queue_main());
    puts("slice prepack: actual allocation failure, pending/idle budget ownership, transform tails, adoption, clipped append and zero-triangle cleanup passed in 0/2/4; real queue/eager contracts passed with 1/3/8 workers");
    return 0;
}
