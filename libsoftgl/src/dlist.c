#include "types.h"
#include "dlist.h"
#include <string.h>
#include <stdlib.h>

#define SG_DLIST_MAX_NESTING 64

/* ---- Allocation / pool --------------------------------------------------- */

static sg_dlist *sg_dlist_slot(softgl_ctx *c, GLuint id) {
    if (id == 0 || id > c->lists_cap) return NULL;
    return &c->lists[id - 1];
}

sg_dlist *sg_dlist_get(softgl_ctx *c, GLuint id) {
    sg_dlist *L = sg_dlist_slot(c, id);
    if (!L || !L->in_use) return NULL;
    return L;
}

static int sg_dlist_reserve(softgl_ctx *c, size_t need) {
    if (c->lists_cap >= need) return 1;
    size_t new_cap = c->lists_cap ? c->lists_cap : 16;
    while (new_cap < need) new_cap *= 2;
    sg_dlist *nl = (sg_dlist*)realloc(c->lists, new_cap * sizeof(sg_dlist));
    if (!nl) return 0;
    memset(nl + c->lists_cap, 0, (new_cap - c->lists_cap) * sizeof(sg_dlist));
    c->lists = nl;
    c->lists_cap = new_cap;
    return 1;
}

void sg_dlist_init(softgl_ctx *c) {
    c->lists = NULL;
    c->lists_cap = 0;
    c->dlist_recording = 0;
    c->dlist_cur = 0;
    c->dlist_exec = 0;
    c->dlist_base = 0;
    c->dlist_depth = 0;
}

void sg_dlist_shutdown(softgl_ctx *c) {
    if (c->lists) {
        for (size_t i = 0; i < c->lists_cap; i++) {
            if (c->lists[i].cmds) free(c->lists[i].cmds);
        }
        free(c->lists);
        c->lists = NULL;
        c->lists_cap = 0;
    }
}

/* ---- Recording stream helpers ------------------------------------------- */

int sg_dlist_append(softgl_ctx *c, const void *data, size_t size) {
    if (!c->dlist_recording) return 0;
    sg_dlist *L = sg_dlist_get(c, c->dlist_cur);
    if (!L) return 0;
    if (L->cmds_size + size > L->cmds_cap) {
        size_t new_cap = L->cmds_cap ? L->cmds_cap * 2 : 256;
        while (new_cap < L->cmds_size + size) new_cap *= 2;
        uint8_t *nb = (uint8_t*)realloc(L->cmds, new_cap);
        if (!nb) return 0;
        L->cmds = nb;
        L->cmds_cap = new_cap;
    }
    if (size) memcpy(L->cmds + L->cmds_size, data, size);
    L->cmds_size += size;
    return 1;
}

int sg_dlist_emit(softgl_ctx *c, uint16_t op, const void *payload, size_t size) {
    if (!sg_dlist_append(c, &op, sizeof(op))) return 0;
    if (size && !sg_dlist_append(c, payload, size)) return 0;
    return 1;
}

/* ---- Public API: glGenLists / glDeleteLists / glIsList / glListBase ----- */

GLuint glGenLists(GLsizei range) {
    softgl_ctx *c = sg_current(); if (!c) return 0;
    if (range <= 0) { sg_set_error(GL_INVALID_VALUE); return 0; }
    /* Find `range` consecutive free slots (ids are slot+1). */
    /* Try existing capacity first. */
    for (size_t start = 0; start + (size_t)range <= c->lists_cap; start++) {
        int ok = 1;
        for (GLsizei i = 0; i < range; i++) {
            if (c->lists[start + i].in_use) { ok = 0; start += i; break; }
        }
        if (ok) {
            for (GLsizei i = 0; i < range; i++) {
                c->lists[start + i].in_use = 1;
                c->lists[start + i].id     = (GLuint)(start + i + 1);
                c->lists[start + i].cmds   = NULL;
                c->lists[start + i].cmds_size = 0;
                c->lists[start + i].cmds_cap  = 0;
            }
            return (GLuint)(start + 1);
        }
    }
    /* Grow. Reserve capacity for at least old_cap + range (plus some slack). */
    size_t old = c->lists_cap;
    size_t need = old + (size_t)range;
    if (!sg_dlist_reserve(c, need)) { sg_set_error(GL_OUT_OF_MEMORY); return 0; }
    for (GLsizei i = 0; i < range; i++) {
        c->lists[old + i].in_use = 1;
        c->lists[old + i].id     = (GLuint)(old + i + 1);
        c->lists[old + i].cmds   = NULL;
        c->lists[old + i].cmds_size = 0;
        c->lists[old + i].cmds_cap  = 0;
    }
    return (GLuint)(old + 1);
}

void glDeleteLists(GLuint list, GLsizei range) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (range < 0) { sg_set_error(GL_INVALID_VALUE); return; }
    for (GLsizei i = 0; i < range; i++) {
        sg_dlist *L = sg_dlist_slot(c, list + (GLuint)i);
        if (!L) continue;
        if (L->cmds) { free(L->cmds); L->cmds = NULL; }
        L->cmds_size = 0;
        L->cmds_cap  = 0;
        L->in_use    = 0;
    }
}

GLboolean glIsList(GLuint list) {
    softgl_ctx *c = sg_current(); if (!c) return GL_FALSE;
    return sg_dlist_get(c, list) ? GL_TRUE : GL_FALSE;
}

void glListBase(GLuint base) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_LIST_BASE, &base, sizeof(base));
        if (c->dlist_exec) c->dlist_base = base;
    } else {
        c->dlist_base = base;
    }
}

/* ---- glNewList / glEndList ---------------------------------------------- */

void glNewList(GLuint list, GLenum mode) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (list == 0) { sg_set_error(GL_INVALID_VALUE); return; }
    if (mode != GL_COMPILE && mode != GL_COMPILE_AND_EXECUTE) {
        sg_set_error(GL_INVALID_ENUM); return;
    }
    if (c->dlist_recording) { sg_set_error(GL_INVALID_OPERATION); return; }
    /* Lazy allocate / reuse the slot. */
    if (list > c->lists_cap) {
        if (!sg_dlist_reserve(c, list)) { sg_set_error(GL_OUT_OF_MEMORY); return; }
    }
    sg_dlist *L = &c->lists[list - 1];
    L->id = list;
    L->in_use = 1;
    if (L->cmds) { free(L->cmds); L->cmds = NULL; }
    L->cmds_size = 0;
    L->cmds_cap  = 0;
    c->dlist_recording = 1;
    c->dlist_cur = list;
    c->dlist_exec = (mode == GL_COMPILE_AND_EXECUTE) ? 1 : 0;
}

void glEndList(void) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (!c->dlist_recording) { sg_set_error(GL_INVALID_OPERATION); return; }
    c->dlist_recording = 0;
    c->dlist_cur = 0;
    c->dlist_exec = 0;
}

/* ---- Replay ------------------------------------------------------------- */

/* Reader cursor into a cmd stream. */
typedef struct { const uint8_t *p; const uint8_t *e; } sg_rd;

static int sg_rd_read(sg_rd *r, void *dst, size_t n) {
    if ((size_t)(r->e - r->p) < n) return 0;
    memcpy(dst, r->p, n);
    r->p += n;
    return 1;
}
static const void *sg_rd_peek(sg_rd *r, size_t n) {
    if ((size_t)(r->e - r->p) < n) return NULL;
    const void *q = r->p;
    r->p += n;
    return q;
}

static void sg_replay_stream(softgl_ctx *c, const uint8_t *cmds, size_t size);

void sg_dlist_replay(softgl_ctx *c, GLuint id) {
    sg_dlist *L = sg_dlist_get(c, id);
    if (!L) return;
    if (c->dlist_depth >= SG_DLIST_MAX_NESTING) return;
    c->dlist_depth++;
    /* Copy cmds pointer locally: if the list deletes itself during replay
     * (allowed per spec) we still finish correctly. */
    const uint8_t *cmds = L->cmds;
    size_t n = L->cmds_size;
    sg_replay_stream(c, cmds, n);
    c->dlist_depth--;
}

void glCallList(GLuint list) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_CALL_LIST, &list, sizeof(list));
        if (c->dlist_exec) sg_dlist_replay(c, list);
    } else {
        sg_dlist_replay(c, list);
    }
}

/* Decode per-element index to list id with big-endian packing for
 * GL_{2,3,4}_BYTES. */
static GLuint sg_call_lists_index(GLenum type, const void *lists, GLsizei i) {
    const uint8_t *p = (const uint8_t*)lists;
    switch (type) {
        case GL_BYTE:           return (GLuint)(int)((const int8_t*)p)[i];
        case GL_UNSIGNED_BYTE:  return (GLuint)p[i];
        case GL_SHORT:          return (GLuint)(int)((const int16_t*)p)[i];
        case GL_UNSIGNED_SHORT: return (GLuint)((const uint16_t*)p)[i];
        case GL_INT:            return (GLuint)(int)((const int32_t*)p)[i];
        case GL_UNSIGNED_INT:   return ((const uint32_t*)p)[i];
        case GL_FLOAT:          return (GLuint)((const float*)p)[i];
        case GL_2_BYTES: { const uint8_t *q = p + i*2;
            return (GLuint)(((uint32_t)q[0] << 8) | q[1]); }
        case GL_3_BYTES: { const uint8_t *q = p + i*3;
            return (GLuint)(((uint32_t)q[0] << 16) | ((uint32_t)q[1] << 8) | q[2]); }
        case GL_4_BYTES: { const uint8_t *q = p + i*4;
            return (GLuint)(((uint32_t)q[0] << 24) | ((uint32_t)q[1] << 16) |
                            ((uint32_t)q[2] << 8)  | q[3]); }
        default: return 0;
    }
}

static size_t sg_call_lists_elem_size(GLenum type) {
    switch (type) {
        case GL_BYTE: case GL_UNSIGNED_BYTE: return 1;
        case GL_SHORT: case GL_UNSIGNED_SHORT: case GL_2_BYTES: return 2;
        case GL_3_BYTES: return 3;
        case GL_INT: case GL_UNSIGNED_INT: case GL_FLOAT: case GL_4_BYTES: return 4;
        default: return 0;
    }
}

void glCallLists(GLsizei n, GLenum type, const GLvoid *lists) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (n <= 0 || !lists) return;
    size_t esz = sg_call_lists_elem_size(type);
    if (esz == 0) { sg_set_error(GL_INVALID_ENUM); return; }
    if (c->dlist_recording) {
        /* Deep-copy the index stream into the recording. */
        uint32_t un = (uint32_t)n; uint32_t ut = (uint32_t)type;
        sg_dlist_emit(c, SG_OP_CALL_LISTS, NULL, 0);
        sg_dlist_append(c, &un, sizeof(un));
        sg_dlist_append(c, &ut, sizeof(ut));
        sg_dlist_append(c, lists, (size_t)n * esz);
        if (c->dlist_exec) {
            for (GLsizei i = 0; i < n; i++) {
                GLuint idx = sg_call_lists_index(type, lists, i);
                sg_dlist_replay(c, c->dlist_base + idx);
            }
        }
        return;
    }
    for (GLsizei i = 0; i < n; i++) {
        GLuint idx = sg_call_lists_index(type, lists, i);
        sg_dlist_replay(c, c->dlist_base + idx);
    }
}

/* ---- The replay dispatch table ------------------------------------------ */

static void sg_replay_stream(softgl_ctx *c, const uint8_t *cmds, size_t size) {
    sg_rd R = { cmds, cmds + size };
    while (R.p < R.e) {
        uint16_t op;
        if (!sg_rd_read(&R, &op, sizeof(op))) break;
        switch (op) {
        case SG_OP_MATRIX_MODE: { GLenum m;
            sg_rd_read(&R, &m, sizeof(m)); _sg_matrix_mode_real(m); break; }
        case SG_OP_LOAD_IDENTITY: _sg_load_identity_real(); break;
        case SG_OP_LOAD_MATRIX: { const void *p = sg_rd_peek(&R, 16*sizeof(float));
            if (p) _sg_load_matrix_real((const float*)p); break; }
        case SG_OP_MULT_MATRIX: { const void *p = sg_rd_peek(&R, 16*sizeof(float));
            if (p) _sg_mult_matrix_real((const float*)p); break; }
        case SG_OP_PUSH_MATRIX: _sg_push_matrix_real(); break;
        case SG_OP_POP_MATRIX:  _sg_pop_matrix_real(); break;
        case SG_OP_TRANSLATE: { float v[3];
            sg_rd_read(&R, v, sizeof(v)); _sg_translate_real(v[0], v[1], v[2]); break; }
        case SG_OP_ROTATE: { float v[4];
            sg_rd_read(&R, v, sizeof(v)); _sg_rotate_real(v[0], v[1], v[2], v[3]); break; }
        case SG_OP_SCALE: { float v[3];
            sg_rd_read(&R, v, sizeof(v)); _sg_scale_real(v[0], v[1], v[2]); break; }
        case SG_OP_ORTHO: { double v[6];
            sg_rd_read(&R, v, sizeof(v));
            _sg_ortho_real(v[0], v[1], v[2], v[3], v[4], v[5]); break; }
        case SG_OP_FRUSTUM: { double v[6];
            sg_rd_read(&R, v, sizeof(v));
            _sg_frustum_real(v[0], v[1], v[2], v[3], v[4], v[5]); break; }

        case SG_OP_CLEAR: { GLbitfield m;
            sg_rd_read(&R, &m, sizeof(m)); _sg_clear_real(m); break; }
        case SG_OP_CLEAR_COLOR: { float v[4];
            sg_rd_read(&R, v, sizeof(v)); _sg_clear_color_real(v[0],v[1],v[2],v[3]); break; }
        case SG_OP_CLEAR_DEPTH: { float v;
            sg_rd_read(&R, &v, sizeof(v)); _sg_clear_depth_real(v); break; }

        case SG_OP_VIEWPORT: { GLint v[4];
            sg_rd_read(&R, v, sizeof(v)); _sg_viewport_real(v[0],v[1],v[2],v[3]); break; }
        case SG_OP_SCISSOR: { GLint v[4];
            sg_rd_read(&R, v, sizeof(v)); _sg_scissor_real(v[0],v[1],v[2],v[3]); break; }
        case SG_OP_DEPTH_FUNC: { GLenum e;
            sg_rd_read(&R, &e, sizeof(e)); _sg_depth_func_real(e); break; }
        case SG_OP_DEPTH_MASK: { uint8_t v;
            sg_rd_read(&R, &v, sizeof(v)); _sg_depth_mask_real(v); break; }
        case SG_OP_CULL_FACE: { GLenum e;
            sg_rd_read(&R, &e, sizeof(e)); _sg_cull_face_real(e); break; }
        case SG_OP_FRONT_FACE: { GLenum e;
            sg_rd_read(&R, &e, sizeof(e)); _sg_front_face_real(e); break; }
        case SG_OP_ENABLE: { GLenum e;
            sg_rd_read(&R, &e, sizeof(e)); _sg_enable_real(e); break; }
        case SG_OP_DISABLE: { GLenum e;
            sg_rd_read(&R, &e, sizeof(e)); _sg_disable_real(e); break; }
        case SG_OP_BLEND_FUNC: { GLenum sd[2];
            sg_rd_read(&R, sd, sizeof(sd)); _sg_blend_func_real(sd[0], sd[1]); break; }
        case SG_OP_ALPHA_FUNC: { struct { GLenum f; float r; } a;
            sg_rd_read(&R, &a, sizeof(a)); _sg_alpha_func_real(a.f, a.r); break; }
        case SG_OP_SHADE_MODEL: { GLenum e;
            sg_rd_read(&R, &e, sizeof(e)); _sg_shade_model_real(e); break; }

        case SG_OP_FOGI: { struct { GLenum p; GLint v; } a;
            sg_rd_read(&R, &a, sizeof(a)); _sg_fogi_real(a.p, a.v); break; }
        case SG_OP_FOGF: { struct { GLenum p; float v; } a;
            sg_rd_read(&R, &a, sizeof(a)); _sg_fogf_real(a.p, a.v); break; }
        case SG_OP_FOGFV: { GLenum p; float v[4];
            sg_rd_read(&R, &p, sizeof(p));
            sg_rd_read(&R, v, sizeof(v)); _sg_fogfv_real(p, v); break; }
        case SG_OP_LIGHTFV: { GLenum li, pn; float v[4];
            sg_rd_read(&R, &li, sizeof(li));
            sg_rd_read(&R, &pn, sizeof(pn));
            sg_rd_read(&R, v, sizeof(v));
            _sg_lightfv_real(li, pn, v); break; }
        case SG_OP_LIGHTF: { GLenum li, pn; float v;
            sg_rd_read(&R, &li, sizeof(li));
            sg_rd_read(&R, &pn, sizeof(pn));
            sg_rd_read(&R, &v, sizeof(v));
            _sg_lightf_real(li, pn, v); break; }
        case SG_OP_MATERIALFV: { GLenum fc, pn; float v[4];
            sg_rd_read(&R, &fc, sizeof(fc));
            sg_rd_read(&R, &pn, sizeof(pn));
            sg_rd_read(&R, v, sizeof(v));
            _sg_materialfv_real(fc, pn, v); break; }
        case SG_OP_MATERIALF: { GLenum fc, pn; float v;
            sg_rd_read(&R, &fc, sizeof(fc));
            sg_rd_read(&R, &pn, sizeof(pn));
            sg_rd_read(&R, &v, sizeof(v));
            _sg_materialf_real(fc, pn, v); break; }
        case SG_OP_LIGHT_MODELFV: { GLenum p; float v[4];
            sg_rd_read(&R, &p, sizeof(p));
            sg_rd_read(&R, v, sizeof(v));
            _sg_light_modelfv_real(p, v); break; }

        case SG_OP_ACTIVE_TEX: { GLenum e;
            sg_rd_read(&R, &e, sizeof(e)); _sg_active_texture_real(e); break; }
        case SG_OP_BIND_TEXTURE: { struct { GLenum t; GLuint id; } a;
            sg_rd_read(&R, &a, sizeof(a)); _sg_bind_texture_real(a.t, a.id); break; }
        case SG_OP_TEX_IMAGE_2D: {
            struct { GLenum target; GLint level; GLint ifmt;
                     GLsizei w, h; GLint border;
                     GLenum format; GLenum type; uint32_t bytes; } a;
            sg_rd_read(&R, &a, sizeof(a));
            const void *pixels = NULL;
            if (a.bytes > 0) pixels = sg_rd_peek(&R, a.bytes);
            _sg_tex_image_2d_real(a.target, a.level, a.ifmt, a.w, a.h, a.border,
                                  a.format, a.type, pixels);
            break; }
        case SG_OP_TEX_IMAGE_1D: {
            struct { GLenum target; GLint level; GLint ifmt;
                     GLsizei w; GLint border;
                     GLenum format; GLenum type; uint32_t bytes; } a;
            sg_rd_read(&R, &a, sizeof(a));
            const void *pixels = NULL;
            if (a.bytes > 0) pixels = sg_rd_peek(&R, a.bytes);
            _sg_tex_image_1d_real(a.target, a.level, a.ifmt, a.w, a.border,
                                  a.format, a.type, pixels);
            break; }
        case SG_OP_TEX_IMAGE_3D: {
            struct { GLenum target; GLint level; GLint ifmt;
                     GLsizei w, h, d; GLint border;
                     GLenum format; GLenum type; uint32_t bytes; } a;
            sg_rd_read(&R, &a, sizeof(a));
            const void *pixels = NULL;
            if (a.bytes > 0) pixels = sg_rd_peek(&R, a.bytes);
            _sg_tex_image_3d_real(a.target, a.level, a.ifmt, a.w, a.h, a.d, a.border,
                                  a.format, a.type, pixels);
            break; }
        case SG_OP_TEX_SUB_IMAGE_1D: {
            struct { GLenum target; GLint level; GLint xoff; GLsizei w;
                     GLenum format; GLenum type; uint32_t bytes; } a;
            sg_rd_read(&R, &a, sizeof(a));
            const void *pixels = NULL;
            if (a.bytes > 0) pixels = sg_rd_peek(&R, a.bytes);
            _sg_tex_sub_image_1d_real(a.target, a.level, a.xoff, a.w,
                                      a.format, a.type, pixels);
            break; }
        case SG_OP_TEX_SUB_IMAGE_2D: {
            struct { GLenum target; GLint level; GLint xoff, yoff; GLsizei w, h;
                     GLenum format; GLenum type; uint32_t bytes; } a;
            sg_rd_read(&R, &a, sizeof(a));
            const void *pixels = NULL;
            if (a.bytes > 0) pixels = sg_rd_peek(&R, a.bytes);
            _sg_tex_sub_image_2d_real(a.target, a.level, a.xoff, a.yoff, a.w, a.h,
                                      a.format, a.type, pixels);
            break; }
        case SG_OP_TEX_SUB_IMAGE_3D: {
            struct { GLenum target; GLint level; GLint xoff, yoff, zoff;
                     GLsizei w, h, d; GLenum format; GLenum type; uint32_t bytes; } a;
            sg_rd_read(&R, &a, sizeof(a));
            const void *pixels = NULL;
            if (a.bytes > 0) pixels = sg_rd_peek(&R, a.bytes);
            _sg_tex_sub_image_3d_real(a.target, a.level, a.xoff, a.yoff, a.zoff,
                                      a.w, a.h, a.d, a.format, a.type, pixels);
            break; }
        case SG_OP_COPY_TEX_IMAGE_1D: {
            struct { GLenum target; GLint level; GLenum ifmt;
                     GLint x, y; GLsizei w; GLint border; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_copy_tex_image_1d_real(a.target, a.level, a.ifmt, a.x, a.y, a.w, a.border);
            break; }
        case SG_OP_COPY_TEX_IMAGE_2D: {
            struct { GLenum target; GLint level; GLenum ifmt;
                     GLint x, y; GLsizei w, h; GLint border; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_copy_tex_image_2d_real(a.target, a.level, a.ifmt, a.x, a.y, a.w, a.h, a.border);
            break; }
        case SG_OP_COPY_TEX_SUB_IMAGE_1D: {
            struct { GLenum target; GLint level; GLint xoff; GLint x, y; GLsizei w; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_copy_tex_sub_image_1d_real(a.target, a.level, a.xoff, a.x, a.y, a.w);
            break; }
        case SG_OP_COPY_TEX_SUB_IMAGE_2D: {
            struct { GLenum target; GLint level; GLint xoff, yoff;
                     GLint x, y; GLsizei w, h; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_copy_tex_sub_image_2d_real(a.target, a.level, a.xoff, a.yoff,
                                           a.x, a.y, a.w, a.h);
            break; }
        case SG_OP_TEX_PARAM_I: { struct { GLenum t, p; GLint v; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_tex_parameter_i_real(a.t, a.p, a.v); break; }
        case SG_OP_TEX_PARAM_F: { struct { GLenum t, p; float v; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_tex_parameter_f_real(a.t, a.p, a.v); break; }
        case SG_OP_TEX_ENV_I: { struct { GLenum t, p; GLint v; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_tex_env_i_real(a.t, a.p, a.v); break; }
        case SG_OP_TEX_ENV_F: { struct { GLenum t, p; float v; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_tex_env_f_real(a.t, a.p, a.v); break; }
        case SG_OP_TEX_ENV_FV: { GLenum t, p; float v[4];
            sg_rd_read(&R, &t, sizeof(t));
            sg_rd_read(&R, &p, sizeof(p));
            sg_rd_read(&R, v, sizeof(v));
            _sg_tex_env_fv_real(t, p, v); break; }

        case SG_OP_BIND_BUFFER: { struct { GLenum t; GLuint id; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_bind_buffer_real(a.t, a.id); break; }
        case SG_OP_BUFFER_DATA: {
            struct { GLenum target; GLsizeiptr size; GLenum usage; } a;
            sg_rd_read(&R, &a, sizeof(a));
            const void *data = NULL;
            if (a.size > 0) data = sg_rd_peek(&R, (size_t)a.size);
            _sg_buffer_data_real(a.target, a.size, data, a.usage); break; }
        case SG_OP_BUFFER_SUBDATA: {
            struct { GLenum target; GLintptr offset; GLsizeiptr size; } a;
            sg_rd_read(&R, &a, sizeof(a));
            const void *data = NULL;
            if (a.size > 0) data = sg_rd_peek(&R, (size_t)a.size);
            _sg_buffer_subdata_real(a.target, a.offset, a.size, data); break; }
        case SG_OP_ENABLE_CLIENT: { GLenum e;
            sg_rd_read(&R, &e, sizeof(e)); _sg_enable_client_state_real(e); break; }
        case SG_OP_DISABLE_CLIENT: { GLenum e;
            sg_rd_read(&R, &e, sizeof(e)); _sg_disable_client_state_real(e); break; }
        case SG_OP_VERTEX_POINTER: {
            struct { GLint sz; GLenum type; GLsizei stride; uintptr_t ptr; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_vertex_pointer_real(a.sz, a.type, a.stride, (const void*)a.ptr);
            break; }
        case SG_OP_NORMAL_POINTER: {
            struct { GLenum type; GLsizei stride; uintptr_t ptr; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_normal_pointer_real(a.type, a.stride, (const void*)a.ptr);
            break; }
        case SG_OP_COLOR_POINTER: {
            struct { GLint sz; GLenum type; GLsizei stride; uintptr_t ptr; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_color_pointer_real(a.sz, a.type, a.stride, (const void*)a.ptr);
            break; }
        case SG_OP_TEXCOORD_POINTER: {
            struct { GLint sz; GLenum type; GLsizei stride; uintptr_t ptr; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_texcoord_pointer_real(a.sz, a.type, a.stride, (const void*)a.ptr);
            break; }
        case SG_OP_CLIENT_ACTIVE_TEX: { GLenum e;
            sg_rd_read(&R, &e, sizeof(e)); _sg_client_active_tex_real(e); break; }
        case SG_OP_DRAW_ARRAYS: { struct { GLenum m; GLint first; GLsizei count; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_draw_arrays_real(a.m, a.first, a.count); break; }
        case SG_OP_DRAW_ELEMENTS: {
            struct { GLenum mode; GLsizei count; GLenum type;
                     uintptr_t ptr_or_off; uint32_t has_copy; uint32_t copy_bytes; } a;
            sg_rd_read(&R, &a, sizeof(a));
            const void *indices;
            if (c->element_buffer_binding) {
                /* EBO bound at replay → original offset is used. */
                indices = (const void*)a.ptr_or_off;
                if (a.has_copy) sg_rd_peek(&R, a.copy_bytes); /* skip copy */
            } else if (a.has_copy) {
                indices = sg_rd_peek(&R, a.copy_bytes);
            } else {
                indices = (const void*)a.ptr_or_off;
            }
            _sg_draw_elements_real(a.mode, a.count, a.type, indices);
            break; }

        case SG_OP_BEGIN: { GLenum e;
            sg_rd_read(&R, &e, sizeof(e)); _sg_begin_real(e); break; }
        case SG_OP_END: _sg_end_real(); break;
        case SG_OP_CUR_COLOR: { float v[4];
            sg_rd_read(&R, v, sizeof(v));
            _sg_cur_color_real(v[0],v[1],v[2],v[3]); break; }
        case SG_OP_CUR_NORMAL: { float v[3];
            sg_rd_read(&R, v, sizeof(v));
            _sg_cur_normal_real(v[0],v[1],v[2]); break; }
        case SG_OP_CUR_TEXCOORD: { uint32_t u; float v[4];
            sg_rd_read(&R, &u, sizeof(u));
            sg_rd_read(&R, v, sizeof(v));
            _sg_cur_texcoord_real(u, v[0],v[1],v[2],v[3]); break; }
        case SG_OP_CUR_EDGEFLAG: { int v;
            sg_rd_read(&R, &v, sizeof(v)); _sg_cur_edgeflag_real(v); break; }
        case SG_OP_VERTEX: { float v[4];
            sg_rd_read(&R, v, sizeof(v));
            _sg_vertex_real(v[0],v[1],v[2],v[3]); break; }
        case SG_OP_ARRAY_ELEMENT: { GLint i;
            sg_rd_read(&R, &i, sizeof(i)); _sg_array_element_real(i); break; }
        case SG_OP_RECT: { float v[4];
            sg_rd_read(&R, v, sizeof(v));
            _sg_rect_real(v[0],v[1],v[2],v[3]); break; }

        case SG_OP_CALL_LIST: { GLuint id;
            sg_rd_read(&R, &id, sizeof(id));
            sg_dlist_replay(c, id); break; }
        case SG_OP_CALL_LISTS: { uint32_t n, t;
            sg_rd_read(&R, &n, sizeof(n));
            sg_rd_read(&R, &t, sizeof(t));
            size_t esz = sg_call_lists_elem_size((GLenum)t);
            size_t bytes = (size_t)n * esz;
            const void *data = bytes ? sg_rd_peek(&R, bytes) : NULL;
            for (uint32_t i = 0; i < n && data; i++) {
                GLuint idx = sg_call_lists_index((GLenum)t, data, (GLsizei)i);
                sg_dlist_replay(c, c->dlist_base + idx);
            }
            break; }
        case SG_OP_LIST_BASE: { GLuint b;
            sg_rd_read(&R, &b, sizeof(b)); c->dlist_base = b; break; }

        case SG_OP_LINE_WIDTH: { float v;
            sg_rd_read(&R, &v, sizeof(v)); _sg_line_width_real(v); break; }
        case SG_OP_POINT_SIZE: { float v;
            sg_rd_read(&R, &v, sizeof(v)); _sg_point_size_real(v); break; }
        case SG_OP_POLYGON_MODE: { GLenum v[2];
            sg_rd_read(&R, v, sizeof(v)); _sg_polygon_mode_real(v[0], v[1]); break; }
        case SG_OP_POLYGON_OFFSET: { float v[2];
            sg_rd_read(&R, v, sizeof(v)); _sg_polygon_offset_real(v[0], v[1]); break; }

        case SG_OP_STENCIL_FUNC: { struct { GLenum f; GLint r; GLuint m; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_stencil_func_real(a.f, a.r, a.m); break; }
        case SG_OP_STENCIL_OP: { GLenum v[3];
            sg_rd_read(&R, v, sizeof(v));
            _sg_stencil_op_real(v[0], v[1], v[2]); break; }
        case SG_OP_STENCIL_MASK: { GLuint m;
            sg_rd_read(&R, &m, sizeof(m)); _sg_stencil_mask_real(m); break; }
        case SG_OP_CLEAR_STENCIL: { GLint s;
            sg_rd_read(&R, &s, sizeof(s)); _sg_clear_stencil_real(s); break; }

        case SG_OP_CLIP_PLANE: { GLenum p; double eq[4];
            sg_rd_read(&R, &p, sizeof(p));
            sg_rd_read(&R, eq, sizeof(eq));
            _sg_clip_plane_real(p, eq); break; }
        case SG_OP_COLOR_MATERIAL: { GLenum v[2];
            sg_rd_read(&R, v, sizeof(v));
            _sg_color_material_real(v[0], v[1]); break; }
        case SG_OP_COLOR_MASK: { uint8_t v[4];
            sg_rd_read(&R, v, sizeof(v));
            _sg_color_mask_real(v[0], v[1], v[2], v[3]); break; }
        case SG_OP_LOGIC_OP: { GLenum e;
            sg_rd_read(&R, &e, sizeof(e));
            _sg_logic_op_real(e); break; }
        case SG_OP_HINT: { GLenum v[2];
            sg_rd_read(&R, v, sizeof(v));
            _sg_hint_real(v[0], v[1]); break; }
        case SG_OP_INDEX_MASK: { GLuint m;
            sg_rd_read(&R, &m, sizeof(m));
            _sg_index_mask_real(m); break; }
        case SG_OP_LIGHT_MODELF: { struct { GLenum p; float v; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_light_modelf_real(a.p, a.v); break; }
        case SG_OP_LIGHT_MODELI: { struct { GLenum p; GLint v; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_light_modeli_real(a.p, a.v); break; }

        case SG_OP_DRAW_PIXELS: {
            struct { GLsizei w, h; GLenum format, type; uint32_t bytes; } a;
            sg_rd_read(&R, &a, sizeof(a));
            const void *pixels = NULL;
            if (a.bytes > 0) pixels = sg_rd_peek(&R, a.bytes);
            _sg_draw_pixels_real(a.w, a.h, a.format, a.type, pixels);
            break; }
        case SG_OP_COPY_PIXELS: {
            struct { GLint x, y; GLsizei w, h; GLenum type; } a;
            sg_rd_read(&R, &a, sizeof(a));
            _sg_copy_pixels_real(a.x, a.y, a.w, a.h, a.type);
            break; }
        case SG_OP_PIXEL_ZOOM: { float v[2];
            sg_rd_read(&R, v, sizeof(v));
            _sg_pixel_zoom_real(v[0], v[1]); break; }
        case SG_OP_RASTER_POS: { float v[4];
            sg_rd_read(&R, v, sizeof(v));
            _sg_raster_pos_real(v[0], v[1], v[2], v[3]); break; }

        default:
            /* Unknown op — abort replay gracefully. */
            return;
        }
    }
}
