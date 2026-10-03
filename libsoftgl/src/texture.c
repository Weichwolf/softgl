#include "workers.h"
#include "types.h"
#include "dlist.h"
#include <stdlib.h>
#include <string.h>

/* Texture storage + upload. 1D/2D/3D: t->data[level] + w/h/d[level].
 * Cube: t->cube_faces[face][level] + cube_w/cube_h; face 0 mirrors into
 * t->data[]/w/h/d for legacy paths. */

static sg_texture *sg_alloc_tex_slot(softgl_ctx *c, GLuint *out_id) {
    for (size_t i = 0; i < c->textures_cap; i++) {
        if (!c->textures[i].in_use) {
            memset(&c->textures[i], 0, sizeof(sg_texture));
            c->textures[i].in_use = 1;
            c->textures[i].id = (GLuint)(i + 1);
            c->textures[i].wrap_s = GL_REPEAT;
            c->textures[i].wrap_t = GL_REPEAT;
            c->textures[i].wrap_r = GL_REPEAT;
            c->textures[i].min_filter = GL_NEAREST_MIPMAP_LINEAR;
            c->textures[i].mag_filter = GL_LINEAR;
            *out_id = c->textures[i].id;
            return &c->textures[i];
        }
    }
    size_t new_cap = c->textures_cap ? c->textures_cap * 2 : 16;
    sg_texture *nt = (sg_texture*)realloc(c->textures, new_cap * sizeof(sg_texture));
    if (!nt) return NULL;
    memset(nt + c->textures_cap, 0, (new_cap - c->textures_cap) * sizeof(sg_texture));
    c->textures = nt;
    size_t old = c->textures_cap;
    c->textures_cap = new_cap;
    c->textures[old].in_use = 1;
    c->textures[old].id = (GLuint)(old + 1);
    c->textures[old].wrap_s = GL_REPEAT;
    c->textures[old].wrap_t = GL_REPEAT;
    c->textures[old].wrap_r = GL_REPEAT;
    c->textures[old].min_filter = GL_NEAREST_MIPMAP_LINEAR;
    c->textures[old].mag_filter = GL_LINEAR;
    *out_id = c->textures[old].id;
    return &c->textures[old];
}

sg_texture *sg_texture_get(softgl_ctx *c, GLuint id) {
    if (id == 0 || id > c->textures_cap) return NULL;
    sg_texture *t = &c->textures[id - 1];
    if (!t->in_use) return NULL;
    return t;
}

static int sg_target_to_slot(GLenum target) {
    switch (target) {
        case GL_TEXTURE_1D:        return SG_TEX_TARGET_1D;
        case GL_TEXTURE_2D:        return SG_TEX_TARGET_2D;
        case GL_TEXTURE_3D:        return SG_TEX_TARGET_3D;
        case GL_TEXTURE_CUBE_MAP:  return SG_TEX_TARGET_CUBE;
        default: return -1;
    }
}

static int sg_cube_face_index(GLenum target) {
    switch (target) {
        case GL_TEXTURE_CUBE_MAP_POSITIVE_X: return 0;
        case GL_TEXTURE_CUBE_MAP_NEGATIVE_X: return 1;
        case GL_TEXTURE_CUBE_MAP_POSITIVE_Y: return 2;
        case GL_TEXTURE_CUBE_MAP_NEGATIVE_Y: return 3;
        case GL_TEXTURE_CUBE_MAP_POSITIVE_Z: return 4;
        case GL_TEXTURE_CUBE_MAP_NEGATIVE_Z: return 5;
        default: return -1;
    }
}

static size_t sg_src_bpp(GLenum format, GLenum type) {
    size_t comps = 0;
    switch (format) {
        case GL_RGBA:            comps = 4; break;
        case GL_RGB:             comps = 3; break;
        case GL_LUMINANCE_ALPHA: comps = 2; break;
        case GL_LUMINANCE:
        case GL_ALPHA:           comps = 1; break;
        default: return 0;
    }
    size_t esz = 0;
    switch (type) {
        case GL_UNSIGNED_BYTE: esz = 1; break;
        case GL_FLOAT:         esz = 4; break;
        default: return 0;
    }
    return comps * esz;
}

/* NULL if nothing bound; caller raises GL_INVALID_OPERATION. */
static sg_texture *sg_active_tex_for_target(softgl_ctx *c, int slot) {
    GLuint id = c->tex_env[c->active_tex_unit].bound_tex_target[slot];
    return sg_texture_get(c, id);
}

static void sg_expand_pixel(uint8_t *dst, const void *src, int src_index,
                            GLenum format, GLenum type) {
    uint8_t r = 0, g = 0, b = 0, a = 255;
    if (type == GL_UNSIGNED_BYTE) {
        const uint8_t *s = (const uint8_t*)src;
        switch (format) {
            case GL_RGBA:
                r = s[src_index*4+0]; g = s[src_index*4+1];
                b = s[src_index*4+2]; a = s[src_index*4+3]; break;
            case GL_RGB:
                r = s[src_index*3+0]; g = s[src_index*3+1];
                b = s[src_index*3+2]; a = 255; break;
            case GL_LUMINANCE:
                r = g = b = s[src_index]; a = 255; break;
            case GL_LUMINANCE_ALPHA:
                r = g = b = s[src_index*2+0]; a = s[src_index*2+1]; break;
            case GL_ALPHA:
                r = g = b = 255; a = s[src_index]; break;
            default: break;
        }
    } else if (type == GL_FLOAT) {
        const float *s = (const float*)src;
        float fr=0,fg=0,fb=0,fa=1;
        switch (format) {
            case GL_RGBA: fr = s[src_index*4+0]; fg = s[src_index*4+1];
                         fb = s[src_index*4+2]; fa = s[src_index*4+3]; break;
            case GL_RGB:  fr = s[src_index*3+0]; fg = s[src_index*3+1];
                         fb = s[src_index*3+2]; fa = 1; break;
            default: break;
        }
        r = sg_quantize(fr); g = sg_quantize(fg);
        b = sg_quantize(fb); a = sg_quantize(fa);
    }
    dst[0] = r; dst[1] = g; dst[2] = b; dst[3] = a;
}

void glGenTextures(GLsizei n, GLuint *out) {
    softgl_ctx *c = sg_current(); if (!c || !out) return;
    for (GLsizei i = 0; i < n; i++) {
        GLuint id = 0;
        sg_alloc_tex_slot(c, &id);
        out[i] = id;
    }
}

void glDeleteTextures(GLsizei n, const GLuint *ids) {
    softgl_ctx *c = sg_current(); if (!c || !ids) return;
    sg_workers_flush(c);
    for (GLsizei i = 0; i < n; i++) {
        sg_texture *t = sg_texture_get(c, ids[i]);
        if (!t) continue;
        for (int l = 0; l < SG_MAX_MIPMAP_LEVELS; l++) {
            if (t->data[l]) { sg_aligned_free(t->data[l]); t->data[l] = NULL; }
            for (int f = 0; f < 6; f++) {
                if (t->cube_faces[f][l]) {
                    sg_aligned_free(t->cube_faces[f][l]);
                    t->cube_faces[f][l] = NULL;
                }
            }
        }
        t->in_use = 0;
        for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
            for (int k = 0; k < SG_TEX_TARGET_COUNT; k++) {
                if (c->tex_env[u].bound_tex_target[k] == ids[i])
                    c->tex_env[u].bound_tex_target[k] = 0;
            }
        }
    }
}

void _sg_active_texture_real(GLenum unit) {
    softgl_ctx *c = sg_current(); if (!c) return;
    int u = (int)(unit - GL_TEXTURE0);
    if (u < 0 || u >= SG_MAX_TEX_UNITS) { sg_set_error(GL_INVALID_ENUM); return; }
    c->active_tex_unit = (GLuint)u;
}

void _sg_bind_texture_real(GLenum target, GLuint id) {
    softgl_ctx *c = sg_current(); if (!c) return;
    int slot = sg_target_to_slot(target);
    if (slot < 0) { sg_set_error(GL_INVALID_ENUM); return; }
    if (id != 0 && id > c->textures_cap) {
        size_t new_cap = id;
        sg_texture *nt = (sg_texture*)realloc(c->textures, new_cap * sizeof(sg_texture));
        if (!nt) return;
        memset(nt + c->textures_cap, 0, (new_cap - c->textures_cap) * sizeof(sg_texture));
        c->textures = nt;
        c->textures_cap = new_cap;
    }
    if (id != 0) {
        sg_texture *t = &c->textures[id - 1];
        if (!t->in_use) {
            t->in_use = 1; t->id = id;
            t->wrap_s = GL_REPEAT; t->wrap_t = GL_REPEAT; t->wrap_r = GL_REPEAT;
            t->min_filter = GL_NEAREST_MIPMAP_LINEAR;
            t->mag_filter = GL_LINEAR;
        }
        t->target = target;
    }
    c->tex_env[c->active_tex_unit].bound_tex_target[slot] = id;
}

static void sg_upload_rgba8(uint8_t *dst, const void *pixels, int w, int h, int d,
                            GLenum format, GLenum type) {
    if (!pixels) {
        memset(dst, 0, (size_t)w * h * d * 4);
        return;
    }
    int total = w * h * d;
    for (int i = 0; i < total; i++)
        sg_expand_pixel(dst + i * 4, pixels, i, format, type);
}

void _sg_tex_image_1d_real(GLenum target, GLint level, GLint ifmt, GLsizei w,
                           GLint border, GLenum format, GLenum type, const void *pixels) {
    (void)ifmt; (void)border;
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_workers_flush(c);
    if (target != GL_TEXTURE_1D && target != GL_PROXY_TEXTURE_1D) {
        sg_set_error(GL_INVALID_ENUM); return;
    }
    if (level < 0 || level >= SG_MAX_MIPMAP_LEVELS) { sg_set_error(GL_INVALID_VALUE); return; }
    if (target == GL_PROXY_TEXTURE_1D) return;

    sg_texture *t = sg_active_tex_for_target(c, SG_TEX_TARGET_1D);
    if (!t) { sg_set_error(GL_INVALID_OPERATION); return; }
    t->target = GL_TEXTURE_1D;

    if (t->data[level]) { sg_aligned_free(t->data[level]); t->data[level] = NULL; }
    size_t bytes = (size_t)w * 4;
    t->data[level] = (uint8_t*)sg_aligned_alloc(bytes, 16);
    if (!t->data[level]) { sg_set_error(GL_OUT_OF_MEMORY); return; }
    t->w[level] = w; t->h[level] = 1; t->d[level] = 1;
    if (level + 1 > t->levels) t->levels = level + 1;
    sg_upload_rgba8(t->data[level], pixels, w, 1, 1, format, type);
}

void _sg_tex_image_2d_real(GLenum target, GLint level, GLint ifmt, GLsizei w, GLsizei h,
                           GLint border, GLenum format, GLenum type, const void *pixels) {
    (void)ifmt; (void)border;
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_workers_flush(c);
    if (level < 0 || level >= SG_MAX_MIPMAP_LEVELS) { sg_set_error(GL_INVALID_VALUE); return; }

    int face = sg_cube_face_index(target);
    if (face >= 0) {
        sg_texture *t = sg_active_tex_for_target(c, SG_TEX_TARGET_CUBE);
        if (!t) { sg_set_error(GL_INVALID_OPERATION); return; }
        t->target = GL_TEXTURE_CUBE_MAP;
        if (t->cube_faces[face][level]) {
            sg_aligned_free(t->cube_faces[face][level]);
            t->cube_faces[face][level] = NULL;
        }
        size_t bytes = (size_t)w * h * 4;
        t->cube_faces[face][level] = (uint8_t*)sg_aligned_alloc(bytes, 16);
        if (!t->cube_faces[face][level]) { sg_set_error(GL_OUT_OF_MEMORY); return; }
        t->cube_w[face][level] = w; t->cube_h[face][level] = h;
        sg_upload_rgba8(t->cube_faces[face][level], pixels, w, h, 1, format, type);
        /* Face 0 mirrors into legacy fields. */
        if (face == 0) {
            t->w[level] = w; t->h[level] = h; t->d[level] = 1;
            if (level + 1 > t->levels) t->levels = level + 1;
        }
        return;
    }

    if (target != GL_TEXTURE_2D && target != GL_PROXY_TEXTURE_2D) {
        sg_set_error(GL_INVALID_ENUM); return;
    }
    if (target == GL_PROXY_TEXTURE_2D) return;

    sg_texture *t = sg_active_tex_for_target(c, SG_TEX_TARGET_2D);
    if (!t) { sg_set_error(GL_INVALID_OPERATION); return; }
    t->target = GL_TEXTURE_2D;

    if (t->data[level]) { sg_aligned_free(t->data[level]); t->data[level] = NULL; }
    size_t bytes = (size_t)w * h * 4;
    t->data[level] = (uint8_t*)sg_aligned_alloc(bytes, 16);
    if (!t->data[level]) { sg_set_error(GL_OUT_OF_MEMORY); return; }
    t->w[level] = w; t->h[level] = h; t->d[level] = 1;
    if (level + 1 > t->levels) t->levels = level + 1;
    sg_upload_rgba8(t->data[level], pixels, w, h, 1, format, type);
}

void _sg_tex_image_3d_real(GLenum target, GLint level, GLint ifmt, GLsizei w, GLsizei h,
                           GLsizei d, GLint border, GLenum format, GLenum type,
                           const void *pixels) {
    (void)ifmt; (void)border;
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_workers_flush(c);
    if (target != GL_TEXTURE_3D && target != GL_PROXY_TEXTURE_3D) {
        sg_set_error(GL_INVALID_ENUM); return;
    }
    if (level < 0 || level >= SG_MAX_MIPMAP_LEVELS) { sg_set_error(GL_INVALID_VALUE); return; }
    if (target == GL_PROXY_TEXTURE_3D) return;

    sg_texture *t = sg_active_tex_for_target(c, SG_TEX_TARGET_3D);
    if (!t) { sg_set_error(GL_INVALID_OPERATION); return; }
    t->target = GL_TEXTURE_3D;

    if (t->data[level]) { sg_aligned_free(t->data[level]); t->data[level] = NULL; }
    size_t bytes = (size_t)w * h * d * 4;
    t->data[level] = (uint8_t*)sg_aligned_alloc(bytes, 16);
    if (!t->data[level]) { sg_set_error(GL_OUT_OF_MEMORY); return; }
    t->w[level] = w; t->h[level] = h; t->d[level] = d;
    if (level + 1 > t->levels) t->levels = level + 1;
    sg_upload_rgba8(t->data[level], pixels, w, h, d, format, type);
}

void _sg_tex_sub_image_1d_real(GLenum target, GLint level, GLint xoff, GLsizei w,
                               GLenum format, GLenum type, const void *pixels) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_workers_flush(c);
    if (target != GL_TEXTURE_1D) { sg_set_error(GL_INVALID_ENUM); return; }
    sg_texture *t = sg_active_tex_for_target(c, SG_TEX_TARGET_1D);
    if (!t || level < 0 || level >= SG_MAX_MIPMAP_LEVELS || !t->data[level]) {
        sg_set_error(GL_INVALID_OPERATION); return;
    }
    if (xoff < 0 || xoff + w > t->w[level]) { sg_set_error(GL_INVALID_VALUE); return; }
    if (!pixels) return;
    for (int i = 0; i < w; i++) {
        sg_expand_pixel(t->data[level] + (xoff + i) * 4, pixels, i, format, type);
    }
}

void _sg_tex_sub_image_2d_real(GLenum target, GLint level, GLint xoff, GLint yoff,
                               GLsizei w, GLsizei h, GLenum format, GLenum type,
                               const void *pixels) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_workers_flush(c);
    int face = sg_cube_face_index(target);
    uint8_t *dst = NULL;
    int tw = 0, th = 0;
    if (face >= 0) {
        sg_texture *t = sg_active_tex_for_target(c, SG_TEX_TARGET_CUBE);
        if (!t || level < 0 || level >= SG_MAX_MIPMAP_LEVELS || !t->cube_faces[face][level]) {
            sg_set_error(GL_INVALID_OPERATION); return;
        }
        dst = t->cube_faces[face][level];
        tw = t->cube_w[face][level]; th = t->cube_h[face][level];
    } else if (target == GL_TEXTURE_2D) {
        sg_texture *t = sg_active_tex_for_target(c, SG_TEX_TARGET_2D);
        if (!t || level < 0 || level >= SG_MAX_MIPMAP_LEVELS || !t->data[level]) {
            sg_set_error(GL_INVALID_OPERATION); return;
        }
        dst = t->data[level];
        tw = t->w[level]; th = t->h[level];
    } else { sg_set_error(GL_INVALID_ENUM); return; }

    if (xoff < 0 || yoff < 0 || xoff + w > tw || yoff + h > th) {
        sg_set_error(GL_INVALID_VALUE); return;
    }
    if (!pixels) return;
    for (int y = 0; y < h; y++) {
        for (int x = 0; x < w; x++) {
            int src_i = y * w + x;
            int dst_i = (yoff + y) * tw + (xoff + x);
            sg_expand_pixel(dst + dst_i * 4, pixels, src_i, format, type);
        }
    }
}

/* Read w*h RGBA from fb at (sx,sy), clipped. malloc'd or NULL. */
static uint8_t *sg_fb_read_rect(softgl_ctx *c, int sx, int sy, int w, int h) {
    sg_msaa_resolve(c);
    if (w <= 0 || h <= 0) return NULL;
    uint8_t *buf = (uint8_t*)malloc((size_t)w * h * 4);
    if (!buf) return NULL;
    for (int y = 0; y < h; y++) {
        int fy = sy + y;
        for (int x = 0; x < w; x++) {
            int fx = sx + x;
            uint8_t *d = buf + (y * w + x) * 4;
            if (fx < 0 || fy < 0 || fx >= c->fb.w || fy >= c->fb.h) {
                d[0] = d[1] = d[2] = 0; d[3] = 255;
            } else {
                const uint8_t *s = c->fb.color + (fy * c->fb.w + fx) * 4;
                d[0] = s[0]; d[1] = s[1]; d[2] = s[2]; d[3] = s[3];
            }
        }
    }
    return buf;
}

void _sg_copy_tex_image_1d_real(GLenum target, GLint level, GLenum ifmt,
                                GLint x, GLint y, GLsizei w, GLint border) {
    (void)ifmt; (void)border;
    softgl_ctx *c = sg_current(); if (!c) return;
    if (target != GL_TEXTURE_1D) { sg_set_error(GL_INVALID_ENUM); return; }
    if (level < 0 || level >= SG_MAX_MIPMAP_LEVELS) { sg_set_error(GL_INVALID_VALUE); return; }
    sg_texture *t = sg_active_tex_for_target(c, SG_TEX_TARGET_1D);
    if (!t) { sg_set_error(GL_INVALID_OPERATION); return; }
    uint8_t *fb = sg_fb_read_rect(c, x, y, w, 1);
    if (!fb) { sg_set_error(GL_OUT_OF_MEMORY); return; }
    if (t->data[level]) { sg_aligned_free(t->data[level]); t->data[level] = NULL; }
    t->data[level] = (uint8_t*)sg_aligned_alloc((size_t)w * 4, 16);
    if (!t->data[level]) { free(fb); sg_set_error(GL_OUT_OF_MEMORY); return; }
    memcpy(t->data[level], fb, (size_t)w * 4);
    t->w[level] = w; t->h[level] = 1; t->d[level] = 1;
    if (level + 1 > t->levels) t->levels = level + 1;
    t->target = GL_TEXTURE_1D;
    free(fb);
}

void _sg_copy_tex_image_2d_real(GLenum target, GLint level, GLenum ifmt,
                                GLint x, GLint y, GLsizei w, GLsizei h, GLint border) {
    (void)ifmt; (void)border;
    softgl_ctx *c = sg_current(); if (!c) return;
    int face = sg_cube_face_index(target);
    sg_texture *t;
    if (face >= 0) {
        t = sg_active_tex_for_target(c, SG_TEX_TARGET_CUBE);
    } else if (target == GL_TEXTURE_2D) {
        t = sg_active_tex_for_target(c, SG_TEX_TARGET_2D);
    } else { sg_set_error(GL_INVALID_ENUM); return; }
    if (!t) { sg_set_error(GL_INVALID_OPERATION); return; }
    if (level < 0 || level >= SG_MAX_MIPMAP_LEVELS) { sg_set_error(GL_INVALID_VALUE); return; }

    uint8_t *fb = sg_fb_read_rect(c, x, y, w, h);
    if (!fb) { sg_set_error(GL_OUT_OF_MEMORY); return; }
    if (face >= 0) {
        if (t->cube_faces[face][level]) {
            sg_aligned_free(t->cube_faces[face][level]);
            t->cube_faces[face][level] = NULL;
        }
        t->cube_faces[face][level] = (uint8_t*)sg_aligned_alloc((size_t)w * h * 4, 16);
        if (!t->cube_faces[face][level]) { free(fb); sg_set_error(GL_OUT_OF_MEMORY); return; }
        memcpy(t->cube_faces[face][level], fb, (size_t)w * h * 4);
        t->cube_w[face][level] = w; t->cube_h[face][level] = h;
        t->target = GL_TEXTURE_CUBE_MAP;
    } else {
        if (t->data[level]) { sg_aligned_free(t->data[level]); t->data[level] = NULL; }
        t->data[level] = (uint8_t*)sg_aligned_alloc((size_t)w * h * 4, 16);
        if (!t->data[level]) { free(fb); sg_set_error(GL_OUT_OF_MEMORY); return; }
        memcpy(t->data[level], fb, (size_t)w * h * 4);
        t->w[level] = w; t->h[level] = h; t->d[level] = 1;
        if (level + 1 > t->levels) t->levels = level + 1;
        t->target = GL_TEXTURE_2D;
    }
    free(fb);
}

void _sg_copy_tex_sub_image_1d_real(GLenum target, GLint level, GLint xoff,
                                    GLint x, GLint y, GLsizei w) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (target != GL_TEXTURE_1D) { sg_set_error(GL_INVALID_ENUM); return; }
    sg_texture *t = sg_active_tex_for_target(c, SG_TEX_TARGET_1D);
    if (!t || level < 0 || level >= SG_MAX_MIPMAP_LEVELS || !t->data[level]) {
        sg_set_error(GL_INVALID_OPERATION); return;
    }
    if (xoff < 0 || xoff + w > t->w[level]) { sg_set_error(GL_INVALID_VALUE); return; }
    uint8_t *fb = sg_fb_read_rect(c, x, y, w, 1);
    if (!fb) { sg_set_error(GL_OUT_OF_MEMORY); return; }
    memcpy(t->data[level] + xoff * 4, fb, (size_t)w * 4);
    free(fb);
}

void _sg_copy_tex_sub_image_2d_real(GLenum target, GLint level, GLint xoff, GLint yoff,
                                    GLint x, GLint y, GLsizei w, GLsizei h) {
    softgl_ctx *c = sg_current(); if (!c) return;
    int face = sg_cube_face_index(target);
    sg_texture *t = NULL;
    uint8_t *dst = NULL;
    int tw = 0, th = 0;
    if (face >= 0) {
        t = sg_active_tex_for_target(c, SG_TEX_TARGET_CUBE);
        if (!t || level < 0 || level >= SG_MAX_MIPMAP_LEVELS || !t->cube_faces[face][level]) {
            sg_set_error(GL_INVALID_OPERATION); return;
        }
        dst = t->cube_faces[face][level];
        tw = t->cube_w[face][level]; th = t->cube_h[face][level];
    } else if (target == GL_TEXTURE_2D) {
        t = sg_active_tex_for_target(c, SG_TEX_TARGET_2D);
        if (!t || level < 0 || level >= SG_MAX_MIPMAP_LEVELS || !t->data[level]) {
            sg_set_error(GL_INVALID_OPERATION); return;
        }
        dst = t->data[level];
        tw = t->w[level]; th = t->h[level];
    } else { sg_set_error(GL_INVALID_ENUM); return; }

    if (xoff < 0 || yoff < 0 || xoff + w > tw || yoff + h > th) {
        sg_set_error(GL_INVALID_VALUE); return;
    }
    uint8_t *fb = sg_fb_read_rect(c, x, y, w, h);
    if (!fb) { sg_set_error(GL_OUT_OF_MEMORY); return; }
    for (int iy = 0; iy < h; iy++) {
        memcpy(dst + ((yoff + iy) * tw + xoff) * 4,
               fb + iy * w * 4,
               (size_t)w * 4);
    }
    free(fb);
}

void _sg_tex_parameter_i_real(GLenum target, GLenum pname, GLint param) {
    softgl_ctx *c = sg_current(); if (!c) return;
    int slot = sg_target_to_slot(target);
    if (slot < 0) { sg_set_error(GL_INVALID_ENUM); return; }
    GLuint id = c->tex_env[c->active_tex_unit].bound_tex_target[slot];
    sg_texture *t = sg_texture_get(c, id);
    if (!t) return;
    switch (pname) {
        case GL_TEXTURE_WRAP_S:     t->wrap_s = (GLenum)param; break;
        case GL_TEXTURE_WRAP_T:     t->wrap_t = (GLenum)param; break;
        case GL_TEXTURE_WRAP_R:     t->wrap_r = (GLenum)param; break;
        case GL_TEXTURE_MIN_FILTER: t->min_filter = (GLenum)param; break;
        case GL_TEXTURE_MAG_FILTER: t->mag_filter = (GLenum)param; break;
        default: sg_set_error(GL_INVALID_ENUM);
    }
}

void _sg_tex_parameter_f_real(GLenum target, GLenum pname, GLfloat param) {
    _sg_tex_parameter_i_real(target, pname, (GLint)param);
}

void _sg_tex_env_i_real(GLenum target, GLenum pname, GLint param) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (target != GL_TEXTURE_ENV) { sg_set_error(GL_INVALID_ENUM); return; }
    sg_tex_env *e = &c->tex_env[c->active_tex_unit];
    switch (pname) {
        case GL_TEXTURE_ENV_MODE: e->env_mode = (GLenum)param; break;
        case GL_COMBINE_RGB:      e->combine_rgb = (GLenum)param; break;
        case GL_COMBINE_ALPHA:    e->combine_a   = (GLenum)param; break;
        case GL_SOURCE0_RGB:      e->src_rgb[0]  = (GLenum)param; break;
        case GL_SOURCE1_RGB:      e->src_rgb[1]  = (GLenum)param; break;
        case GL_SOURCE2_RGB:      e->src_rgb[2]  = (GLenum)param; break;
        case GL_OPERAND0_RGB:     e->op_rgb[0]   = (GLenum)param; break;
        case GL_OPERAND1_RGB:     e->op_rgb[1]   = (GLenum)param; break;
        case GL_OPERAND2_RGB:     e->op_rgb[2]   = (GLenum)param; break;
        case GL_SOURCE0_ALPHA:    e->src_a[0]    = (GLenum)param; break;
        case GL_SOURCE1_ALPHA:    e->src_a[1]    = (GLenum)param; break;
        case GL_SOURCE2_ALPHA:    e->src_a[2]    = (GLenum)param; break;
        case GL_OPERAND0_ALPHA:   e->op_a[0]     = (GLenum)param; break;
        case GL_OPERAND1_ALPHA:   e->op_a[1]     = (GLenum)param; break;
        case GL_OPERAND2_ALPHA:   e->op_a[2]     = (GLenum)param; break;
        case GL_RGB_SCALE:        e->rgb_scale   = (float)param; break;
        case GL_ALPHA_SCALE:      e->alpha_scale = (float)param; break;
        default: sg_set_error(GL_INVALID_ENUM);
    }
}

void _sg_tex_env_f_real(GLenum target, GLenum pname, GLfloat param) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (target != GL_TEXTURE_ENV) { sg_set_error(GL_INVALID_ENUM); return; }
    sg_tex_env *e = &c->tex_env[c->active_tex_unit];
    if (pname == GL_RGB_SCALE)   { e->rgb_scale = param; return; }
    if (pname == GL_ALPHA_SCALE) { e->alpha_scale = param; return; }
    _sg_tex_env_i_real(target, pname, (GLint)param);
}

void _sg_tex_env_fv_real(GLenum target, GLenum pname, const GLfloat *params) {
    softgl_ctx *c = sg_current(); if (!c || !params) return;
    if (target != GL_TEXTURE_ENV) { sg_set_error(GL_INVALID_ENUM); return; }
    sg_tex_env *e = &c->tex_env[c->active_tex_unit];
    if (pname == GL_TEXTURE_ENV_COLOR) {
        e->env_color[0] = params[0]; e->env_color[1] = params[1];
        e->env_color[2] = params[2]; e->env_color[3] = params[3];
        return;
    }
    if (pname == GL_RGB_SCALE)   { e->rgb_scale = params[0]; return; }
    if (pname == GL_ALPHA_SCALE) { e->alpha_scale = params[0]; return; }
    _sg_tex_env_i_real(target, pname, (GLint)params[0]);
}

void glActiveTexture(GLenum unit) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_ACTIVE_TEX, &unit, sizeof(unit));
        if (c->dlist_exec) _sg_active_texture_real(unit);
    } else _sg_active_texture_real(unit);
}

void glBindTexture(GLenum target, GLuint id) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum t; GLuint id; } a = {target, id};
        sg_dlist_emit(c, SG_OP_BIND_TEXTURE, &a, sizeof(a));
        if (c->dlist_exec) _sg_bind_texture_real(target, id);
    } else _sg_bind_texture_real(target, id);
}

/* dlist payload bytes for (format,type)*pixels; 0 = unknown → skip copy. */
static uint32_t sg_pixels_bytes(GLenum format, GLenum type, size_t pixels) {
    size_t bpp = sg_src_bpp(format, type);
    if (bpp == 0) return 0;
    return (uint32_t)(pixels * bpp);
}

void glTexImage1D(GLenum target, GLint level, GLint ifmt, GLsizei w,
                  GLint border, GLenum format, GLenum type, const void *pixels) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        uint32_t bytes = pixels ? sg_pixels_bytes(format, type, (size_t)w) : 0;
        struct { GLenum target; GLint level; GLint ifmt;
                 GLsizei w; GLint border;
                 GLenum format; GLenum type; uint32_t bytes; } a =
            { target, level, ifmt, w, border, format, type, bytes };
        sg_dlist_emit(c, SG_OP_TEX_IMAGE_1D, &a, sizeof(a));
        if (bytes) sg_dlist_append(c, pixels, bytes);
        if (c->dlist_exec) _sg_tex_image_1d_real(target, level, ifmt, w, border,
                                                 format, type, pixels);
    } else {
        _sg_tex_image_1d_real(target, level, ifmt, w, border, format, type, pixels);
    }
}

void glTexImage2D(GLenum target, GLint level, GLint ifmt, GLsizei w, GLsizei h,
                  GLint border, GLenum format, GLenum type, const void *pixels) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        uint32_t bytes = pixels ? sg_pixels_bytes(format, type, (size_t)w * h) : 0;
        struct { GLenum target; GLint level; GLint ifmt;
                 GLsizei w, h; GLint border;
                 GLenum format; GLenum type; uint32_t bytes; } a =
            { target, level, ifmt, w, h, border, format, type, bytes };
        sg_dlist_emit(c, SG_OP_TEX_IMAGE_2D, &a, sizeof(a));
        if (bytes) sg_dlist_append(c, pixels, bytes);
        if (c->dlist_exec) _sg_tex_image_2d_real(target, level, ifmt, w, h, border,
                                                 format, type, pixels);
    } else {
        _sg_tex_image_2d_real(target, level, ifmt, w, h, border, format, type, pixels);
    }
}

void glTexImage3D(GLenum target, GLint level, GLint ifmt, GLsizei w, GLsizei h,
                  GLsizei d, GLint border, GLenum format, GLenum type,
                  const void *pixels) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        uint32_t bytes = pixels ? sg_pixels_bytes(format, type, (size_t)w * h * d) : 0;
        struct { GLenum target; GLint level; GLint ifmt;
                 GLsizei w, h, d; GLint border;
                 GLenum format; GLenum type; uint32_t bytes; } a =
            { target, level, ifmt, w, h, d, border, format, type, bytes };
        sg_dlist_emit(c, SG_OP_TEX_IMAGE_3D, &a, sizeof(a));
        if (bytes) sg_dlist_append(c, pixels, bytes);
        if (c->dlist_exec) _sg_tex_image_3d_real(target, level, ifmt, w, h, d,
                                                 border, format, type, pixels);
    } else {
        _sg_tex_image_3d_real(target, level, ifmt, w, h, d, border, format, type, pixels);
    }
}

void glTexSubImage1D(GLenum target, GLint level, GLint xoff, GLsizei w,
                     GLenum format, GLenum type, const void *pixels) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        uint32_t bytes = pixels ? sg_pixels_bytes(format, type, (size_t)w) : 0;
        struct { GLenum target; GLint level; GLint xoff; GLsizei w;
                 GLenum format; GLenum type; uint32_t bytes; } a =
            { target, level, xoff, w, format, type, bytes };
        sg_dlist_emit(c, SG_OP_TEX_SUB_IMAGE_1D, &a, sizeof(a));
        if (bytes) sg_dlist_append(c, pixels, bytes);
        if (c->dlist_exec) _sg_tex_sub_image_1d_real(target, level, xoff, w,
                                                     format, type, pixels);
    } else {
        _sg_tex_sub_image_1d_real(target, level, xoff, w, format, type, pixels);
    }
}

void glTexSubImage2D(GLenum target, GLint level, GLint xoff, GLint yoff,
                     GLsizei w, GLsizei h, GLenum format, GLenum type,
                     const void *pixels) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        uint32_t bytes = pixels ? sg_pixels_bytes(format, type, (size_t)w * h) : 0;
        struct { GLenum target; GLint level; GLint xoff, yoff; GLsizei w, h;
                 GLenum format; GLenum type; uint32_t bytes; } a =
            { target, level, xoff, yoff, w, h, format, type, bytes };
        sg_dlist_emit(c, SG_OP_TEX_SUB_IMAGE_2D, &a, sizeof(a));
        if (bytes) sg_dlist_append(c, pixels, bytes);
        if (c->dlist_exec) _sg_tex_sub_image_2d_real(target, level, xoff, yoff,
                                                     w, h, format, type, pixels);
    } else {
        _sg_tex_sub_image_2d_real(target, level, xoff, yoff, w, h, format, type, pixels);
    }
}

void _sg_tex_sub_image_3d_real(GLenum target, GLint level, GLint xoff, GLint yoff, GLint zoff,
                               GLsizei w, GLsizei h, GLsizei d, GLenum format, GLenum type,
                               const void *pixels) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_workers_flush(c);
    if (target != GL_TEXTURE_3D) { sg_set_error(GL_INVALID_ENUM); return; }
    sg_texture *t = sg_active_tex_for_target(c, SG_TEX_TARGET_3D);
    if (!t || level < 0 || level >= SG_MAX_MIPMAP_LEVELS || !t->data[level]) {
        sg_set_error(GL_INVALID_OPERATION); return;
    }
    int tw = t->w[level], th = t->h[level], td = t->d[level];
    if (xoff < 0 || yoff < 0 || zoff < 0 ||
        xoff + w > tw || yoff + h > th || zoff + d > td) {
        sg_set_error(GL_INVALID_VALUE); return;
    }
    if (!pixels) return;
    for (int z = 0; z < d; z++) {
        for (int y = 0; y < h; y++) {
            for (int x = 0; x < w; x++) {
                int src_i = (z * h + y) * w + x;
                int dst_i = ((zoff + z) * th + (yoff + y)) * tw + (xoff + x);
                sg_expand_pixel(t->data[level] + dst_i * 4, pixels, src_i, format, type);
            }
        }
    }
}

void glTexSubImage3D(GLenum target, GLint level, GLint xoff, GLint yoff, GLint zoff,
                     GLsizei w, GLsizei h, GLsizei d, GLenum format, GLenum type,
                     const void *pixels) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        uint32_t bytes = pixels ? sg_pixels_bytes(format, type, (size_t)w * h * d) : 0;
        struct { GLenum target; GLint level; GLint xoff, yoff, zoff;
                 GLsizei w, h, d; GLenum format; GLenum type; uint32_t bytes; } a =
            { target, level, xoff, yoff, zoff, w, h, d, format, type, bytes };
        sg_dlist_emit(c, SG_OP_TEX_SUB_IMAGE_3D, &a, sizeof(a));
        if (bytes) sg_dlist_append(c, pixels, bytes);
        if (c->dlist_exec) _sg_tex_sub_image_3d_real(target, level, xoff, yoff, zoff,
                                                     w, h, d, format, type, pixels);
    } else {
        _sg_tex_sub_image_3d_real(target, level, xoff, yoff, zoff, w, h, d,
                                  format, type, pixels);
    }
}

void glCopyTexImage1D(GLenum target, GLint level, GLenum ifmt,
                      GLint x, GLint y, GLsizei w, GLint border) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum target; GLint level; GLenum ifmt;
                 GLint x, y; GLsizei w; GLint border; } a =
            { target, level, ifmt, x, y, w, border };
        sg_dlist_emit(c, SG_OP_COPY_TEX_IMAGE_1D, &a, sizeof(a));
        if (c->dlist_exec) _sg_copy_tex_image_1d_real(target, level, ifmt, x, y, w, border);
    } else {
        _sg_copy_tex_image_1d_real(target, level, ifmt, x, y, w, border);
    }
}

void glCopyTexImage2D(GLenum target, GLint level, GLenum ifmt,
                      GLint x, GLint y, GLsizei w, GLsizei h, GLint border) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum target; GLint level; GLenum ifmt;
                 GLint x, y; GLsizei w, h; GLint border; } a =
            { target, level, ifmt, x, y, w, h, border };
        sg_dlist_emit(c, SG_OP_COPY_TEX_IMAGE_2D, &a, sizeof(a));
        if (c->dlist_exec) _sg_copy_tex_image_2d_real(target, level, ifmt, x, y, w, h, border);
    } else {
        _sg_copy_tex_image_2d_real(target, level, ifmt, x, y, w, h, border);
    }
}

void glCopyTexSubImage1D(GLenum target, GLint level, GLint xoff,
                         GLint x, GLint y, GLsizei w) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum target; GLint level; GLint xoff; GLint x, y; GLsizei w; } a =
            { target, level, xoff, x, y, w };
        sg_dlist_emit(c, SG_OP_COPY_TEX_SUB_IMAGE_1D, &a, sizeof(a));
        if (c->dlist_exec) _sg_copy_tex_sub_image_1d_real(target, level, xoff, x, y, w);
    } else {
        _sg_copy_tex_sub_image_1d_real(target, level, xoff, x, y, w);
    }
}

void glCopyTexSubImage2D(GLenum target, GLint level, GLint xoff, GLint yoff,
                         GLint x, GLint y, GLsizei w, GLsizei h) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum target; GLint level; GLint xoff, yoff;
                 GLint x, y; GLsizei w, h; } a =
            { target, level, xoff, yoff, x, y, w, h };
        sg_dlist_emit(c, SG_OP_COPY_TEX_SUB_IMAGE_2D, &a, sizeof(a));
        if (c->dlist_exec) _sg_copy_tex_sub_image_2d_real(target, level, xoff, yoff, x, y, w, h);
    } else {
        _sg_copy_tex_sub_image_2d_real(target, level, xoff, yoff, x, y, w, h);
    }
}

void glTexParameteri(GLenum target, GLenum pname, GLint param) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum t, p; GLint v; } a = {target, pname, param};
        sg_dlist_emit(c, SG_OP_TEX_PARAM_I, &a, sizeof(a));
        if (c->dlist_exec) _sg_tex_parameter_i_real(target, pname, param);
    } else _sg_tex_parameter_i_real(target, pname, param);
}

void glTexParameterf(GLenum target, GLenum pname, GLfloat param) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum t, p; float v; } a = {target, pname, param};
        sg_dlist_emit(c, SG_OP_TEX_PARAM_F, &a, sizeof(a));
        if (c->dlist_exec) _sg_tex_parameter_f_real(target, pname, param);
    } else _sg_tex_parameter_f_real(target, pname, param);
}

void glTexEnvi(GLenum target, GLenum pname, GLint param) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum t, p; GLint v; } a = {target, pname, param};
        sg_dlist_emit(c, SG_OP_TEX_ENV_I, &a, sizeof(a));
        if (c->dlist_exec) _sg_tex_env_i_real(target, pname, param);
    } else _sg_tex_env_i_real(target, pname, param);
}

void glTexEnvf(GLenum target, GLenum pname, GLfloat param) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLenum t, p; float v; } a = {target, pname, param};
        sg_dlist_emit(c, SG_OP_TEX_ENV_F, &a, sizeof(a));
        if (c->dlist_exec) _sg_tex_env_f_real(target, pname, param);
    } else _sg_tex_env_f_real(target, pname, param);
}

void glTexEnvfv(GLenum target, GLenum pname, const GLfloat *params) {
    softgl_ctx *c = sg_current(); if (!c || !params) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_TEX_ENV_FV, NULL, 0);
        sg_dlist_append(c, &target, sizeof(target));
        sg_dlist_append(c, &pname, sizeof(pname));
        sg_dlist_append(c, params, 4 * sizeof(float));
        if (c->dlist_exec) _sg_tex_env_fv_real(target, pname, params);
    } else _sg_tex_env_fv_real(target, pname, params);
}
