#include "types.h"
#include <math.h>

/* =====================================================================
 * Texture sampling and tex-env combiner logic.
 * Called per pixel from the rasterizer after barycentric attribute
 * interpolation produces per-fragment u/v.
 * ===================================================================== */

/* Per-triangle snapshot of texture / combiner state. Declared in types.h,
 * computed ONCE per triangle by sg_tex_tri_prepare and consumed per-pixel.
 * Lifts the tex_env[] scan, sg_texture_get lookups, and filter/wrap reads
 * out of the hot fragment loop.
 *
 * fastpath_kind describes the most common specialised pixel path:
 *   0  = generic — caller must sample / combine normally
 *   1  = unit 0 only, 2D LINEAR/LINEAR REPEAT/REPEAT, MODULATE, no fog
 *   2  = unit 0 only, 2D LINEAR/LINEAR REPEAT/REPEAT, REPLACE, no fog
 *   3  = no texture units active at all (skip sampling entirely) */

/* Fill `t` from the context's current tex-env / texture state. Call once
 * per triangle before entering the rasterizer inner loop. */
void sg_tex_tri_prepare(softgl_ctx *c, sg_tex_tri_ctx *t) {
    t->any_active = 0;
    t->fastpath_kind = 0;
    int n_active = 0;
    int first_active = -1;

    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        sg_tex_unit_tri *ut = &t->unit[u];
        sg_tex_env *env = &c->tex_env[u];
        int active_slot = -1;
        if      (env->enabled_target[SG_TEX_TARGET_CUBE] &&
                 env->bound_tex_target[SG_TEX_TARGET_CUBE])
            active_slot = SG_TEX_TARGET_CUBE;
        else if (env->enabled_target[SG_TEX_TARGET_3D] &&
                 env->bound_tex_target[SG_TEX_TARGET_3D])
            active_slot = SG_TEX_TARGET_3D;
        else if (env->enabled_target[SG_TEX_TARGET_2D] &&
                 env->bound_tex_target[SG_TEX_TARGET_2D])
            active_slot = SG_TEX_TARGET_2D;
        else if (env->enabled_target[SG_TEX_TARGET_1D] &&
                 env->bound_tex_target[SG_TEX_TARGET_1D])
            active_slot = SG_TEX_TARGET_1D;

        ut->active_slot = active_slot;
        ut->tex = NULL;
        ut->data0 = NULL;
        ut->tw = ut->th = ut->td = 0;

        if (active_slot < 0) continue;
        sg_texture *tex = sg_texture_get(c, env->bound_tex_target[active_slot]);
        if (!tex || tex->levels == 0) {
            /* disabled-equivalent */
            ut->active_slot = -1;
            continue;
        }
        ut->tex = tex;
        ut->filter_min = tex->min_filter;
        ut->filter_mag = tex->mag_filter;
        ut->wrap_s = tex->wrap_s;
        ut->wrap_t = tex->wrap_t;
        ut->wrap_r = tex->wrap_r;
        ut->tw = tex->w[0];
        ut->th = tex->h[0];
        ut->td = tex->d[0];
        if (active_slot != SG_TEX_TARGET_CUBE) ut->data0 = tex->data[0];
        if (first_active < 0) first_active = u;
        n_active++;
        t->any_active = 1;
    }

    if (!t->any_active) {
        t->fastpath_kind = 3;
        return;
    }

    /* Fastpath selection: the Tank bench and many other common renderers
     * hit this exact combination. MAG_FILTER is what actually runs when
     * the magnification sign is 1 (our caller always passes mag=1). */
    if (n_active == 1 && first_active == 0) {
        sg_tex_unit_tri *u0 = &t->unit[0];
        sg_tex_env *env = &c->tex_env[0];
        if (u0->active_slot == SG_TEX_TARGET_2D &&
            u0->filter_mag == GL_LINEAR &&
            u0->wrap_s == GL_REPEAT && u0->wrap_t == GL_REPEAT &&
            u0->tw > 0 && u0->th > 0 && u0->data0 &&
            !c->fog_enabled) {
            if (env->env_mode == GL_MODULATE) t->fastpath_kind = 1;
            else if (env->env_mode == GL_REPLACE) t->fastpath_kind = 2;
        }
    }
}

/* Populate unit_tex[] + unit_active[] from a prepared sg_tex_tri_ctx and
 * the perspective-correct per-pixel lerp inputs. Replaces the per-pixel
 * dispatch that scans tex_env[].enabled_target[] and calls sg_texture_get.
 * Only used by the "generic" (non-fastpath) path. */
void sg_tex_tri_sample_units(
    const sg_tex_tri_ctx *t,
    const sg_vert *v0, const sg_vert *v1, const sg_vert *v2,
    float w0, float w1, float w2, float one_over_wsum,
    float unit_tex[SG_MAX_TEX_UNITS][4],
    int   unit_active[SG_MAX_TEX_UNITS])
{
    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        unit_tex[u][0] = unit_tex[u][1] = unit_tex[u][2] = unit_tex[u][3] = 1.f;
        unit_active[u] = 0;
        const sg_tex_unit_tri *ut = &t->unit[u];
        if (ut->active_slot < 0 || !ut->tex) continue;

        float uvp_x = (v0->uv[u].x * w0 + v1->uv[u].x * w1 + v2->uv[u].x * w2) * one_over_wsum;
        float uvp_y = (v0->uv[u].y * w0 + v1->uv[u].y * w1 + v2->uv[u].y * w2) * one_over_wsum;
        float uvp_z = (v0->uv[u].z * w0 + v1->uv[u].z * w1 + v2->uv[u].z * w2) * one_over_wsum;

        sg_texture *tex = ut->tex;
        float *tx = unit_tex[u];
        switch (ut->active_slot) {
            case SG_TEX_TARGET_1D:
                sg_sample_tex1d(tex, ut->filter_min, ut->filter_mag,
                                ut->wrap_s, uvp_x, 1, tx);
                break;
            case SG_TEX_TARGET_3D:
                sg_sample_tex3d(tex, ut->filter_min, ut->filter_mag,
                                ut->wrap_s, ut->wrap_t, ut->wrap_r,
                                uvp_x, uvp_y, uvp_z, 1, tx);
                break;
            case SG_TEX_TARGET_CUBE:
                sg_sample_tex_cube(tex, ut->filter_min, ut->filter_mag,
                                   ut->wrap_s, ut->wrap_t,
                                   uvp_x, uvp_y, uvp_z, 1, tx);
                break;
            case SG_TEX_TARGET_2D:
            default:
                sg_sample_tex2d(tex, ut->filter_min, ut->filter_mag,
                                ut->wrap_s, ut->wrap_t,
                                uvp_x, uvp_y, 1, tx);
                break;
        }
        unit_active[u] = 1;
    }
}


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

/* ===== Texture environment combiner =====================================
 * Full GL 1.5 / ARB_texture_env_combine support:
 *   - Fixed modes REPLACE / MODULATE / DECAL (from GL 1.1) with alpha=texel's
 *     own alpha MODULATEd with input.
 *   - GL_COMBINE with independent RGB and Alpha combiners, each selecting from
 *     {TEXTURE, TEXTUREn, PREVIOUS, PRIMARY_COLOR, CONSTANT} with operand
 *     transforms {SRC_COLOR, ONE_MINUS_SRC_COLOR, SRC_ALPHA, ONE_MINUS_SRC_ALPHA}
 *     and operators REPLACE/MODULATE/ADD/ADD_SIGNED/INTERPOLATE/SUBTRACT and
 *     DOT3_RGB(A).
 *   - Post-combine RGB_SCALE and ALPHA_SCALE (1.0 / 2.0 / 4.0), applied BEFORE
 *     the final [0,1] clamp, matching the spec text:
 *        final = clamp(scale * combined, 0, 1).
 * Cross-unit source references (GL_TEXTUREn with n != current) dispatch into
 * unit_tex[n] which the rasterizer pre-samples once per pixel.
 * ===================================================================== */

SG_INLINE void sg_clamp4(float v[4]) {
    for (int i = 0; i < 4; i++) {
        if (v[i] < 0.f) v[i] = 0.f;
        else if (v[i] > 1.f) v[i] = 1.f;
    }
}

/* Resolve a combiner source enum to its RGBA in out[4]. */
static void sg_resolve_source(GLenum src, int current_unit,
                              const float primary[4],
                              const float previous[4],
                              const float constant[4],
                              float unit_tex[SG_MAX_TEX_UNITS][4],
                              float out[4]) {
    if (src == GL_PREVIOUS) {
        out[0] = previous[0]; out[1] = previous[1];
        out[2] = previous[2]; out[3] = previous[3];
    } else if (src == GL_PRIMARY_COLOR) {
        out[0] = primary[0]; out[1] = primary[1];
        out[2] = primary[2]; out[3] = primary[3];
    } else if (src == GL_CONSTANT) {
        out[0] = constant[0]; out[1] = constant[1];
        out[2] = constant[2]; out[3] = constant[3];
    } else if (src == GL_TEXTURE) {
        const float *t = unit_tex[current_unit];
        out[0] = t[0]; out[1] = t[1]; out[2] = t[2]; out[3] = t[3];
    } else if (src >= GL_TEXTURE0 && src < GL_TEXTURE0 + SG_MAX_TEX_UNITS) {
        int u = (int)(src - GL_TEXTURE0);
        const float *t = unit_tex[u];
        out[0] = t[0]; out[1] = t[1]; out[2] = t[2]; out[3] = t[3];
    } else {
        /* Unknown source: fall back to previous. */
        out[0] = previous[0]; out[1] = previous[1];
        out[2] = previous[2]; out[3] = previous[3];
    }
}

/* Apply an operand transform for the RGB combiner path: returns RGB-valued
 * 3-vector usable by an RGB combine op. */
SG_INLINE void sg_operand_rgb(GLenum op, const float src[4], float out[3]) {
    switch (op) {
        case GL_SRC_COLOR:
            out[0] = src[0]; out[1] = src[1]; out[2] = src[2]; break;
        case GL_ONE_MINUS_SRC_COLOR:
            out[0] = 1.f - src[0]; out[1] = 1.f - src[1]; out[2] = 1.f - src[2]; break;
        case GL_SRC_ALPHA:
            out[0] = out[1] = out[2] = src[3]; break;
        case GL_ONE_MINUS_SRC_ALPHA:
            out[0] = out[1] = out[2] = 1.f - src[3]; break;
        default:
            out[0] = src[0]; out[1] = src[1]; out[2] = src[2]; break;
    }
}

/* Apply an operand transform for the Alpha combiner path: only SRC_ALPHA /
 * ONE_MINUS_SRC_ALPHA are legal per spec. */
SG_INLINE float sg_operand_a(GLenum op, const float src[4]) {
    switch (op) {
        case GL_SRC_ALPHA:           return src[3];
        case GL_ONE_MINUS_SRC_ALPHA: return 1.f - src[3];
        default:                     return src[3];
    }
}

/* Compute combined RGB output given three already-operand-transformed args. */
SG_INLINE void sg_combine_rgb_op(GLenum op,
                                        const float a0[3], const float a1[3], const float a2[3],
                                        float out[3]) {
    switch (op) {
        case GL_REPLACE:
            out[0] = a0[0]; out[1] = a0[1]; out[2] = a0[2]; break;
        case GL_MODULATE:
            out[0] = a0[0] * a1[0]; out[1] = a0[1] * a1[1]; out[2] = a0[2] * a1[2]; break;
        case GL_ADD:
            out[0] = a0[0] + a1[0]; out[1] = a0[1] + a1[1]; out[2] = a0[2] + a1[2]; break;
        case GL_ADD_SIGNED:
            out[0] = a0[0] + a1[0] - 0.5f;
            out[1] = a0[1] + a1[1] - 0.5f;
            out[2] = a0[2] + a1[2] - 0.5f;
            break;
        case GL_INTERPOLATE:
            out[0] = a0[0] * a2[0] + a1[0] * (1.f - a2[0]);
            out[1] = a0[1] * a2[1] + a1[1] * (1.f - a2[1]);
            out[2] = a0[2] * a2[2] + a1[2] * (1.f - a2[2]);
            break;
        case GL_SUBTRACT:
            out[0] = a0[0] - a1[0]; out[1] = a0[1] - a1[1]; out[2] = a0[2] - a1[2]; break;
        default:
            /* Unknown op: MODULATE fallback. */
            out[0] = a0[0] * a1[0]; out[1] = a0[1] * a1[1]; out[2] = a0[2] * a1[2]; break;
    }
}

/* Compute combined alpha output. */
SG_INLINE float sg_combine_a_op(GLenum op, float a0, float a1, float a2) {
    switch (op) {
        case GL_REPLACE:     return a0;
        case GL_MODULATE:    return a0 * a1;
        case GL_ADD:         return a0 + a1;
        case GL_ADD_SIGNED:  return a0 + a1 - 0.5f;
        case GL_INTERPOLATE: return a0 * a2 + a1 * (1.f - a2);
        case GL_SUBTRACT:    return a0 - a1;
        default:             return a0 * a1;
    }
}

/* Full combiner. unit_tex[u] is the pre-sampled texel (or white) for each unit
 * so cross-unit references (GL_TEXTUREn) resolve without re-sampling. The
 * current unit's texel is also just unit_tex[current_unit] and is used for
 * GL_TEXTURE (without suffix). primary is the post-lighting vertex color;
 * previous is the running fragment color coming in from the prior unit
 * (== primary for unit 0). */
void sg_tex_env_combine_full(const sg_tex_env *env, int current_unit,
                             const float primary[4],
                             const float previous[4],
                             float unit_tex[SG_MAX_TEX_UNITS][4],
                             float out[4]) {
    const float *constant = env->env_color;
    const float *tex = unit_tex[current_unit];

    switch (env->env_mode) {
        case GL_REPLACE:
            out[0] = tex[0]; out[1] = tex[1];
            out[2] = tex[2]; out[3] = tex[3];
            return;
        case GL_MODULATE:
            out[0] = previous[0] * tex[0];
            out[1] = previous[1] * tex[1];
            out[2] = previous[2] * tex[2];
            out[3] = previous[3] * tex[3];
            return;
        case GL_DECAL: {
            float a = tex[3];
            out[0] = previous[0] * (1.f - a) + tex[0] * a;
            out[1] = previous[1] * (1.f - a) + tex[1] * a;
            out[2] = previous[2] * (1.f - a) + tex[2] * a;
            out[3] = previous[3];
            return;
        }
        case GL_ADD:
            /* Fixed-func GL_ADD: Cv=C_prev+C_tex, Av=A_prev*A_tex (no combine). */
            out[0] = previous[0] + tex[0];
            out[1] = previous[1] + tex[1];
            out[2] = previous[2] + tex[2];
            out[3] = previous[3] * tex[3];
            sg_clamp4(out);
            return;
        case GL_COMBINE:
            break;  /* fall through to combiner dispatch below */
        default:
            /* Unknown mode — MODULATE fallback. */
            out[0] = previous[0] * tex[0];
            out[1] = previous[1] * tex[1];
            out[2] = previous[2] * tex[2];
            out[3] = previous[3] * tex[3];
            return;
    }

    /* ---- GL_COMBINE path ------------------------------------------------- */
    float rgb_out[3];
    float alpha_out;

    /* Dot3 RGB(A): operates over three-component signed values biased by -0.5.
     * Uses RGB args 0 and 1 only. */
    if (env->combine_rgb == GL_DOT3_RGB || env->combine_rgb == GL_DOT3_RGBA) {
        float s0[4], s1[4];
        sg_resolve_source(env->src_rgb[0], current_unit, primary, previous, constant, unit_tex, s0);
        sg_resolve_source(env->src_rgb[1], current_unit, primary, previous, constant, unit_tex, s1);
        float a0[3], a1[3];
        sg_operand_rgb(env->op_rgb[0], s0, a0);
        sg_operand_rgb(env->op_rgb[1], s1, a1);
        float d = 4.f * ((a0[0] - 0.5f) * (a1[0] - 0.5f)
                       + (a0[1] - 0.5f) * (a1[1] - 0.5f)
                       + (a0[2] - 0.5f) * (a1[2] - 0.5f));
        rgb_out[0] = rgb_out[1] = rgb_out[2] = d;
        if (env->combine_rgb == GL_DOT3_RGBA) {
            alpha_out = d;   /* overrides combine_a per spec */
        } else {
            /* alpha via separate combine_a */
            float a0s[4], a1s[4], a2s[4];
            sg_resolve_source(env->src_a[0], current_unit, primary, previous, constant, unit_tex, a0s);
            sg_resolve_source(env->src_a[1], current_unit, primary, previous, constant, unit_tex, a1s);
            sg_resolve_source(env->src_a[2], current_unit, primary, previous, constant, unit_tex, a2s);
            float aa0 = sg_operand_a(env->op_a[0], a0s);
            float aa1 = sg_operand_a(env->op_a[1], a1s);
            float aa2 = sg_operand_a(env->op_a[2], a2s);
            alpha_out = sg_combine_a_op(env->combine_a, aa0, aa1, aa2);
        }
    } else {
        /* Normal RGB combiner */
        float s0[4], s1[4], s2[4];
        sg_resolve_source(env->src_rgb[0], current_unit, primary, previous, constant, unit_tex, s0);
        sg_resolve_source(env->src_rgb[1], current_unit, primary, previous, constant, unit_tex, s1);
        sg_resolve_source(env->src_rgb[2], current_unit, primary, previous, constant, unit_tex, s2);
        float a0[3], a1[3], a2[3];
        sg_operand_rgb(env->op_rgb[0], s0, a0);
        sg_operand_rgb(env->op_rgb[1], s1, a1);
        sg_operand_rgb(env->op_rgb[2], s2, a2);
        sg_combine_rgb_op(env->combine_rgb, a0, a1, a2, rgb_out);

        /* Alpha combiner (independent). */
        float a0s[4], a1s[4], a2s[4];
        sg_resolve_source(env->src_a[0], current_unit, primary, previous, constant, unit_tex, a0s);
        sg_resolve_source(env->src_a[1], current_unit, primary, previous, constant, unit_tex, a1s);
        sg_resolve_source(env->src_a[2], current_unit, primary, previous, constant, unit_tex, a2s);
        float aa0 = sg_operand_a(env->op_a[0], a0s);
        float aa1 = sg_operand_a(env->op_a[1], a1s);
        float aa2 = sg_operand_a(env->op_a[2], a2s);
        alpha_out = sg_combine_a_op(env->combine_a, aa0, aa1, aa2);
    }

    /* Post-scale then clamp. Scale defaults to 1.0; spec legal values 1/2/4. */
    float rs = env->rgb_scale;
    float as = env->alpha_scale;
    out[0] = rgb_out[0] * rs;
    out[1] = rgb_out[1] * rs;
    out[2] = rgb_out[2] * rs;
    out[3] = alpha_out * as;
    sg_clamp4(out);
}

/* Legacy two-arg signature retained so rasterizer / lines code that still uses
 * only (previous, this-texel) keeps working for the non-COMBINE modes. This
 * just builds a minimal unit_tex array and dispatches. */
void sg_tex_env_combine(const sg_tex_env *env, const float in[4], const float tex[4], float out[4]) {
    float unit_tex[SG_MAX_TEX_UNITS][4];
    for (int i = 0; i < SG_MAX_TEX_UNITS; i++) {
        unit_tex[i][0] = tex[0]; unit_tex[i][1] = tex[1];
        unit_tex[i][2] = tex[2]; unit_tex[i][3] = tex[3];
    }
    /* current_unit=0; primary==previous==in (no cross-unit info available). */
    sg_tex_env_combine_full(env, 0, in, in, unit_tex, out);
}
