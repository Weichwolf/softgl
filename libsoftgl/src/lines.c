#include "types.h"
#include <math.h>

/* Line + point clipping, viewport transform, dispatch to rasterizer. */

extern void sg_lerp_vert_pub(sg_vert *out, const sg_vert *a, const sg_vert *b, float t);
extern float sg_plane_dist_pub(const sg_vec4 *v, int plane);

/* Liang-Barsky clip-space line clip against 6 planes. Returns 1 if any
 * portion of [a,b] is visible; writes clipped endpoints into ca/cb. */
static int sg_clip_line(const sg_vert *a, const sg_vert *b, sg_vert *ca, sg_vert *cb) {
    float t0 = 0.f, t1 = 1.f;
    for (int p = 0; p < 6; p++) {
        float da = sg_plane_dist_pub(&a->clip, p);
        float db = sg_plane_dist_pub(&b->clip, p);
        int a_in = da >= 0.f;
        int b_in = db >= 0.f;
        if (!a_in && !b_in) return 0;
        if (a_in && b_in)   continue;
        float t = da / (da - db);
        if (a_in) { if (t < t1) t1 = t; }
        else      { if (t > t0) t0 = t; }
    }
    if (t0 > t1) return 0;
    sg_lerp_vert_pub(ca, a, b, t0);
    sg_lerp_vert_pub(cb, a, b, t1);
    return 1;
}

/* Raster a clipped line (v0/v1 post-viewport). */
void sg_raster_line(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1) {
    int width = (int)(c->line_width + 0.5f);
    if (width < 1) width = 1;
    extern void sg_raster_line_impl(softgl_ctx*, const sg_vert*,
                                  const sg_vert*, int);
    sg_raster_line_impl(c, v0, v1, width);
}

static void sg_viewport_xform(softgl_ctx *c, sg_vert *v) {
    float w = v->clip.w;
    if (w == 0.f) w = 1e-20f;
    float invw = 1.0f / w;
    v->ndc.x = v->clip.x * invw;
    v->ndc.y = v->clip.y * invw;
    v->ndc.z = v->clip.z * invw;
    v->ndc.w = invw;
    float vpx = (float)c->viewport[0];
    float vpy = (float)c->viewport[1];
    float vpw = (float)c->viewport[2];
    float vph = (float)c->viewport[3];
    v->ndc.x = vpx + (v->ndc.x * 0.5f + 0.5f) * vpw;
    v->ndc.y = vpy + (v->ndc.y * 0.5f + 0.5f) * vph;
    v->ndc.z =       (v->ndc.z * 0.5f + 0.5f);
}

/* Process one line (both endpoints in clip space). */
void sg_process_line(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1) {
    sg_vert ca, cb;
    if (!sg_clip_line(v0, v1, &ca, &cb)) return;
    sg_viewport_xform(c, &ca);
    sg_viewport_xform(c, &cb);
    sg_raster_line(c, &ca, &cb);
}

void sg_process_point(softgl_ctx *c, const sg_vert *v) {
    for (int p = 0; p < 6; p++) {
        if (sg_plane_dist_pub(&v->clip, p) < 0.f) return;
    }
    sg_vert pv = *v;
    sg_viewport_xform(c, &pv);
    extern void sg_raster_point_impl(softgl_ctx*, const sg_vert*);
    sg_raster_point_impl(c, &pv);
}
