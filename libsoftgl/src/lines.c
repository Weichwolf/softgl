#include "types.h"
#include <math.h>
#include <string.h>

/* Phase FP-0: backend dispatch scaffolding (see pipeline.c). FIXED falls
 * back to the float rasterizers until FP-1..6 implement fp counterparts. */

/* =====================================================================
 * Line + point rasterization. Separate from triangle rasterizer.
 *
 * Line pipeline:
 *   clip-space segment -> Liang-Barsky clip against 6 frustum planes ->
 *   per-endpoint NDC/viewport transform -> DDA stepping with affine
 *   attribute interpolation (color, uv, depth, eye.z for fog).
 *
 * Wide lines: axis-aligned thickness via orthogonal offset. Integer width
 * only; GL_LINE_SMOOTH is not implemented (spec allows non-AA).
 *
 * Point pipeline:
 *   clip-space vertex -> cull if outside near/far -> NDC/viewport ->
 *   emit point_size x point_size square centered on pixel.
 * ===================================================================== */

extern void sg_write_fragment(softgl_ctx *c, int x, int y, float z,
                              float r, float g, float b, float a);
extern void sg_lerp_vert_pub(sg_vert *out, const sg_vert *a, const sg_vert *b, float t);
extern float sg_plane_dist_pub(const sg_vec4 *v, int plane);
extern void  sg_sample_tex2d(const sg_texture *t, GLenum min_filter, GLenum mag_filter,
                             GLenum wrap_s, GLenum wrap_t,
                             float u, float v, int mag, float out[4]);
extern void  sg_tex_env_combine(const sg_tex_env *env,
                                const float in[4], const float tex[4], float out[4]);

/* --- Clip-space line clipping using Liang-Barsky on homogeneous planes. --
 * Returns 1 if any portion of [a,b] is visible; writes clipped endpoints
 * (with all vert attributes interpolated) into ca/cb. */
static int sg_clip_line(const sg_vert *a, const sg_vert *b, sg_vert *ca, sg_vert *cb) {
    float t0 = 0.f, t1 = 1.f;
    for (int p = 0; p < 6; p++) {
        float da = sg_plane_dist_pub(&a->clip, p);
        float db = sg_plane_dist_pub(&b->clip, p);
        int a_in = da >= 0.f;
        int b_in = db >= 0.f;
        if (!a_in && !b_in) return 0;                   /* fully outside */
        if (a_in && b_in)   continue;                   /* fully inside this plane */
        float t = da / (da - db);
        if (a_in) { if (t < t1) t1 = t; }
        else      { if (t > t0) t0 = t; }
    }
    if (t0 > t1) return 0;
    sg_lerp_vert_pub(ca, a, b, t0);
    sg_lerp_vert_pub(cb, a, b, t1);
    return 1;
}

/* --- Fragment emission for a single line sample. No texturing (lines ship
 *     color-only per GL1.5 habitual use; textured lines would require
 *     per-fragment UV plumbing we skip by spec permission). --- */
static void sg_line_fragment(softgl_ctx *c, int x, int y,
                             float z, float col[4], float eye_z) {
    /* Fog (identical to rasterizer.c). */
    if (c->fog_enabled) {
        float ez = eye_z < 0.f ? -eye_z : eye_z;
        float f = 1.f;
        switch (c->fog_mode) {
            case GL_EXP:
                f = expf(-c->fog_density * ez);
                break;
            case GL_EXP2: {
                float e = c->fog_density * ez;
                f = expf(-(e * e));
                break;
            }
            case GL_LINEAR_FOG:
            default: {
                float range = c->fog_end - c->fog_start;
                if (range != 0.f)
                    f = (c->fog_end - ez) / range;
                break;
            }
        }
        if (f < 0.f) f = 0.f; else if (f > 1.f) f = 1.f;
        col[0] = f * col[0] + (1.f - f) * c->fog_color[0];
        col[1] = f * col[1] + (1.f - f) * c->fog_color[1];
        col[2] = f * col[2] + (1.f - f) * c->fog_color[2];
    }

    sg_write_fragment(c, x, y, z, col[0], col[1], col[2], col[3]);
}

/* --- Point rasterizer. Assumes the vertex has been through viewport
 * transform already (v->ndc.xy is pixel-center, v->ndc.z is [0..1] depth). */
static void sg_raster_point(softgl_ctx *c, const sg_vert *v) {
    float sz = c->point_size;
    if (sz < 1.f) sz = 1.f;
    int size = (int)(sz + 0.5f);
    if (size < 1) size = 1;

    int cx = (int)floorf(v->ndc.x);
    int cy = (int)floorf(v->ndc.y);
    int half = size / 2;
    int x0 = cx - half;
    int y0 = cy - half;
    int x1 = x0 + size;
    int y1 = y0 + size;

    float col[4] = { v->color.x, v->color.y, v->color.z, v->color.w };
    float ez = v->eye.z;
    float z  = v->ndc.z;
    if (c->polygon_offset_point && (c->polygon_offset_factor != 0.f ||
                                     c->polygon_offset_units  != 0.f)) {
        z += c->polygon_offset_factor * 0.f + c->polygon_offset_units * 1e-6f;
    }

    for (int y = y0; y < y1; y++)
        for (int x = x0; x < x1; x++) {
            float c4[4] = { col[0], col[1], col[2], col[3] };
            sg_line_fragment(c, x, y, z, c4, ez);
        }
}

/* --- Core line rasterizer. v0/v1 are post-viewport. --- */
static void sg_raster_line_1px(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1) {
    float x0f = v0->ndc.x, y0f = v0->ndc.y;
    float x1f = v1->ndc.x, y1f = v1->ndc.y;
    float dx = x1f - x0f;
    float dy = y1f - y0f;
    float adx = dx < 0.f ? -dx : dx;
    float ady = dy < 0.f ? -dy : dy;
    float steps_f = adx > ady ? adx : ady;
    int steps = (int)(steps_f + 0.5f);
    if (steps < 1) steps = 1;

    float inv_steps = 1.f / (float)steps;

    /* Polygon offset (line) — constant slope along the line. */
    float z_offset = 0.f;
    if (c->polygon_offset_line && (c->polygon_offset_factor != 0.f ||
                                    c->polygon_offset_units  != 0.f)) {
        float dz = v1->ndc.z - v0->ndc.z;
        float max_slope = 0.f;
        if (adx > 0.f) { float s = fabsf(dz / adx); if (s > max_slope) max_slope = s; }
        if (ady > 0.f) { float s = fabsf(dz / ady); if (s > max_slope) max_slope = s; }
        z_offset = c->polygon_offset_factor * max_slope
                 + c->polygon_offset_units  * 1e-6f;
    }

    for (int i = 0; i <= steps; i++) {
        float t = (float)i * inv_steps;
        float x = x0f + dx * t;
        float y = y0f + dy * t;
        float z = v0->ndc.z + (v1->ndc.z - v0->ndc.z) * t + z_offset;
        int ix = (int)floorf(x);
        int iy = (int)floorf(y);

        /* Line stipple: per-fragment bit test against the 16-bit pattern,
         * scaled by factor. The counter runs independently of the pipeline. */
        if (c->line_stipple_enable) {
            int factor = c->line_stipple_factor < 1 ? 1 : c->line_stipple_factor;
            int bit = (c->line_stipple_counter / factor) & 15;
            c->line_stipple_counter++;
            if (!(c->line_stipple_pattern & (1u << bit))) continue;
        }

        float col[4];
        col[0] = v0->color.x + (v1->color.x - v0->color.x) * t;
        col[1] = v0->color.y + (v1->color.y - v0->color.y) * t;
        col[2] = v0->color.z + (v1->color.z - v0->color.z) * t;
        col[3] = v0->color.w + (v1->color.w - v0->color.w) * t;

        float ez = v0->eye.z + (v1->eye.z - v0->eye.z) * t;
        sg_line_fragment(c, ix, iy, z, col, ez);
    }
}

/* Wide line: stamp a perpendicular row of width `w` pixels at each step. */
static void sg_raster_line_wide(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1, int width) {
    float x0f = v0->ndc.x, y0f = v0->ndc.y;
    float x1f = v1->ndc.x, y1f = v1->ndc.y;
    float dx = x1f - x0f;
    float dy = y1f - y0f;
    float adx = dx < 0.f ? -dx : dx;
    float ady = dy < 0.f ? -dy : dy;
    float steps_f = adx > ady ? adx : ady;
    int steps = (int)(steps_f + 0.5f);
    if (steps < 1) steps = 1;
    float inv_steps = 1.f / (float)steps;

    /* OpenGL wide-line rule (non-smooth): span is perpendicular to the
     * major axis. If |dx| >= |dy|, thickness goes in y; else in x. */
    int vertical_major = (ady > adx);
    int half = width / 2;

    for (int i = 0; i <= steps; i++) {
        float t = (float)i * inv_steps;
        float x = x0f + dx * t;
        float y = y0f + dy * t;
        float z = v0->ndc.z + (v1->ndc.z - v0->ndc.z) * t;
        float col[4];
        col[0] = v0->color.x + (v1->color.x - v0->color.x) * t;
        col[1] = v0->color.y + (v1->color.y - v0->color.y) * t;
        col[2] = v0->color.z + (v1->color.z - v0->color.z) * t;
        col[3] = v0->color.w + (v1->color.w - v0->color.w) * t;
        float ez = v0->eye.z + (v1->eye.z - v0->eye.z) * t;
        int ix = (int)floorf(x);
        int iy = (int)floorf(y);

        for (int k = -half; k < width - half; k++) {
            int px, py;
            if (vertical_major) { px = ix + k; py = iy; }
            else                { px = ix;     py = iy + k; }
            float c4[4] = { col[0], col[1], col[2], col[3] };
            sg_line_fragment(c, px, py, z, c4, ez);
        }
    }
}

/* --- Public: raster a clipped line (v0/v1 post-viewport). --- */
void sg_raster_line(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1) {
    int width = (int)(c->line_width + 0.5f);
    if (width < 1) width = 1;
    if (softgl_get_backend() == SOFTGL_BACKEND_FIXED) {
        /* TODO Phase FP-1: call sg_raster_line_fp(c, v0, v1, width); */
        if (width == 1) sg_raster_line_1px(c, v0, v1);
        else            sg_raster_line_wide(c, v0, v1, width);
    } else {
        if (width == 1) sg_raster_line_1px(c, v0, v1);
        else            sg_raster_line_wide(c, v0, v1, width);
    }
}

/* --- Viewport helpers. --- */
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

/* --- Entry: process one line (both endpoints in clip space). --- */
void sg_process_line(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1) {
    sg_vert ca, cb;
    if (!sg_clip_line(v0, v1, &ca, &cb)) return;
    sg_viewport_xform(c, &ca);
    sg_viewport_xform(c, &cb);
    sg_raster_line(c, &ca, &cb);
}

/* --- Entry: process one point. --- */
void sg_process_point(softgl_ctx *c, const sg_vert *v) {
    /* Simple clip: reject if any frustum plane rejects. */
    for (int p = 0; p < 6; p++) {
        if (sg_plane_dist_pub(&v->clip, p) < 0.f) return;
    }
    sg_vert pv = *v;
    sg_viewport_xform(c, &pv);
    if (softgl_get_backend() == SOFTGL_BACKEND_FIXED) {
        /* TODO Phase FP-1: call sg_raster_point_fp(c, &pv); */
        sg_raster_point(c, &pv);
    } else {
        sg_raster_point(c, &pv);
    }
}
