/* Test-only embedding of the actual queue implementation. */
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
#pragma push_macro("main")
#undef main
#define main existing_queue_main
#include "ordered_draw_queue.c"
#undef main
#pragma pop_macro("main")

static int capacity_properties(void) {
    for (size_t need = 1; need <= SG_STREAM_BYTES; need++) {
        size_t capacity = sg_ordered_vertex_capacity(need);
        CHECK(capacity >= need && capacity - need < 65536);
        CHECK(capacity % 65536 == 0 && capacity <= SG_STREAM_BYTES);
        if (need >= 1024 * 3 * sizeof(sg_vec4)) {
            size_t previous = 16384;
            while (previous < need) previous *= 2;
            CHECK(capacity <= previous);
        }
    }
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
static int queue_case(int samples, int kind, int count) {
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
    dot3_chain(kind);
    sg_worker_pool p = {0}; pthread_mutex_init(&p.mtx, NULL); pthread_cond_init(&p.wake, NULL);
    p.transformed_cap = count;
    CHECK(p.transformed_cap + 3 <= SG_STREAM_VERTICES);
    p.transformed = sg_aligned_alloc((size_t)count * sizeof(sg_vert), 64); CHECK(p.transformed);
    p.vpool_cap = 3; p.vpool = sg_aligned_alloc(3 * sizeof(sg_vert), 64); CHECK(p.vpool);
    for (int i = 0; i < count; i++) {
        memset(p.transformed + i, 0, sizeof(sg_vert));
        p.transformed[i].ndc = (sg_vec4){i / 1024.f, .25f, -.5f, 1.f};
        p.transformed[i].color = (sg_vec4){.2f, .4f, .6f, .8f};
        p.transformed[i].eye.z = -.75f;
        for (int u = 0; u < 4; u++) p.transformed[i].uv[u] = (sg_vec4){i / 2048.f, .5f, u / 8.f, 1.f};
    }
    memcpy(p.vpool, p.transformed, 3 * sizeof(sg_vert));
    /* Construct empty bins: this contract checks actual reservation/payload
     * ownership; the included threaded oracle separately checks rendering. */
    p.stream_queue = calloc(1, sizeof(*p.stream_queue)); CHECK(p.stream_queue);
    atomic_init(&p.stream_queue->change, 0); atomic_init(&p.stream_queue->vertex_done, 0);
    for (int i = 0; i < SG_QUEUE_SLOTS; i++) {
        p.stream_queue->slots[i].draw = sg_aligned_alloc(sizeof(sg_async_raster), 64);
        CHECK(p.stream_queue->slots[i].draw);
        memset(p.stream_queue->slots[i].draw, 0, sizeof(sg_async_raster));
    }
    p.async_pending = 3; p.prepared_transformed = count; p.vpool_count = 3;
    reject_allocation = 1; attempted_allocations = 0;
    CHECK(!sg_queue_submit(c, &p, NULL));
    CHECK(attempted_allocations == 1 && p.stream_queue->count == 0);
    CHECK(p.prepared_transformed == count && p.vpool_count == 3);
    CHECK(!p.stream_queue->slots[0].draw->packed.data);
    reject_allocation = 0;
    for (int pass = 0; pass < 8; pass++) {
        p.prepared_transformed = count; p.vpool_count = 3;
        attempted_allocations = 0;
        CHECK(sg_queue_submit(c, &p, NULL));
        struct sg_stream_queue *q = p.stream_queue;
        sg_async_raster *draw = q->slots[(q->head + q->count - 1) % SG_QUEUE_SLOTS].draw;
        CHECK(draw->packed.data && draw->packed.transformed_count == count);
        size_t need = (size_t)(count + 3) * draw->packed.stride * sizeof(sg_vec4);
        CHECK(draw->packed.capacity >= need && draw->packed.capacity - need < 65536);
        CHECK(!exact_payload(&draw->packed, 0, p.transformed, count));
        CHECK(!exact_payload(&draw->packed, count, p.vpool, 3));
        size_t total = 0;
        for (int i = 0; i < SG_QUEUE_SLOTS; i++) total += sg_queue_bytes(q->slots[i].draw);
        CHECK(total <= SG_STREAM_BYTES);
        CHECK(p.transformed && p.vpool && !p.prepared_transformed && !p.vpool_count);
        /* Allocations may recur when aggregate-budget reclamation intervenes.
         * Small cases fit all slots and must reuse after the first cycle. */
        if (pass >= 4 && draw->packed.capacity <= SG_STREAM_BYTES / SG_QUEUE_SLOTS)
            CHECK(attempted_allocations == 0);
    }
    p.async_pending = 0; sg_queue_destroy(&p);
    sg_aligned_free(p.transformed); sg_aligned_free(p.vpool);
    pthread_cond_destroy(&p.wake); pthread_mutex_destroy(&p.mtx); softgl_destroy(c);
    return 0;
}
int main(void) {
    CHECK(!capacity_properties());
    const int counts[] = {1024,1025,2049,3073,4097,8193,12289};
    for (int samples = 0; samples <= 4; samples += 2)
        for (int kind = 1; kind <= 3; kind++)
            for (size_t i = 0; i < sizeof(counts)/sizeof(counts[0]); i++)
                CHECK(!queue_case(samples, kind, counts[i]));
    CHECK(!existing_queue_main());
    puts("ordered capacity: 2097152 bounded capacity cases; 63 actual queue allocation-failure, clipped-payload, recycle and shared-budget cases; threaded queue/eager equivalence in 0/2/4 with 1/3/8 workers passed");
    return 0;
}
