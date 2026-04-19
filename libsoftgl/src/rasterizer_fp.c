#include "types.h"
#include "fp_types.h"

/* =====================================================================
 * Phase FP-1: fixed-point rasterization entry points.
 *
 * This file hosts the FP-backend dispatch targets for triangles, lines,
 * and points. Inputs are post-viewport sg_vert (float). Each entry point
 *   (1) converts the relevant geometric channels (x, y, z, 1/w) to
 *       fixed-point and stores them in sg_fp_vert,
 *   (2) converts them straight back to sg_vert,
 *   (3) dispatches to the existing float rasterizer.
 *
 * The float -> fp -> float round-trip introduces at most a 1-LSB
 * sub-pixel error in x/y (1/256 pixel) and a 1-LSB error in depth
 * (~4.7e-10) and inv_w (1/65536). All other vertex fields (color,
 * normal, uv, eye_z) are copied verbatim and do not suffer precision
 * loss.
 *
 * FP-2 will replace the body of each entry point with a real fixed-point
 * rasterizer that consumes sg_fp_vert directly.
 * ===================================================================== */

extern void sg_raster_triangle(softgl_ctx *c,
                               const sg_vert *v0,
                               const sg_vert *v1,
                               const sg_vert *v2);
extern void sg_raster_line_1px (softgl_ctx *c,
                                const sg_vert *v0,
                                const sg_vert *v1);
extern void sg_raster_line_wide(softgl_ctx *c,
                                const sg_vert *v0,
                                const sg_vert *v1,
                                int width);
extern void sg_raster_point    (softgl_ctx *c, const sg_vert *v);

/* --- Conversion: post-viewport sg_vert -> sg_fp_vert. ---
 * Only the geometric channels (x, y, z, inv_w) pass through the fixed
 * quantization; the rest is copied verbatim. */
static sg_fp_vert sg_fp_from_vert(const sg_vert *v) {
    sg_fp_vert out;
    out.x     = sg_fp_screen_from_float(v->ndc.x);
    out.y     = sg_fp_screen_from_float(v->ndc.y);
    out.z     = sg_fp_depth_from_float (v->ndc.z);
    out.inv_w = sg_fp_invw_from_float  (v->ndc.w);

    out.color[0] = v->color.x;
    out.color[1] = v->color.y;
    out.color[2] = v->color.z;
    out.color[3] = v->color.w;

    out.normal[0] = v->normal.x;
    out.normal[1] = v->normal.y;
    out.normal[2] = v->normal.z;

    out.eye_z = v->eye.z;

    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        out.uv[u][0] = v->uv[u].x;
        out.uv[u][1] = v->uv[u].y;
        out.uv[u][2] = v->uv[u].z;
        out.uv[u][3] = v->uv[u].w;
    }
    return out;
}

/* --- Conversion: sg_fp_vert + original sg_vert template -> sg_vert. ---
 * Copies the original vert so non-fixed fields (clip, color_back, eye.x/y/w)
 * are preserved, then overwrites ndc.xyz w + the channels the FP vertex
 * owns. eye.w is preserved (used as the edge-flag by pipeline.c when
 * polygon_mode=GL_LINE is involved upstream). */
static sg_vert sg_vert_from_fp(const sg_fp_vert *fp, const sg_vert *src) {
    sg_vert out = *src;
    out.ndc.x = sg_fp_screen_to_float(fp->x);
    out.ndc.y = sg_fp_screen_to_float(fp->y);
    out.ndc.z = sg_fp_depth_to_float (fp->z);
    out.ndc.w = (float)fp->inv_w * (1.0f / 65536.0f);

    out.color.x = fp->color[0];
    out.color.y = fp->color[1];
    out.color.z = fp->color[2];
    out.color.w = fp->color[3];

    out.normal.x = fp->normal[0];
    out.normal.y = fp->normal[1];
    out.normal.z = fp->normal[2];

    out.eye.z = fp->eye_z;

    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        out.uv[u].x = fp->uv[u][0];
        out.uv[u].y = fp->uv[u][1];
        out.uv[u].z = fp->uv[u][2];
        out.uv[u].w = fp->uv[u][3];
    }
    return out;
}

/* ---------------------------------------------------------------- */

void sg_raster_triangle_fp(softgl_ctx *c,
                           const sg_vert *v0,
                           const sg_vert *v1,
                           const sg_vert *v2) {
    sg_fp_vert fp0 = sg_fp_from_vert(v0);
    sg_fp_vert fp1 = sg_fp_from_vert(v1);
    sg_fp_vert fp2 = sg_fp_from_vert(v2);

    sg_vert f0 = sg_vert_from_fp(&fp0, v0);
    sg_vert f1 = sg_vert_from_fp(&fp1, v1);
    sg_vert f2 = sg_vert_from_fp(&fp2, v2);

    sg_raster_triangle(c, &f0, &f1, &f2);
}

void sg_raster_line_fp(softgl_ctx *c,
                       const sg_vert *v0,
                       const sg_vert *v1,
                       int width) {
    sg_fp_vert fp0 = sg_fp_from_vert(v0);
    sg_fp_vert fp1 = sg_fp_from_vert(v1);

    sg_vert f0 = sg_vert_from_fp(&fp0, v0);
    sg_vert f1 = sg_vert_from_fp(&fp1, v1);

    if (width <= 1) sg_raster_line_1px (c, &f0, &f1);
    else            sg_raster_line_wide(c, &f0, &f1, width);
}

void sg_raster_point_fp(softgl_ctx *c, const sg_vert *v0) {
    sg_fp_vert fp0 = sg_fp_from_vert(v0);
    sg_vert    f0  = sg_vert_from_fp(&fp0, v0);
    sg_raster_point(c, &f0);
}
