#include "raster_vertex_pack.h"
#include <stdio.h>

#define CHECK(x) do { if (!(x)) { \
    fprintf(stderr, "%s:%d: %s\n", __FILE__, __LINE__, #x); return 1; \
} } while (0)

enum { COUNT = 1024, TRIANGLES = 32768 };
static uint32_t seed = 731;
static uint32_t random_bits(void) {
    seed ^= seed << 13; seed ^= seed >> 17; seed ^= seed << 5;
    return seed;
}

static void expected_vertex(sg_vert *out, const sg_vert *source, unsigned mask) {
    memset(out, 0, sizeof(*out));
    out->ndc = source->ndc; out->color = source->color; out->eye.z = source->eye.z;
    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        if (mask & (1u << u)) out->uv[u] = source->uv[u];
    }
}

int main(void) {
    sg_vert *source = sg_aligned_alloc(COUNT * 2 * sizeof(*source), 16);
    sg_vec4 *data = sg_aligned_alloc(COUNT * 2 * 7 * sizeof(*data), 16);
    CHECK(source && data);
    for (size_t i = 0; i < COUNT * 2 * sizeof(*source) / sizeof(uint32_t); i++) {
        uint32_t bits = random_bits();
        memcpy((uint8_t *)source + i * sizeof(bits), &bits, sizeof(bits));
    }
    sg_packed_raster_vertices p = {.data = data};
    for (unsigned mask = 0; mask < 16; mask++) {
        sg_packed_vertex_layout(&p, mask, COUNT);
        CHECK(p.stride >= 3 && p.stride <= 7);
        sg_packed_vertex_write(&p, 0, source, COUNT);
        sg_packed_vertex_write(&p, COUNT, source + COUNT, COUNT);
        sg_packed_vertex_cache cache;
        memset(&cache, 0, sizeof(cache));
        for (int j = 0; j < SG_PACKED_VERTEX_CACHE_SIZE; j++) cache.tags[j] = UINT32_MAX;
        for (unsigned i = 0; i < TRIANGLES; i++) {
            uint32_t keys[3];
            keys[0] = random_bits() & (COUNT - 1);
            keys[1] = random_bits() & (COUNT - 1);
            keys[2] = random_bits() & (COUNT - 1);
            if ((i & 7) == 0) {
                keys[1] = (keys[0] + 64) & (COUNT - 1);
                keys[2] = (keys[0] + 128) & (COUNT - 1);
            }
            if ((i & 7) == 1) keys[1] = keys[2] = keys[0];
            for (int lane = 0; lane < 3; lane++) {
                if (random_bits() & 1) keys[lane] |= SG_BIN_TRANSFORMED_VERTEX;
            }
            uint64_t pinned = 0;
            const sg_vert *actual[3];
            for (int lane = 0; lane < 3; lane++)
                actual[lane] = sg_packed_vertex_fetch(&p, &cache, keys[lane], &pinned, lane);
            /* Verify all references after all three lookups, catching eviction. */
            for (int lane = 0; lane < 3; lane++) {
                uint32_t key = keys[lane], index = key & ~SG_BIN_TRANSFORMED_VERTEX;
                if (!(key & SG_BIN_TRANSFORMED_VERTEX)) index += COUNT;
                sg_vert expected;
                expected_vertex(&expected, &source[index], mask);
                CHECK(!memcmp(actual[lane], &expected, sizeof(expected)));
            }
        }
    }
    sg_aligned_free(source); sg_aligned_free(data);
    puts("16 UV masks, 524288 exact cached triangles; collisions, shared vertices, both pools and arbitrary float bits passed");
    return 0;
}
