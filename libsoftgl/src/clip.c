#include "types.h"
#include <string.h>

/* =====================================================================
 * View-frustum clipping in clip space (before perspective divide).
 *
 * Plane tests (inside = d >= 0):
 *   left:   x + w
 *   right: -x + w
 *   bot:    y + w
 *   top:   -y + w
 *   near:   z + w
 *   far:   -z + w
 *
 * Sutherland-Hodgman on the triangle polygon; after all 6 planes, fan-
 * triangulate the resulting convex polygon. Interpolation runs on every
 * tracked attribute (clip, color, normal, eye, uv[0..N]).
 * ===================================================================== */

float sg_plane_dist_pub(const sg_vec4 *v, int plane);
float sg_plane_dist_pub(const sg_vec4 *v, int plane) {
    switch (plane) {
        case 0: return v->x + v->w;      /* left */
        case 1: return -v->x + v->w;     /* right */
        case 2: return v->y + v->w;      /* bottom */
        case 3: return -v->y + v->w;     /* top */
        case 4: return v->z + v->w;      /* near */
        case 5: return -v->z + v->w;     /* far */
    }
    return 0.f;
}

SG_INLINE float sg_plane_dist(const sg_vec4 *v, int plane) {
    switch (plane) {
        case 0: return v->x + v->w;      /* left */
        case 1: return -v->x + v->w;     /* right */
        case 2: return v->y + v->w;      /* bottom */
        case 3: return -v->y + v->w;     /* top */
        case 4: return v->z + v->w;      /* near */
        case 5: return -v->z + v->w;     /* far */
    }
    return 0.f;
}

static void sg_lerp_vec4(sg_vec4 *out, const sg_vec4 *a, const sg_vec4 *b, float t) {
    out->x = a->x + (b->x - a->x) * t;
    out->y = a->y + (b->y - a->y) * t;
    out->z = a->z + (b->z - a->z) * t;
    out->w = a->w + (b->w - a->w) * t;
}

/* Exported: used by line clipper (lines.c) as well. */
void sg_lerp_vert_pub(sg_vert *out, const sg_vert *a, const sg_vert *b, float t);
void sg_lerp_vert_pub(sg_vert *out, const sg_vert *a, const sg_vert *b, float t) {
    sg_lerp_vec4(&out->clip,       &a->clip,       &b->clip,       t);
    sg_lerp_vec4(&out->color,      &a->color,      &b->color,      t);
    sg_lerp_vec4(&out->color_back, &a->color_back, &b->color_back, t);
    sg_lerp_vec4(&out->normal,     &a->normal,     &b->normal,     t);
    sg_lerp_vec4(&out->eye,        &a->eye,        &b->eye,        t);
    for (int u = 0; u < SG_MAX_TEX_UNITS; u++)
        sg_lerp_vec4(&out->uv[u], &a->uv[u], &b->uv[u], t);
}

static void sg_lerp_vert(sg_vert *out, const sg_vert *a, const sg_vert *b, float t) {
    sg_lerp_vec4(&out->clip,       &a->clip,       &b->clip,       t);
    sg_lerp_vec4(&out->color,      &a->color,      &b->color,      t);
    sg_lerp_vec4(&out->color_back, &a->color_back, &b->color_back, t);
    sg_lerp_vec4(&out->normal,     &a->normal,     &b->normal,     t);
    sg_lerp_vec4(&out->eye,        &a->eye,        &b->eye,        t);
    for (int u = 0; u < SG_MAX_TEX_UNITS; u++)
        sg_lerp_vec4(&out->uv[u], &a->uv[u], &b->uv[u], t);
    /* ndc filled in by pipeline after clip */
}

/* Clip `in` polygon (in_count verts) against the plane, write output to `out`.
 * Returns new vertex count. */
static int sg_clip_plane(const sg_vert *in, int in_count, int plane, sg_vert *out) {
    if (in_count < 3) return 0;
    int out_count = 0;
    const sg_vert *s = &in[in_count - 1];
    float sd = sg_plane_dist(&s->clip, plane);
    for (int i = 0; i < in_count; i++) {
        const sg_vert *e = &in[i];
        float ed = sg_plane_dist(&e->clip, plane);
        int s_in = sd >= 0.f;
        int e_in = ed >= 0.f;
        if (s_in ^ e_in) {
            /* edge crosses plane: output intersection */
            float t = sd / (sd - ed);
            if (t < 0.f) t = 0.f; else if (t > 1.f) t = 1.f;
            sg_lerp_vert(&out[out_count], s, e, t);
            out_count++;
        }
        if (e_in) {
            /* output end point */
            out[out_count] = *e;
            out_count++;
        }
        s = e;
        sd = ed;
    }
    return out_count;
}

/* Clip a triangle against all 6 frustum planes. Returns number of output
 * triangles (each filling out_tris[3*i + 0..2]). */
int sg_clip_triangle(const sg_vert *tri, sg_vert *out_tris, int *out_count) {
    sg_vert buf_a[SG_MAX_CLIP_VERTS];
    sg_vert buf_b[SG_MAX_CLIP_VERTS];
    sg_vert *cur = buf_a;
    sg_vert *alt = buf_b;
    int n = 3;
    cur[0] = tri[0];
    cur[1] = tri[1];
    cur[2] = tri[2];

    for (int p = 0; p < 6; p++) {
        n = sg_clip_plane(cur, n, p, alt);
        if (n == 0) { *out_count = 0; return 0; }
        if (n > SG_MAX_CLIP_VERTS) n = SG_MAX_CLIP_VERTS;
        sg_vert *tmp = cur; cur = alt; alt = tmp;
    }

    /* Fan-triangulate the convex polygon around cur[0]. */
    int tris = 0;
    for (int i = 1; i + 1 < n; i++) {
        out_tris[tris * 3 + 0] = cur[0];
        out_tris[tris * 3 + 1] = cur[i];
        out_tris[tris * 3 + 2] = cur[i + 1];
        tris++;
    }
    *out_count = tris;
    return tris;
}

/* =====================================================================
 * User-clip-plane clipping in eye-space. Distances use v->eye.xyz and
 * treat eye.w as 1 (eye.w is actually the edge-flag slot).
 * Polygon (n verts) is clipped against the given enabled planes in-place
 * via ping-pong buffers. Returns final polygon size (0 if fully clipped).
 * ===================================================================== */

SG_INLINE double sg_user_plane_dist(const sg_vec4 *eye, const double eq[4]) {
    return (double)eye->x * eq[0]
         + (double)eye->y * eq[1]
         + (double)eye->z * eq[2]
         + 1.0            * eq[3];
}

static int sg_clip_user_plane(const sg_vert *in, int in_count, const double eq[4], sg_vert *out) {
    if (in_count < 3) return 0;
    int out_count = 0;
    const sg_vert *s = &in[in_count - 1];
    double sd = sg_user_plane_dist(&s->eye, eq);
    for (int i = 0; i < in_count; i++) {
        const sg_vert *e = &in[i];
        double ed = sg_user_plane_dist(&e->eye, eq);
        int s_in = sd >= 0.0;
        int e_in = ed >= 0.0;
        if (s_in ^ e_in) {
            double denom = sd - ed;
            float t = denom != 0.0 ? (float)(sd / denom) : 0.f;
            if (t < 0.f) t = 0.f; else if (t > 1.f) t = 1.f;
            sg_lerp_vert(&out[out_count], s, e, t);
            out_count++;
        }
        if (e_in) {
            out[out_count] = *e;
            out_count++;
        }
        s = e;
        sd = ed;
    }
    return out_count;
}

/* Clip a triangle against the ctx's enabled user clip planes (in eye-space).
 * Produces up to ~6 eye-space polygon vertices which the caller must feed
 * through projection + frustum clip. Returns 0 if nothing survives. */
int sg_clip_triangle_user_planes(softgl_ctx *c, const sg_vert *tri_in,
                                 sg_vert *out_tris, int *out_count) {
    /* Fast path: no user planes enabled. */
    int any_enabled = 0;
    for (int i = 0; i < 6; i++) if (c->clip_plane_enabled[i]) { any_enabled = 1; break; }
    if (!any_enabled) {
        out_tris[0] = tri_in[0];
        out_tris[1] = tri_in[1];
        out_tris[2] = tri_in[2];
        *out_count = 1;
        return 1;
    }
    sg_vert buf_a[SG_MAX_CLIP_VERTS];
    sg_vert buf_b[SG_MAX_CLIP_VERTS];
    sg_vert *cur = buf_a;
    sg_vert *alt = buf_b;
    int n = 3;
    cur[0] = tri_in[0]; cur[1] = tri_in[1]; cur[2] = tri_in[2];
    for (int p = 0; p < 6; p++) {
        if (!c->clip_plane_enabled[p]) continue;
        n = sg_clip_user_plane(cur, n, c->clip_plane_eq[p], alt);
        if (n == 0) { *out_count = 0; return 0; }
        if (n > SG_MAX_CLIP_VERTS) n = SG_MAX_CLIP_VERTS;
        sg_vert *tmp = cur; cur = alt; alt = tmp;
    }
    int tris = 0;
    for (int i = 1; i + 1 < n; i++) {
        out_tris[tris * 3 + 0] = cur[0];
        out_tris[tris * 3 + 1] = cur[i];
        out_tris[tris * 3 + 2] = cur[i + 1];
        tris++;
    }
    *out_count = tris;
    return tris;
}
