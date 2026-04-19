#include "types.h"
#include "dlist.h"
#include <string.h>
#include <stdlib.h>

/* ==================================================================
 * Immediate mode + the entire Color/Normal/TexCoord/Vertex entry-point
 * zoo.  All the integer/short/byte/double variants reduce to the
 * float-normalized set_color/set_normal/set_texcoord/vert_emit helpers,
 * and THOSE are the only things the display-list recorder needs to
 * intercept — the public glColor3b / glColor4ui / ... variants route
 * through them automatically.
 * ================================================================== */

SG_INLINE float nb(GLbyte v)   { float f = v * (1.0f / 127.0f);        return f < -1.f ? -1.f : f; }
SG_INLINE float nub(GLubyte v) { return v * (1.0f / 255.0f); }
SG_INLINE float ns(GLshort v)  { float f = v * (1.0f / 32767.0f);      return f < -1.f ? -1.f : f; }
SG_INLINE float nus(GLushort v){ return v * (1.0f / 65535.0f); }
SG_INLINE float ni(GLint v)    { float f = v * (1.0f / 2147483647.0f); return f < -1.f ? -1.f : f; }
SG_INLINE float nui(GLuint v)  { return v * (1.0f / 4294967295.0f); }

/* ==================  _real implementations  ================== */

void _sg_cur_color_real(float r, float g, float b, float a) {
    softgl_ctx *c = sg_current(); if (!c) return;
    c->current_color[0] = r; c->current_color[1] = g;
    c->current_color[2] = b; c->current_color[3] = a;
}

void _sg_cur_normal_real(float x, float y, float z) {
    softgl_ctx *c = sg_current(); if (!c) return;
    c->current_normal[0] = x; c->current_normal[1] = y; c->current_normal[2] = z;
}

void _sg_cur_texcoord_real(unsigned unit, float s, float t, float r, float q) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (unit >= SG_MAX_TEX_UNITS) return;
    c->current_texcoord[unit][0] = s;
    c->current_texcoord[unit][1] = t;
    c->current_texcoord[unit][2] = r;
    c->current_texcoord[unit][3] = q;
}

void _sg_cur_edgeflag_real(int f) {
    softgl_ctx *c = sg_current(); if (!c) return;
    c->current_edge_flag = f ? 1 : 0;
}

/* ==================  Recording-aware setters used by the variants ====== */

static void set_color(float r, float g, float b, float a) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        float v[4] = {r, g, b, a};
        sg_dlist_emit(c, SG_OP_CUR_COLOR, v, sizeof(v));
        if (c->dlist_exec) _sg_cur_color_real(r, g, b, a);
    } else _sg_cur_color_real(r, g, b, a);
}

static void set_normal(float x, float y, float z) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        float v[3] = {x, y, z};
        sg_dlist_emit(c, SG_OP_CUR_NORMAL, v, sizeof(v));
        if (c->dlist_exec) _sg_cur_normal_real(x, y, z);
    } else _sg_cur_normal_real(x, y, z);
}

static void set_texcoord(unsigned unit, float s, float t, float r, float q) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        uint32_t u = (uint32_t)unit;
        float v[4] = {s, t, r, q};
        sg_dlist_emit(c, SG_OP_CUR_TEXCOORD, NULL, 0);
        sg_dlist_append(c, &u, sizeof(u));
        sg_dlist_append(c, v, sizeof(v));
        if (c->dlist_exec) _sg_cur_texcoord_real(unit, s, t, r, q);
    } else _sg_cur_texcoord_real(unit, s, t, r, q);
}

/* =====================  glColor  ===================== */

void glColor3f(GLfloat r, GLfloat g, GLfloat b)                     { set_color(r, g, b, 1.f); }
void glColor4f(GLfloat r, GLfloat g, GLfloat b, GLfloat a)          { set_color(r, g, b, a); }
void glColor3d(GLdouble r, GLdouble g, GLdouble b)                  { set_color((float)r,(float)g,(float)b, 1.f); }
void glColor4d(GLdouble r, GLdouble g, GLdouble b, GLdouble a)      { set_color((float)r,(float)g,(float)b,(float)a); }
void glColor3b(GLbyte r, GLbyte g, GLbyte b)                        { set_color(nb(r), nb(g), nb(b), 1.f); }
void glColor4b(GLbyte r, GLbyte g, GLbyte b, GLbyte a)              { set_color(nb(r), nb(g), nb(b), nb(a)); }
void glColor3ub(GLubyte r, GLubyte g, GLubyte b)                    { set_color(nub(r), nub(g), nub(b), 1.f); }
void glColor4ub(GLubyte r, GLubyte g, GLubyte b, GLubyte a)         { set_color(nub(r), nub(g), nub(b), nub(a)); }
void glColor3s(GLshort r, GLshort g, GLshort b)                     { set_color(ns(r), ns(g), ns(b), 1.f); }
void glColor4s(GLshort r, GLshort g, GLshort b, GLshort a)          { set_color(ns(r), ns(g), ns(b), ns(a)); }
void glColor3us(GLushort r, GLushort g, GLushort b)                 { set_color(nus(r), nus(g), nus(b), 1.f); }
void glColor4us(GLushort r, GLushort g, GLushort b, GLushort a)     { set_color(nus(r), nus(g), nus(b), nus(a)); }
void glColor3i(GLint r, GLint g, GLint b)                           { set_color(ni(r), ni(g), ni(b), 1.f); }
void glColor4i(GLint r, GLint g, GLint b, GLint a)                  { set_color(ni(r), ni(g), ni(b), ni(a)); }
void glColor3ui(GLuint r, GLuint g, GLuint b)                       { set_color(nui(r), nui(g), nui(b), 1.f); }
void glColor4ui(GLuint r, GLuint g, GLuint b, GLuint a)             { set_color(nui(r), nui(g), nui(b), nui(a)); }

void glColor3fv(const GLfloat *v)  { glColor3f(v[0], v[1], v[2]); }
void glColor4fv(const GLfloat *v)  { glColor4f(v[0], v[1], v[2], v[3]); }
void glColor3dv(const GLdouble *v) { glColor3d(v[0], v[1], v[2]); }
void glColor4dv(const GLdouble *v) { glColor4d(v[0], v[1], v[2], v[3]); }
void glColor3bv(const GLbyte *v)   { glColor3b(v[0], v[1], v[2]); }
void glColor4bv(const GLbyte *v)   { glColor4b(v[0], v[1], v[2], v[3]); }
void glColor3ubv(const GLubyte *v) { glColor3ub(v[0], v[1], v[2]); }
void glColor4ubv(const GLubyte *v) { glColor4ub(v[0], v[1], v[2], v[3]); }
void glColor3sv(const GLshort *v)  { glColor3s(v[0], v[1], v[2]); }
void glColor4sv(const GLshort *v)  { glColor4s(v[0], v[1], v[2], v[3]); }
void glColor3usv(const GLushort *v){ glColor3us(v[0], v[1], v[2]); }
void glColor4usv(const GLushort *v){ glColor4us(v[0], v[1], v[2], v[3]); }
void glColor3iv(const GLint *v)    { glColor3i(v[0], v[1], v[2]); }
void glColor4iv(const GLint *v)    { glColor4i(v[0], v[1], v[2], v[3]); }
void glColor3uiv(const GLuint *v)  { glColor3ui(v[0], v[1], v[2]); }
void glColor4uiv(const GLuint *v)  { glColor4ui(v[0], v[1], v[2], v[3]); }

/* =====================  glNormal  ===================== */

void glNormal3f(GLfloat x, GLfloat y, GLfloat z) { set_normal(x, y, z); }
void glNormal3d(GLdouble x, GLdouble y, GLdouble z) { set_normal((float)x,(float)y,(float)z); }
void glNormal3b(GLbyte x, GLbyte y, GLbyte z)    { set_normal(nb(x), nb(y), nb(z)); }
void glNormal3s(GLshort x, GLshort y, GLshort z) { set_normal(ns(x), ns(y), ns(z)); }
void glNormal3i(GLint x, GLint y, GLint z)       { set_normal(ni(x), ni(y), ni(z)); }
void glNormal3fv(const GLfloat *v)  { glNormal3f(v[0], v[1], v[2]); }
void glNormal3dv(const GLdouble *v) { glNormal3d(v[0], v[1], v[2]); }
void glNormal3bv(const GLbyte *v)   { glNormal3b(v[0], v[1], v[2]); }
void glNormal3sv(const GLshort *v)  { glNormal3s(v[0], v[1], v[2]); }
void glNormal3iv(const GLint *v)    { glNormal3i(v[0], v[1], v[2]); }

/* =====================  glTexCoord / glMultiTexCoord  ===================== */

void glTexCoord1f(GLfloat s)                                  { set_texcoord(0, s, 0, 0, 1); }
void glTexCoord1i(GLint s)                                    { set_texcoord(0, (float)s, 0, 0, 1); }
void glTexCoord1s(GLshort s)                                  { set_texcoord(0, (float)s, 0, 0, 1); }
void glTexCoord1d(GLdouble s)                                 { set_texcoord(0, (float)s, 0, 0, 1); }
void glTexCoord2f(GLfloat s, GLfloat t)                       { set_texcoord(0, s, t, 0, 1); }
void glTexCoord2i(GLint s, GLint t)                           { set_texcoord(0, (float)s, (float)t, 0, 1); }
void glTexCoord2s(GLshort s, GLshort t)                       { set_texcoord(0, (float)s, (float)t, 0, 1); }
void glTexCoord2d(GLdouble s, GLdouble t)                     { set_texcoord(0, (float)s, (float)t, 0, 1); }
void glTexCoord3f(GLfloat s, GLfloat t, GLfloat r)            { set_texcoord(0, s, t, r, 1); }
void glTexCoord3i(GLint s, GLint t, GLint r)                  { set_texcoord(0, (float)s, (float)t, (float)r, 1); }
void glTexCoord3s(GLshort s, GLshort t, GLshort r)            { set_texcoord(0, (float)s, (float)t, (float)r, 1); }
void glTexCoord3d(GLdouble s, GLdouble t, GLdouble r)         { set_texcoord(0, (float)s, (float)t, (float)r, 1); }
void glTexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q) { set_texcoord(0, s, t, r, q); }
void glTexCoord4i(GLint s, GLint t, GLint r, GLint q)         { set_texcoord(0, (float)s, (float)t, (float)r, (float)q); }
void glTexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q) { set_texcoord(0, (float)s, (float)t, (float)r, (float)q); }
void glTexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q) { set_texcoord(0, (float)s, (float)t, (float)r, (float)q); }

void glTexCoord1fv(const GLfloat *v)  { glTexCoord1f(v[0]); }
void glTexCoord2fv(const GLfloat *v)  { glTexCoord2f(v[0], v[1]); }
void glTexCoord3fv(const GLfloat *v)  { glTexCoord3f(v[0], v[1], v[2]); }
void glTexCoord4fv(const GLfloat *v)  { glTexCoord4f(v[0], v[1], v[2], v[3]); }
void glTexCoord1iv(const GLint *v)    { glTexCoord1i(v[0]); }
void glTexCoord2iv(const GLint *v)    { glTexCoord2i(v[0], v[1]); }
void glTexCoord3iv(const GLint *v)    { glTexCoord3i(v[0], v[1], v[2]); }
void glTexCoord4iv(const GLint *v)    { glTexCoord4i(v[0], v[1], v[2], v[3]); }
void glTexCoord1sv(const GLshort *v)  { glTexCoord1s(v[0]); }
void glTexCoord2sv(const GLshort *v)  { glTexCoord2s(v[0], v[1]); }
void glTexCoord3sv(const GLshort *v)  { glTexCoord3s(v[0], v[1], v[2]); }
void glTexCoord4sv(const GLshort *v)  { glTexCoord4s(v[0], v[1], v[2], v[3]); }
void glTexCoord1dv(const GLdouble *v) { glTexCoord1d(v[0]); }
void glTexCoord2dv(const GLdouble *v) { glTexCoord2d(v[0], v[1]); }
void glTexCoord3dv(const GLdouble *v) { glTexCoord3d(v[0], v[1], v[2]); }
void glTexCoord4dv(const GLdouble *v) { glTexCoord4d(v[0], v[1], v[2], v[3]); }

SG_INLINE unsigned tu_from_enum(GLenum unit) {
    int u = (int)(unit - GL_TEXTURE0);
    if (u < 0) return 0;
    if (u >= SG_MAX_TEX_UNITS) return SG_MAX_TEX_UNITS - 1;
    return (unsigned)u;
}

void glMultiTexCoord1f(GLenum unit, GLfloat s)                                  { set_texcoord(tu_from_enum(unit), s, 0, 0, 1); }
void glMultiTexCoord1i(GLenum unit, GLint s)                                    { set_texcoord(tu_from_enum(unit), (float)s, 0, 0, 1); }
void glMultiTexCoord1s(GLenum unit, GLshort s)                                  { set_texcoord(tu_from_enum(unit), (float)s, 0, 0, 1); }
void glMultiTexCoord1d(GLenum unit, GLdouble s)                                 { set_texcoord(tu_from_enum(unit), (float)s, 0, 0, 1); }
void glMultiTexCoord2f(GLenum unit, GLfloat s, GLfloat t)                       { set_texcoord(tu_from_enum(unit), s, t, 0, 1); }
void glMultiTexCoord2i(GLenum unit, GLint s, GLint t)                           { set_texcoord(tu_from_enum(unit), (float)s, (float)t, 0, 1); }
void glMultiTexCoord2s(GLenum unit, GLshort s, GLshort t)                       { set_texcoord(tu_from_enum(unit), (float)s, (float)t, 0, 1); }
void glMultiTexCoord2d(GLenum unit, GLdouble s, GLdouble t)                     { set_texcoord(tu_from_enum(unit), (float)s, (float)t, 0, 1); }
void glMultiTexCoord3f(GLenum unit, GLfloat s, GLfloat t, GLfloat r)            { set_texcoord(tu_from_enum(unit), s, t, r, 1); }
void glMultiTexCoord3i(GLenum unit, GLint s, GLint t, GLint r)                  { set_texcoord(tu_from_enum(unit), (float)s, (float)t, (float)r, 1); }
void glMultiTexCoord3s(GLenum unit, GLshort s, GLshort t, GLshort r)            { set_texcoord(tu_from_enum(unit), (float)s, (float)t, (float)r, 1); }
void glMultiTexCoord3d(GLenum unit, GLdouble s, GLdouble t, GLdouble r)         { set_texcoord(tu_from_enum(unit), (float)s, (float)t, (float)r, 1); }
void glMultiTexCoord4f(GLenum unit, GLfloat s, GLfloat t, GLfloat r, GLfloat q) { set_texcoord(tu_from_enum(unit), s, t, r, q); }
void glMultiTexCoord4i(GLenum unit, GLint s, GLint t, GLint r, GLint q)         { set_texcoord(tu_from_enum(unit), (float)s, (float)t, (float)r, (float)q); }
void glMultiTexCoord4s(GLenum unit, GLshort s, GLshort t, GLshort r, GLshort q) { set_texcoord(tu_from_enum(unit), (float)s, (float)t, (float)r, (float)q); }
void glMultiTexCoord4d(GLenum unit, GLdouble s, GLdouble t, GLdouble r, GLdouble q) { set_texcoord(tu_from_enum(unit), (float)s, (float)t, (float)r, (float)q); }

void glMultiTexCoord1fv(GLenum u, const GLfloat *v)  { glMultiTexCoord1f(u, v[0]); }
void glMultiTexCoord2fv(GLenum u, const GLfloat *v)  { glMultiTexCoord2f(u, v[0], v[1]); }
void glMultiTexCoord3fv(GLenum u, const GLfloat *v)  { glMultiTexCoord3f(u, v[0], v[1], v[2]); }
void glMultiTexCoord4fv(GLenum u, const GLfloat *v)  { glMultiTexCoord4f(u, v[0], v[1], v[2], v[3]); }
void glMultiTexCoord1iv(GLenum u, const GLint *v)    { glMultiTexCoord1i(u, v[0]); }
void glMultiTexCoord2iv(GLenum u, const GLint *v)    { glMultiTexCoord2i(u, v[0], v[1]); }
void glMultiTexCoord3iv(GLenum u, const GLint *v)    { glMultiTexCoord3i(u, v[0], v[1], v[2]); }
void glMultiTexCoord4iv(GLenum u, const GLint *v)    { glMultiTexCoord4i(u, v[0], v[1], v[2], v[3]); }
void glMultiTexCoord1sv(GLenum u, const GLshort *v)  { glMultiTexCoord1s(u, v[0]); }
void glMultiTexCoord2sv(GLenum u, const GLshort *v)  { glMultiTexCoord2s(u, v[0], v[1]); }
void glMultiTexCoord3sv(GLenum u, const GLshort *v)  { glMultiTexCoord3s(u, v[0], v[1], v[2]); }
void glMultiTexCoord4sv(GLenum u, const GLshort *v)  { glMultiTexCoord4s(u, v[0], v[1], v[2], v[3]); }
void glMultiTexCoord1dv(GLenum u, const GLdouble *v) { glMultiTexCoord1d(u, v[0]); }
void glMultiTexCoord2dv(GLenum u, const GLdouble *v) { glMultiTexCoord2d(u, v[0], v[1]); }
void glMultiTexCoord3dv(GLenum u, const GLdouble *v) { glMultiTexCoord3d(u, v[0], v[1], v[2]); }
void glMultiTexCoord4dv(GLenum u, const GLdouble *v) { glMultiTexCoord4d(u, v[0], v[1], v[2], v[3]); }

/* =====================  Edge flag  ===================== */

void glEdgeFlag(GLboolean f) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        int v = f ? 1 : 0;
        sg_dlist_emit(c, SG_OP_CUR_EDGEFLAG, &v, sizeof(v));
        if (c->dlist_exec) _sg_cur_edgeflag_real(f ? 1 : 0);
    } else _sg_cur_edgeflag_real(f ? 1 : 0);
}
void glEdgeFlagv(const GLboolean *f) { if (f) glEdgeFlag(*f); }
void glEdgeFlagPointer(GLsizei stride, const void *ptr) { (void)stride; (void)ptr; }

/* =====================  Primitive machinery — the _real path  ===== */

static int imm_reserve(softgl_ctx *c, size_t need) {
    if (c->imm_cap >= need) return 1;
    size_t ncap = c->imm_cap ? c->imm_cap * 2 : 16;
    while (ncap < need) ncap *= 2;
    sg_vert *nb = (sg_vert*)sg_aligned_alloc(ncap * sizeof(sg_vert), 16);
    if (!nb) return 0;
    if (c->imm_buf) {
        memcpy(nb, c->imm_buf, c->imm_count * sizeof(sg_vert));
        sg_aligned_free(c->imm_buf);
    }
    c->imm_buf = nb;
    c->imm_cap = ncap;
    return 1;
}

static void imm_emit(softgl_ctx *c) {
    size_t n = c->imm_count;
    sg_vert *buf = c->imm_buf;
    switch (c->imm_mode) {
        case GL_TRIANGLES:
            if (n % 3 == 0 && n >= 3) {
                sg_vert v0 = buf[n - 3], v1 = buf[n - 2], v2 = buf[n - 1];
                sg_process_triangle_pub(c, &v0, &v1, &v2);
            }
            break;
        case GL_TRIANGLE_STRIP:
            if (n >= 3) {
                int odd = ((int)(n - 3)) & 1;
                sg_vert v0, v1, v2;
                if (odd) { v0 = buf[n - 2]; v1 = buf[n - 3]; v2 = buf[n - 1]; }
                else     { v0 = buf[n - 3]; v1 = buf[n - 2]; v2 = buf[n - 1]; }
                sg_process_triangle_pub(c, &v0, &v1, &v2);
            }
            break;
        case GL_TRIANGLE_FAN:
        case GL_POLYGON:
            if (n >= 3) {
                sg_vert v0 = buf[0], v1 = buf[n - 2], v2 = buf[n - 1];
                sg_process_triangle_pub(c, &v0, &v1, &v2);
            }
            break;
        case GL_QUADS:
            if (n % 4 == 0 && n >= 4) {
                sg_vert a = buf[n - 4], b = buf[n - 3], cc = buf[n - 2], d = buf[n - 1];
                sg_process_triangle_pub(c, &a, &b, &cc);
                sg_process_triangle_pub(c, &a, &cc, &d);
            }
            break;
        case GL_QUAD_STRIP:
            if ((n & 1) == 0 && n >= 4) {
                sg_vert a = buf[n - 4], b = buf[n - 3], cc = buf[n - 1], d = buf[n - 2];
                sg_process_triangle_pub(c, &a, &b, &cc);
                sg_process_triangle_pub(c, &a, &cc, &d);
            }
            break;
        case GL_LINES:
            if ((n & 1) == 0 && n >= 2) {
                sg_process_line(c, &buf[n - 2], &buf[n - 1]);
            }
            break;
        case GL_LINE_STRIP:
            if (n >= 2) {
                sg_process_line(c, &buf[n - 2], &buf[n - 1]);
            }
            break;
        case GL_LINE_LOOP:
            /* Emit edges as vertices come in; the closing edge is drawn on glEnd. */
            if (n >= 2) {
                sg_process_line(c, &buf[n - 2], &buf[n - 1]);
            }
            break;
        case GL_POINTS:
            if (n >= 1) {
                sg_process_point(c, &buf[n - 1]);
            }
            break;
        default:
            break;
    }
}

static void imm_push(softgl_ctx *c, const sg_vert *v) {
    if (!imm_reserve(c, c->imm_count + 1)) return;
    c->imm_buf[c->imm_count++] = *v;
    imm_emit(c);
}

/* =====================  _real primitives  ===================== */

void _sg_begin_real(GLenum mode) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->imm_active) { sg_set_error(GL_INVALID_OPERATION); return; }
    switch (mode) {
        case GL_POINTS: case GL_LINES: case GL_LINE_STRIP: case GL_LINE_LOOP:
        case GL_TRIANGLES: case GL_TRIANGLE_STRIP: case GL_TRIANGLE_FAN:
        case GL_QUADS: case GL_QUAD_STRIP: case GL_POLYGON: break;
        default: sg_set_error(GL_INVALID_ENUM); return;
    }
    c->imm_mode   = mode;
    c->imm_active = 1;
    c->imm_count  = 0;
}

void _sg_end_real(void) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (!c->imm_active) { sg_set_error(GL_INVALID_OPERATION); return; }
    /* LINE_LOOP closing edge: last vertex -> first vertex. */
    if (c->imm_mode == GL_LINE_LOOP && c->imm_count >= 2) {
        sg_process_line(c, &c->imm_buf[c->imm_count - 1], &c->imm_buf[0]);
    }
    c->imm_active = 0;
    c->imm_count  = 0;
}

void _sg_vertex_real(float x, float y, float z, float w) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (!c->imm_active) return;
    sg_vert v;
    sg_build_vertex_imm(c, x, y, z, w, &v);
    imm_push(c, &v);
}

void _sg_array_element_real(GLint i) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (!c->imm_active) return;
    sg_vert v;
    sg_process_vertex_at(c, i, &v);
    imm_push(c, &v);
}

void _sg_rect_real(float x1, float y1, float x2, float y2) {
    /* Classic glRect expansion.  Uses the recording-aware public wrappers
     * so THIS expansion path auto-routes through dlist when we're inside
     * GL_COMPILE_AND_EXECUTE and sg_dlist_replay re-enters _sg_rect_real.
     * But when we're in replay context we are NOT recording, so it calls
     * _real directly and ends up emitting triangles. */
    _sg_begin_real(GL_POLYGON);
    _sg_vertex_real(x1, y1, 0.f, 1.f);
    _sg_vertex_real(x2, y1, 0.f, 1.f);
    _sg_vertex_real(x2, y2, 0.f, 1.f);
    _sg_vertex_real(x1, y2, 0.f, 1.f);
    _sg_end_real();
}

/* =====================  Public wrappers  ===================== */

void glBegin(GLenum mode) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_BEGIN, &mode, sizeof(mode));
        if (c->dlist_exec) _sg_begin_real(mode);
    } else _sg_begin_real(mode);
}

void glEnd(void) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_END, NULL, 0);
        if (c->dlist_exec) _sg_end_real();
    } else _sg_end_real();
}

static void vert_emit(float x, float y, float z, float w) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        float v[4] = {x, y, z, w};
        sg_dlist_emit(c, SG_OP_VERTEX, v, sizeof(v));
        if (c->dlist_exec) _sg_vertex_real(x, y, z, w);
    } else _sg_vertex_real(x, y, z, w);
}

void glVertex2f(GLfloat x, GLfloat y)                         { vert_emit(x, y, 0.f, 1.f); }
void glVertex2i(GLint x, GLint y)                             { vert_emit((float)x, (float)y, 0.f, 1.f); }
void glVertex2s(GLshort x, GLshort y)                         { vert_emit((float)x, (float)y, 0.f, 1.f); }
void glVertex2d(GLdouble x, GLdouble y)                       { vert_emit((float)x, (float)y, 0.f, 1.f); }
void glVertex3f(GLfloat x, GLfloat y, GLfloat z)              { vert_emit(x, y, z, 1.f); }
void glVertex3i(GLint x, GLint y, GLint z)                    { vert_emit((float)x, (float)y, (float)z, 1.f); }
void glVertex3s(GLshort x, GLshort y, GLshort z)              { vert_emit((float)x, (float)y, (float)z, 1.f); }
void glVertex3d(GLdouble x, GLdouble y, GLdouble z)           { vert_emit((float)x, (float)y, (float)z, 1.f); }
void glVertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w)   { vert_emit(x, y, z, w); }
void glVertex4i(GLint x, GLint y, GLint z, GLint w)           { vert_emit((float)x, (float)y, (float)z, (float)w); }
void glVertex4s(GLshort x, GLshort y, GLshort z, GLshort w)   { vert_emit((float)x, (float)y, (float)z, (float)w); }
void glVertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w) { vert_emit((float)x, (float)y, (float)z, (float)w); }

void glVertex2fv(const GLfloat *v)  { glVertex2f(v[0], v[1]); }
void glVertex2iv(const GLint *v)    { glVertex2i(v[0], v[1]); }
void glVertex2sv(const GLshort *v)  { glVertex2s(v[0], v[1]); }
void glVertex2dv(const GLdouble *v) { glVertex2d(v[0], v[1]); }
void glVertex3fv(const GLfloat *v)  { glVertex3f(v[0], v[1], v[2]); }
void glVertex3iv(const GLint *v)    { glVertex3i(v[0], v[1], v[2]); }
void glVertex3sv(const GLshort *v)  { glVertex3s(v[0], v[1], v[2]); }
void glVertex3dv(const GLdouble *v) { glVertex3d(v[0], v[1], v[2]); }
void glVertex4fv(const GLfloat *v)  { glVertex4f(v[0], v[1], v[2], v[3]); }
void glVertex4iv(const GLint *v)    { glVertex4i(v[0], v[1], v[2], v[3]); }
void glVertex4sv(const GLshort *v)  { glVertex4s(v[0], v[1], v[2], v[3]); }
void glVertex4dv(const GLdouble *v) { glVertex4d(v[0], v[1], v[2], v[3]); }

void glArrayElement(GLint i) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_ARRAY_ELEMENT, &i, sizeof(i));
        if (c->dlist_exec) _sg_array_element_real(i);
    } else _sg_array_element_real(i);
}

static void rect_emit(float x1, float y1, float x2, float y2) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        float v[4] = {x1, y1, x2, y2};
        sg_dlist_emit(c, SG_OP_RECT, v, sizeof(v));
        if (c->dlist_exec) _sg_rect_real(x1, y1, x2, y2);
    } else _sg_rect_real(x1, y1, x2, y2);
}

void glRectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2) { rect_emit(x1, y1, x2, y2); }
void glRecti(GLint x1, GLint y1, GLint x2, GLint y2)         { rect_emit((float)x1,(float)y1,(float)x2,(float)y2); }
void glRects(GLshort x1, GLshort y1, GLshort x2, GLshort y2) { rect_emit((float)x1,(float)y1,(float)x2,(float)y2); }
void glRectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2) { rect_emit((float)x1,(float)y1,(float)x2,(float)y2); }
void glRectfv(const GLfloat *a, const GLfloat *b) { rect_emit(a[0], a[1], b[0], b[1]); }
void glRectiv(const GLint *a, const GLint *b)     { rect_emit((float)a[0],(float)a[1],(float)b[0],(float)b[1]); }
void glRectsv(const GLshort *a, const GLshort *b) { rect_emit((float)a[0],(float)a[1],(float)b[0],(float)b[1]); }
void glRectdv(const GLdouble *a, const GLdouble *b) { rect_emit((float)a[0],(float)a[1],(float)b[0],(float)b[1]); }
