#include "types.h"
#include "simd.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <float.h>
int sg_packet_sample_cube_coherent(const sg_tex_unit_tri *, const float *, const float *, const float *, unsigned, sg_f32x4[4]);
void sg_packet_sample_cube_target(const sg_tex_unit_tri *, sg_f32x4, sg_f32x4, sg_f32x4, unsigned, sg_f32x4[4]);
#define CHECK(x) do { if (!(x)) { fprintf(stderr, "line%d: %s\n", __LINE__, #x); return 1; } } while (0)
static uint32_t seed = 731;
static uint32_t next_value(void) { seed ^= seed << 13; seed ^= seed >> 17; seed ^= seed << 5; return seed; }
static float unit(void) { return (next_value() >> 8) * (1.f / 16777216.f); }
/* Direct scalar/vector oracle; includes every live mask, axis ties and
 * exceptional-coordinate fallback without depending on a rendered image. */
int main(void) {
    sg_texture texture = {0};
    const int widths[6] = {1, 2, 4, 7, 16, 32}, heights[6] = {1, 2, 8, 4, 16, 3};
    const GLenum wraps[3] = {GL_REPEAT, GL_CLAMP, GL_CLAMP_TO_EDGE};
    for (int f = 0; f < 6; f++) {
        size_t bytes = (size_t)widths[f] * heights[f] * 4;
        texture.cube_faces[f][0] = malloc(bytes);
        CHECK(texture.cube_faces[f][0]);
        texture.cube_w[f][0] = widths[f]; texture.cube_h[f][0] = heights[f];
        for (size_t b = 0; b < bytes; b++) texture.cube_faces[f][0][b] = (uint8_t)next_value();
    }
    sg_tex_unit_tri u = {0};
    u.tex = &texture; u.active_slot = SG_TEX_TARGET_CUBE;
    unsigned fast = 0, fallback = 0;
    for (unsigned n = 0; n < 262144; n++) {
        int face = n % 6;
        u.filter_mag = n & 1 ? GL_LINEAR : GL_NEAREST;
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
            if (live & (1u << l)) sg_sample_tex_cube(&texture, GL_LINEAR, u.filter_mag,
                u.wrap_s, u.wrap_t, xx[l], yy[l], zz[l], 1, reference[l]);
        }
        sg_f32x4 out[4];
        if (sg_packet_sample_cube_coherent(&u, xx, yy, zz, live, out)) {
            fast++;
            for (int k = 0; k < 4; k++) sg_f32x4_store(actual[k], out[k]);
            for (int l = 0; l < 4; l++) for (int k = 0; k < 4; k++) {
                if (memcmp(&actual[k][l], &reference[l][k], sizeof(float))) {
                    fprintf(stderr, "n%u lane%d channel%d actual%.9g ref%.9g\n", n, l, k, actual[k][l], reference[l][k]);
                    return 1;
                }
            }
        } else fallback++;
        sg_packet_sample_cube_target(&u, sg_f32x4_load(xx), sg_f32x4_load(yy),
                                    sg_f32x4_load(zz), live, out);
        for (int k = 0; k < 4; k++) sg_f32x4_store(actual[k], out[k]);
        for (int l = 0; l < 4; l++) for (int k = 0; k < 4; k++) {
            if (memcmp(&actual[k][l], &reference[l][k], sizeof(float))) {
                fprintf(stderr, "target n%u lane%d channel%d actual%.9g ref%.9g\n",
                        n, l, k, actual[k][l], reference[l][k]);
                return 1;
            }
        }
    }
    CHECK(fast > 200000 && fallback > 0);
    SG_ALIGN16 float xx[4] = {1, 1, 1, 1}, yy[4] = {0, 0, 0, 0}, zz[4] = {0, 0, 0, 0};
    sg_f32x4 out[4];
    xx[0] = NAN; CHECK(!sg_packet_sample_cube_coherent(&u, xx, yy, zz, 15, out));
    xx[0] = INFINITY; CHECK(!sg_packet_sample_cube_coherent(&u, xx, yy, zz, 15, out));
    xx[0] = 1; u.tex = NULL; CHECK(!sg_packet_sample_cube_coherent(&u, xx, yy, zz, 15, out));
    u.tex = &texture; uint8_t *data = texture.cube_faces[0][0]; texture.cube_faces[0][0] = NULL;
    CHECK(!sg_packet_sample_cube_coherent(&u, xx, yy, zz, 15, out)); texture.cube_faces[0][0] = data;
    for (int f = 0; f < 6; f++) free(texture.cube_faces[f][0]);
    printf("262144 cube packets: %u fast exact, %u fallback; ties, zero, tiny/large, masks, wraps/filters and invalid states passed\n", fast, fallback);
    return 0;
}
