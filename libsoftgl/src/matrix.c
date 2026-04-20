#include "types.h"
#include "dlist.h"
#include <math.h>
#include <string.h>

#if !defined(SG_DISABLE_SIMD) && (defined(__SSE4_1__) || defined(__wasm_simd128__))
  #include <smmintrin.h>
  #define SG_MATRIX_SIMD 1
#else
  #define SG_MATRIX_SIMD 0
#endif

/* Column-major 4x4: element (row r, col c) at m[c*4+r]. */

static sg_mat4 *sg_top(softgl_ctx *c) {
    switch (c->matrix_mode) {
        case GL_MODELVIEW:  return &c->mv_stack[c->mv_top];
        case GL_PROJECTION: return &c->pr_stack[c->pr_top];
        case GL_TEXTURE: {
            int u = (int)c->active_tex_unit;
            return &c->tex_stack[u][c->tex_top[u]];
        }
        default: return &c->mv_stack[c->mv_top];
    }
}

static void sg_ident(sg_mat4 *m) {
    memset(m->m, 0, sizeof(m->m));
    m->m[0] = m->m[5] = m->m[10] = m->m[15] = 1.0f;
}

void sg_mat4_mul(sg_mat4 * SG_RESTRICT out, const sg_mat4 * SG_RESTRICT a, const sg_mat4 * SG_RESTRICT b) {
    sg_mat4 tmp;
    for (int col = 0; col < 4; col++) {
        float b0 = b->m[col*4 + 0];
        float b1 = b->m[col*4 + 1];
        float b2 = b->m[col*4 + 2];
        float b3 = b->m[col*4 + 3];
        for (int row = 0; row < 4; row++) {
            tmp.m[col*4 + row] =
                a->m[0*4 + row] * b0 +
                a->m[1*4 + row] * b1 +
                a->m[2*4 + row] * b2 +
                a->m[3*4 + row] * b3;
        }
    }
    *out = tmp;
}

void sg_mat4_mul_vec4(sg_vec4 * SG_RESTRICT out, const sg_mat4 * SG_RESTRICT m, const sg_vec4 * SG_RESTRICT v) {
#if SG_MATRIX_SIMD
    /* col0*x + col1*y + col2*z + col3*w is IEEE-identical to the scalar
     * per-row dot-products (same four products, same associativity). */
    __m128 r    = _mm_load_ps(&v->x);
    __m128 col0 = _mm_load_ps(m->m + 0);
    __m128 col1 = _mm_load_ps(m->m + 4);
    __m128 col2 = _mm_load_ps(m->m + 8);
    __m128 col3 = _mm_load_ps(m->m + 12);
    __m128 x = _mm_shuffle_ps(r, r, _MM_SHUFFLE(0,0,0,0));
    __m128 y = _mm_shuffle_ps(r, r, _MM_SHUFFLE(1,1,1,1));
    __m128 z = _mm_shuffle_ps(r, r, _MM_SHUFFLE(2,2,2,2));
    __m128 w = _mm_shuffle_ps(r, r, _MM_SHUFFLE(3,3,3,3));
    __m128 res = _mm_add_ps(_mm_add_ps(_mm_mul_ps(col0, x), _mm_mul_ps(col1, y)),
                            _mm_add_ps(_mm_mul_ps(col2, z), _mm_mul_ps(col3, w)));
    _mm_store_ps(&out->x, res);
#else
    float x = v->x, y = v->y, z = v->z, w = v->w;
    out->x = m->m[0]*x + m->m[4]*y + m->m[8]*z  + m->m[12]*w;
    out->y = m->m[1]*x + m->m[5]*y + m->m[9]*z  + m->m[13]*w;
    out->z = m->m[2]*x + m->m[6]*y + m->m[10]*z + m->m[14]*w;
    out->w = m->m[3]*x + m->m[7]*y + m->m[11]*z + m->m[15]*w;
#endif
}

/* 4x4 inverse via cofactor expansion. Returns 0 if singular. */
int sg_mat4_inverse(sg_mat4 *out, const sg_mat4 *in);
int sg_mat4_inverse(sg_mat4 *out, const sg_mat4 *in) {
    const float *m = in->m;
    float inv[16];
    inv[0]  =  m[5]*m[10]*m[15] - m[5]*m[11]*m[14] - m[9]*m[6]*m[15]
             + m[9]*m[7]*m[14] + m[13]*m[6]*m[11] - m[13]*m[7]*m[10];
    inv[4]  = -m[4]*m[10]*m[15] + m[4]*m[11]*m[14] + m[8]*m[6]*m[15]
             - m[8]*m[7]*m[14] - m[12]*m[6]*m[11] + m[12]*m[7]*m[10];
    inv[8]  =  m[4]*m[9]*m[15]  - m[4]*m[11]*m[13] - m[8]*m[5]*m[15]
             + m[8]*m[7]*m[13]  + m[12]*m[5]*m[11] - m[12]*m[7]*m[9];
    inv[12] = -m[4]*m[9]*m[14]  + m[4]*m[10]*m[13] + m[8]*m[5]*m[14]
             - m[8]*m[6]*m[13]  - m[12]*m[5]*m[10] + m[12]*m[6]*m[9];
    inv[1]  = -m[1]*m[10]*m[15] + m[1]*m[11]*m[14] + m[9]*m[2]*m[15]
             - m[9]*m[3]*m[14]  - m[13]*m[2]*m[11] + m[13]*m[3]*m[10];
    inv[5]  =  m[0]*m[10]*m[15] - m[0]*m[11]*m[14] - m[8]*m[2]*m[15]
             + m[8]*m[3]*m[14]  + m[12]*m[2]*m[11] - m[12]*m[3]*m[10];
    inv[9]  = -m[0]*m[9]*m[15]  + m[0]*m[11]*m[13] + m[8]*m[1]*m[15]
             - m[8]*m[3]*m[13]  - m[12]*m[1]*m[11] + m[12]*m[3]*m[9];
    inv[13] =  m[0]*m[9]*m[14]  - m[0]*m[10]*m[13] - m[8]*m[1]*m[14]
             + m[8]*m[2]*m[13]  + m[12]*m[1]*m[10] - m[12]*m[2]*m[9];
    inv[2]  =  m[1]*m[6]*m[15]  - m[1]*m[7]*m[14]  - m[5]*m[2]*m[15]
             + m[5]*m[3]*m[14]  + m[13]*m[2]*m[7]  - m[13]*m[3]*m[6];
    inv[6]  = -m[0]*m[6]*m[15]  + m[0]*m[7]*m[14]  + m[4]*m[2]*m[15]
             - m[4]*m[3]*m[14]  - m[12]*m[2]*m[7]  + m[12]*m[3]*m[6];
    inv[10] =  m[0]*m[5]*m[15]  - m[0]*m[7]*m[13]  - m[4]*m[1]*m[15]
             + m[4]*m[3]*m[13]  + m[12]*m[1]*m[7]  - m[12]*m[3]*m[5];
    inv[14] = -m[0]*m[5]*m[14]  + m[0]*m[6]*m[13]  + m[4]*m[1]*m[14]
             - m[4]*m[2]*m[13]  - m[12]*m[1]*m[6]  + m[12]*m[2]*m[5];
    inv[3]  = -m[1]*m[6]*m[11]  + m[1]*m[7]*m[10]  + m[5]*m[2]*m[11]
             - m[5]*m[3]*m[10]  - m[9]*m[2]*m[7]   + m[9]*m[3]*m[6];
    inv[7]  =  m[0]*m[6]*m[11]  - m[0]*m[7]*m[10]  - m[4]*m[2]*m[11]
             + m[4]*m[3]*m[10]  + m[8]*m[2]*m[7]   - m[8]*m[3]*m[6];
    inv[11] = -m[0]*m[5]*m[11]  + m[0]*m[7]*m[9]   + m[4]*m[1]*m[11]
             - m[4]*m[3]*m[9]   - m[8]*m[1]*m[7]   + m[8]*m[3]*m[5];
    inv[15] =  m[0]*m[5]*m[10]  - m[0]*m[6]*m[9]   - m[4]*m[1]*m[10]
             + m[4]*m[2]*m[9]   + m[8]*m[1]*m[6]   - m[8]*m[2]*m[5];
    float det = m[0]*inv[0] + m[1]*inv[4] + m[2]*inv[8] + m[3]*inv[12];
    if (det == 0.f || (det < 1e-20f && det > -1e-20f)) return 0;
    float idet = 1.0f / det;
    for (int i = 0; i < 16; i++) out->m[i] = inv[i] * idet;
    return 1;
}

void sg_mat4_normal_matrix(float out9[9], const sg_mat4 *m) {
    float a = m->m[0], b = m->m[4], c = m->m[8];
    float d = m->m[1], e = m->m[5], f = m->m[9];
    float g = m->m[2], h = m->m[6], i = m->m[10];
    float A = e*i - f*h;
    float B = -(d*i - f*g);
    float C = d*h - e*g;
    float D = -(b*i - c*h);
    float E = a*i - c*g;
    float F = -(a*h - b*g);
    float G = b*f - c*e;
    float H = -(a*f - c*d);
    float I = a*e - b*d;
    float det = a*A + b*B + c*C;
    if (fabsf(det) < 1e-20f) {
        out9[0]=1; out9[1]=0; out9[2]=0;
        out9[3]=0; out9[4]=1; out9[5]=0;
        out9[6]=0; out9[7]=0; out9[8]=1;
        return;
    }
    float inv = 1.0f / det;
    out9[0] = A * inv; out9[1] = B * inv; out9[2] = C * inv;
    out9[3] = D * inv; out9[4] = E * inv; out9[5] = F * inv;
    out9[6] = G * inv; out9[7] = H * inv; out9[8] = I * inv;
}

/* Row-major 3x3 normal matrix → column-major 4x4 compatible with
 * sg_mat4_mul_vec4. Column 3 / row 3 zero-padded. */
void sg_mat4_from_normal_matrix(sg_mat4 *out, const float nm9[9]) {
    out->m[0]  = nm9[0]; out->m[1]  = nm9[3]; out->m[2]  = nm9[6]; out->m[3]  = 0.f;
    out->m[4]  = nm9[1]; out->m[5]  = nm9[4]; out->m[6]  = nm9[7]; out->m[7]  = 0.f;
    out->m[8]  = nm9[2]; out->m[9]  = nm9[5]; out->m[10] = nm9[8]; out->m[11] = 0.f;
    out->m[12] = 0.f;    out->m[13] = 0.f;    out->m[14] = 0.f;    out->m[15] = 0.f;
}

void _sg_matrix_mode_real(GLenum m) {
    softgl_ctx *c = sg_current(); if (!c) return;
    c->matrix_mode = m;
}

void _sg_load_identity_real(void) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_ident(sg_top(c));
}

void _sg_load_matrix_real(const GLfloat *m) {
    softgl_ctx *c = sg_current(); if (!c || !m) return;
    memcpy(sg_top(c)->m, m, sizeof(float) * 16);
}

void _sg_mult_matrix_real(const GLfloat *m) {
    softgl_ctx *c = sg_current(); if (!c || !m) return;
    sg_mat4 rhs;
    memcpy(rhs.m, m, sizeof(float) * 16);
    sg_mat4_mul(sg_top(c), sg_top(c), &rhs);
}

void _sg_push_matrix_real(void) {
    softgl_ctx *c = sg_current(); if (!c) return;
    switch (c->matrix_mode) {
        case GL_MODELVIEW:
            if (c->mv_top + 1 >= SG_MAX_MATRIX_STACK) return;
            c->mv_stack[c->mv_top + 1] = c->mv_stack[c->mv_top];
            c->mv_top++; break;
        case GL_PROJECTION:
            if (c->pr_top + 1 >= SG_MAX_MATRIX_STACK) return;
            c->pr_stack[c->pr_top + 1] = c->pr_stack[c->pr_top];
            c->pr_top++; break;
        case GL_TEXTURE: {
            int u = (int)c->active_tex_unit;
            if (c->tex_top[u] + 1 >= SG_MAX_MATRIX_STACK) return;
            c->tex_stack[u][c->tex_top[u] + 1] = c->tex_stack[u][c->tex_top[u]];
            c->tex_top[u]++;
        } break;
    }
}

void _sg_pop_matrix_real(void) {
    softgl_ctx *c = sg_current(); if (!c) return;
    switch (c->matrix_mode) {
        case GL_MODELVIEW:  if (c->mv_top > 0) c->mv_top--; break;
        case GL_PROJECTION: if (c->pr_top > 0) c->pr_top--; break;
        case GL_TEXTURE: {
            int u = (int)c->active_tex_unit;
            if (c->tex_top[u] > 0) c->tex_top[u]--;
        } break;
    }
}

void _sg_translate_real(GLfloat x, GLfloat y, GLfloat z) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_mat4 t; sg_ident(&t);
    t.m[12] = x; t.m[13] = y; t.m[14] = z;
    sg_mat4_mul(sg_top(c), sg_top(c), &t);
}

void _sg_scale_real(GLfloat x, GLfloat y, GLfloat z) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_mat4 t; sg_ident(&t);
    t.m[0] = x; t.m[5] = y; t.m[10] = z;
    sg_mat4_mul(sg_top(c), sg_top(c), &t);
}

void _sg_rotate_real(GLfloat angle_deg, GLfloat x, GLfloat y, GLfloat z) {
    softgl_ctx *c = sg_current(); if (!c) return;
    float len = sqrtf(x*x + y*y + z*z);
    if (len < 1e-20f) return;
    float inv = 1.0f / len;
    x *= inv; y *= inv; z *= inv;
    float a = angle_deg * 3.14159265358979323846f / 180.0f;
    float s = sinf(a), cc = cosf(a);
    float omc = 1.0f - cc;
    sg_mat4 r;
    r.m[0]  = cc + x*x*omc;   r.m[1]  = y*x*omc + z*s; r.m[2]  = z*x*omc - y*s; r.m[3]  = 0.f;
    r.m[4]  = x*y*omc - z*s;  r.m[5]  = cc + y*y*omc;  r.m[6]  = z*y*omc + x*s; r.m[7]  = 0.f;
    r.m[8]  = x*z*omc + y*s;  r.m[9]  = y*z*omc - x*s; r.m[10] = cc + z*z*omc;  r.m[11] = 0.f;
    r.m[12] = 0.f; r.m[13] = 0.f; r.m[14] = 0.f; r.m[15] = 1.f;
    sg_mat4_mul(sg_top(c), sg_top(c), &r);
}

void _sg_ortho_real(GLdouble l, GLdouble r, GLdouble b, GLdouble t, GLdouble n, GLdouble f) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_mat4 m;
    memset(m.m, 0, sizeof(m.m));
    m.m[0]  = (float)(2.0 / (r - l));
    m.m[5]  = (float)(2.0 / (t - b));
    m.m[10] = (float)(-2.0 / (f - n));
    m.m[12] = (float)(-(r + l) / (r - l));
    m.m[13] = (float)(-(t + b) / (t - b));
    m.m[14] = (float)(-(f + n) / (f - n));
    m.m[15] = 1.0f;
    sg_mat4_mul(sg_top(c), sg_top(c), &m);
}

void _sg_frustum_real(GLdouble l, GLdouble r, GLdouble b, GLdouble t, GLdouble n, GLdouble f) {
    softgl_ctx *c = sg_current(); if (!c) return;
    sg_mat4 m;
    memset(m.m, 0, sizeof(m.m));
    m.m[0]  = (float)((2.0 * n) / (r - l));
    m.m[5]  = (float)((2.0 * n) / (t - b));
    m.m[8]  = (float)((r + l) / (r - l));
    m.m[9]  = (float)((t + b) / (t - b));
    m.m[10] = (float)(-(f + n) / (f - n));
    m.m[11] = -1.0f;
    m.m[14] = (float)(-(2.0 * f * n) / (f - n));
    sg_mat4_mul(sg_top(c), sg_top(c), &m);
}

void glMatrixMode(GLenum m) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_MATRIX_MODE, &m, sizeof(m));
        if (c->dlist_exec) _sg_matrix_mode_real(m);
    } else _sg_matrix_mode_real(m);
}

void glLoadIdentity(void) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_LOAD_IDENTITY, NULL, 0);
        if (c->dlist_exec) _sg_load_identity_real();
    } else _sg_load_identity_real();
}

void glLoadMatrixf(const GLfloat *m) {
    softgl_ctx *c = sg_current(); if (!c || !m) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_LOAD_MATRIX, m, 16 * sizeof(float));
        if (c->dlist_exec) _sg_load_matrix_real(m);
    } else _sg_load_matrix_real(m);
}

void glMultMatrixf(const GLfloat *m) {
    softgl_ctx *c = sg_current(); if (!c || !m) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_MULT_MATRIX, m, 16 * sizeof(float));
        if (c->dlist_exec) _sg_mult_matrix_real(m);
    } else _sg_mult_matrix_real(m);
}

void glPushMatrix(void) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_PUSH_MATRIX, NULL, 0);
        if (c->dlist_exec) _sg_push_matrix_real();
    } else _sg_push_matrix_real();
}

void glPopMatrix(void) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_POP_MATRIX, NULL, 0);
        if (c->dlist_exec) _sg_pop_matrix_real();
    } else _sg_pop_matrix_real();
}

void glTranslatef(GLfloat x, GLfloat y, GLfloat z) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        float v[3] = {x, y, z};
        sg_dlist_emit(c, SG_OP_TRANSLATE, v, sizeof(v));
        if (c->dlist_exec) _sg_translate_real(x, y, z);
    } else _sg_translate_real(x, y, z);
}

void glScalef(GLfloat x, GLfloat y, GLfloat z) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        float v[3] = {x, y, z};
        sg_dlist_emit(c, SG_OP_SCALE, v, sizeof(v));
        if (c->dlist_exec) _sg_scale_real(x, y, z);
    } else _sg_scale_real(x, y, z);
}

void glRotatef(GLfloat a, GLfloat x, GLfloat y, GLfloat z) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        float v[4] = {a, x, y, z};
        sg_dlist_emit(c, SG_OP_ROTATE, v, sizeof(v));
        if (c->dlist_exec) _sg_rotate_real(a, x, y, z);
    } else _sg_rotate_real(a, x, y, z);
}

void glOrtho(GLdouble l, GLdouble r, GLdouble b, GLdouble t, GLdouble n, GLdouble f) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        double v[6] = {l, r, b, t, n, f};
        sg_dlist_emit(c, SG_OP_ORTHO, v, sizeof(v));
        if (c->dlist_exec) _sg_ortho_real(l, r, b, t, n, f);
    } else _sg_ortho_real(l, r, b, t, n, f);
}

void glFrustum(GLdouble l, GLdouble r, GLdouble b, GLdouble t, GLdouble n, GLdouble f) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->dlist_recording) {
        double v[6] = {l, r, b, t, n, f};
        sg_dlist_emit(c, SG_OP_FRUSTUM, v, sizeof(v));
        if (c->dlist_exec) _sg_frustum_real(l, r, b, t, n, f);
    } else _sg_frustum_real(l, r, b, t, n, f);
}

/* Transform object-space plane equation by (MV^-1)^T, store eye-space. */
void _sg_clip_plane_real(GLenum plane, const GLdouble *equation) {
    softgl_ctx *c = sg_current(); if (!c || !equation) return;
    if (plane < GL_CLIP_PLANE0 || plane > GL_CLIP_PLANE5) {
        sg_set_error(GL_INVALID_ENUM); return;
    }
    int idx = (int)(plane - GL_CLIP_PLANE0);
    sg_mat4 inv;
    if (!sg_mat4_inverse(&inv, &c->mv_stack[c->mv_top])) {
        /* Singular MV: store plane as-is (identity fallback). */
        c->clip_plane_eq[idx][0] = equation[0];
        c->clip_plane_eq[idx][1] = equation[1];
        c->clip_plane_eq[idx][2] = equation[2];
        c->clip_plane_eq[idx][3] = equation[3];
        return;
    }
    /* (M^-1)^T * p: for column-major inv.m, element (row r, col c) = inv.m[c*4+r].
     * eye[r] = sum_c (M^-1)^T[r][c] * p[c] = sum_c inv.m[r*4+c] * p[c]. */
    for (int r = 0; r < 4; r++) {
        double s = 0.0;
        for (int col = 0; col < 4; col++) {
            s += (double)inv.m[r * 4 + col] * equation[col];
        }
        c->clip_plane_eq[idx][r] = s;
    }
}

void glClipPlane(GLenum plane, const GLdouble *equation) {
    softgl_ctx *c = sg_current(); if (!c || !equation) return;
    if (c->dlist_recording) {
        GLenum p = plane;
        double eq[4] = { equation[0], equation[1], equation[2], equation[3] };
        sg_dlist_emit(c, SG_OP_CLIP_PLANE, NULL, 0);
        sg_dlist_append(c, &p, sizeof(p));
        sg_dlist_append(c, eq, sizeof(eq));
        if (c->dlist_exec) _sg_clip_plane_real(plane, equation);
    } else _sg_clip_plane_real(plane, equation);
}

void glGetClipPlane(GLenum plane, GLdouble *equation) {
    softgl_ctx *c = sg_current(); if (!c || !equation) return;
    if (plane < GL_CLIP_PLANE0 || plane > GL_CLIP_PLANE5) {
        sg_set_error(GL_INVALID_ENUM); return;
    }
    int idx = (int)(plane - GL_CLIP_PLANE0);
    equation[0] = c->clip_plane_eq[idx][0];
    equation[1] = c->clip_plane_eq[idx][1];
    equation[2] = c->clip_plane_eq[idx][2];
    equation[3] = c->clip_plane_eq[idx][3];
}
