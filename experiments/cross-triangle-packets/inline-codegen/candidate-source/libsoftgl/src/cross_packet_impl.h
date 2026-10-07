#ifndef SOFTGL_CROSS_PACKET_IMPL_H
#define SOFTGL_CROSS_PACKET_IMPL_H

#include "frag_varying_packet.h"
#include <stdatomic.h>

typedef struct SG_ALIGN16 {
    sg_varying_packet input;
    int x[4], y[4];
    unsigned coverage[4];
    float depths[4][4];
    softgl_ctx *context;
    const sg_tex_tri_ctx *textures;
    int count, active, common_store;
} sg_cross_batch;

static _Thread_local sg_cross_batch sg_cross_storage;
static atomic_int sg_cross_disabled;

SG_INLINE void sg_cross_flush(void) {
    sg_cross_batch *p = &sg_cross_storage;
    if (!p->count) return;
    float colors[4][4];
    unsigned live = sg_shade_varying_packet(p->context, p->textures, &p->input,
        (1u << p->count) - 1u, colors);
    softgl_ctx *c = p->context;
    for (int l = 0; l < p->count; l++) {
        if (!(live & (1u << l))) continue;
        if (c->fb.samples == 0) {
            if (p->common_store)
                sg_store_off_post_depth(c, p->x[l], p->y[l], p->depths[l][0], colors[l]);
            else sg_write_fragment(c, p->x[l], p->y[l], p->depths[l][0],
                colors[l][0], colors[l][1], colors[l][2], colors[l][3]);
        } else if (p->common_store) {
            if (c->fb.samples == 2)
                sg_store_common_msaa2(c, p->x[l], p->y[l], p->coverage[l], p->depths[l], colors[l]);
            else sg_store_common_msaa4(c, p->x[l], p->y[l], p->coverage[l], p->depths[l], colors[l]);
        } else sg_write_multisample(c, p->x[l], p->y[l], p->coverage[l], p->depths[l], colors[l]);
    }
    p->count = 0;
}

/* Copy only shader inputs consumed by this immutable draw. Packed decode-cache
 * pointers never survive this call. Four contributions bound all storage. */
SG_INLINE void sg_cross_append(const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
                               int x, int y, int64_t e0, int64_t e1, float inv_area,
                               unsigned coverage, const float *depths) {
    sg_cross_batch *p = &sg_cross_storage;
    int l = p->count++;
    p->x[l] = x; p->y[l] = y; p->coverage[l] = coverage;
    p->input.edge0[l] = e0; p->input.edge1[l] = e1; p->input.inv_area[l] = inv_area;
    memcpy(p->depths[l], depths, (p->context->fb.samples ? p->context->fb.samples : 1) * sizeof(float));
    const sg_vert *v[3] = {v0, v1, v2};
    for (int j = 0; j < 3; j++) {
        p->input.inv_w[j][l] = v[j]->ndc.w;
        const float color[4] = {v[j]->color.x, v[j]->color.y, v[j]->color.z, v[j]->color.w};
        for (int k = 0; k < 4; k++) p->input.color[j][k][l] = color[k];
        for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
            const sg_tex_unit_tri *unit = &p->textures->unit[u];
            if (!(p->textures->sample_mask & (1u << u)) || unit->constant_color_valid) continue;
            p->input.uv[j][u][0][l] = v[j]->uv[u].x;
            p->input.uv[j][u][1][l] = v[j]->uv[u].y;
            if (unit->active_slot != SG_TEX_TARGET_2D || !unit->data0 || unit->tw <= 0 || unit->th <= 0)
                p->input.uv[j][u][2][l] = v[j]->uv[u].z;
        }
    }
    if (p->count == 4) sg_cross_flush();
}

int sg_cross_packet_begin(softgl_ctx *c, const sg_tex_tri_ctx *t) {
    /* API barriers and the job/bin boundary drain every pending contribution. */
    sg_cross_flush();
    sg_cross_batch *p = &sg_cross_storage;
    p->context = c; p->textures = t;
    p->active = !atomic_load_explicit(&sg_cross_disabled, memory_order_relaxed) &&
        !c->depth_mask && !c->stencil_test && !c->color_logic_op_enabled &&
        !c->current_query[SG_QUERY_TARGET_SAMPLES_PASSED] &&
        !c->current_query[SG_QUERY_TARGET_ANY_SAMPLES_PASSED] &&
        (c->fb.samples == 0 || c->fb.samples == 2 || c->fb.samples == 4) &&
        t->combine_kind && sg_packet_supported(c, t);
    p->common_store = p->active && sg_can_store_common(c, c->fb.samples);
    return p->active;
}

void sg_cross_packet_end(void) {
    sg_cross_flush();
    sg_cross_storage.active = 0;
    sg_cross_storage.context = NULL;
    sg_cross_storage.textures = NULL;
}
int sg_cross_packet_pending(void) { return sg_cross_storage.count; }
void sg_cross_packet_test_enable(int enabled) {
    atomic_store_explicit(&sg_cross_disabled, !enabled, memory_order_relaxed);
}
#endif
