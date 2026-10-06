#include "types.h"
#include "workers.h"
#include "multisample.h"
#include "raster_types.h"
#include "simd.h"
#include <stdio.h>

static uint32_t random_state = 93;
static uint64_t observed[2][3], lanes, wrapped_bases;
static unsigned bad_math, biases_seen;

/* Observe coefficients produced by the actual raster kernels. The strict
 * oracle uses full-width sums and no coverage/intersection approximations. */
void sg_msaa_edge_test(int reused, int packed, int capture,
        int64_t edge0, int64_t edge1, const int64_t *offsets, float inv_area,
        sg_f32x4 b0, sg_f32x4 b1) {
    float actual[2][4];
    sg_f32x4_store(actual[0], b0);
    sg_f32x4_store(actual[1], b1);
    observed[!!capture][reused ? 0 : packed ? 1 : 2]++;
    int64_t base[2] = {edge0, edge1};
    for (int e = 0; e < 2; e++) {
        if (reused && (base[e] < INT32_MIN || base[e] > INT32_MAX)) wrapped_bases++;
        for (int sample = 0; sample < 4; sample++) {
            int64_t sum = base[e] + offsets[sample * 3 + e];
            if ((reused || packed) && (sum < INT32_MIN || sum > INT32_MAX)) bad_math++;
            float expected = (float)sum * inv_area;
            if (memcmp(actual[e] + sample, &expected, sizeof(float))) bad_math++;
            lanes++;
        }
    }
}


static uint32_t next_value(void) {
    random_state ^= random_state << 13;
    random_state ^= random_state >> 17;
    random_state ^= random_state << 5;
    return random_state;
}

static int top_left(int32_t ax, int32_t ay, int32_t bx, int32_t by) {
    return by < ay || (by == ay && bx < ax);
}

/* Test actual rasterization against a full-frame sample oracle. The oracle
 * neither computes scanline intersections nor uses the production bounds. */
int main(void) {
    const int sizes[3][2] = {{68, 36}, {33, 17}, {68, 360}};
    const int spans[] = {1, 2, 7, 8, 16, 63, 64, 256, 4096};
    uint64_t checked = 0;
    unsigned frames = 0;
    for (int size = 0; size < 3; size++) {
        for (int capture = 0; capture < 2; capture++) {
            int w = sizes[size][0], h = sizes[size][1], samples = 4;
            softgl_ctx *c = softgl_create_multisample(w, h, 4);
            if (!c) return 1;
            softgl_make_current(c);
            sg_workers_shutdown(c);
            glDisable(GL_DEPTH_TEST);
            glDisable(GL_STENCIL_TEST);
            glDisable(GL_BLEND);
            glDisable(GL_ALPHA_TEST);
            glDisable(GL_FOG);
            glClearColor(0, 0, 0, 0);
            sg_tex_tri_ctx texture;
            sg_tex_tri_prepare(c, &texture);
            for (int enabled = 0; enabled < 2; enabled++) {
                c->multisample = enabled;
                int count = size == 2 ? 96 : 512;
                for (int test = 0; test < count; test++) {
                    float left = ((int)(next_value() % (w * 512)) - w * 256) * (1.f / 256.f);
                    float bottom = ((int)(next_value() % (h * 512)) - h * 256) * (1.f / 256.f);
                    float width = spans[test % 9], height = spans[(test / 9) % 9];
                    float shear = (int)(next_value() % 8192) - 4096;
                    float tilt = (int)(next_value() % 256) - 128;
                    if (test % 7) {
                        shear *= 1.f / 256.f;
                        tilt *= 1.f / 256.f;
                    }
                    if (test % 23 == 0) {
                        left = -1000000.f;
                        width = 2000000.f;
                        shear = 0;
                    }
                    if (test % 29 == 0) {
                        bottom = -1000000.f;
                        height = 2000000.f;
                        tilt = 0;
                    }
                    /* Exercise both sides of the packed-edge range bound
                     * with positive, screen-crossing triangles. */
                    if (test >= (size == 2 ? 64 : 480)) {
                        const float limits[] = {180.f, 181.f, 16383.f, 16384.f};
                        width = limits[test & 3];
                        height = width < 1000.f ? width : 1.f;
                        left = -31.f - 1.f / 256.f;
                        bottom = (test & 4) ? -1.5f : 0.f;
                        shear = width * .5f;
                        tilt = 0.f;
                    }
                    sg_vert v[3];
                    memset(v, 0, sizeof(v));
                    v[0].ndc = (sg_vec4){left, bottom, .5f, 1.f};
                    v[1].ndc = (sg_vec4){left + width, bottom + tilt, .5f, 1.f};
                    v[2].ndc = (sg_vec4){left + shear, bottom + height, .5f, 1.f};
                    int32_t vx[3], vy[3];
                    for (int i = 0; i < 3; i++) {
                        v[i].color = (sg_vec4){1.f, 1.f, 1.f, 1.f};
                        vx[i] = sg_fp_screen_from_float(v[i].ndc.x);
                        vy[i] = sg_fp_screen_from_float(v[i].ndc.y);
                    }
                    int64_t area = (int64_t)(vx[1] - vx[0]) * (vy[2] - vy[0])
                        - (int64_t)(vy[1] - vy[0]) * (vx[2] - vx[0]);
                    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
                    sg_worker_bin bin = {0};
                    bin.depth_capture = capture;
                    sg_raster_bin = &bin;
                    sg_raster_triangle_tile_prepared(c, v, v + 1, v + 2, 0, w, &texture);
                    sg_raster_bin = NULL;
                    if (bad_math) {
                        fprintf(stderr, "coefficient mismatch: size=%d capture=%d enabled=%d test=%d\n",
                            size, capture, enabled, test);
                        return 3;
                    }
                    for (int e = 0; e < 2; e++) {
                        int a = (e + 1) % 3, b = (e + 2) % 3;
                        biases_seen |= 1u << (top_left(vx[a], vy[a], vx[b], vy[b]) ? 0 : 1);
                    }
                    for (int y = 0; y < h; y++) {
                        for (int x = 0; x < w; x++) {
                            for (int sample = 0; sample < samples; sample++) {
                                int sx = 128, sy = 128;
                                if (enabled) sg_sample_position(samples, sample, &sx, &sy);
                                int64_t px = (int64_t)x * 256 + sx;
                                int64_t py = (int64_t)y * 256 + sy;
                                int covered = area > 0;
                                for (int edge = 0; covered && edge < 3; edge++) {
                                    int a = (edge + 1) % 3, b = (edge + 2) % 3;
                                    int64_t value = (int64_t)(vx[b] - vx[a]) * (py - vy[a])
                                        - (int64_t)(vy[b] - vy[a]) * (px - vx[a]);
                                    covered = value >= (top_left(vx[a], vy[a], vx[b], vy[b]) ? 0 : 1);
                                }
                                size_t index = ((size_t)y * w + x) * samples + sample;
                                for (int channel = 0; channel < 4; channel++) {
                                    int actual = c->fb.sample_color[index * 4 + channel];
                                    if (actual != (covered ? 255 : 0)) {
                                        fprintf(stderr, "size=%d samples=%d enabled=%d test=%d "
                                            "x=%d y=%d sample=%d area=%lld expected=%d got=%d\n",
                                            size, samples, enabled, test, x, y, sample,
                                            (long long)area, covered ? 255 : 0, actual);
                                        return 2;
                                    }
                                }
                                checked++;
                            }
                        }
                    }
                    frames++;
                }
            }
            softgl_destroy(c);
        }
    }
    for (int capture = 0; capture < 2; capture++) {
        if (!observed[capture][0] || !observed[capture][1] || !observed[capture][2]) {
            fprintf(stderr, "unobserved path: %d %llu %llu %llu\n", capture,
                (unsigned long long)observed[capture][0],
                (unsigned long long)observed[capture][1],
                (unsigned long long)observed[capture][2]);
            return 4;
        }
    }
    if (biases_seen != 3 || bad_math) return 5;
    printf("MSAA edges: %u frames, %llu exact sample masks, %llu exact coefficient lanes; "
        "ordinary/capture reused=%llu/%llu packed fallback=%llu/%llu "
        "wide fallback=%llu/%llu wrapped bases=%llu passed\n",
        frames, (unsigned long long)checked, (unsigned long long)lanes,
        (unsigned long long)observed[0][0], (unsigned long long)observed[1][0],
        (unsigned long long)observed[0][1], (unsigned long long)observed[1][1],
        (unsigned long long)observed[0][2], (unsigned long long)observed[1][2],
        (unsigned long long)wrapped_bases);
    return 0;
}
