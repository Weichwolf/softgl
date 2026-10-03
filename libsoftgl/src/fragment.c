#include "types.h"
#include <math.h>

/* Texture sampling + tex-env combiner.
 *
 * fastpath_kind:
 *   0 = generic
 *   1 = unit 0, 2D LINEAR REPEAT, MODULATE
 *   2 = unit 0, 2D LINEAR REPEAT, REPLACE
 *   3 = no active units
 *
 * NEAREST REPEAT POT is NOT a fastpath: under -ffast-math scalar UV lerp
 * drifts ~1 ULP from SIMD, flipping texel picks across boundaries. */

static int combine_arguments(GLenum operation) {
    if (operation == GL_REPLACE) return 1;
    if (operation == GL_INTERPOLATE) return 3;
    return 2; /* MODULATE, ADD, SUBTRACT, ADD_SIGNED and DOT3 */
}
static unsigned source_texture(GLenum source, int current) {
    if (source == GL_TEXTURE) return 1u << current;
    if (source >= GL_TEXTURE0 && source < GL_TEXTURE0+SG_MAX_TEX_UNITS)
        return 1u << (source-GL_TEXTURE0);
    return 0;
}

void sg_tex_tri_prepare(softgl_ctx *c, sg_tex_tri_ctx *t) {
    t->any_active = 0;
    t->fastpath_kind = 0;
    t->sample_mask = 0;
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
        /* POT mask = (dim-1) when dim is power-of-two, else 0. */
        ut->tw_mask_pot = (ut->tw > 0 && (ut->tw & (ut->tw - 1)) == 0) ? (ut->tw - 1) : 0;
        ut->th_mask_pot = (ut->th > 0 && (ut->th & (ut->th - 1)) == 0) ? (ut->th - 1) : 0;
        ut->tw_log2 = 0;
        if (ut->tw_mask_pot) {
            int v = ut->tw; int lg = 0;
            while (v > 1) { v >>= 1; lg++; }
            ut->tw_log2 = lg;
        }
        if (active_slot != SG_TEX_TARGET_CUBE) ut->data0 = tex->data[0];
        if (first_active < 0) first_active = u;
        n_active++;
        t->any_active = 1;
        t->sample_mask |= 1u << u;
    }

    if (!t->any_active) {
        t->fastpath_kind = 3;
        return;
    }

    /* Callers always pass mag=1, so mag_filter governs the actual filter. */
    if (n_active == 1 && first_active == 0) {
        sg_tex_unit_tri *u0 = &t->unit[0];
        sg_tex_env *env = &c->tex_env[0];
        if (u0->active_slot == SG_TEX_TARGET_2D &&
            u0->wrap_s == GL_REPEAT && u0->wrap_t == GL_REPEAT &&
            u0->tw > 0 && u0->th > 0 && u0->data0) {
            if (u0->filter_mag == GL_LINEAR) {
                if (env->env_mode == GL_MODULATE) t->fastpath_kind = 1;
                else if (env->env_mode == GL_REPLACE) t->fastpath_kind = 2;
            }
        }
    }
    if (t->fastpath_kind) return;
    /* A stage still executes when its own texture is unused. Collect sources
     * globally before sampling: another stage can read it through crossbar.
     * Ignored arguments and DOT3_RGBA alpha cannot introduce dependencies. */
    t->sample_mask = 0;
    for (int u = 0; u < SG_MAX_TEX_UNITS; u++) {
        if (t->unit[u].active_slot < 0) continue;
        const sg_tex_env *env = &c->tex_env[u];
        if (env->env_mode != GL_COMBINE) { t->sample_mask |= 1u << u; continue; }
        int count = combine_arguments(env->combine_rgb);
        for (int i = 0; i < count; i++) t->sample_mask |= source_texture(env->src_rgb[i], u);
        if (env->combine_rgb == GL_DOT3_RGBA) continue;
        count = combine_arguments(env->combine_a);
        for (int i = 0; i < count; i++) t->sample_mask |= source_texture(env->src_a[i], u);
    }
}

/* Generic sampler: populate unit_tex/unit_active for all enabled units. */
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
        unit_active[u] = 1;
        if (!(t->sample_mask & (1u << u))) continue;

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

/* sg_wrap_coord bounds a finite coordinate to [0, 1]. Consequently nearest
 * and bilinear taps lie in [-1, size]; a single adjustment handles REPEAT,
 * including NPOT and one-texel textures, without an integer remainder. */
SG_INLINE int sg_address_wrapped_texel(int x, int size, GLenum wrap) {
    if (wrap == GL_CLAMP || wrap == GL_CLAMP_TO_EDGE) {
        if (x < 0) return 0;
        if (x >= size) return size - 1;
    } else {
        if (x < 0) return x + size;
        if (x >= size) return x - size;
    }
    return x;
}

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
        x = sg_address_wrapped_texel(x, tw, wrap_s);
        y = sg_address_wrapped_texel(y, th, wrap_t);
        const uint8_t *tx = t->data[level] + (y * tw + x) * 4;
        out[0] = tx[0] * (1.f/255.f);
        out[1] = tx[1] * (1.f/255.f);
        out[2] = tx[2] * (1.f/255.f);
        out[3] = tx[3] * (1.f/255.f);
    } else {
        float fx = uu * (float)tw - 0.5f;
        float fy = vv * (float)th - 0.5f;
        int x0 = (int)floorf(fx), y0 = (int)floorf(fy);
        float fu = fx - (float)x0;
        float fv = fy - (float)y0;
        int x1 = sg_address_wrapped_texel(x0 + 1, tw, wrap_s);
        int y1 = sg_address_wrapped_texel(y0 + 1, th, wrap_t);
        x0 = sg_address_wrapped_texel(x0, tw, wrap_s);
        y0 = sg_address_wrapped_texel(y0, th, wrap_t);
        const uint8_t *data = t->data[level];
        const uint8_t *s[4] = {
            data + (y0 * tw + x0) * 4,
            data + (y0 * tw + x1) * 4,
            data + (y1 * tw + x0) * 4,
            data + (y1 * tw + x1) * 4
        };
        float ira = 1.f - fu, irb = fu;
        float ica = 1.f - fv, icb = fv;
        for (int k = 0; k < 4; k++) {
            float top = s[0][k] * ira + s[1][k] * irb;
            float bot = s[2][k] * ira + s[3][k] * irb;
            out[k] = (top * ica + bot * icb) * (1.f/255.f);
        }
    }
}

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

    /* Trilinear over 8 texels. */
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

/* Cube face selection: return face + face-local (s,t). */
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

/* Sample cube face as 2D; seam-bleed not handled. */
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
