#include "types.h"
#include "simd.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <float.h>

/* Frozen scalar oracle: retain independent modulo addressing and arithmetic. */
SG_INLINE float reference_wrap_coord(float c, GLenum wrap) {
    switch (wrap) {
        case GL_REPEAT: return c - floorf(c);
        case GL_CLAMP:
            return c < 0.f ? 0.f : (c > 1.f ? 1.f : c);
        case GL_CLAMP_TO_EDGE:
            return c < 0.f ? 0.f : (c > 1.f ? 1.f : c);
        default: return c - floorf(c);
    }
}

/* Cube face selection: return face + face-local (s,t). */
static int reference_cube_select_face(float x, float y, float z,
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
static void reference_sample_cube_face(const sg_texture *t, int face, int level,
                                GLenum filter, GLenum wrap_s, GLenum wrap_t,
                                float u, float v, float out[4]) {
    int tw = t->cube_w[face][level];
    int th = t->cube_h[face][level];
    const uint8_t *data = t->cube_faces[face][level];
    if (!data || tw <= 0 || th <= 0) {
        out[0] = out[1] = out[2] = 1.f; out[3] = 1.f;
        return;
    }
    float uu = reference_wrap_coord(u, wrap_s);
    float vv = reference_wrap_coord(v, wrap_t);
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

static void sg_reference_tex_cube(const sg_texture *t, GLenum min_filter, GLenum mag_filter,
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
    int face = reference_cube_select_face(x, y, z, &s, &ti);
    reference_sample_cube_face(t, face, 0, filter, wrap_s, wrap_t, s, ti, out);
}

#define CHECK(x) do { if (!(x)) { fprintf(stderr, "line%d: %s\n", __LINE__, #x); return 1; } } while (0)
static uint32_t seed = 731;
static uint32_t next_value(void) { seed ^= seed << 13; seed ^= seed >> 17; seed ^= seed << 5; return seed; }
static float unit(void) { return (next_value() >> 8) * (1.f / 16777216.f); }
/* Compare actual cube sampling against original modulo addressing. */
int main(void) {
    sg_texture texture = {0};
    const int widths[6] = {1, 2, 4, 7, 128, 129}, heights[6] = {1, 2, 8, 4, 128, 3};
    const GLenum wraps[3] = {GL_REPEAT, GL_CLAMP, GL_CLAMP_TO_EDGE};
    const GLenum filters[4] = {GL_NEAREST, GL_LINEAR, GL_NEAREST_MIPMAP_NEAREST, GL_LINEAR_MIPMAP_NEAREST};
    for (int f = 0; f < 6; f++) {
        size_t bytes = (size_t)widths[f] * heights[f] * 4;
        texture.cube_faces[f][0] = malloc(bytes);
        CHECK(texture.cube_faces[f][0]);
        texture.cube_w[f][0] = widths[f]; texture.cube_h[f][0] = heights[f];
        for (size_t b = 0; b < bytes; b++) texture.cube_faces[f][0][b] = (uint8_t)next_value();
    }
    sg_tex_unit_tri u = {0};
    u.tex = &texture; u.active_slot = SG_TEX_TARGET_CUBE;
    unsigned checked = 0;
    for (unsigned n = 0; n < 262144; n++) {
        int face = n % 6;
        u.filter_mag = n & 1 ? GL_LINEAR : GL_NEAREST;
        u.filter_min = filters[(n / 64) & 3];
        int mag = (n / 256) & 1;
        u.wrap_s = wraps[(n / 2) % 3]; u.wrap_t = wraps[(n / 6) % 3];
        unsigned live = (n / 8) & 15;
        SG_ALIGN16 float xx[4], yy[4], zz[4], actual[4][4];
        float reference[4][4] = {{0}};
        for (int l = 0; l < 4; l++) {
            float major = .1f + unit() * 7.f;
            if ((n & 63) == 1) major = FLT_MIN;
            if ((n & 63) == 2) major = FLT_MAX * .125f;
            float sc = (unit() * 1.8f - .9f) * major;
            float tc = (unit() * 1.8f - .9f) * major;
            switch (face) {
                case 0: xx[l] = major; yy[l] = -tc; zz[l] = -sc; break;
                case 1: xx[l] = -major; yy[l] = -tc; zz[l] = sc; break;
                case 2: xx[l] = sc; yy[l] = major; zz[l] = tc; break;
                case 3: xx[l] = sc; yy[l] = -major; zz[l] = -tc; break;
                case 4: xx[l] = sc; yy[l] = -tc; zz[l] = major; break;
                default: xx[l] = -sc; yy[l] = -tc; zz[l] = -major; break;
            }
            if ((n & 63) == 0) xx[l] = yy[l] = zz[l] = -0.f;
            if ((n & 63) == 3) xx[l] = yy[l] = zz[l] = major;
            if ((n & 63) == 4) { xx[l] = major; yy[l] = major; zz[l] = -major; }
            if ((n & 31) == 5 && l == 3) { xx[l] = 1; yy[l] = 0; zz[l] = 0; }
            if (!(live & (1u << l)) && (n & 1)) xx[l] = yy[l] = zz[l] = NAN;
            if (live & (1u << l)) sg_reference_tex_cube(&texture, u.filter_min, u.filter_mag,
                u.wrap_s, u.wrap_t, xx[l], yy[l], zz[l], mag, reference[l]);
        }
        memset(actual, 0, sizeof(actual));
        for (int l = 0; l < 4; l++) if (live & (1u << l)) {
            sg_sample_tex_cube(&texture, u.filter_min, u.filter_mag, u.wrap_s,
                               u.wrap_t, xx[l], yy[l], zz[l], mag, actual[l]);
            checked++;
        }
        CHECK(!memcmp(actual, reference, sizeof(actual)));
    }
    float ref[4], actual[5];
    sg_reference_tex_cube(NULL, GL_LINEAR, GL_LINEAR, GL_REPEAT, GL_REPEAT,
                          1.f, 0.f, 0.f, 1, ref);
    sg_sample_tex_cube(NULL, GL_LINEAR, GL_LINEAR, GL_REPEAT, GL_REPEAT,
                      1.f, 0.f, 0.f, 1, actual + 1);
    CHECK(!memcmp(ref, actual + 1, sizeof(ref)));
    uint8_t *saved = texture.cube_faces[0][0];
    texture.cube_faces[0][0] = NULL;
    sg_reference_tex_cube(&texture, GL_LINEAR, GL_LINEAR, GL_REPEAT, GL_REPEAT,
                          1.f, 0.f, 0.f, 1, ref);
    sg_sample_tex_cube(&texture, GL_LINEAR, GL_LINEAR, GL_REPEAT, GL_REPEAT,
                      1.f, 0.f, 0.f, 1, actual + 1);
    CHECK(!memcmp(ref, actual + 1, sizeof(ref)));
    texture.cube_faces[0][0] = saved;
    for (int f = 0; f < 6; f++) free(texture.cube_faces[f][0]);
    printf("262144 cube packets, %u scalar samples exactly match original scalar filtering\n", checked);
    return 0;
}
