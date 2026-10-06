#include "types.h"
#include "simd.h"
#include "frag_hot.h"
#include "frag_combine_hot.h"
#include "frag_packet.h"
#include <stdio.h>
#if defined(__unix__) && !defined(__EMSCRIPTEN__)
#include <sys/mman.h>
#include <unistd.h>
#endif

static uint32_t random_state = 17;
static uint32_t random_bits(void) {
    random_state ^= random_state << 13;
    random_state ^= random_state >> 17;
    random_state ^= random_state << 5;
    return random_state;
}
static float random_float(void) { return (random_bits() >> 8) * (1.f / 16777216.f); }

static int check_texture_tail(void) {
    const int widths[] = {1, 2, 3, 16, 31};
    const GLenum wraps[] = {GL_REPEAT, GL_CLAMP_TO_EDGE, GL_CLAMP};
    unsigned checks = 0;
    for (unsigned dim = 0; dim < sizeof(widths) / sizeof(widths[0]); dim++) {
        int width = widths[dim], height = 3;
        size_t bytes = (size_t)width * height * 4;
        uint8_t *data;
#if defined(__unix__) && !defined(__EMSCRIPTEN__)
        size_t page = (size_t)sysconf(_SC_PAGESIZE);
        uint8_t *mapping = mmap(NULL, page * 2, PROT_READ | PROT_WRITE,
                               MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
        if (mapping == MAP_FAILED) return 1;
        if (mprotect(mapping + page, page, PROT_NONE)) return 1;
        data = mapping + page - bytes;
#else
        data = malloc(bytes);
        if (!data) return 1;
#endif
        for (size_t i = 0; i < bytes; i++) data[i] = (uint8_t)(i * 37 + 11);
        sg_texture texture; memset(&texture, 0, sizeof(texture));
        texture.levels = 1; texture.data[0] = data;
        texture.w[0] = width; texture.h[0] = height;
        sg_tex_unit_tri u; memset(&u, 0, sizeof(u));
        u.active_slot = SG_TEX_TARGET_2D; u.tex = &texture; u.data0 = data;
        u.tw = width; u.th = height; u.filter_mag = GL_LINEAR;
        u.tw_mask_pot = sg_hot_pot_mask(width); u.th_mask_pot = sg_hot_pot_mask(height);
        for (int ws = 0; ws < 3; ws++) for (int wt = 0; wt < 3; wt++)
        for (int integer_filter = 0; integer_filter < 2; integer_filter++) {
            if (integer_filter && (ws || wt)) continue;
            u.wrap_s = wraps[ws]; u.wrap_t = wraps[wt];
            for (int edge = -2; edge <= width + 1; edge++) for (unsigned live = 1; live < 16; live++) {
                float x[4], y[4], actual[4][4];
                for (int lane = 0; lane < 4; lane++) {
                    x[lane] = (edge + lane * .25f + .5f) / width;
                    y[lane] = (height - .25f) / height;
                    if (!(live & (1u << lane))) { x[lane] = NAN; y[lane] = INFINITY; }
                }
                sg_f32x4 out[4];
                sg_packet_sample_2d(&u, sg_f32x4_load(x), sg_f32x4_load(y), live, integer_filter, out);
                _MM_TRANSPOSE4_PS(out[0], out[1], out[2], out[3]);
                for (int lane = 0; lane < 4; lane++) if (live & (1u << lane)) {
                    float reference[4]; sg_f32x4_store(actual[lane], out[lane]);
                    if (integer_filter) {
                        uint8_t rgba[4];
                        sg_hot_sample_2d_linear_repeat_u8_fast(data, width, height, x[lane], y[lane], rgba);
                        for (int k = 0; k < 4; k++) reference[k] = rgba[k] * (1.f / 255.f);
                    } else sg_sample_tex2d(&texture, GL_NEAREST, GL_LINEAR, u.wrap_s, u.wrap_t,
                                          x[lane], y[lane], 1, reference);
                    if (memcmp(reference, actual[lane], sizeof(reference))) return 1;
                    checks++;
                }
            }
        }
#if defined(__unix__) && !defined(__EMSCRIPTEN__)
        munmap(mapping, page * 2);
#else
        free(data);
#endif
    }
    printf("%u exact texture-tail comparisons; bounded full/partial packets passed\n", checks);
    return 0;
}

int main(void) {
    if (check_texture_tail()) return 1;
    uint8_t data[32 * 32 * 4];
    for (unsigned k = 0; k < sizeof(data); k++) data[k] = (uint8_t)random_bits();
    const GLenum wraps[] = {GL_REPEAT, GL_CLAMP_TO_EDGE, GL_CLAMP};
    const int sizes[] = {1, 3, 16, 31};
    unsigned comparisons = 0, alpha_comparisons = 0;
    sg_texture texture; memset(&texture, 0, sizeof(texture));
    texture.levels = 1; texture.data[0] = data;
    sg_tex_unit_tri u; memset(&u, 0, sizeof(u));
    u.active_slot = SG_TEX_TARGET_2D; u.tex = &texture; u.data0 = data;
    for (int ws = 0; ws < 3; ws++) for (int wt = 0; wt < 3; wt++) {
        u.wrap_s = wraps[ws]; u.wrap_t = wraps[wt];
        for (int dim = 0; dim < 4; dim++) {
            texture.w[0] = u.tw = sizes[dim]; texture.h[0] = u.th = sizes[3 - dim];
            u.tw_mask_pot = sg_hot_pot_mask(u.tw);
            u.th_mask_pot = sg_hot_pot_mask(u.th);
            for (int filter = 0; filter < 3; filter++) {
                if (filter == 2 && (ws || wt)) continue;
                u.filter_mag = filter ? GL_LINEAR : GL_NEAREST;
                for (int n = 0; n < 2048; n++) {
                    float x[4], y[4], actual[4][4];
                    for (int l = 0; l < 4; l++) {
                        x[l] = random_float() * 2048.f - 1024.f;
                        y[l] = random_float() * 16.f - 8.f;
                    }
                    unsigned live = 1u + random_bits() % 15u;
                    /* Inactive coordinates must never cause a texel read. */
                    if (n % 64 == 0) for (int l = 0; l < 4; l++) {
                        if (!(live & (1u << l))) { x[l] = NAN; y[l] = INFINITY; }
                    }
                    sg_f32x4 rgb[4];
                    sg_packet_sample_2d_alpha(&u, sg_f32x4_load(x), sg_f32x4_load(y), live,
                                              filter == 2, 0, rgb);
                    float components[4][4];
                    for (int channel = 0; channel < 4; channel++) sg_f32x4_store(components[channel], rgb[channel]);
                    sg_f32x4 out[4];
                    sg_packet_sample_2d(&u, sg_f32x4_load(x), sg_f32x4_load(y), live, filter == 2, out);
                    _MM_TRANSPOSE4_PS(out[0], out[1], out[2], out[3]);
                    for (int l = 0; l < 4; l++) {
                        if (!(live & (1u << l))) continue;
                        sg_f32x4_store(actual[l], out[l]);
                        float reference[4];
                        if (filter == 2) {
                            uint8_t rgba[4];
                            sg_hot_sample_2d_linear_repeat_u8_fast(data, u.tw, u.th, x[l], y[l], rgba);
                            for (int k = 0; k < 4; k++) reference[k] = rgba[k] * (1.f / 255.f);
                        } else sg_sample_tex2d(&texture, GL_NEAREST, u.filter_mag, u.wrap_s, u.wrap_t,
                                               x[l], y[l], 1, reference);
                        for (int channel = 0; channel < 4; channel++) {
                            float expected = channel == 3 && filter != 2 ? 1.f : reference[channel];
                            if (memcmp(&expected, &components[channel][l], sizeof(expected))) {
                                fprintf(stderr, "Consumed-channel mismatch: filter%d wrap%d/%d lane%d channel%d\n",
                                        filter, ws, wt, l, channel);
                                return 1;
                            }
                            alpha_comparisons++;
                        }
                        if (memcmp(actual[l], reference, sizeof(reference))) {
                            fprintf(stderr, "Sampler mismatch: wrap%d/%d dim%d filter%d n%d lane%d\n",
                                    ws, wt, dim, filter, n, l);
                            for (int k = 0; k < 4; k++) fprintf(stderr, "%a %a\n", actual[l][k], reference[k]);
                            return 1;
                        }
                        comparisons++;
                    }
                }
            }
        }
    }
    printf("%u exact four-pixel sampler comparisons passed\n", comparisons);
    printf("%u exact consumed-alpha component comparisons passed\n", alpha_comparisons);
    softgl_ctx *c = calloc(1, sizeof(*c));
    if (!c) return 1;
    sg_tex_tri_ctx t; memset(&t, 0, sizeof(t));
    t.any_active = 1;
    texture.d[0] = 2;
    for (int face = 0; face < 6; face++) {
        texture.cube_faces[face][0] = data + face * 4;
        texture.cube_w[face][0] = texture.w[0];
        texture.cube_h[face][0] = texture.h[0];
    }
    sg_texture constant_texture = texture;
    constant_texture.w[0] = constant_texture.h[0] = 1;
    unsigned shades = 0;
    for (int kind = 0; kind < 6; kind++) {
        t.combine_kind = kind >= 3 ? kind - 2 : 0;
        t.fastpath_kind = kind == 1 || kind == 2 ? kind : 0;
        t.any_active = kind != 0;
        t.sample_mask = t.combine_kind == 1 ? 13u : t.combine_kind == 2 ? 5u : 1u;
        for (int unit = 0; unit < 4; unit++) {
            t.unit[unit] = u;
            t.unit[unit].wrap_s = t.unit[unit].wrap_t = GL_REPEAT;
            t.unit[unit].filter_mag = GL_LINEAR;
        }
        for (int n = 0; n < 10000; n++) {
            for (int unit = 0; unit < 4; unit++) {
                t.unit[unit].constant_color_valid = 0;
                t.unit[unit].tex = &texture;
                t.unit[unit].tw = texture.w[0]; t.unit[unit].th = texture.h[0];
                t.unit[unit].active_slot = SG_TEX_TARGET_2D;
                t.unit[unit].td = 2;
                for (int k = 0; k < 4; k++)
                    t.unit[unit].constant_color[k] = data[k] * (1.f / 255.f);
            }
            if (t.combine_kind) {
                if (n % 2) t.unit[3].active_slot = SG_TEX_TARGET_CUBE;
                if (n % 3 == 0) t.unit[0].active_slot = SG_TEX_TARGET_3D;
                if (n % 5 == 0) t.unit[2].active_slot = SG_TEX_TARGET_1D;
            }
            for (int unit = 0; unit < 4; unit++) {
                if (n % 4 == 0 && t.unit[unit].active_slot == SG_TEX_TARGET_2D) {
                    t.unit[unit].constant_color_valid = 1;
                    t.unit[unit].tex = &constant_texture;
                    t.unit[unit].tw = t.unit[unit].th = 1;
                }
            }
            sg_vert v[3]; memset(v, 0, sizeof(v));
            for (int i = 0; i < 3; i++) {
                v[i].ndc.w = .001f + random_float() * 8.f;
                float *color = &v[i].color.x;
                for (int k = 0; k < 4; k++) color[k] = random_float() * 2.f - .5f;
                for (int unit = 0; unit < 4; unit++) {
                    v[i].uv[unit].x = random_float() * 16.f - 8.f;
                    v[i].uv[unit].y = random_float() * 16.f - 8.f;
                    v[i].uv[unit].z = random_float() * 16.f - 8.f;
                }
            }
            for (int unit = 0; unit < 4; unit++) for (int k = 0; k < 4; k++)
                c->tex_env[unit].env_color[k] = random_float() * 2.f - .5f;
            int64_t edge0[4], edge1[4];
            for (int l = 0; l < 4; l++) {
                edge0[l] = random_bits() % 1024;
                edge1[l] = random_bits() % (1024 - edge0[l]);
            }
            unsigned live = 1u + random_bits() % 15u;
            float actual[4][4];
            unsigned result = sg_shade_packet(c, &t, &v[0], &v[1], &v[2], edge0, edge1,
                                               1.f / 1024.f, live, actual);
            if (result != live) return 1;
            for (int l = 0; l < 4; l++) {
                if (!(live & (1u << l))) continue;
                float b0 = (float)edge0[l] * (1.f / 1024.f);
                float b1 = (float)edge1[l] * (1.f / 1024.f);
                float b2 = 1.f - b0 - b1;
                float w0 = b0 * v[0].ndc.w, w1 = b1 * v[1].ndc.w, w2 = b2 * v[2].ndc.w;
                float inverse = 1.f / (w0 + w1 + w2), primary[4], reference[4];
                const float *a = &v[0].color.x, *b = &v[1].color.x, *d = &v[2].color.x;
                for (int k = 0; k < 4; k++) primary[k] = (a[k] * w0 + b[k] * w1 + d[k] * w2) * inverse;
                if (t.fastpath_kind) {
                    float x = (v[0].uv[0].x * w0 + v[1].uv[0].x * w1 + v[2].uv[0].x * w2) * inverse;
                    float y = (v[0].uv[0].y * w0 + v[1].uv[0].y * w1 + v[2].uv[0].y * w2) * inverse;
                    sg_hot_fastpath_shade_fast(&t, t.fastpath_kind, x, y, primary, reference);
                } else if (t.combine_kind) {
                    float tex[4][4]; int active[4];
                    sg_tex_tri_sample_units(&t, &v[0], &v[1], &v[2], w0, w1, w2, inverse, tex, active);
                    sg_dot3_chain_shade(t.combine_kind, c->tex_env, primary, tex, reference);
                } else memcpy(reference, primary, sizeof(primary));
                if (memcmp(actual[l], reference, sizeof(reference))) {
                    fprintf(stderr, "Shader mismatch: kind%d n%d lane%d\n", kind, n, l);
                    for (int k = 0; k < 4; k++) fprintf(stderr, "%a %a\n", actual[l][k], reference[k]);
                    return 1;
                }
                shades++;
            }
        }
    }
    free(c);
    printf("%u exact four-pixel shader comparisons passed\n", shades);
    return 0;
}
