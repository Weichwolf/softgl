#ifndef SOFTGL_RASTER_VERTEX_PACK_H
#define SOFTGL_RASTER_VERTEX_PACK_H

#include "workers.h"

#define SG_PACKED_VERTEX_CACHE_SIZE 64
typedef struct {
    uint32_t tags[SG_PACKED_VERTEX_CACHE_SIZE];
    sg_vert vertices[SG_PACKED_VERTEX_CACHE_SIZE];
    sg_vert spill[3];
} sg_packed_vertex_cache;

SG_INLINE void sg_packed_vertex_layout(sg_packed_raster_vertices *p,
                                        unsigned mask, int transformed_count) {
    p->unit_count = 0;
    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        if (mask & (1u << u)) p->units[p->unit_count++] = (uint8_t)u;
    }
    p->stride = 3 + p->unit_count;
    p->transformed_count = transformed_count;
}

SG_INLINE void sg_packed_vertex_write(const sg_packed_raster_vertices *p,
                                       int first, const sg_vert *source, int count) {
    sg_vec4 *dst = p->data + (size_t)first * p->stride;
    for (int i = 0; i < count; i++, dst += p->stride) {
        dst[0] = source[i].ndc;
        dst[1] = source[i].color;
        dst[2] = (sg_vec4){source[i].eye.z, 0.f, 0.f, 0.f};
        for (int j = 0; j < p->unit_count; j++) dst[3 + j] = source[i].uv[p->units[j]];
    }
}

SG_INLINE void sg_packed_vertex_read(const sg_packed_raster_vertices *p,
                                      uint32_t key, sg_vert *out) {
    uint32_t index = key & ~SG_BIN_TRANSFORMED_VERTEX;
    if (!(key & SG_BIN_TRANSFORMED_VERTEX)) index += (uint32_t)p->transformed_count;
    const sg_vec4 *src = p->data + (size_t)index * p->stride;
    out->ndc = src[0];
    out->color = src[1];
    out->eye.z = src[2].x;
    for (int j = 0; j < p->unit_count; j++) out->uv[p->units[j]] = src[3 + j];
}

/* Pin the cache slots referenced by earlier vertices of this triangle.
 * A conflicting miss uses its own spill vertex instead of invalidating v0/v1. */
SG_INLINE const sg_vert *sg_packed_vertex_fetch(const sg_packed_raster_vertices *p,
                                                sg_packed_vertex_cache *cache,
                                                uint32_t key, uint64_t *pinned,
                                                int lane) {
    unsigned slot = key & (SG_PACKED_VERTEX_CACHE_SIZE - 1);
    uint64_t bit = UINT64_C(1) << slot;
    sg_vert *out = &cache->vertices[slot];
    if (cache->tags[slot] != key) {
        if (*pinned & bit) {
            out = &cache->spill[lane];
            sg_packed_vertex_read(p, key, out);
            return out;
        }
        sg_packed_vertex_read(p, key, out);
        cache->tags[slot] = key;
    }
    *pinned |= bit;
    return out;
}

#endif
