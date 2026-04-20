#include "types.h"
#include "dlist.h"
#include <stdlib.h>
#include <string.h>
#include <math.h>

/* Spec-mandated error tokens not in softgl.h. */
#ifndef GL_STACK_OVERFLOW
#define GL_STACK_OVERFLOW  0x0503
#define GL_STACK_UNDERFLOW 0x0504
#endif

/* Legacy fixed-function features: Evaluators, Accum buffer, Selection +
 * Feedback (state tracking only — draw pipeline stays in GL_RENDER),
 * Line/polygon stipple. Evaluator emission routes through the existing
 * immediate-mode pipeline (EvalCoord → glVertex3f/4f). */

/* ---- Evaluators ---- */

static int ev1_slot_from_enum(GLenum target, int *components) {
    switch (target) {
        case GL_MAP1_VERTEX_3:        *components = 3; return SG_EV1_VERTEX_3;
        case GL_MAP1_VERTEX_4:        *components = 4; return SG_EV1_VERTEX_4;
        case GL_MAP1_COLOR_4:         *components = 4; return SG_EV1_COLOR_4;
        case GL_MAP1_NORMAL:          *components = 3; return SG_EV1_NORMAL;
        case GL_MAP1_TEXTURE_COORD_1: *components = 1; return SG_EV1_TEX_1;
        case GL_MAP1_TEXTURE_COORD_2: *components = 2; return SG_EV1_TEX_2;
        case GL_MAP1_TEXTURE_COORD_3: *components = 3; return SG_EV1_TEX_3;
        case GL_MAP1_TEXTURE_COORD_4: *components = 4; return SG_EV1_TEX_4;
        default: return -1;
    }
}

static int ev2_slot_from_enum(GLenum target, int *components) {
    switch (target) {
        case GL_MAP2_VERTEX_3:        *components = 3; return SG_EV2_VERTEX_3;
        case GL_MAP2_VERTEX_4:        *components = 4; return SG_EV2_VERTEX_4;
        case GL_MAP2_COLOR_4:         *components = 4; return SG_EV2_COLOR_4;
        case GL_MAP2_NORMAL:          *components = 3; return SG_EV2_NORMAL;
        case GL_MAP2_TEXTURE_COORD_1: *components = 1; return SG_EV2_TEX_1;
        case GL_MAP2_TEXTURE_COORD_2: *components = 2; return SG_EV2_TEX_2;
        case GL_MAP2_TEXTURE_COORD_3: *components = 3; return SG_EV2_TEX_3;
        case GL_MAP2_TEXTURE_COORD_4: *components = 4; return SG_EV2_TEX_4;
        default: return -1;
    }
}

void glMap1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride,
             GLint order, const GLfloat *points)
{
    softgl_ctx *c = sg_current(); if (!c) return;
    int comps = 0;
    int slot = ev1_slot_from_enum(target, &comps);
    if (slot < 0) { sg_set_error(GL_INVALID_ENUM); return; }
    if (order < 1 || order > SG_MAX_EVAL_ORDER || stride < comps || !points) {
        sg_set_error(GL_INVALID_VALUE); return;
    }
    sg_map1 *m = &c->map1[slot];
    if (!m->points || m->order != order) {
        if (m->points) free(m->points);
        m->points = (float*)malloc(sizeof(float) * 4 * (size_t)order);
        if (!m->points) { sg_set_error(GL_OUT_OF_MEMORY); return; }
    }
    m->u0 = u1; m->u1 = u2;
    m->order = order;
    m->components = comps;
    for (int i = 0; i < order; i++) {
        const float *src = points + (size_t)i * stride;
        float *dst = m->points + (size_t)i * 4;
        dst[0] = dst[1] = dst[2] = 0.f; dst[3] = 1.f;
        for (int k = 0; k < comps; k++) dst[k] = src[k];
    }
    m->defined = 1;
}

void glMap1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride,
             GLint order, const GLdouble *points)
{
    int comps = 0;
    if (ev1_slot_from_enum(target, &comps) < 0) { sg_set_error(GL_INVALID_ENUM); return; }
    if (order < 1 || order > SG_MAX_EVAL_ORDER || stride < comps || !points) {
        sg_set_error(GL_INVALID_VALUE); return;
    }
    float *buf = (float*)malloc(sizeof(float) * (size_t)order * (size_t)stride);
    if (!buf) { sg_set_error(GL_OUT_OF_MEMORY); return; }
    for (int i = 0; i < order * stride; i++) buf[i] = (float)points[i];
    glMap1f(target, (GLfloat)u1, (GLfloat)u2, stride, order, buf);
    free(buf);
}

void glMap2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder,
             GLfloat v1, GLfloat v2, GLint vstride, GLint vorder,
             const GLfloat *points)
{
    softgl_ctx *c = sg_current(); if (!c) return;
    int comps = 0;
    int slot = ev2_slot_from_enum(target, &comps);
    if (slot < 0) { sg_set_error(GL_INVALID_ENUM); return; }
    if (uorder < 1 || uorder > SG_MAX_EVAL_ORDER ||
        vorder < 1 || vorder > SG_MAX_EVAL_ORDER ||
        ustride < comps || vstride < comps || !points) {
        sg_set_error(GL_INVALID_VALUE); return;
    }
    sg_map2 *m = &c->map2[slot];
    size_t total = (size_t)uorder * (size_t)vorder * 4;
    if (!m->points || m->u_order != uorder || m->v_order != vorder) {
        if (m->points) free(m->points);
        m->points = (float*)malloc(sizeof(float) * total);
        if (!m->points) { sg_set_error(GL_OUT_OF_MEMORY); return; }
    }
    m->u0 = u1; m->u1 = u2; m->v0 = v1; m->v1 = v2;
    m->u_order = uorder; m->v_order = vorder;
    m->components = comps;
    /* Repack src[jv*vstride + iu*ustride + k] → dst[(jv*uorder+iu)*4+k]. */
    for (int jv = 0; jv < vorder; jv++) {
        for (int iu = 0; iu < uorder; iu++) {
            const float *src = points + (size_t)jv * vstride + (size_t)iu * ustride;
            float *dst = m->points + ((size_t)jv * uorder + iu) * 4;
            dst[0] = dst[1] = dst[2] = 0.f; dst[3] = 1.f;
            for (int k = 0; k < comps; k++) dst[k] = src[k];
        }
    }
    m->defined = 1;
}

void glMap2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder,
             GLdouble v1, GLdouble v2, GLint vstride, GLint vorder,
             const GLdouble *points)
{
    int comps = 0;
    if (ev2_slot_from_enum(target, &comps) < 0) { sg_set_error(GL_INVALID_ENUM); return; }
    if (uorder < 1 || vorder < 1 || ustride < comps || vstride < comps || !points) {
        sg_set_error(GL_INVALID_VALUE); return;
    }
    size_t stride_bytes = (size_t)vorder * (size_t)vstride;
    float *buf = (float*)malloc(sizeof(float) * stride_bytes);
    if (!buf) { sg_set_error(GL_OUT_OF_MEMORY); return; }
    for (size_t i = 0; i < stride_bytes; i++) buf[i] = (float)points[i];
    glMap2f(target, (GLfloat)u1, (GLfloat)u2, ustride, uorder,
            (GLfloat)v1, (GLfloat)v2, vstride, vorder, buf);
    free(buf);
}

void glMapGrid1f(GLint n, GLfloat u1, GLfloat u2) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (n < 1) { sg_set_error(GL_INVALID_VALUE); return; }
    c->map1_grid_n = n; c->map1_grid_u0 = u1; c->map1_grid_u1 = u2;
}
void glMapGrid1d(GLint n, GLdouble u1, GLdouble u2) {
    glMapGrid1f(n, (GLfloat)u1, (GLfloat)u2);
}
void glMapGrid2f(GLint nu, GLfloat u1, GLfloat u2,
                 GLint nv, GLfloat v1, GLfloat v2)
{
    softgl_ctx *c = sg_current(); if (!c) return;
    if (nu < 1 || nv < 1) { sg_set_error(GL_INVALID_VALUE); return; }
    c->map2_grid_nu = nu; c->map2_grid_u0 = u1; c->map2_grid_u1 = u2;
    c->map2_grid_nv = nv; c->map2_grid_v0 = v1; c->map2_grid_v1 = v2;
}
void glMapGrid2d(GLint nu, GLdouble u1, GLdouble u2,
                 GLint nv, GLdouble v1, GLdouble v2)
{
    glMapGrid2f(nu, (GLfloat)u1, (GLfloat)u2, nv, (GLfloat)v1, (GLfloat)v2);
}

static void decasteljau1(const float *ctrl, int order, float u, float out[4]) {
    float tmp[SG_MAX_EVAL_ORDER][4];
    memcpy(tmp, ctrl, (size_t)order * 4 * sizeof(float));
    for (int r = 1; r < order; r++) {
        int m = order - r;
        for (int i = 0; i < m; i++) {
            for (int k = 0; k < 4; k++)
                tmp[i][k] = (1.f - u) * tmp[i][k] + u * tmp[i + 1][k];
        }
    }
    out[0] = tmp[0][0]; out[1] = tmp[0][1];
    out[2] = tmp[0][2]; out[3] = tmp[0][3];
}

/* ctrl layout: ctrl[(jv * uorder + iu) * 4 + k]. */
static void decasteljau2(const float *ctrl, int uorder, int vorder,
                         float u, float v, float out[4])
{
    float row_pts[SG_MAX_EVAL_ORDER][4];
    for (int jv = 0; jv < vorder; jv++) {
        decasteljau1(ctrl + (size_t)jv * uorder * 4, uorder, u, row_pts[jv]);
    }
    decasteljau1(&row_pts[0][0], vorder, v, out);
}

SG_INLINE float sg_remap(float t, float a, float b) { return a + (b - a) * t; }

/* Emit via public glVertex so it routes through the caller's primitive.
 * Color/normal/texcoord from enabled maps first so the vertex carries
 * updated current state. */
static void emit_eval1(softgl_ctx *c, float u) {
    for (int slot = 0; slot < SG_EV1_COUNT; slot++) {
        if (slot == SG_EV1_VERTEX_3 || slot == SG_EV1_VERTEX_4) continue;
        sg_map1 *m = &c->map1[slot];
        if (!m->enabled || !m->defined) continue;
        float tu = (u - m->u0) / (m->u1 - m->u0);
        float r[4];
        decasteljau1(m->points, m->order, tu, r);
        switch (slot) {
            case SG_EV1_COLOR_4: glColor4f(r[0], r[1], r[2], r[3]); break;
            case SG_EV1_NORMAL:  glNormal3f(r[0], r[1], r[2]); break;
            case SG_EV1_TEX_1:   glTexCoord1f(r[0]); break;
            case SG_EV1_TEX_2:   glTexCoord2f(r[0], r[1]); break;
            case SG_EV1_TEX_3:   glTexCoord3f(r[0], r[1], r[2]); break;
            case SG_EV1_TEX_4:   glTexCoord4f(r[0], r[1], r[2], r[3]); break;
            default: break;
        }
    }
    /* VERTEX_4 takes priority over VERTEX_3 per spec. */
    if (c->map1[SG_EV1_VERTEX_4].enabled && c->map1[SG_EV1_VERTEX_4].defined) {
        sg_map1 *m = &c->map1[SG_EV1_VERTEX_4];
        float tu = (u - m->u0) / (m->u1 - m->u0);
        float r[4];
        decasteljau1(m->points, m->order, tu, r);
        glVertex4f(r[0], r[1], r[2], r[3]);
    } else if (c->map1[SG_EV1_VERTEX_3].enabled && c->map1[SG_EV1_VERTEX_3].defined) {
        sg_map1 *m = &c->map1[SG_EV1_VERTEX_3];
        float tu = (u - m->u0) / (m->u1 - m->u0);
        float r[4];
        decasteljau1(m->points, m->order, tu, r);
        glVertex3f(r[0], r[1], r[2]);
    }
}

static void emit_eval2(softgl_ctx *c, float u, float v) {
    for (int slot = 0; slot < SG_EV2_COUNT; slot++) {
        if (slot == SG_EV2_VERTEX_3 || slot == SG_EV2_VERTEX_4) continue;
        sg_map2 *m = &c->map2[slot];
        if (!m->enabled || !m->defined) continue;
        float tu = (u - m->u0) / (m->u1 - m->u0);
        float tv = (v - m->v0) / (m->v1 - m->v0);
        float r[4];
        decasteljau2(m->points, m->u_order, m->v_order, tu, tv, r);
        switch (slot) {
            case SG_EV2_COLOR_4: glColor4f(r[0], r[1], r[2], r[3]); break;
            case SG_EV2_NORMAL:  glNormal3f(r[0], r[1], r[2]); break;
            case SG_EV2_TEX_1:   glTexCoord1f(r[0]); break;
            case SG_EV2_TEX_2:   glTexCoord2f(r[0], r[1]); break;
            case SG_EV2_TEX_3:   glTexCoord3f(r[0], r[1], r[2]); break;
            case SG_EV2_TEX_4:   glTexCoord4f(r[0], r[1], r[2], r[3]); break;
            default: break;
        }
    }
    /* Auto-normal: derive from partials via central differences. */
    int have_vert = 0;
    sg_map2 *mv = NULL;
    int vert4 = 0;
    if (c->map2[SG_EV2_VERTEX_4].enabled && c->map2[SG_EV2_VERTEX_4].defined) {
        mv = &c->map2[SG_EV2_VERTEX_4]; have_vert = 1; vert4 = 1;
    } else if (c->map2[SG_EV2_VERTEX_3].enabled && c->map2[SG_EV2_VERTEX_3].defined) {
        mv = &c->map2[SG_EV2_VERTEX_3]; have_vert = 1; vert4 = 0;
    }
    if (!have_vert) return;

    float tu = (u - mv->u0) / (mv->u1 - mv->u0);
    float tv = (v - mv->v0) / (mv->v1 - mv->v0);

    if (c->auto_normal && !c->map2[SG_EV2_NORMAL].enabled) {
        float h = 1e-3f;
        /* Forward difference in parameter space; at upper boundary step
         * backward and negate so du/dv stay oriented with +u/+v. */
        float p00[4], pu[4], pv[4];
        decasteljau2(mv->points, mv->u_order, mv->v_order, tu, tv, p00);
        int u_back = (tu + h > 1.f);
        int v_back = (tv + h > 1.f);
        decasteljau2(mv->points, mv->u_order, mv->v_order,
                     u_back ? tu - h : tu + h, tv, pu);
        decasteljau2(mv->points, mv->u_order, mv->v_order,
                     tu, v_back ? tv - h : tv + h, pv);
        float sign_u = u_back ? -1.f : 1.f;
        float sign_v = v_back ? -1.f : 1.f;
        float du[3] = { (pu[0] - p00[0]) * sign_u,
                        (pu[1] - p00[1]) * sign_u,
                        (pu[2] - p00[2]) * sign_u };
        float dv[3] = { (pv[0] - p00[0]) * sign_v,
                        (pv[1] - p00[1]) * sign_v,
                        (pv[2] - p00[2]) * sign_v };
        float nx = du[1]*dv[2] - du[2]*dv[1];
        float ny = du[2]*dv[0] - du[0]*dv[2];
        float nz = du[0]*dv[1] - du[1]*dv[0];
        float L = sqrtf(nx*nx + ny*ny + nz*nz);
        if (L > 1e-20f) { nx /= L; ny /= L; nz /= L; }
        glNormal3f(nx, ny, nz);
    }

    float r[4];
    decasteljau2(mv->points, mv->u_order, mv->v_order, tu, tv, r);
    if (vert4) glVertex4f(r[0], r[1], r[2], r[3]);
    else       glVertex3f(r[0], r[1], r[2]);
}

void glEvalCoord1f(GLfloat u) {
    softgl_ctx *c = sg_current(); if (!c) return;
    emit_eval1(c, u);
}
void glEvalCoord1d(GLdouble u) { glEvalCoord1f((GLfloat)u); }
void glEvalCoord1fv(const GLfloat *u) { if (u) glEvalCoord1f(u[0]); }
void glEvalCoord2f(GLfloat u, GLfloat v) {
    softgl_ctx *c = sg_current(); if (!c) return;
    emit_eval2(c, u, v);
}
void glEvalCoord2d(GLdouble u, GLdouble v) { glEvalCoord2f((GLfloat)u, (GLfloat)v); }
void glEvalCoord2fv(const GLfloat *uv) { if (uv) glEvalCoord2f(uv[0], uv[1]); }

void glEvalPoint1(GLint i) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->map1_grid_n <= 0) return;
    float u = c->map1_grid_u0 +
              (c->map1_grid_u1 - c->map1_grid_u0) * ((float)i / (float)c->map1_grid_n);
    glBegin(GL_POINTS);
    emit_eval1(c, u);
    glEnd();
}

void glEvalPoint2(GLint i, GLint j) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->map2_grid_nu <= 0 || c->map2_grid_nv <= 0) return;
    float u = c->map2_grid_u0 +
              (c->map2_grid_u1 - c->map2_grid_u0) * ((float)i / (float)c->map2_grid_nu);
    float v = c->map2_grid_v0 +
              (c->map2_grid_v1 - c->map2_grid_v0) * ((float)j / (float)c->map2_grid_nv);
    glBegin(GL_POINTS);
    emit_eval2(c, u, v);
    glEnd();
}

void glEvalMesh1(GLenum mode, GLint i1, GLint i2) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (mode != GL_POINT && mode != GL_LINE) { sg_set_error(GL_INVALID_ENUM); return; }
    if (c->map1_grid_n <= 0) return;
    float du = (c->map1_grid_u1 - c->map1_grid_u0) / (float)c->map1_grid_n;
    if (mode == GL_POINT) {
        glBegin(GL_POINTS);
        for (int i = i1; i <= i2; i++) emit_eval1(c, c->map1_grid_u0 + du * (float)i);
        glEnd();
    } else {
        glBegin(GL_LINE_STRIP);
        for (int i = i1; i <= i2; i++) emit_eval1(c, c->map1_grid_u0 + du * (float)i);
        glEnd();
    }
}

void glEvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (mode != GL_POINT && mode != GL_LINE && mode != GL_FILL) {
        sg_set_error(GL_INVALID_ENUM); return;
    }
    if (c->map2_grid_nu <= 0 || c->map2_grid_nv <= 0) return;
    float du = (c->map2_grid_u1 - c->map2_grid_u0) / (float)c->map2_grid_nu;
    float dv = (c->map2_grid_v1 - c->map2_grid_v0) / (float)c->map2_grid_nv;
    if (mode == GL_POINT) {
        glBegin(GL_POINTS);
        for (int j = j1; j <= j2; j++)
            for (int i = i1; i <= i2; i++)
                emit_eval2(c,
                           c->map2_grid_u0 + du * (float)i,
                           c->map2_grid_v0 + dv * (float)j);
        glEnd();
        return;
    }
    if (mode == GL_LINE) {
        /* Line-loop around each cell. */
        for (int j = j1; j < j2; j++) {
            for (int i = i1; i < i2; i++) {
                float u0 = c->map2_grid_u0 + du * (float)i;
                float u1 = c->map2_grid_u0 + du * (float)(i + 1);
                float v0 = c->map2_grid_v0 + dv * (float)j;
                float v1 = c->map2_grid_v0 + dv * (float)(j + 1);
                glBegin(GL_LINE_LOOP);
                emit_eval2(c, u0, v0);
                emit_eval2(c, u1, v0);
                emit_eval2(c, u1, v1);
                emit_eval2(c, u0, v1);
                glEnd();
            }
        }
        return;
    }
    /* GL_FILL: quad strip per row. */
    for (int j = j1; j < j2; j++) {
        glBegin(GL_QUAD_STRIP);
        for (int i = i1; i <= i2; i++) {
            float uu = c->map2_grid_u0 + du * (float)i;
            float vv0 = c->map2_grid_v0 + dv * (float)j;
            float vv1 = c->map2_grid_v0 + dv * (float)(j + 1);
            emit_eval2(c, uu, vv0);
            emit_eval2(c, uu, vv1);
        }
        glEnd();
    }
}

/* ---- Accumulation buffer ---- */

void glClearAccum(GLfloat r, GLfloat g, GLfloat b, GLfloat a) {
    softgl_ctx *c = sg_current(); if (!c) return;
    c->clear_accum[0] = r; c->clear_accum[1] = g;
    c->clear_accum[2] = b; c->clear_accum[3] = a;
}

static int ensure_accum(softgl_ctx *c) {
    if (c->accum) return 1;
    size_t n = (size_t)c->fb.w * (size_t)c->fb.h * 4;
    c->accum = (float*)malloc(n * sizeof(float));
    if (!c->accum) { sg_set_error(GL_OUT_OF_MEMORY); return 0; }
    memset(c->accum, 0, n * sizeof(float));
    return 1;
}

void glAccum(GLenum op, GLfloat value) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (!ensure_accum(c)) return;
    int W = c->fb.w, H = c->fb.h;
    /* Spec: viewport bounds accum ops. */
    int vx0 = c->viewport[0], vy0 = c->viewport[1];
    int vx1 = vx0 + c->viewport[2], vy1 = vy0 + c->viewport[3];
    if (vx0 < 0) vx0 = 0;
    if (vy0 < 0) vy0 = 0;
    if (vx1 > W) vx1 = W;
    if (vy1 > H) vy1 = H;

    switch (op) {
    case GL_ACCUM:
    case GL_LOAD: {
        int load = (op == GL_LOAD);
        for (int y = vy0; y < vy1; y++) {
            uint8_t *crow = c->fb.color + (y * W + vx0) * 4;
            float   *arow = c->accum    + (y * W + vx0) * 4;
            for (int x = 0; x < vx1 - vx0; x++) {
                float r = crow[x*4+0] * (1.f/255.f) * value;
                float g = crow[x*4+1] * (1.f/255.f) * value;
                float b = crow[x*4+2] * (1.f/255.f) * value;
                float a = crow[x*4+3] * (1.f/255.f) * value;
                if (load) {
                    arow[x*4+0] = r; arow[x*4+1] = g;
                    arow[x*4+2] = b; arow[x*4+3] = a;
                } else {
                    arow[x*4+0] += r; arow[x*4+1] += g;
                    arow[x*4+2] += b; arow[x*4+3] += a;
                }
            }
        }
        return;
    }
    case GL_MULT: {
        for (int y = vy0; y < vy1; y++) {
            float *arow = c->accum + (y * W + vx0) * 4;
            for (int x = 0; x < vx1 - vx0; x++) {
                arow[x*4+0] *= value; arow[x*4+1] *= value;
                arow[x*4+2] *= value; arow[x*4+3] *= value;
            }
        }
        return;
    }
    case GL_ADD: {
        for (int y = vy0; y < vy1; y++) {
            float *arow = c->accum + (y * W + vx0) * 4;
            for (int x = 0; x < vx1 - vx0; x++) {
                arow[x*4+0] += value; arow[x*4+1] += value;
                arow[x*4+2] += value; arow[x*4+3] += value;
            }
        }
        return;
    }
    case GL_RETURN: {
        for (int y = vy0; y < vy1; y++) {
            uint8_t *crow = c->fb.color + (y * W + vx0) * 4;
            float   *arow = c->accum    + (y * W + vx0) * 4;
            for (int x = 0; x < vx1 - vx0; x++) {
                float r = arow[x*4+0] * value;
                float g = arow[x*4+1] * value;
                float b = arow[x*4+2] * value;
                float a = arow[x*4+3] * value;
                if (r < 0.f) r = 0.f; else if (r > 1.f) r = 1.f;
                if (g < 0.f) g = 0.f; else if (g > 1.f) g = 1.f;
                if (b < 0.f) b = 0.f; else if (b > 1.f) b = 1.f;
                if (a < 0.f) a = 0.f; else if (a > 1.f) a = 1.f;
                if (c->color_mask[0]) crow[x*4+0] = (uint8_t)(r * 255.f + 0.5f);
                if (c->color_mask[1]) crow[x*4+1] = (uint8_t)(g * 255.f + 0.5f);
                if (c->color_mask[2]) crow[x*4+2] = (uint8_t)(b * 255.f + 0.5f);
                if (c->color_mask[3]) crow[x*4+3] = (uint8_t)(a * 255.f + 0.5f);
            }
        }
        return;
    }
    default: sg_set_error(GL_INVALID_ENUM); return;
    }
}

/* ---- Selection + Feedback ---- */

GLint glRenderMode(GLenum mode) {
    softgl_ctx *c = sg_current(); if (!c) return 0;
    GLint ret = 0;
    switch (c->render_mode) {
        case GL_SELECT:
            if (c->sel_hit_record_open) {
                c->sel_hit_record_open = 0;
            }
            ret = c->sel_overflow ? -1 : c->sel_hit_count;
            c->sel_hit_count = 0;
            c->sel_buffer_used = 0;
            c->sel_overflow = 0;
            break;
        case GL_FEEDBACK:
            ret = c->fb_overflow ? -1 : c->fb_buffer_used;
            c->fb_buffer_used = 0;
            c->fb_overflow = 0;
            break;
        default: break;
    }
    switch (mode) {
        case GL_RENDER: case GL_SELECT: case GL_FEEDBACK: break;
        default: sg_set_error(GL_INVALID_ENUM); return 0;
    }
    c->render_mode = mode;
    if (mode == GL_SELECT) {
        c->name_stack_top = -1;
        c->sel_hit_count = 0;
        c->sel_hit_record_open = 0;
    }
    return ret;
}

void glSelectBuffer(GLsizei size, GLuint *buffer) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->render_mode == GL_SELECT) { sg_set_error(GL_INVALID_OPERATION); return; }
    c->sel_buffer = buffer;
    c->sel_buffer_size = size;
    c->sel_buffer_used = 0;
    c->sel_overflow = 0;
}

void glInitNames(void) {
    softgl_ctx *c = sg_current(); if (!c) return;
    c->name_stack_top = -1;
    c->sel_hit_record_open = 0;
}
void glLoadName(GLuint name) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->name_stack_top < 0) { sg_set_error(GL_INVALID_OPERATION); return; }
    c->name_stack[c->name_stack_top] = name;
}
void glPushName(GLuint name) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->name_stack_top + 1 >= SG_MAX_NAME_STACK) { sg_set_error(GL_STACK_OVERFLOW); return; }
    c->name_stack_top++;
    c->name_stack[c->name_stack_top] = name;
}
void glPopName(void) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->name_stack_top < 0) { sg_set_error(GL_STACK_UNDERFLOW); return; }
    c->name_stack_top--;
}

void glFeedbackBuffer(GLsizei size, GLenum type, GLfloat *buffer) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->render_mode == GL_FEEDBACK) { sg_set_error(GL_INVALID_OPERATION); return; }
    switch (type) {
        case GL_2D: case GL_3D: case GL_3D_COLOR:
        case GL_3D_COLOR_TEXTURE: case GL_4D_COLOR_TEXTURE: break;
        default: sg_set_error(GL_INVALID_ENUM); return;
    }
    c->fb_buffer = buffer;
    c->fb_buffer_size = size;
    c->fb_buffer_used = 0;
    c->fb_type = type;
    c->fb_overflow = 0;
}

void glPassThrough(GLfloat token) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (c->render_mode != GL_FEEDBACK) return;
    if (!c->fb_buffer) return;
    /* Emit PASS_THROUGH_TOKEN + user value. */
    if (c->fb_buffer_used + 2 > c->fb_buffer_size) {
        c->fb_overflow = 1; return;
    }
    c->fb_buffer[c->fb_buffer_used++] = (float)GL_PASS_THROUGH_TOKEN;
    c->fb_buffer[c->fb_buffer_used++] = token;
}

/* ---- Line + polygon stipple ---- */

void glLineStipple(GLint factor, GLushort pattern) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (factor < 1) factor = 1;
    if (factor > 256) factor = 256;
    c->line_stipple_factor = factor;
    c->line_stipple_pattern = pattern;
}

void glPolygonStipple(const GLubyte *mask) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (!mask) return;
    memcpy(c->polygon_stipple, mask, 128);
}

void glGetPolygonStipple(GLubyte *mask) {
    softgl_ctx *c = sg_current(); if (!c) return;
    if (!mask) return;
    memcpy(mask, c->polygon_stipple, 128);
}
