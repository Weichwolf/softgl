#include "types.h"
#include "dlist.h"
#include <math.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#if !defined(SG_DISABLE_SIMD) && defined(__SSE4_1__)
  #include <smmintrin.h>
  #define SG_PIPELINE_SIMD 1
#else
  #define SG_PIPELINE_SIMD 0
#endif

/* Phase FP-0: backend dispatch scaffolding.
 *
 * Until Phase FP-1..6 implement the fixed-point rasterizer, the FIXED
 * branch falls back to the float path so the test harness sees identical
 * output on both backends. The explicit switch here documents the hook
 * sites (triangle fill, line, point) that later gain sg_raster_*_fp
 * counterparts. */

/* ==================================================================
 * Pipeline: vertex fetch → MV → projection → clip → viewport → raster.
 *
 * For the scalar-first pass we transform vertices one at a time, but the
 * sg_vert struct is 16-byte aligned AoS so a SIMD pass can load whole
 * vec4 fields directly (position, normal, color, uv[0]) with one 16-byte
 * load per attribute. Matrix × vec4 is the obvious future SIMD target.
 * ================================================================== */

/* Forward: raster a triangle in screen space after clipping. */
void sg_raster_triangle(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1, const sg_vert *v2);

/* Forward: clip one triangle against the 6 frustum planes. Produces up to
 * ~6 triangles (hexagon) in out_tris; returns the triangle count.  */
int sg_clip_triangle(const sg_vert *tri_in, sg_vert *out_tris, int *out_count);

/* Forward: clip against enabled user clip planes in eye-space. Produces up to
 * ~6 triangles that still need frustum clipping + projection. */
int sg_clip_triangle_user_planes(softgl_ctx *c, const sg_vert *tri_in,
                                 sg_vert *out_tris, int *out_count);

/* ---- Attribute fetch ---- */

static const uint8_t *sg_attrib_base(softgl_ctx *c, const sg_attrib_ptr *a) {
    if (a->buffer) {
        sg_buffer *b = sg_buffer_get(c, a->buffer);
        if (!b || !b->data) return NULL;
        return (const uint8_t*)b->data + (uintptr_t)a->ptr;
    }
    return a->ptr;
}

/* Copy N components of given type/stride into dst, padding the rest with `def`. */
static void sg_fetch_attrib(const uint8_t *base, int index, int stride, int n, GLenum type,
                            float *dst, int dst_len, float def) {
    if (!base) {
        for (int i = 0; i < dst_len; i++) dst[i] = def;
        return;
    }
    const uint8_t *p = base + (size_t)index * (size_t)stride;
    int got = n < dst_len ? n : dst_len;
    for (int i = 0; i < got; i++) {
        float v = 0.f;
        switch (type) {
            case GL_FLOAT:         v = ((const float*)p)[i]; break;
            case GL_UNSIGNED_BYTE: v = ((const uint8_t*)p)[i] * (1.0f / 255.0f); break;
            case GL_BYTE:          v = ((const int8_t*)p)[i]  * (1.0f / 127.0f); break;
            case GL_UNSIGNED_SHORT: v = ((const uint16_t*)p)[i] * (1.0f / 65535.0f); break;
            case GL_SHORT:         v = ((const int16_t*)p)[i]  * (1.0f / 32767.0f); break;
            case GL_INT:           v = (float)((const int32_t*)p)[i]; break;
            case GL_UNSIGNED_INT:  v = (float)((const uint32_t*)p)[i]; break;
            default: break;
        }
        dst[i] = v;
    }
    for (int i = got; i < dst_len; i++) dst[i] = def;
}

/* ---- Lighting ----
 *
 * Applies one side (front or back) of lighting with the given material and
 * normal vector. Caller flips normal for back face. Color-material tracking
 * overrides selected material channel with vcolor when enabled.
 */
static void sg_apply_lighting_side(softgl_ctx *c, const sg_vec4 *eye_pos, const sg_vec4 *eye_n,
                                   const sg_material *mat_base, int face_is_back,
                                   const float *vcolor, float out[4]) {
    /* Work with a mutable copy so color-material can override fields. */
    sg_material mat = *mat_base;
    if (c->color_material_enabled) {
        int face_match =
            (c->color_material_face == GL_FRONT_AND_BACK) ||
            (!face_is_back && c->color_material_face == GL_FRONT) ||
            ( face_is_back && c->color_material_face == GL_BACK);
        if (face_match) {
            switch (c->color_material_mode) {
                case GL_AMBIENT:
                    mat.ambient[0]=vcolor[0]; mat.ambient[1]=vcolor[1];
                    mat.ambient[2]=vcolor[2]; mat.ambient[3]=vcolor[3]; break;
                case GL_DIFFUSE:
                    mat.diffuse[0]=vcolor[0]; mat.diffuse[1]=vcolor[1];
                    mat.diffuse[2]=vcolor[2]; mat.diffuse[3]=vcolor[3]; break;
                case GL_SPECULAR:
                    mat.specular[0]=vcolor[0]; mat.specular[1]=vcolor[1];
                    mat.specular[2]=vcolor[2]; mat.specular[3]=vcolor[3]; break;
                case GL_EMISSION:
                    mat.emission[0]=vcolor[0]; mat.emission[1]=vcolor[1];
                    mat.emission[2]=vcolor[2]; mat.emission[3]=vcolor[3]; break;
                case GL_AMBIENT_AND_DIFFUSE:
                default:
                    mat.ambient[0]=vcolor[0]; mat.ambient[1]=vcolor[1];
                    mat.ambient[2]=vcolor[2]; mat.ambient[3]=vcolor[3];
                    mat.diffuse[0]=vcolor[0]; mat.diffuse[1]=vcolor[1];
                    mat.diffuse[2]=vcolor[2]; mat.diffuse[3]=vcolor[3]; break;
            }
        }
    }
    /* Accumulator: lanes = (r, g, b, _). SIMD-accumulating means the per-lane
     * sequence of ADDs/MULs is bit-identical to the scalar sequence, because
     * every channel's operation chain is independent and we preserve it per
     * lane. Lane 3 is intentionally left as garbage — we overwrite with 'a'
     * at the end. */
#if SG_PIPELINE_SIMD
    __m128 acc = _mm_add_ps(_mm_loadu_ps(mat.emission),
                            _mm_mul_ps(_mm_loadu_ps(mat.ambient),
                                       _mm_loadu_ps(c->light_model_ambient)));
#else
    float r = mat.emission[0] + mat.ambient[0] * c->light_model_ambient[0];
    float g = mat.emission[1] + mat.ambient[1] * c->light_model_ambient[1];
    float b = mat.emission[2] + mat.ambient[2] * c->light_model_ambient[2];
#endif
    float a = mat.diffuse[3];

    float nx = eye_n->x, ny = eye_n->y, nz = eye_n->z;
    if (face_is_back) { nx = -nx; ny = -ny; nz = -nz; }
    if (c->normalize) {
        float len = sqrtf(nx*nx + ny*ny + nz*nz);
        if (len > 1e-20f) { float inv = 1.f / len; nx *= inv; ny *= inv; nz *= inv; }
    }

    /* Viewer vector: infinite viewer at +Z by default; local viewer uses -eye_pos normalized. */
    float Vx = 0.f, Vy = 0.f, Vz = 1.f;
    if (c->light_model_local_viewer) {
        Vx = -eye_pos->x; Vy = -eye_pos->y; Vz = -eye_pos->z;
        float vl = sqrtf(Vx*Vx + Vy*Vy + Vz*Vz);
        if (vl > 1e-20f) { float inv = 1.f / vl; Vx *= inv; Vy *= inv; Vz *= inv; }
        else { Vx = 0.f; Vy = 0.f; Vz = 1.f; }
    }

    for (int i = 0; i < SG_MAX_LIGHTS; i++) {
        const sg_light *L = &c->lights[i];
        if (!L->enabled) continue;
        /* Ambient always contributes. */
#if SG_PIPELINE_SIMD
        acc = _mm_add_ps(acc, _mm_mul_ps(_mm_loadu_ps(mat.ambient),
                                         _mm_loadu_ps(L->ambient)));
#else
        r += mat.ambient[0] * L->ambient[0];
        g += mat.ambient[1] * L->ambient[1];
        b += mat.ambient[2] * L->ambient[2];
#endif

        float Lx, Ly, Lz;   /* unit vector from fragment to light */
        float att = 1.0f;
        if (L->position[3] == 0.0f) {
            Lx = L->position[0]; Ly = L->position[1]; Lz = L->position[2];
            float len = sqrtf(Lx*Lx + Ly*Ly + Lz*Lz);
            if (len > 1e-20f) { float inv = 1.f / len; Lx *= inv; Ly *= inv; Lz *= inv; }
        } else {
            Lx = L->position[0] - eye_pos->x;
            Ly = L->position[1] - eye_pos->y;
            Lz = L->position[2] - eye_pos->z;
            float dist2 = Lx*Lx + Ly*Ly + Lz*Lz;
            float dist = sqrtf(dist2);
            if (dist > 1e-20f) { float inv = 1.f / dist; Lx *= inv; Ly *= inv; Lz *= inv; }
            att = 1.0f / (L->att_const + L->att_linear * dist + L->att_quad * dist2);
        }
        float ndotl = nx*Lx + ny*Ly + nz*Lz;
        if (ndotl < 0.f) ndotl = 0.f;
#if SG_PIPELINE_SIMD
        {
            /* Scalar-equivalent per lane:
             *   r += mat.diffuse[0] * L->diffuse[0] * ndotl * att;
             * We pack ndotl*att into a broadcast and multiply.
             * ((mat.diff * L.diff) * ndotl) * att — group same as scalar. */
            __m128 md = _mm_loadu_ps(mat.diffuse);
            __m128 ld = _mm_loadu_ps(L->diffuse);
            __m128 nd = _mm_set1_ps(ndotl);
            __m128 at = _mm_set1_ps(att);
            __m128 t  = _mm_mul_ps(_mm_mul_ps(_mm_mul_ps(md, ld), nd), at);
            acc = _mm_add_ps(acc, t);
        }
#else
        r += mat.diffuse[0] * L->diffuse[0] * ndotl * att;
        g += mat.diffuse[1] * L->diffuse[1] * ndotl * att;
        b += mat.diffuse[2] * L->diffuse[2] * ndotl * att;
#endif

        if (ndotl > 0.f && mat.shininess > 0.f) {
            /* Blinn: half vector between L and V. */
            float hx = Lx + Vx, hy = Ly + Vy, hz = Lz + Vz;
            float hlen = sqrtf(hx*hx + hy*hy + hz*hz);
            if (hlen > 1e-20f) { float inv = 1.f / hlen; hx *= inv; hy *= inv; hz *= inv; }
            float ndoth = nx*hx + ny*hy + nz*hz;
            if (ndoth > 0.f) {
                float spec = powf(ndoth, mat.shininess) * att;
#if SG_PIPELINE_SIMD
                __m128 ms = _mm_loadu_ps(mat.specular);
                __m128 ls = _mm_loadu_ps(L->specular);
                __m128 sp = _mm_set1_ps(spec);
                acc = _mm_add_ps(acc, _mm_mul_ps(_mm_mul_ps(ms, ls), sp));
#else
                r += mat.specular[0] * L->specular[0] * spec;
                g += mat.specular[1] * L->specular[1] * spec;
                b += mat.specular[2] * L->specular[2] * spec;
#endif
            }
        }
    }
#if SG_PIPELINE_SIMD
    SG_ALIGN16 float tmp[4];
    _mm_store_ps(tmp, acc);
    out[0] = tmp[0]; out[1] = tmp[1]; out[2] = tmp[2]; out[3] = a;
#else
    out[0] = r; out[1] = g; out[2] = b; out[3] = a;
#endif
}

/* Back-compat wrapper: front-face lighting only. Retained for call sites
 * that don't care about two-side. */
static void sg_apply_lighting(softgl_ctx *c, const sg_vec4 *eye_pos, const sg_vec4 *eye_n,
                              const float *vcolor, float out[4]) {
    sg_apply_lighting_side(c, eye_pos, eye_n, &c->material_front, 0, vcolor, out);
}

/* ---- Per-vertex processing ---- */

/* Normal matrix cache: the inverse-transpose of MV's upper-3x3. MV does not
 * change between vertices of a draw call (the GL spec disallows matrix
 * mutation between glBegin/glEnd, and glDrawArrays/glDrawElements is atomic),
 * so we compute it once per draw. Invalidated by sg_vcache_clear() and
 * (defensively) by any routine that touches sg_mat4 stack tops. */
static SG_ALIGN16 sg_mat4 sg_nm4;
static int                sg_nm_valid = 0;

static void sg_process_vertex(softgl_ctx *c, int index, sg_vert *out) {
    float pos[4]    = {0,0,0,1};
    float normal[4] = {0,0,1,0};
    float color[4]  = {1,1,1,1};
    float uv[4]     = {0,0,0,1};

    const sg_attrib_ptr *p = &c->attr_pos;
    if (p->enabled) {
        sg_fetch_attrib(sg_attrib_base(c, p), index, p->stride ? p->stride : p->size * sizeof(float),
                        p->size, p->type, pos, 4, (p->size < 4) ? ((p->size < 3) ? 0.f : 0.f) : 0.f);
        if (p->size < 4) pos[3] = 1.0f;
        if (p->size < 3) pos[2] = 0.0f;
    }
    const sg_attrib_ptr *n = &c->attr_normal;
    if (n->enabled) {
        sg_fetch_attrib(sg_attrib_base(c, n), index, n->stride ? n->stride : 3 * sizeof(float),
                        3, n->type, normal, 3, 0.f);
        normal[3] = 0.f;
    } else {
        normal[0] = c->current_normal[0];
        normal[1] = c->current_normal[1];
        normal[2] = c->current_normal[2];
        normal[3] = 0.f;
    }
    const sg_attrib_ptr *cp = &c->attr_color;
    if (cp->enabled) {
        int sz = cp->size ? cp->size : 4;
        sg_fetch_attrib(sg_attrib_base(c, cp), index, cp->stride ? cp->stride : sz * (cp->type == GL_UNSIGNED_BYTE ? 1 : 4),
                        sz, cp->type, color, 4, 1.f);
        if (sz < 4) color[3] = 1.f;
    } else {
        memcpy(color, c->current_color, sizeof(float) * 4);
    }
    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        const sg_attrib_ptr *tp = &c->attr_tex[u];
        if (tp->enabled) {
            int sz = tp->size ? tp->size : 2;
            sg_fetch_attrib(sg_attrib_base(c, tp), index, tp->stride ? tp->stride : sz * sizeof(float),
                            sz, tp->type, &out->uv[u].x, 4, 0.f);
            if (sz < 4) out->uv[u].w = 1.f;
        } else {
            out->uv[u].x = out->uv[u].y = out->uv[u].z = 0.f;
            out->uv[u].w = 1.f;
        }
    }

    /* Build eye-space position (pre-projection): mv * pos */
    sg_vec4 p4 = { pos[0], pos[1], pos[2], pos[3] };
    sg_vec4 eye; sg_mat4_mul_vec4(&eye, &c->mv_stack[c->mv_top], &p4);
    out->eye = eye;
    /* Stash current edge flag in eye.w (unused slot). Valid for this vertex's
     * outgoing edge only for polygon-mode wireframe rasterization. */
    out->eye.w = (float)c->current_edge_flag;

    /* Clip-space: P * (MV * pos) */
    sg_vec4 clip; sg_mat4_mul_vec4(&clip, &c->pr_stack[c->pr_top], &eye);
    out->clip = clip;

    /* Normals — for lighting, we want eye-space normal (inverse-transpose of upper MV). */
    if (c->lighting) {
        /* Use cached normal matrix (per-draw-call, invalidated at top of
         * _sg_draw_*_real via sg_vcache_clear which also clears sg_nm_valid). */
        if (!sg_nm_valid) {
            float nm9[9]; sg_mat4_normal_matrix(nm9, &c->mv_stack[c->mv_top]);
            sg_mat4_from_normal_matrix(&sg_nm4, nm9);
            sg_nm_valid = 1;
        }
        SG_ALIGN16 sg_vec4 n4 = { normal[0], normal[1], normal[2], 0.f };
        sg_vec4 en; sg_mat4_mul_vec4(&en, &sg_nm4, &n4);
        en.w = 0.f;
        out->normal = en;
        float lit[4];
        sg_apply_lighting_side(c, &eye, &en, &c->material_front, 0, color, lit);
        out->color.x = lit[0]; out->color.y = lit[1];
        out->color.z = lit[2]; out->color.w = lit[3];
        if (c->light_model_two_side) {
            float lit_b[4];
            sg_apply_lighting_side(c, &eye, &en, &c->material_back, 1, color, lit_b);
            out->color_back.x = lit_b[0]; out->color_back.y = lit_b[1];
            out->color_back.z = lit_b[2]; out->color_back.w = lit_b[3];
        } else {
            out->color_back = out->color;
        }
    } else {
        out->normal.x = normal[0]; out->normal.y = normal[1];
        out->normal.z = normal[2]; out->normal.w = 0.f;
        out->color.x = color[0]; out->color.y = color[1];
        out->color.z = color[2]; out->color.w = color[3];
        out->color_back = out->color;
    }
}

/* ---- Per-triangle viewport + raster dispatch ---- */

/* Viewport + cull + raster one post-clip triangle. */
static void sg_finish_triangle(softgl_ctx *c, sg_vert *v0, sg_vert *v1, sg_vert *v2) {
    sg_vert *tri[3] = { v0, v1, v2 };
    for (int i = 0; i < 3; i++) {
        float w = tri[i]->clip.w;
        if (w == 0.f) w = 1e-20f;
        float invw = 1.0f / w;
        tri[i]->ndc.x = tri[i]->clip.x * invw;
        tri[i]->ndc.y = tri[i]->clip.y * invw;
        tri[i]->ndc.z = tri[i]->clip.z * invw;
        tri[i]->ndc.w = invw;
    }

    float vpx = (float)c->viewport[0];
    float vpy = (float)c->viewport[1];
    float vpw = (float)c->viewport[2];
    float vph = (float)c->viewport[3];
    for (int i = 0; i < 3; i++) {
        tri[i]->ndc.x = vpx + (tri[i]->ndc.x * 0.5f + 0.5f) * vpw;
        tri[i]->ndc.y = vpy + (tri[i]->ndc.y * 0.5f + 0.5f) * vph;
        tri[i]->ndc.z =       (tri[i]->ndc.z * 0.5f + 0.5f);
    }

    float ax = v1->ndc.x - v0->ndc.x;
    float ay = v1->ndc.y - v0->ndc.y;
    float bx = v2->ndc.x - v0->ndc.x;
    float by = v2->ndc.y - v0->ndc.y;
    float area2 = ax * by - ay * bx;
    if (fabsf(area2) < 1e-10f) return;

    int front = (c->front_face == GL_CCW) ? (area2 > 0.f) : (area2 < 0.f);
    if (c->cull_enabled) {
        if (c->cull_face == GL_FRONT_AND_BACK) return;
        int cull_front = (c->cull_face == GL_FRONT);
        if (front == cull_front) return;
    }

    /* Two-sided lighting: on a back-facing polygon we use the back-lit color
     * that was computed alongside color at vertex time. */
    if (c->lighting && c->light_model_two_side && !front) {
        tri[0]->color = tri[0]->color_back;
        tri[1]->color = tri[1]->color_back;
        tri[2]->color = tri[2]->color_back;
    }

    /* Polygon-mode dispatch: per-face selection of FILL / LINE / POINT. */
    GLenum mode = front ? c->polygon_mode_front : c->polygon_mode_back;
    if (mode == GL_POINT) {
        sg_process_point(c, v0);
        sg_process_point(c, v1);
        sg_process_point(c, v2);
        return;
    }
    if (mode == GL_LINE) {
        /* Edge flags: eye.w == 1 means the edge STARTING at this vertex is drawn.
         * Vertices come from pre-finish clip/viewport path; they already carry
         * the viewport-transformed ndc, but sg_process_line wants clip-space
         * input + does viewport itself. So re-issue lines directly in
         * post-viewport form via sg_raster_line. */
        /* NOTE: sg_finish_triangle already viewport-transformed v0/v1/v2.
         *       sg_raster_line expects post-viewport verts. Use it directly. */
        void sg_raster_line(softgl_ctx *c, const sg_vert *v0, const sg_vert *v1);
        int e0 = (v0->eye.w >= 0.5f);
        int e1 = (v1->eye.w >= 0.5f);
        int e2 = (v2->eye.w >= 0.5f);
        if (e0) sg_raster_line(c, v0, v1);
        if (e1) sg_raster_line(c, v1, v2);
        if (e2) sg_raster_line(c, v2, v0);
        return;
    }

    if (area2 < 0.f) {
        sg_vert *tmp = v1; v1 = v2; v2 = tmp;
    }
    if (softgl_get_backend() == SOFTGL_BACKEND_FIXED) {
        extern void sg_raster_triangle_fp(softgl_ctx*, const sg_vert*,
                                          const sg_vert*, const sg_vert*);
        sg_raster_triangle_fp(c, v0, v1, v2);
    } else {
        sg_raster_triangle(c, v0, v1, v2);
    }
}

void sg_process_triangle_pub(softgl_ctx *c, sg_vert *v0, sg_vert *v1, sg_vert *v2);

static void sg_process_triangle_frustum(softgl_ctx *c, sg_vert *v0, sg_vert *v1, sg_vert *v2) {
    /* Trivial accept: all three vertices pass all six frustum planes.
     * Per-vertex we compute the six distances as:
     *   d0 = x + w, d1 = -x + w, d2 = y + w, d3 = -y + w
     *   d4 = z + w, d5 = -z + w
     * A vertex is "in" iff all six are >= 0. The triangle is trivially
     * accepted iff all three vertices are in. We OR the per-lane sign bits
     * across the 3 vertices; if no sign bit set in any plane, all_in. */
    const sg_vert *verts[3] = { v0, v1, v2 };
    int all_in = 1;
#if SG_PIPELINE_SIMD
    __m128 any_out_lo = _mm_setzero_ps();   /* running OR of cmplt masks */
    __m128 any_out_hi = _mm_setzero_ps();
    __m128 zero = _mm_setzero_ps();
    for (int i = 0; i < 3; i++) {
        __m128 V = _mm_load_ps(&verts[i]->clip.x);                /* x, y, z, w */
        __m128 Vw = _mm_shuffle_ps(V, V, _MM_SHUFFLE(3,3,3,3));   /* w, w, w, w */
        /* lanes: (x, y, z, 0) */
        __m128 Vxyz = _mm_blend_ps(V, zero, 0x8);
        __m128 d_plus  = _mm_add_ps(Vxyz, Vw);                    /* (x+w, y+w, z+w, w) */
        __m128 d_minus = _mm_sub_ps(Vw, Vxyz);                    /* (-x+w, -y+w, -z+w, w) */
        __m128 d_lo = _mm_unpacklo_ps(d_plus, d_minus);           /* (d0=x+w, d1=-x+w, d2=y+w, d3=-y+w) */
        __m128 d_hi = _mm_unpackhi_ps(d_plus, d_minus);           /* (d4=z+w, d5=-z+w, w, w) */
        /* lane-wise "d < 0" test -> full-lane mask (0xFFFFFFFF if outside) */
        __m128 out_lo = _mm_cmplt_ps(d_lo, zero);
        __m128 out_hi = _mm_cmplt_ps(d_hi, zero);
        any_out_lo = _mm_or_ps(any_out_lo, out_lo);
        any_out_hi = _mm_or_ps(any_out_hi, out_hi);
    }
    int m_lo = _mm_movemask_ps(any_out_lo);          /* 4 bits: d0,d1,d2,d3 */
    int m_hi = _mm_movemask_ps(any_out_hi) & 0x3;    /* lanes 0,1 = d4,d5 (lanes 2,3 are w>=0 trash) */
    if ((m_lo | m_hi) != 0) all_in = 0;
#else
    for (int p = 0; p < 6 && all_in; p++) {
        for (int i = 0; i < 3; i++) {
            float d = 0.f;
            const sg_vec4 *V = &verts[i]->clip;
            switch (p) {
                case 0: d = V->x + V->w; break;
                case 1: d = -V->x + V->w; break;
                case 2: d = V->y + V->w; break;
                case 3: d = -V->y + V->w; break;
                case 4: d = V->z + V->w; break;
                case 5: d = -V->z + V->w; break;
            }
            if (d < 0.f) { all_in = 0; break; }
        }
    }
#endif
    if (all_in) {
        sg_finish_triangle(c, v0, v1, v2);
        return;
    }

    /* Need clipping. */
    SG_ALIGN16 sg_vert in_tri[3] = { *v0, *v1, *v2 };
    SG_ALIGN16 sg_vert out_tris[3 * 8];    /* up to a hexagon → 6 tris; extra headroom */
    int ntri = 0;
    sg_clip_triangle(in_tri, out_tris, &ntri);
    for (int i = 0; i < ntri; i++) {
        sg_finish_triangle(c, &out_tris[i*3 + 0], &out_tris[i*3 + 1], &out_tris[i*3 + 2]);
    }
}

static void sg_process_triangle(softgl_ctx *c, sg_vert *v0, sg_vert *v1, sg_vert *v2) {
    /* Fast path: no user clip planes — go straight to frustum stage. */
    int any_user = 0;
    for (int i = 0; i < 6; i++) if (c->clip_plane_enabled[i]) { any_user = 1; break; }
    if (!any_user) { sg_process_triangle_frustum(c, v0, v1, v2); return; }

    /* First stage: clip against enabled user planes in eye-space. */
    SG_ALIGN16 sg_vert in_tri[3] = { *v0, *v1, *v2 };
    SG_ALIGN16 sg_vert eye_tris[3 * 8];
    int ntri = 0;
    sg_clip_triangle_user_planes(c, in_tri, eye_tris, &ntri);
    for (int i = 0; i < ntri; i++) {
        sg_process_triangle_frustum(c,
                                    &eye_tris[i*3 + 0],
                                    &eye_tris[i*3 + 1],
                                    &eye_tris[i*3 + 2]);
    }
}

/* ---- Index fetch helper ---- */

static uint32_t sg_fetch_index(softgl_ctx *c, GLenum type, const void *indices, GLsizei i) {
    const uint8_t *base = (const uint8_t*)indices;
    if (c->element_buffer_binding) {
        sg_buffer *b = sg_buffer_get(c, c->element_buffer_binding);
        if (!b || !b->data) return 0;
        base = (const uint8_t*)b->data + (uintptr_t)indices;
    }
    switch (type) {
        case GL_UNSIGNED_BYTE:  return base[i];
        case GL_UNSIGNED_SHORT: return ((const uint16_t*)base)[i];
        case GL_UNSIGNED_INT:   return ((const uint32_t*)base)[i];
        default: return 0;
    }
}

/* ---- Vertex cache (per-draw-call FIFO) ----
 *
 * Transformed-vertex cache keyed by source index. Cleared at the top of
 * every _sg_draw_{arrays,elements}_real() call so no stale entry can
 * survive a state mutation between draws. 16 slot FIFO + linear scan;
 * at 16 slots the scan is ~4 cycles, payload is small (4 u32 cachelines).
 *
 * Single-threaded (softgl has one global g_current), file-static is safe.
 */
#define SG_VCACHE_SIZE 32
#define SG_VCACHE_INVALID 0xFFFFFFFFu
static SG_ALIGN16 sg_vert sg_vcache_verts[SG_VCACHE_SIZE];
static SG_ALIGN16 uint32_t sg_vcache_keys [SG_VCACHE_SIZE];
static int                 sg_vcache_tail;

SG_INLINE void sg_vcache_clear(void) {
    for (int i = 0; i < SG_VCACHE_SIZE; i++) sg_vcache_keys[i] = SG_VCACHE_INVALID;
    sg_vcache_tail = 0;
    sg_nm_valid = 0;
}

SG_INLINE void sg_vcache_fetch(softgl_ctx *c, uint32_t idx, sg_vert *out) {
    /* Linear search — small enough the compiler can unroll. */
    for (int i = 0; i < SG_VCACHE_SIZE; i++) {
        if (sg_vcache_keys[i] == idx) {
            *out = sg_vcache_verts[i]; return;
        }
    }
    /* Miss: transform, insert at tail (FIFO eviction). */
    int slot = sg_vcache_tail;
    sg_process_vertex(c, (int)idx, &sg_vcache_verts[slot]);
    sg_vcache_keys[slot] = idx;
    sg_vcache_tail = (slot + 1) & (SG_VCACHE_SIZE - 1);
    *out = sg_vcache_verts[slot];
}

/* ---- Public draw calls ---- */

void _sg_draw_arrays_real(GLenum mode, GLint first, GLsizei count) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (count <= 0) return;

    /* For TRIANGLES there is no index re-use, so the cache is dead weight;
     * for STRIP and FAN a few slots hit. Clear at start — the same state-
     * safety argument as in _sg_draw_elements_real applies. */
    sg_vcache_clear();

    if (mode == GL_TRIANGLES) {
        int ntri = count / 3;
        for (int t = 0; t < ntri; t++) {
            SG_ALIGN16 sg_vert v[3];
            sg_process_vertex(c, first + t * 3 + 0, &v[0]);
            sg_process_vertex(c, first + t * 3 + 1, &v[1]);
            sg_process_vertex(c, first + t * 3 + 2, &v[2]);
            sg_process_triangle(c, &v[0], &v[1], &v[2]);
        }
    } else if (mode == GL_TRIANGLE_STRIP) {
        for (int t = 0; t < count - 2; t++) {
            SG_ALIGN16 sg_vert v[3];
            uint32_t i0 = (uint32_t)(first + t);
            uint32_t i1 = (uint32_t)(first + t + (t & 1 ? 2 : 1));
            uint32_t i2 = (uint32_t)(first + t + (t & 1 ? 1 : 2));
            sg_vcache_fetch(c, i0, &v[0]);
            sg_vcache_fetch(c, i1, &v[1]);
            sg_vcache_fetch(c, i2, &v[2]);
            sg_process_triangle(c, &v[0], &v[1], &v[2]);
        }
    } else if (mode == GL_TRIANGLE_FAN) {
        SG_ALIGN16 sg_vert v0;
        sg_process_vertex(c, first, &v0);
        for (int t = 1; t < count - 1; t++) {
            SG_ALIGN16 sg_vert v1, v2;
            sg_vcache_fetch(c, (uint32_t)(first + t),     &v1);
            sg_vcache_fetch(c, (uint32_t)(first + t + 1), &v2);
            sg_process_triangle(c, &v0, &v1, &v2);
        }
    } else if (mode == GL_LINES) {
        int nlines = count / 2;
        for (int i = 0; i < nlines; i++) {
            SG_ALIGN16 sg_vert v[2];
            sg_process_vertex(c, first + i*2 + 0, &v[0]);
            sg_process_vertex(c, first + i*2 + 1, &v[1]);
            sg_process_line(c, &v[0], &v[1]);
        }
    } else if (mode == GL_LINE_STRIP) {
        if (count < 2) return;
        SG_ALIGN16 sg_vert prev, cur;
        sg_process_vertex(c, first, &prev);
        for (int i = 1; i < count; i++) {
            sg_process_vertex(c, first + i, &cur);
            sg_process_line(c, &prev, &cur);
            prev = cur;
        }
    } else if (mode == GL_LINE_LOOP) {
        if (count < 2) return;
        SG_ALIGN16 sg_vert first_v, prev, cur;
        sg_process_vertex(c, first, &first_v);
        prev = first_v;
        for (int i = 1; i < count; i++) {
            sg_process_vertex(c, first + i, &cur);
            sg_process_line(c, &prev, &cur);
            prev = cur;
        }
        sg_process_line(c, &prev, &first_v);
    } else if (mode == GL_POINTS) {
        for (int i = 0; i < count; i++) {
            SG_ALIGN16 sg_vert v;
            sg_process_vertex(c, first + i, &v);
            sg_process_point(c, &v);
        }
    }
}

/* Public wrapper: external modules (immediate.c) may dispatch triangles. */
void sg_process_triangle_pub(softgl_ctx *c, sg_vert *v0, sg_vert *v1, sg_vert *v2) {
    sg_process_triangle(c, v0, v1, v2);
}

/* Public wrapper for array-indexed vertex processing (used by glArrayElement). */
void sg_process_vertex_at(softgl_ctx *c, int index, sg_vert *out) {
    sg_process_vertex(c, index, out);
}

/* Build an sg_vert for immediate mode: position is given directly, all other
 * attributes come from the "current" state (color, normal, texcoord per unit).
 * Applies modelview, projection, and lighting consistently with sg_process_vertex. */
void sg_build_vertex_imm(softgl_ctx *c, float px, float py, float pz, float pw, sg_vert *out) {
    float color[4]  = { c->current_color[0], c->current_color[1],
                        c->current_color[2], c->current_color[3] };
    float normal[4] = { c->current_normal[0], c->current_normal[1],
                        c->current_normal[2], 0.f };

    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        out->uv[u].x = c->current_texcoord[u][0];
        out->uv[u].y = c->current_texcoord[u][1];
        out->uv[u].z = c->current_texcoord[u][2];
        out->uv[u].w = c->current_texcoord[u][3];
    }

    sg_vec4 p4 = { px, py, pz, pw };
    sg_vec4 eye; sg_mat4_mul_vec4(&eye, &c->mv_stack[c->mv_top], &p4);
    out->eye = eye;
    out->eye.w = (float)c->current_edge_flag;

    sg_vec4 clip; sg_mat4_mul_vec4(&clip, &c->pr_stack[c->pr_top], &eye);
    out->clip = clip;

    if (c->lighting) {
        float nm9[9]; sg_mat4_normal_matrix(nm9, &c->mv_stack[c->mv_top]);
        SG_ALIGN16 sg_mat4 nm4; sg_mat4_from_normal_matrix(&nm4, nm9);
        SG_ALIGN16 sg_vec4 n4 = { normal[0], normal[1], normal[2], 0.f };
        sg_vec4 en; sg_mat4_mul_vec4(&en, &nm4, &n4);
        en.w = 0.f;
        out->normal = en;
        float lit[4];
        sg_apply_lighting_side(c, &eye, &en, &c->material_front, 0, color, lit);
        out->color.x = lit[0]; out->color.y = lit[1];
        out->color.z = lit[2]; out->color.w = lit[3];
        if (c->light_model_two_side) {
            float lit_b[4];
            sg_apply_lighting_side(c, &eye, &en, &c->material_back, 1, color, lit_b);
            out->color_back.x = lit_b[0]; out->color_back.y = lit_b[1];
            out->color_back.z = lit_b[2]; out->color_back.w = lit_b[3];
        } else {
            out->color_back = out->color;
        }
    } else {
        out->normal.x = normal[0]; out->normal.y = normal[1];
        out->normal.z = normal[2]; out->normal.w = 0.f;
        out->color.x = color[0]; out->color.y = color[1];
        out->color.z = color[2]; out->color.w = color[3];
        out->color_back = out->color;
    }
}

void _sg_draw_elements_real(GLenum mode, GLsizei count, GLenum type, const void *indices) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (count <= 0) return;

    /* Flush the transformed-vertex cache: any state the caller mutated
     * between draws (matrix stack, lighting, material, texcoord-gen, etc.)
     * must not carry over via a cached key. */
    sg_vcache_clear();

    if (mode == GL_TRIANGLES) {
        int ntri = count / 3;
        for (int t = 0; t < ntri; t++) {
            uint32_t i0 = sg_fetch_index(c, type, indices, t * 3 + 0);
            uint32_t i1 = sg_fetch_index(c, type, indices, t * 3 + 1);
            uint32_t i2 = sg_fetch_index(c, type, indices, t * 3 + 2);
            SG_ALIGN16 sg_vert v[3];
            sg_vcache_fetch(c, i0, &v[0]);
            sg_vcache_fetch(c, i1, &v[1]);
            sg_vcache_fetch(c, i2, &v[2]);
            sg_process_triangle(c, &v[0], &v[1], &v[2]);
        }
    } else if (mode == GL_TRIANGLE_STRIP) {
        for (int t = 0; t < count - 2; t++) {
            uint32_t i0 = sg_fetch_index(c, type, indices, t);
            uint32_t i1 = sg_fetch_index(c, type, indices, t + (t & 1 ? 2 : 1));
            uint32_t i2 = sg_fetch_index(c, type, indices, t + (t & 1 ? 1 : 2));
            SG_ALIGN16 sg_vert v[3];
            sg_vcache_fetch(c, i0, &v[0]);
            sg_vcache_fetch(c, i1, &v[1]);
            sg_vcache_fetch(c, i2, &v[2]);
            sg_process_triangle(c, &v[0], &v[1], &v[2]);
        }
    } else if (mode == GL_TRIANGLE_FAN) {
        uint32_t ic = sg_fetch_index(c, type, indices, 0);
        SG_ALIGN16 sg_vert v0;
        sg_vcache_fetch(c, ic, &v0);
        for (int t = 1; t < count - 1; t++) {
            uint32_t i1 = sg_fetch_index(c, type, indices, t);
            uint32_t i2 = sg_fetch_index(c, type, indices, t + 1);
            SG_ALIGN16 sg_vert v1, v2;
            sg_vcache_fetch(c, i1, &v1);
            sg_vcache_fetch(c, i2, &v2);
            sg_process_triangle(c, &v0, &v1, &v2);
        }
    } else if (mode == GL_LINES) {
        int nlines = count / 2;
        for (int i = 0; i < nlines; i++) {
            uint32_t i0 = sg_fetch_index(c, type, indices, i*2 + 0);
            uint32_t i1 = sg_fetch_index(c, type, indices, i*2 + 1);
            SG_ALIGN16 sg_vert v[2];
            sg_vcache_fetch(c, i0, &v[0]);
            sg_vcache_fetch(c, i1, &v[1]);
            sg_process_line(c, &v[0], &v[1]);
        }
    } else if (mode == GL_LINE_STRIP) {
        if (count < 2) return;
        SG_ALIGN16 sg_vert prev, cur;
        sg_vcache_fetch(c, sg_fetch_index(c, type, indices, 0), &prev);
        for (int i = 1; i < count; i++) {
            sg_vcache_fetch(c, sg_fetch_index(c, type, indices, i), &cur);
            sg_process_line(c, &prev, &cur);
            prev = cur;
        }
    } else if (mode == GL_LINE_LOOP) {
        if (count < 2) return;
        SG_ALIGN16 sg_vert first_v, prev, cur;
        sg_vcache_fetch(c, sg_fetch_index(c, type, indices, 0), &first_v);
        prev = first_v;
        for (int i = 1; i < count; i++) {
            sg_vcache_fetch(c, sg_fetch_index(c, type, indices, i), &cur);
            sg_process_line(c, &prev, &cur);
            prev = cur;
        }
        sg_process_line(c, &prev, &first_v);
    } else if (mode == GL_POINTS) {
        for (int i = 0; i < count; i++) {
            SG_ALIGN16 sg_vert v;
            sg_vcache_fetch(c, sg_fetch_index(c, type, indices, i), &v);
            sg_process_point(c, &v);
        }
    }
}

/* ---- Public (dlist-aware) wrappers ---- */

void glDrawArrays(GLenum mode, GLint first, GLsizei count) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum m; GLint first; GLsizei count; } a = { mode, first, count };
        sg_dlist_emit(c, SG_OP_DRAW_ARRAYS, &a, sizeof(a));
        if (c->dlist_exec) _sg_draw_arrays_real(mode, first, count);
    } else _sg_draw_arrays_real(mode, first, count);
}

void glDrawElements(GLenum mode, GLsizei count, GLenum type, const void *indices) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        /* Record the raw indices pointer/offset AND a deep copy of the
         * client-memory indices (in case no EBO is bound at replay time).
         * At replay we branch on the replay-context's binding. */
        size_t tsz = 0;
        switch (type) {
            case GL_UNSIGNED_BYTE:  tsz = 1; break;
            case GL_UNSIGNED_SHORT: tsz = 2; break;
            case GL_UNSIGNED_INT:   tsz = 4; break;
            default: tsz = 0; break;
        }
        size_t bytes = (size_t)count * tsz;
        int have_copy = (!c->element_buffer_binding && indices && bytes > 0) ? 1 : 0;
        struct { GLenum mode; GLsizei count; GLenum type;
                 uintptr_t ptr_or_off; uint32_t has_copy; uint32_t copy_bytes; } a =
            { mode, count, type, (uintptr_t)indices,
              (uint32_t)have_copy, (uint32_t)(have_copy ? bytes : 0) };
        sg_dlist_emit(c, SG_OP_DRAW_ELEMENTS, &a, sizeof(a));
        if (have_copy) sg_dlist_append(c, indices, bytes);
        if (c->dlist_exec) _sg_draw_elements_real(mode, count, type, indices);
    } else _sg_draw_elements_real(mode, count, type, indices);
}
