#include "types.h"
#include "dlist.h"
#include "workers.h"
#include <math.h>
#include <string.h>
#include <stdlib.h>

/* Pixel transfer: DrawPixels / ReadPixels / CopyPixels (overlap-safe
 * via temp) + PixelStore / PixelZoom / RasterPos. */

extern void sg_write_fragment(softgl_ctx *c, int x, int y, float z,
                              float r, float g, float b, float a);

static int sg_fmt_components(GLenum format) {
    switch (format) {
        case GL_RGBA:            return 4;
        case GL_RGB:             return 3;
        case GL_LUMINANCE_ALPHA: return 2;
        case GL_LUMINANCE:       return 1;
        case GL_ALPHA:           return 1;
        case GL_DEPTH_COMPONENT: return 1;
        case GL_STENCIL_INDEX:   return 1;
        default: return 0;
    }
}

static int sg_type_size(GLenum type) {
    switch (type) {
        case GL_UNSIGNED_BYTE:  return 1;
        case GL_BYTE:           return 1;
        case GL_UNSIGNED_SHORT: return 2;
        case GL_SHORT:          return 2;
        case GL_UNSIGNED_INT:   return 4;
        case GL_INT:            return 4;
        case GL_FLOAT:          return 4;
        default: return 0;
    }
}

static size_t sg_align_up(size_t n, size_t a) {
    if (a <= 1) return n;
    return (n + a - 1) & ~(a - 1);
}

/* Row stride bytes: honours row_length (0=width) + alignment. */
static size_t sg_row_stride(int width, int pixel_size, GLint row_length, GLint alignment) {
    int w = (row_length > 0) ? row_length : width;
    size_t row_bytes = (size_t)w * (size_t)pixel_size;
    return sg_align_up(row_bytes, (size_t)(alignment > 0 ? alignment : 1));
}

/* int -> [0,1] or [-1,1], float native. */
static float sg_read_component_norm(const void *p, GLenum type) {
    switch (type) {
        case GL_UNSIGNED_BYTE:  return *(const uint8_t*)p * (1.0f / 255.0f);
        case GL_BYTE: {
            float f = *(const int8_t*)p * (1.0f / 127.0f);
            return f < -1.f ? -1.f : f;
        }
        case GL_UNSIGNED_SHORT: return *(const uint16_t*)p * (1.0f / 65535.0f);
        case GL_SHORT: {
            float f = *(const int16_t*)p * (1.0f / 32767.0f);
            return f < -1.f ? -1.f : f;
        }
        case GL_UNSIGNED_INT:   return *(const uint32_t*)p * (1.0f / 4294967295.0f);
        case GL_INT: {
            float f = *(const int32_t*)p * (1.0f / 2147483647.0f);
            return f < -1.f ? -1.f : f;
        }
        case GL_FLOAT:          return *(const float*)p;
        default: return 0.f;
    }
}

static uint32_t sg_read_component_int(const void *p, GLenum type) {
    switch (type) {
        case GL_UNSIGNED_BYTE:  return *(const uint8_t*)p;
        case GL_BYTE:           return (uint32_t)(int32_t)*(const int8_t*)p;
        case GL_UNSIGNED_SHORT: return *(const uint16_t*)p;
        case GL_SHORT:          return (uint32_t)(int32_t)*(const int16_t*)p;
        case GL_UNSIGNED_INT:   return *(const uint32_t*)p;
        case GL_INT:            return (uint32_t)*(const int32_t*)p;
        case GL_FLOAT:          return (uint32_t)(*(const float*)p);
        default: return 0;
    }
}

static void sg_write_component_norm(void *p, GLenum type, float v) {
    if (v < 0.f) v = 0.f; else if (v > 1.f) v = 1.f;
    switch (type) {
        case GL_UNSIGNED_BYTE:  *(uint8_t*)p  = (uint8_t)(v * 255.0f + 0.5f); break;
        case GL_BYTE:           *(int8_t*)p   = (int8_t)(v * 127.0f + 0.5f); break;
        case GL_UNSIGNED_SHORT: *(uint16_t*)p = (uint16_t)(v * 65535.0f + 0.5f); break;
        case GL_SHORT:          *(int16_t*)p  = (int16_t)(v * 32767.0f + 0.5f); break;
        case GL_UNSIGNED_INT:   *(uint32_t*)p = (uint32_t)(v * 4294967295.0f); break;
        case GL_INT:            *(int32_t*)p  = (int32_t)(v * 2147483647.0f); break;
        case GL_FLOAT:          *(float*)p    = v; break;
        default: break;
    }
}

static void sg_write_component_int(void *p, GLenum type, uint32_t v) {
    switch (type) {
        case GL_UNSIGNED_BYTE:  *(uint8_t*)p  = (uint8_t)(v & 0xFF); break;
        case GL_BYTE:           *(int8_t*)p   = (int8_t)(v & 0xFF); break;
        case GL_UNSIGNED_SHORT: *(uint16_t*)p = (uint16_t)(v & 0xFFFF); break;
        case GL_SHORT:          *(int16_t*)p  = (int16_t)(v & 0xFFFF); break;
        case GL_UNSIGNED_INT:   *(uint32_t*)p = v; break;
        case GL_INT:            *(int32_t*)p  = (int32_t)v; break;
        case GL_FLOAT:          *(float*)p    = (float)v; break;
        default: break;
    }
}

typedef struct {
    float    rgba[4];
    float    depth;
    uint32_t stencil;
} sg_unpacked;

static void sg_unpack_pixel(sg_unpacked *out, const uint8_t *row, int i,
                            GLenum format, GLenum type) {
    int ncomp = sg_fmt_components(format);
    int tsz   = sg_type_size(type);
    const uint8_t *p = row + (size_t)i * (size_t)ncomp * (size_t)tsz;

    out->rgba[0] = 0.f; out->rgba[1] = 0.f;
    out->rgba[2] = 0.f; out->rgba[3] = 1.f;
    out->depth = 0.f;
    out->stencil = 0;

    if (format == GL_DEPTH_COMPONENT) {
        if (type == GL_FLOAT) out->depth = *(const float*)p;
        else                  out->depth = sg_read_component_norm(p, type);
        return;
    }
    if (format == GL_STENCIL_INDEX) {
        out->stencil = sg_read_component_int(p, type);
        return;
    }

    float comp[4] = {0.f, 0.f, 0.f, 1.f};
    for (int k = 0; k < ncomp; k++) {
        comp[k] = sg_read_component_norm(p + (size_t)k * (size_t)tsz, type);
    }
    switch (format) {
        case GL_RGBA:
            out->rgba[0] = comp[0]; out->rgba[1] = comp[1];
            out->rgba[2] = comp[2]; out->rgba[3] = comp[3]; break;
        case GL_RGB:
            out->rgba[0] = comp[0]; out->rgba[1] = comp[1];
            out->rgba[2] = comp[2]; out->rgba[3] = 1.f; break;
        case GL_LUMINANCE_ALPHA:
            out->rgba[0] = comp[0]; out->rgba[1] = comp[0];
            out->rgba[2] = comp[0]; out->rgba[3] = comp[1]; break;
        case GL_LUMINANCE:
            out->rgba[0] = comp[0]; out->rgba[1] = comp[0];
            out->rgba[2] = comp[0]; out->rgba[3] = 1.f; break;
        case GL_ALPHA:
            out->rgba[0] = 0.f; out->rgba[1] = 0.f;
            out->rgba[2] = 0.f; out->rgba[3] = comp[0]; break;
        default: break;
    }
}

static void sg_pack_pixel(const softgl_ctx *c, int fbx, int fby,
                          uint8_t *row, int i,
                          GLenum format, GLenum type) {
    int ncomp = sg_fmt_components(format);
    int tsz   = sg_type_size(type);
    uint8_t *p = row + (size_t)i * (size_t)ncomp * (size_t)tsz;
    int idx = fby * c->fb.w + fbx;

    if (format == GL_DEPTH_COMPONENT) {
        float d = c->fb.depth[idx];
        if (type == GL_FLOAT) *(float*)p = d;
        else                  sg_write_component_norm(p, type, d);
        return;
    }
    if (format == GL_STENCIL_INDEX) {
        uint32_t s = c->fb.stencil[idx];
        sg_write_component_int(p, type, s);
        return;
    }

    const uint8_t *src = c->fb.color + idx * 4;
    float rgba[4] = {
        src[0] * (1.0f / 255.0f),
        src[1] * (1.0f / 255.0f),
        src[2] * (1.0f / 255.0f),
        src[3] * (1.0f / 255.0f),
    };
    float comp[4] = {0.f, 0.f, 0.f, 1.f};
    switch (format) {
        case GL_RGBA:
            comp[0]=rgba[0]; comp[1]=rgba[1]; comp[2]=rgba[2]; comp[3]=rgba[3]; break;
        case GL_RGB:
            comp[0]=rgba[0]; comp[1]=rgba[1]; comp[2]=rgba[2]; break;
        case GL_LUMINANCE_ALPHA: {
            float L = 0.299f*rgba[0] + 0.587f*rgba[1] + 0.114f*rgba[2];
            comp[0] = L; comp[1] = rgba[3]; break; }
        case GL_LUMINANCE: {
            float L = 0.299f*rgba[0] + 0.587f*rgba[1] + 0.114f*rgba[2];
            comp[0] = L; break; }
        case GL_ALPHA:
            comp[0] = rgba[3]; break;
        default: break;
    }
    for (int k = 0; k < ncomp; k++) {
        sg_write_component_norm(p + (size_t)k * (size_t)tsz, type, comp[k]);
    }
}

static int sg_pixel_store_field(softgl_ctx *c, GLenum pname, GLint **outp) {
    switch (pname) {
        case GL_PACK_ALIGNMENT:   *outp = &c->pack.alignment; return 1;
        case GL_PACK_ROW_LENGTH:  *outp = &c->pack.row_length; return 1;
        case GL_PACK_SKIP_ROWS:   *outp = &c->pack.skip_rows; return 1;
        case GL_PACK_SKIP_PIXELS: *outp = &c->pack.skip_pixels; return 1;
        case GL_PACK_LSB_FIRST:   *outp = &c->pack.lsb_first; return 1;
        case GL_PACK_SWAP_BYTES:  *outp = &c->pack.swap_bytes; return 1;
        case GL_UNPACK_ALIGNMENT:   *outp = &c->unpack.alignment; return 1;
        case GL_UNPACK_ROW_LENGTH:  *outp = &c->unpack.row_length; return 1;
        case GL_UNPACK_SKIP_ROWS:   *outp = &c->unpack.skip_rows; return 1;
        case GL_UNPACK_SKIP_PIXELS: *outp = &c->unpack.skip_pixels; return 1;
        case GL_UNPACK_LSB_FIRST:   *outp = &c->unpack.lsb_first; return 1;
        case GL_UNPACK_SWAP_BYTES:  *outp = &c->unpack.swap_bytes; return 1;
        default: return 0;
    }
}

void _sg_pixel_store_i_real(GLenum pname, GLint param) {
    softgl_ctx *c = sg_current(); if (!c) return;
    GLint *dst = NULL;
    if (!sg_pixel_store_field(c, pname, &dst)) { sg_set_error(GL_INVALID_ENUM); return; }
    if (pname == GL_PACK_ALIGNMENT || pname == GL_UNPACK_ALIGNMENT) {
        if (param != 1 && param != 2 && param != 4 && param != 8) {
            sg_set_error(GL_INVALID_VALUE); return;
        }
    } else if (pname == GL_PACK_ROW_LENGTH || pname == GL_UNPACK_ROW_LENGTH ||
               pname == GL_PACK_SKIP_ROWS  || pname == GL_UNPACK_SKIP_ROWS  ||
               pname == GL_PACK_SKIP_PIXELS|| pname == GL_UNPACK_SKIP_PIXELS) {
        if (param < 0) { sg_set_error(GL_INVALID_VALUE); return; }
    }
    *dst = param;
}

void _sg_pixel_store_f_real(GLenum pname, GLfloat param) {
    /* Booleans: non-zero = true; integers round. */
    GLint p;
    if (pname == GL_PACK_LSB_FIRST || pname == GL_UNPACK_LSB_FIRST ||
        pname == GL_PACK_SWAP_BYTES || pname == GL_UNPACK_SWAP_BYTES) {
        p = (param != 0.f) ? 1 : 0;
    } else {
        p = (GLint)(param + (param >= 0.f ? 0.5f : -0.5f));
    }
    _sg_pixel_store_i_real(pname, p);
}

void glPixelStorei(GLenum pname, GLint param) {
    softgl_ctx *c = sg_current(); if (!c) return;
    /* Spec: pixel-store changes execute immediately, never recorded. */
    if (c->dlist_recording) {
        _sg_pixel_store_i_real(pname, param);
        return;
    }
    _sg_pixel_store_i_real(pname, param);
}

void glPixelStoref(GLenum pname, GLfloat param) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        _sg_pixel_store_f_real(pname, param);
        return;
    }
    _sg_pixel_store_f_real(pname, param);
}

void _sg_pixel_zoom_real(GLfloat xf, GLfloat yf) {
    softgl_ctx *c = sg_current(); if (!c) return;
    c->pixel_zoom_x = xf;
    c->pixel_zoom_y = yf;
}

void glPixelZoom(GLfloat xf, GLfloat yf) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        float v[2] = { xf, yf };
        sg_dlist_emit(c, SG_OP_PIXEL_ZOOM, v, sizeof(v));
        if (c->dlist_exec) _sg_pixel_zoom_real(xf, yf);
    } else _sg_pixel_zoom_real(xf, yf);
}

/* MV*P, clip test, perspective divide, viewport. Sets raster_pos_valid. */
void _sg_raster_pos_real(float x, float y, float z, float w) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_vec4 obj = { x, y, z, w };
    sg_vec4 eye; sg_mat4_mul_vec4(&eye, &c->mv_stack[c->mv_top], &obj);
    sg_vec4 clip; sg_mat4_mul_vec4(&clip, &c->pr_stack[c->pr_top], &eye);

    float aw = fabsf(clip.w);
    int valid = (fabsf(clip.x) <= aw) && (fabsf(clip.y) <= aw) && (fabsf(clip.z) <= aw);
    c->raster_pos_valid = valid ? 1 : 0;

    float iw = (clip.w != 0.f) ? (1.0f / clip.w) : 1e20f;
    float nx = clip.x * iw, ny = clip.y * iw, nz = clip.z * iw;
    float vpx = (float)c->viewport[0];
    float vpy = (float)c->viewport[1];
    float vpw = (float)c->viewport[2];
    float vph = (float)c->viewport[3];
    c->raster_pos[0] = vpx + (nx * 0.5f + 0.5f) * vpw;
    c->raster_pos[1] = vpy + (ny * 0.5f + 0.5f) * vph;
    c->raster_pos[2] = (nz * 0.5f + 0.5f);
    c->raster_pos[3] = clip.w;

    /* Spec: snapshot current color + tex0. */
    c->raster_color[0] = c->current_color[0];
    c->raster_color[1] = c->current_color[1];
    c->raster_color[2] = c->current_color[2];
    c->raster_color[3] = c->current_color[3];
    c->raster_texcoord[0] = c->current_texcoord[0][0];
    c->raster_texcoord[1] = c->current_texcoord[0][1];
    c->raster_texcoord[2] = c->current_texcoord[0][2];
    c->raster_texcoord[3] = c->current_texcoord[0][3];
}

static void sg_raster_pos_wrapper(float x, float y, float z, float w) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        float v[4] = { x, y, z, w };
        sg_dlist_emit(c, SG_OP_RASTER_POS, v, sizeof(v));
        if (c->dlist_exec) _sg_raster_pos_real(x, y, z, w);
    } else _sg_raster_pos_real(x, y, z, w);
}

void glRasterPos2f(GLfloat x, GLfloat y)                       { sg_raster_pos_wrapper(x, y, 0.f, 1.f); }
void glRasterPos2i(GLint x, GLint y)                           { sg_raster_pos_wrapper((float)x,(float)y,0.f,1.f); }
void glRasterPos2s(GLshort x, GLshort y)                       { sg_raster_pos_wrapper((float)x,(float)y,0.f,1.f); }
void glRasterPos2d(GLdouble x, GLdouble y)                     { sg_raster_pos_wrapper((float)x,(float)y,0.f,1.f); }
void glRasterPos3f(GLfloat x, GLfloat y, GLfloat z)            { sg_raster_pos_wrapper(x, y, z, 1.f); }
void glRasterPos3i(GLint x, GLint y, GLint z)                  { sg_raster_pos_wrapper((float)x,(float)y,(float)z,1.f); }
void glRasterPos3s(GLshort x, GLshort y, GLshort z)            { sg_raster_pos_wrapper((float)x,(float)y,(float)z,1.f); }
void glRasterPos3d(GLdouble x, GLdouble y, GLdouble z)         { sg_raster_pos_wrapper((float)x,(float)y,(float)z,1.f); }
void glRasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w) { sg_raster_pos_wrapper(x,y,z,w); }
void glRasterPos4i(GLint x, GLint y, GLint z, GLint w)         { sg_raster_pos_wrapper((float)x,(float)y,(float)z,(float)w); }
void glRasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w) { sg_raster_pos_wrapper((float)x,(float)y,(float)z,(float)w); }
void glRasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w) { sg_raster_pos_wrapper((float)x,(float)y,(float)z,(float)w); }
void glRasterPos2fv(const GLfloat *v)  { sg_raster_pos_wrapper(v[0], v[1], 0.f, 1.f); }
void glRasterPos2iv(const GLint *v)    { sg_raster_pos_wrapper((float)v[0],(float)v[1],0.f,1.f); }
void glRasterPos2sv(const GLshort *v)  { sg_raster_pos_wrapper((float)v[0],(float)v[1],0.f,1.f); }
void glRasterPos2dv(const GLdouble *v) { sg_raster_pos_wrapper((float)v[0],(float)v[1],0.f,1.f); }
void glRasterPos3fv(const GLfloat *v)  { sg_raster_pos_wrapper(v[0], v[1], v[2], 1.f); }
void glRasterPos3iv(const GLint *v)    { sg_raster_pos_wrapper((float)v[0],(float)v[1],(float)v[2],1.f); }
void glRasterPos3sv(const GLshort *v)  { sg_raster_pos_wrapper((float)v[0],(float)v[1],(float)v[2],1.f); }
void glRasterPos3dv(const GLdouble *v) { sg_raster_pos_wrapper((float)v[0],(float)v[1],(float)v[2],1.f); }
void glRasterPos4fv(const GLfloat *v)  { sg_raster_pos_wrapper(v[0], v[1], v[2], v[3]); }
void glRasterPos4iv(const GLint *v)    { sg_raster_pos_wrapper((float)v[0],(float)v[1],(float)v[2],(float)v[3]); }
void glRasterPos4sv(const GLshort *v)  { sg_raster_pos_wrapper((float)v[0],(float)v[1],(float)v[2],(float)v[3]); }
void glRasterPos4dv(const GLdouble *v) { sg_raster_pos_wrapper((float)v[0],(float)v[1],(float)v[2],(float)v[3]); }

/* Stamp src pixel (i,j) into zoom-mapped dest rect via fragment pipeline. */
static void sg_drawpixel_color(softgl_ctx *c, int i, int j, int src_w, int src_h,
                               const sg_unpacked *up, int rx, int ry) {
    float zx = c->pixel_zoom_x;
    float zy = c->pixel_zoom_y;
    float dx0 = (float)rx + (float)i     * zx;
    float dx1 = (float)rx + (float)(i+1) * zx;
    float dy0 = (float)ry + (float)j     * zy;
    float dy1 = (float)ry + (float)(j+1) * zy;
    if (dx1 < dx0) { float t = dx0; dx0 = dx1; dx1 = t; }
    if (dy1 < dy0) { float t = dy0; dy0 = dy1; dy1 = t; }
    int ix0 = (int)floorf(dx0), ix1 = (int)ceilf(dx1);
    int iy0 = (int)floorf(dy0), iy1 = (int)ceilf(dy1);
    float z = c->raster_pos[2];
    if (z < 0.f) z = 0.f; else if (z > 1.f) z = 1.f;
    for (int y = iy0; y < iy1; y++) {
        for (int x = ix0; x < ix1; x++) {
            sg_write_fragment(c, x, y, z,
                              up->rgba[0], up->rgba[1], up->rgba[2], up->rgba[3]);
        }
    }
    (void)src_w; (void)src_h;
}

/* Depth/stencil writes bypass color pipeline; honour scissor only. */
static void sg_drawpixel_depth(softgl_ctx *c, int i, int j, float z_val,
                               int rx, int ry) {
    float zx = c->pixel_zoom_x;
    float zy = c->pixel_zoom_y;
    float dx0 = (float)rx + (float)i     * zx;
    float dx1 = (float)rx + (float)(i+1) * zx;
    float dy0 = (float)ry + (float)j     * zy;
    float dy1 = (float)ry + (float)(j+1) * zy;
    if (dx1 < dx0) { float t = dx0; dx0 = dx1; dx1 = t; }
    if (dy1 < dy0) { float t = dy0; dy0 = dy1; dy1 = t; }
    int ix0 = (int)floorf(dx0), ix1 = (int)ceilf(dx1);
    int iy0 = (int)floorf(dy0), iy1 = (int)ceilf(dy1);
    for (int y = iy0; y < iy1; y++) {
        for (int x = ix0; x < ix1; x++) {
            if (x < 0 || y < 0 || x >= c->fb.w || y >= c->fb.h) continue;
            if (c->scissor_enabled) {
                if (x < c->scissor[0] || y < c->scissor[1] ||
                    x >= c->scissor[0]+c->scissor[2] ||
                    y >= c->scissor[1]+c->scissor[3]) continue;
            }
            if (c->depth_mask) c->fb.depth[y*c->fb.w + x] = z_val;
        }
    }
}

static void sg_drawpixel_stencil(softgl_ctx *c, int i, int j, uint32_t s,
                                 int rx, int ry) {
    float zx = c->pixel_zoom_x;
    float zy = c->pixel_zoom_y;
    float dx0 = (float)rx + (float)i     * zx;
    float dx1 = (float)rx + (float)(i+1) * zx;
    float dy0 = (float)ry + (float)j     * zy;
    float dy1 = (float)ry + (float)(j+1) * zy;
    if (dx1 < dx0) { float t = dx0; dx0 = dx1; dx1 = t; }
    if (dy1 < dy0) { float t = dy0; dy0 = dy1; dy1 = t; }
    int ix0 = (int)floorf(dx0), ix1 = (int)ceilf(dx1);
    int iy0 = (int)floorf(dy0), iy1 = (int)ceilf(dy1);
    uint8_t wm = (uint8_t)(c->stencil_write_mask & 0xFFu);
    uint8_t sv = (uint8_t)(s & 0xFFu);
    for (int y = iy0; y < iy1; y++) {
        for (int x = ix0; x < ix1; x++) {
            if (x < 0 || y < 0 || x >= c->fb.w || y >= c->fb.h) continue;
            if (c->scissor_enabled) {
                if (x < c->scissor[0] || y < c->scissor[1] ||
                    x >= c->scissor[0]+c->scissor[2] ||
                    y >= c->scissor[1]+c->scissor[3]) continue;
            }
            uint8_t cur = c->fb.stencil[y*c->fb.w + x];
            c->fb.stencil[y*c->fb.w + x] = (uint8_t)((sv & wm) | (cur & (uint8_t)~wm));
        }
    }
}

void _sg_draw_pixels_real(GLsizei width, GLsizei height,
                          GLenum format, GLenum type, const void *pixels) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (width <= 0 || height <= 0 || !pixels) return;
    if (!c->raster_pos_valid) return;
    int ncomp = sg_fmt_components(format);
    int tsz   = sg_type_size(type);
    if (ncomp == 0 || tsz == 0) { sg_set_error(GL_INVALID_ENUM); return; }

    int pixel_size = ncomp * tsz;
    size_t stride = sg_row_stride(width, pixel_size,
                                  c->unpack.row_length, c->unpack.alignment);
    const uint8_t *base = (const uint8_t*)pixels
        + (size_t)c->unpack.skip_rows   * stride
        + (size_t)c->unpack.skip_pixels * (size_t)pixel_size;

    int rx = (int)floorf(c->raster_pos[0] + 0.5f);
    int ry = (int)floorf(c->raster_pos[1] + 0.5f);

    for (int j = 0; j < height; j++) {
        const uint8_t *row = base + (size_t)j * stride;
        for (int i = 0; i < width; i++) {
            sg_unpacked up;
            sg_unpack_pixel(&up, row, i, format, type);
            if (format == GL_DEPTH_COMPONENT) {
                sg_drawpixel_depth(c, i, j, up.depth, rx, ry);
            } else if (format == GL_STENCIL_INDEX) {
                sg_drawpixel_stencil(c, i, j, up.stencil, rx, ry);
            } else {
                sg_drawpixel_color(c, i, j, width, height, &up, rx, ry);
            }
        }
    }
}

void glDrawPixels(GLsizei w, GLsizei h, GLenum format, GLenum type, const void *pixels) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        int ncomp = sg_fmt_components(format);
        int tsz   = sg_type_size(type);
        size_t stride = sg_row_stride(w, ncomp*tsz, c->unpack.row_length, c->unpack.alignment);
        size_t bytes = (h > 0) ? ((size_t)(h - 1) * stride + (size_t)w * (size_t)(ncomp*tsz))
                               : 0;
        struct { GLsizei w, h; GLenum format, type; uint32_t bytes; } a =
            { w, h, format, type, (uint32_t)bytes };
        sg_dlist_emit(c, SG_OP_DRAW_PIXELS, &a, sizeof(a));
        if (bytes > 0 && pixels) sg_dlist_append(c, pixels, bytes);
        if (c->dlist_exec) _sg_draw_pixels_real(w, h, format, type, pixels);
    } else _sg_draw_pixels_real(w, h, format, type, pixels);
}

void _sg_read_pixels_real(GLint x, GLint y, GLsizei width, GLsizei height,
                          GLenum format, GLenum type, void *pixels) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (width <= 0 || height <= 0 || !pixels) return;
    int ncomp = sg_fmt_components(format);
    int tsz   = sg_type_size(type);
    if (ncomp == 0 || tsz == 0) { sg_set_error(GL_INVALID_ENUM); return; }

    int pixel_size = ncomp * tsz;
    size_t stride = sg_row_stride(width, pixel_size,
                                  c->pack.row_length, c->pack.alignment);
    uint8_t *base = (uint8_t*)pixels
        + (size_t)c->pack.skip_rows   * stride
        + (size_t)c->pack.skip_pixels * (size_t)pixel_size;

    for (int j = 0; j < height; j++) {
        uint8_t *row = base + (size_t)j * stride;
        for (int i = 0; i < width; i++) {
            int fbx = x + i;
            int fby = y + j;
            if (fbx < 0 || fby < 0 || fbx >= c->fb.w || fby >= c->fb.h) {
                memset(row + (size_t)i * (size_t)pixel_size, 0, (size_t)pixel_size);
                continue;
            }
            sg_pack_pixel(c, fbx, fby, row, i, format, type);
        }
    }
}

void glReadPixels(GLint x, GLint y, GLsizei w, GLsizei h,
                  GLenum format, GLenum type, void *pixels) {
    /* Spec: never compiled into display lists. */
    softgl_ctx *c = sg_current(); if (c) sg_workers_flush(c);
    _sg_read_pixels_real(x, y, w, h, format, type, pixels);
}

void _sg_copy_pixels_real(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (width <= 0 || height <= 0) return;
    if (!c->raster_pos_valid) return;
    if (type != GL_COLOR && type != GL_DEPTH && type != GL_STENCIL) {
        sg_set_error(GL_INVALID_ENUM); return;
    }

    int rx = (int)floorf(c->raster_pos[0] + 0.5f);
    int ry = (int)floorf(c->raster_pos[1] + 0.5f);

    if (type == GL_COLOR) {
        size_t pixels = (size_t)width * (size_t)height;
        uint8_t *tmp = (uint8_t*)malloc(pixels * 4);
        if (!tmp) { sg_set_error(GL_OUT_OF_MEMORY); return; }
        /* Linear RGBA8 matching fb layout → overlap-safe. */
        for (int j = 0; j < height; j++) {
            for (int i = 0; i < width; i++) {
                int sx = x + i, sy = y + j;
                uint8_t *dst = tmp + (size_t)(j * width + i) * 4;
                if (sx < 0 || sy < 0 || sx >= c->fb.w || sy >= c->fb.h) {
                    dst[0] = dst[1] = dst[2] = dst[3] = 0;
                } else {
                    const uint8_t *src = c->fb.color + (sy * c->fb.w + sx) * 4;
                    dst[0] = src[0]; dst[1] = src[1]; dst[2] = src[2]; dst[3] = src[3];
                }
            }
        }
        /* Pipeline write so blend/depth/alpha/mask apply. */
        float z = c->raster_pos[2];
        if (z < 0.f) z = 0.f; else if (z > 1.f) z = 1.f;
        for (int j = 0; j < height; j++) {
            for (int i = 0; i < width; i++) {
                const uint8_t *src = tmp + (size_t)(j * width + i) * 4;
                sg_unpacked up;
                up.rgba[0] = src[0] * (1.0f/255.0f);
                up.rgba[1] = src[1] * (1.0f/255.0f);
                up.rgba[2] = src[2] * (1.0f/255.0f);
                up.rgba[3] = src[3] * (1.0f/255.0f);
                up.depth = z; up.stencil = 0;
                sg_drawpixel_color(c, i, j, width, height, &up, rx, ry);
            }
        }
        free(tmp);
        return;
    }

    if (type == GL_DEPTH) {
        size_t pixels = (size_t)width * (size_t)height;
        float *tmp = (float*)malloc(pixels * sizeof(float));
        if (!tmp) { sg_set_error(GL_OUT_OF_MEMORY); return; }
        for (int j = 0; j < height; j++) {
            for (int i = 0; i < width; i++) {
                int sx = x + i, sy = y + j;
                tmp[j * width + i] = (sx < 0 || sy < 0 || sx >= c->fb.w || sy >= c->fb.h)
                    ? 0.f : c->fb.depth[sy * c->fb.w + sx];
            }
        }
        for (int j = 0; j < height; j++)
            for (int i = 0; i < width; i++)
                sg_drawpixel_depth(c, i, j, tmp[j * width + i], rx, ry);
        free(tmp);
        return;
    }

    /* GL_STENCIL */
    size_t pixels = (size_t)width * (size_t)height;
    uint8_t *tmp = (uint8_t*)malloc(pixels);
    if (!tmp) { sg_set_error(GL_OUT_OF_MEMORY); return; }
    for (int j = 0; j < height; j++) {
        for (int i = 0; i < width; i++) {
            int sx = x + i, sy = y + j;
            tmp[j * width + i] = (sx < 0 || sy < 0 || sx >= c->fb.w || sy >= c->fb.h)
                ? 0 : c->fb.stencil[sy * c->fb.w + sx];
        }
    }
    for (int j = 0; j < height; j++)
        for (int i = 0; i < width; i++)
            sg_drawpixel_stencil(c, i, j, tmp[j * width + i], rx, ry);
    free(tmp);
}

void glCopyPixels(GLint x, GLint y, GLsizei w, GLsizei h, GLenum type) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        struct { GLint x, y; GLsizei w, h; GLenum type; } a = { x, y, w, h, type };
        sg_dlist_emit(c, SG_OP_COPY_PIXELS, &a, sizeof(a));
        if (c->dlist_exec) _sg_copy_pixels_real(x, y, w, h, type);
    } else _sg_copy_pixels_real(x, y, w, h, type);
}
