#include "types.h"
#include "dlist.h"
#include <math.h>
#include <string.h>
#include <stdlib.h>

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
    /* Emission + scene-ambient × material-ambient: applied once per vertex,
     * independent of the number of enabled lights. */
    float r = mat.emission[0] + mat.ambient[0] * c->light_model_ambient[0];
    float g = mat.emission[1] + mat.ambient[1] * c->light_model_ambient[1];
    float b = mat.emission[2] + mat.ambient[2] * c->light_model_ambient[2];
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
        r += mat.ambient[0] * L->ambient[0];
        g += mat.ambient[1] * L->ambient[1];
        b += mat.ambient[2] * L->ambient[2];

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
        r += mat.diffuse[0] * L->diffuse[0] * ndotl * att;
        g += mat.diffuse[1] * L->diffuse[1] * ndotl * att;
        b += mat.diffuse[2] * L->diffuse[2] * ndotl * att;

        if (ndotl > 0.f && mat.shininess > 0.f) {
            /* Blinn: half vector between L and V. */
            float hx = Lx + Vx, hy = Ly + Vy, hz = Lz + Vz;
            float hlen = sqrtf(hx*hx + hy*hy + hz*hz);
            if (hlen > 1e-20f) { float inv = 1.f / hlen; hx *= inv; hy *= inv; hz *= inv; }
            float ndoth = nx*hx + ny*hy + nz*hz;
            if (ndoth > 0.f) {
                float spec = powf(ndoth, mat.shininess) * att;
                r += mat.specular[0] * L->specular[0] * spec;
                g += mat.specular[1] * L->specular[1] * spec;
                b += mat.specular[2] * L->specular[2] * spec;
            }
        }
    }
    out[0] = r; out[1] = g; out[2] = b; out[3] = a;
}

/* Back-compat wrapper: front-face lighting only. Retained for call sites
 * that don't care about two-side. */
static void sg_apply_lighting(softgl_ctx *c, const sg_vec4 *eye_pos, const sg_vec4 *eye_n,
                              const float *vcolor, float out[4]) {
    sg_apply_lighting_side(c, eye_pos, eye_n, &c->material_front, 0, vcolor, out);
}

/* ---- Per-vertex processing ---- */

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
        float nm[9]; sg_mat4_normal_matrix(nm, &c->mv_stack[c->mv_top]);
        /* nm is row-major: nm[i*3+j] = M^-T[i][j]. */
        sg_vec4 en;
        en.x = nm[0]*normal[0] + nm[1]*normal[1] + nm[2]*normal[2];
        en.y = nm[3]*normal[0] + nm[4]*normal[1] + nm[5]*normal[2];
        en.z = nm[6]*normal[0] + nm[7]*normal[1] + nm[8]*normal[2];
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
    sg_raster_triangle(c, v0, v1, v2);
}

void sg_process_triangle_pub(softgl_ctx *c, sg_vert *v0, sg_vert *v1, sg_vert *v2);

static void sg_process_triangle_frustum(softgl_ctx *c, sg_vert *v0, sg_vert *v1, sg_vert *v2) {
    /* Trivial accept: all three vertices pass all six frustum planes. */
    int all_in = 1;
    const sg_vert *verts[3] = { v0, v1, v2 };
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

/* ---- Public draw calls ---- */

void _sg_draw_arrays_real(GLenum mode, GLint first, GLsizei count) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (count <= 0) return;

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
            int i0 = first + t;
            int i1 = first + t + (t & 1 ? 2 : 1);
            int i2 = first + t + (t & 1 ? 1 : 2);
            sg_process_vertex(c, i0, &v[0]);
            sg_process_vertex(c, i1, &v[1]);
            sg_process_vertex(c, i2, &v[2]);
            sg_process_triangle(c, &v[0], &v[1], &v[2]);
        }
    } else if (mode == GL_TRIANGLE_FAN) {
        SG_ALIGN16 sg_vert v0;
        sg_process_vertex(c, first, &v0);
        for (int t = 1; t < count - 1; t++) {
            SG_ALIGN16 sg_vert v1, v2;
            sg_process_vertex(c, first + t,     &v1);
            sg_process_vertex(c, first + t + 1, &v2);
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
        float nm[9]; sg_mat4_normal_matrix(nm, &c->mv_stack[c->mv_top]);
        sg_vec4 en;
        en.x = nm[0]*normal[0] + nm[1]*normal[1] + nm[2]*normal[2];
        en.y = nm[3]*normal[0] + nm[4]*normal[1] + nm[5]*normal[2];
        en.z = nm[6]*normal[0] + nm[7]*normal[1] + nm[8]*normal[2];
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

    if (mode == GL_TRIANGLES) {
        int ntri = count / 3;
        for (int t = 0; t < ntri; t++) {
            uint32_t i0 = sg_fetch_index(c, type, indices, t * 3 + 0);
            uint32_t i1 = sg_fetch_index(c, type, indices, t * 3 + 1);
            uint32_t i2 = sg_fetch_index(c, type, indices, t * 3 + 2);
            SG_ALIGN16 sg_vert v[3];
            sg_process_vertex(c, (int)i0, &v[0]);
            sg_process_vertex(c, (int)i1, &v[1]);
            sg_process_vertex(c, (int)i2, &v[2]);
            sg_process_triangle(c, &v[0], &v[1], &v[2]);
        }
    } else if (mode == GL_TRIANGLE_STRIP) {
        for (int t = 0; t < count - 2; t++) {
            uint32_t i0 = sg_fetch_index(c, type, indices, t);
            uint32_t i1 = sg_fetch_index(c, type, indices, t + (t & 1 ? 2 : 1));
            uint32_t i2 = sg_fetch_index(c, type, indices, t + (t & 1 ? 1 : 2));
            SG_ALIGN16 sg_vert v[3];
            sg_process_vertex(c, (int)i0, &v[0]);
            sg_process_vertex(c, (int)i1, &v[1]);
            sg_process_vertex(c, (int)i2, &v[2]);
            sg_process_triangle(c, &v[0], &v[1], &v[2]);
        }
    } else if (mode == GL_TRIANGLE_FAN) {
        uint32_t ic = sg_fetch_index(c, type, indices, 0);
        SG_ALIGN16 sg_vert v0;
        sg_process_vertex(c, (int)ic, &v0);
        for (int t = 1; t < count - 1; t++) {
            uint32_t i1 = sg_fetch_index(c, type, indices, t);
            uint32_t i2 = sg_fetch_index(c, type, indices, t + 1);
            SG_ALIGN16 sg_vert v1, v2;
            sg_process_vertex(c, (int)i1, &v1);
            sg_process_vertex(c, (int)i2, &v2);
            sg_process_triangle(c, &v0, &v1, &v2);
        }
    } else if (mode == GL_LINES) {
        int nlines = count / 2;
        for (int i = 0; i < nlines; i++) {
            uint32_t i0 = sg_fetch_index(c, type, indices, i*2 + 0);
            uint32_t i1 = sg_fetch_index(c, type, indices, i*2 + 1);
            SG_ALIGN16 sg_vert v[2];
            sg_process_vertex(c, (int)i0, &v[0]);
            sg_process_vertex(c, (int)i1, &v[1]);
            sg_process_line(c, &v[0], &v[1]);
        }
    } else if (mode == GL_LINE_STRIP) {
        if (count < 2) return;
        SG_ALIGN16 sg_vert prev, cur;
        sg_process_vertex(c, (int)sg_fetch_index(c, type, indices, 0), &prev);
        for (int i = 1; i < count; i++) {
            sg_process_vertex(c, (int)sg_fetch_index(c, type, indices, i), &cur);
            sg_process_line(c, &prev, &cur);
            prev = cur;
        }
    } else if (mode == GL_LINE_LOOP) {
        if (count < 2) return;
        SG_ALIGN16 sg_vert first_v, prev, cur;
        sg_process_vertex(c, (int)sg_fetch_index(c, type, indices, 0), &first_v);
        prev = first_v;
        for (int i = 1; i < count; i++) {
            sg_process_vertex(c, (int)sg_fetch_index(c, type, indices, i), &cur);
            sg_process_line(c, &prev, &cur);
            prev = cur;
        }
        sg_process_line(c, &prev, &first_v);
    } else if (mode == GL_POINTS) {
        for (int i = 0; i < count; i++) {
            SG_ALIGN16 sg_vert v;
            sg_process_vertex(c, (int)sg_fetch_index(c, type, indices, i), &v);
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
