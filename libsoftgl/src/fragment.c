#include "types.h"
#include <math.h>

/* =====================================================================
 * Texture sampling and tex-env combiner logic.
 * Called per pixel from the rasterizer after barycentric attribute
 * interpolation produces per-fragment u/v.
 * ===================================================================== */

SG_INLINE float sg_wrap_coord(float c, GLenum wrap) {
    switch (wrap) {
        case GL_REPEAT: return c - floorf(c);
        case GL_CLAMP:
            return c < 0.f ? 0.f : (c > 1.f ? 1.f : c);
        case GL_CLAMP_TO_EDGE:
            return c < 0.f ? 0.f : (c > 1.f ? 1.f : c);
        default: return c - floorf(c);
    }
}

/* Fetch a RGBA8 texel at integer (x,y), applying wrap to the integer coord. */
SG_INLINE void sg_fetch_texel(uint8_t out[4], const sg_texture *t, int level, int x, int y) {
    int tw = t->w[level];
    int th = t->h[level];
    /* integer wrap */
    if (tw > 0) { x %= tw; if (x < 0) x += tw; } else x = 0;
    if (th > 0) { y %= th; if (y < 0) y += th; } else y = 0;
    const uint8_t *p = t->data[level] + (y * tw + x) * 4;
    out[0] = p[0]; out[1] = p[1]; out[2] = p[2]; out[3] = p[3];
}

static void sg_clamp_texel_coord(int *x, int *y, int w, int h, GLenum wrap_s, GLenum wrap_t) {
    if (wrap_s == GL_CLAMP || wrap_s == GL_CLAMP_TO_EDGE) {
        if (*x < 0) *x = 0; else if (*x >= w) *x = w - 1;
    } else {
        *x = *x % w; if (*x < 0) *x += w;
    }
    if (wrap_t == GL_CLAMP || wrap_t == GL_CLAMP_TO_EDGE) {
        if (*y < 0) *y = 0; else if (*y >= h) *y = h - 1;
    } else {
        *y = *y % h; if (*y < 0) *y += h;
    }
}

/* Sample a 2D texture at given (u,v) and mip level.
 * Returns RGBA floats in [0,1]. */
void sg_sample_tex2d(const sg_texture *t, GLenum min_filter, GLenum mag_filter,
                     GLenum wrap_s, GLenum wrap_t,
                     float u, float v, int mag, float out[4]) {
    (void)min_filter;
    if (!t || t->levels == 0 || !t->data[0]) {
        out[0] = out[1] = out[2] = 1.f; out[3] = 1.f;
        return;
    }
    GLenum filter = mag ? mag_filter : (min_filter == GL_NEAREST || min_filter == GL_NEAREST_MIPMAP_NEAREST
                                         ? GL_NEAREST : GL_LINEAR);
    int level = 0;
    int tw = t->w[level];
    int th = t->h[level];

    float uu, vv;
    uu = sg_wrap_coord(u, wrap_s);
    vv = sg_wrap_coord(v, wrap_t);

    if (filter == GL_NEAREST) {
        int x = (int)floorf(uu * (float)tw);
        int y = (int)floorf(vv * (float)th);
        sg_clamp_texel_coord(&x, &y, tw, th, wrap_s, wrap_t);
        uint8_t tx[4]; sg_fetch_texel(tx, t, level, x, y);
        out[0] = tx[0] * (1.f/255.f);
        out[1] = tx[1] * (1.f/255.f);
        out[2] = tx[2] * (1.f/255.f);
        out[3] = tx[3] * (1.f/255.f);
    } else {
        /* bilinear: sample 4 texels around the continuous coord. */
        float fx = uu * (float)tw - 0.5f;
        float fy = vv * (float)th - 0.5f;
        int x0 = (int)floorf(fx), y0 = (int)floorf(fy);
        float fu = fx - (float)x0;
        float fv = fy - (float)y0;
        int corners_x[2] = { x0, x0 + 1 };
        int corners_y[2] = { y0, y0 + 1 };
        uint8_t s[4][4];
        for (int i = 0; i < 4; i++) {
            int cx = corners_x[i & 1];
            int cy = corners_y[(i >> 1) & 1];
            sg_clamp_texel_coord(&cx, &cy, tw, th, wrap_s, wrap_t);
            sg_fetch_texel(s[i], t, level, cx, cy);
        }
        float ira = 1.f - fu, irb = fu;
        float ica = 1.f - fv, icb = fv;
        for (int k = 0; k < 4; k++) {
            float top = s[0][k] * ira + s[1][k] * irb;  /* y0 row */
            float bot = s[2][k] * ira + s[3][k] * irb;  /* y1 row */
            out[k] = (top * ica + bot * icb) * (1.f/255.f);
        }
    }
}

/* ---- 1D texture sampling ---------------------------------------------- */

void sg_sample_tex1d(const sg_texture *t, GLenum min_filter, GLenum mag_filter,
                     GLenum wrap_s, float u, int mag, float out[4]) {
    (void)min_filter;
    if (!t || t->levels == 0 || !t->data[0]) {
        out[0] = out[1] = out[2] = 1.f; out[3] = 1.f;
        return;
    }
    GLenum filter = mag ? mag_filter : (min_filter == GL_NEAREST ||
                                         min_filter == GL_NEAREST_MIPMAP_NEAREST
                                         ? GL_NEAREST : GL_LINEAR);
    int level = 0;
    int tw = t->w[level];
    float uu = sg_wrap_coord(u, wrap_s);
    const uint8_t *row = t->data[level];

    if (filter == GL_NEAREST) {
        int x = (int)floorf(uu * (float)tw);
        if (wrap_s == GL_CLAMP || wrap_s == GL_CLAMP_TO_EDGE) {
            if (x < 0) x = 0; else if (x >= tw) x = tw - 1;
        } else { x %= tw; if (x < 0) x += tw; }
        const uint8_t *p = row + x * 4;
        out[0] = p[0] * (1.f/255.f); out[1] = p[1] * (1.f/255.f);
        out[2] = p[2] * (1.f/255.f); out[3] = p[3] * (1.f/255.f);
    } else {
        float fx = uu * (float)tw - 0.5f;
        int x0 = (int)floorf(fx);
        float fu = fx - (float)x0;
        int x1 = x0 + 1;
        if (wrap_s == GL_CLAMP || wrap_s == GL_CLAMP_TO_EDGE) {
            if (x0 < 0) x0 = 0; else if (x0 >= tw) x0 = tw - 1;
            if (x1 < 0) x1 = 0; else if (x1 >= tw) x1 = tw - 1;
        } else {
            x0 %= tw; if (x0 < 0) x0 += tw;
            x1 %= tw; if (x1 < 0) x1 += tw;
        }
        const uint8_t *p0 = row + x0 * 4;
        const uint8_t *p1 = row + x1 * 4;
        for (int k = 0; k < 4; k++) {
            float v = p0[k] * (1.f - fu) + p1[k] * fu;
            out[k] = v * (1.f/255.f);
        }
    }
}

/* ---- 3D texture sampling --------------------------------------------- */

static void sg_fetch_3d_texel(uint8_t out[4], const sg_texture *t, int level,
                              int x, int y, int z) {
    int tw = t->w[level], th = t->h[level], td = t->d[level];
    if (tw <= 0) tw = 1;
    if (th <= 0) th = 1;
    if (td <= 0) td = 1;
    const uint8_t *p = t->data[level] + ((z * th + y) * tw + x) * 4;
    out[0] = p[0]; out[1] = p[1]; out[2] = p[2]; out[3] = p[3];
}

static void sg_clamp_3d_coord(int *x, int *y, int *z, int w, int h, int d,
                              GLenum ws, GLenum wt, GLenum wr) {
    if (ws == GL_CLAMP || ws == GL_CLAMP_TO_EDGE) {
        if (*x < 0) *x = 0; else if (*x >= w) *x = w - 1;
    } else { *x %= w; if (*x < 0) *x += w; }
    if (wt == GL_CLAMP || wt == GL_CLAMP_TO_EDGE) {
        if (*y < 0) *y = 0; else if (*y >= h) *y = h - 1;
    } else { *y %= h; if (*y < 0) *y += h; }
    if (wr == GL_CLAMP || wr == GL_CLAMP_TO_EDGE) {
        if (*z < 0) *z = 0; else if (*z >= d) *z = d - 1;
    } else { *z %= d; if (*z < 0) *z += d; }
}

void sg_sample_tex3d(const sg_texture *t, GLenum min_filter, GLenum mag_filter,
                     GLenum wrap_s, GLenum wrap_t, GLenum wrap_r,
                     float u, float v, float r, int mag, float out[4]) {
    (void)min_filter;
    if (!t || t->levels == 0 || !t->data[0]) {
        out[0] = out[1] = out[2] = 1.f; out[3] = 1.f;
        return;
    }
    GLenum filter = mag ? mag_filter : (min_filter == GL_NEAREST ||
                                         min_filter == GL_NEAREST_MIPMAP_NEAREST
                                         ? GL_NEAREST : GL_LINEAR);
    int level = 0;
    int tw = t->w[level], th = t->h[level], td = t->d[level];
    if (tw <= 0 || th <= 0 || td <= 0) {
        out[0] = out[1] = out[2] = 1.f; out[3] = 1.f;
        return;
    }
    float uu = sg_wrap_coord(u, wrap_s);
    float vv = sg_wrap_coord(v, wrap_t);
    float rr = sg_wrap_coord(r, wrap_r);

    if (filter == GL_NEAREST) {
        int x = (int)floorf(uu * (float)tw);
        int y = (int)floorf(vv * (float)th);
        int z = (int)floorf(rr * (float)td);
        sg_clamp_3d_coord(&x, &y, &z, tw, th, td, wrap_s, wrap_t, wrap_r);
        uint8_t tx[4]; sg_fetch_3d_texel(tx, t, level, x, y, z);
        for (int k = 0; k < 4; k++) out[k] = tx[k] * (1.f/255.f);
        return;
    }

    /* Trilinear: 8 texels around the continuous (u,v,r). */
    float fx = uu * (float)tw - 0.5f;
    float fy = vv * (float)th - 0.5f;
    float fz = rr * (float)td - 0.5f;
    int x0 = (int)floorf(fx), y0 = (int)floorf(fy), z0 = (int)floorf(fz);
    float fu = fx - (float)x0, fv = fy - (float)y0, fw = fz - (float)z0;

    float acc[4] = {0,0,0,0};
    for (int dz = 0; dz < 2; dz++) {
        for (int dy = 0; dy < 2; dy++) {
            for (int dx = 0; dx < 2; dx++) {
                int cx = x0 + dx, cy = y0 + dy, cz = z0 + dz;
                sg_clamp_3d_coord(&cx, &cy, &cz, tw, th, td, wrap_s, wrap_t, wrap_r);
                uint8_t tx[4]; sg_fetch_3d_texel(tx, t, level, cx, cy, cz);
                float wx = dx ? fu : (1.f - fu);
                float wy = dy ? fv : (1.f - fv);
                float wz = dz ? fw : (1.f - fw);
                float wgt = wx * wy * wz;
                for (int k = 0; k < 4; k++) acc[k] += tx[k] * wgt;
            }
        }
    }
    for (int k = 0; k < 4; k++) out[k] = acc[k] * (1.f/255.f);
}

/* ---- Cube-map sampling ------------------------------------------------ */

/* Select cube face given a 3D direction (x,y,z), producing face index
 * and 2D face-local s,t coords in [0,1]. */
static int sg_cube_select_face(float x, float y, float z,
                               float *out_s, float *out_t) {
    float ax = fabsf(x), ay = fabsf(y), az = fabsf(z);
    int face;
    float ma, sc, tc;
    if (ax >= ay && ax >= az) {
        if (x >= 0.f) { face = 0; sc = -z; tc = -y; ma = ax; }
        else          { face = 1; sc =  z; tc = -y; ma = ax; }
    } else if (ay >= ax && ay >= az) {
        if (y >= 0.f) { face = 2; sc =  x; tc =  z; ma = ay; }
        else          { face = 3; sc =  x; tc = -z; ma = ay; }
    } else {
        if (z >= 0.f) { face = 4; sc =  x; tc = -y; ma = az; }
        else          { face = 5; sc = -x; tc = -y; ma = az; }
    }
    if (ma < 1e-20f) ma = 1e-20f;
    *out_s = (sc / ma + 1.f) * 0.5f;
    *out_t = (tc / ma + 1.f) * 0.5f;
    return face;
}

/* Sample a single cube face as 2D. Uses the texture's wrap_s/wrap_t — though
 * cube maps normally use CLAMP_TO_EDGE and seam-bleed is ignored by us. */
static void sg_sample_cube_face(const sg_texture *t, int face, int level,
                                GLenum filter, GLenum wrap_s, GLenum wrap_t,
                                float u, float v, float out[4]) {
    int tw = t->cube_w[face][level];
    int th = t->cube_h[face][level];
    const uint8_t *data = t->cube_faces[face][level];
    if (!data || tw <= 0 || th <= 0) {
        out[0] = out[1] = out[2] = 1.f; out[3] = 1.f;
        return;
    }
    float uu = sg_wrap_coord(u, wrap_s);
    float vv = sg_wrap_coord(v, wrap_t);
    if (filter == GL_NEAREST) {
        int x = (int)floorf(uu * (float)tw);
        int y = (int)floorf(vv * (float)th);
        if (wrap_s == GL_CLAMP || wrap_s == GL_CLAMP_TO_EDGE) {
            if (x < 0) x = 0; else if (x >= tw) x = tw - 1;
        } else { x %= tw; if (x < 0) x += tw; }
        if (wrap_t == GL_CLAMP || wrap_t == GL_CLAMP_TO_EDGE) {
            if (y < 0) y = 0; else if (y >= th) y = th - 1;
        } else { y %= th; if (y < 0) y += th; }
        const uint8_t *p = data + (y * tw + x) * 4;
        for (int k = 0; k < 4; k++) out[k] = p[k] * (1.f/255.f);
    } else {
        float fx = uu * (float)tw - 0.5f;
        float fy = vv * (float)th - 0.5f;
        int x0 = (int)floorf(fx), y0 = (int)floorf(fy);
        float fu = fx - (float)x0, fv = fy - (float)y0;
        int x1 = x0 + 1, y1 = y0 + 1;
        if (wrap_s == GL_CLAMP || wrap_s == GL_CLAMP_TO_EDGE) {
            if (x0 < 0) x0 = 0; else if (x0 >= tw) x0 = tw - 1;
            if (x1 < 0) x1 = 0; else if (x1 >= tw) x1 = tw - 1;
        } else {
            x0 %= tw; if (x0 < 0) x0 += tw;
            x1 %= tw; if (x1 < 0) x1 += tw;
        }
        if (wrap_t == GL_CLAMP || wrap_t == GL_CLAMP_TO_EDGE) {
            if (y0 < 0) y0 = 0; else if (y0 >= th) y0 = th - 1;
            if (y1 < 0) y1 = 0; else if (y1 >= th) y1 = th - 1;
        } else {
            y0 %= th; if (y0 < 0) y0 += th;
            y1 %= th; if (y1 < 0) y1 += th;
        }
        const uint8_t *p00 = data + (y0 * tw + x0) * 4;
        const uint8_t *p10 = data + (y0 * tw + x1) * 4;
        const uint8_t *p01 = data + (y1 * tw + x0) * 4;
        const uint8_t *p11 = data + (y1 * tw + x1) * 4;
        for (int k = 0; k < 4; k++) {
            float top = p00[k] * (1.f - fu) + p10[k] * fu;
            float bot = p01[k] * (1.f - fu) + p11[k] * fu;
            out[k] = (top * (1.f - fv) + bot * fv) * (1.f/255.f);
        }
    }
}

void sg_sample_tex_cube(const sg_texture *t, GLenum min_filter, GLenum mag_filter,
                        GLenum wrap_s, GLenum wrap_t,
                        float x, float y, float z, int mag, float out[4]) {
    if (!t) {
        out[0] = out[1] = out[2] = 1.f; out[3] = 1.f;
        return;
    }
    GLenum filter = mag ? mag_filter : (min_filter == GL_NEAREST ||
                                         min_filter == GL_NEAREST_MIPMAP_NEAREST
                                         ? GL_NEAREST : GL_LINEAR);
    float s, ti;
    int face = sg_cube_select_face(x, y, z, &s, &ti);
    sg_sample_cube_face(t, face, 0, filter, wrap_s, wrap_t, s, ti, out);
}

/* Apply texture-environment combiner between incoming fragment and texel. */
void sg_tex_env_combine(const sg_tex_env *env, const float in[4], const float tex[4], float out[4]) {
    GLenum mode = env->env_mode;
    switch (mode) {
        case GL_REPLACE:
            out[0] = tex[0]; out[1] = tex[1];
            out[2] = tex[2]; out[3] = tex[3];
            break;
        case GL_MODULATE:
            out[0] = in[0] * tex[0];
            out[1] = in[1] * tex[1];
            out[2] = in[2] * tex[2];
            out[3] = in[3] * tex[3];
            break;
        case GL_DECAL: {
            float a = tex[3];
            out[0] = in[0] * (1.f - a) + tex[0] * a;
            out[1] = in[1] * (1.f - a) + tex[1] * a;
            out[2] = in[2] * (1.f - a) + tex[2] * a;
            out[3] = in[3];
            break;
        }
        case GL_COMBINE:
            if (env->combine_rgb == GL_DOT3_RGB || env->combine_rgb == GL_DOT3_RGBA) {
                /* Dot3: tex and in interpreted as signed [-1,1] after bias-scale.
                 * Per spec: s = 4*((arg0-0.5) dot (arg1-0.5)), replicated to RGB. */
                float a0r = tex[0] - 0.5f, a0g = tex[1] - 0.5f, a0b = tex[2] - 0.5f;
                float a1r = in[0]  - 0.5f, a1g = in[1]  - 0.5f, a1b = in[2]  - 0.5f;
                float d = 4.f * (a0r * a1r + a0g * a1g + a0b * a1b);
                if (d < 0.f) d = 0.f; else if (d > 1.f) d = 1.f;
                out[0] = out[1] = out[2] = d;
                out[3] = (env->combine_rgb == GL_DOT3_RGBA) ? d : in[3] * tex[3];
            } else {
                /* Fall back to MODULATE semantics for other combine_rgb values. */
                out[0] = in[0] * tex[0]; out[1] = in[1] * tex[1];
                out[2] = in[2] * tex[2]; out[3] = in[3] * tex[3];
            }
            break;
        default:
            out[0] = in[0] * tex[0]; out[1] = in[1] * tex[1];
            out[2] = in[2] * tex[2]; out[3] = in[3] * tex[3];
            break;
    }
}
