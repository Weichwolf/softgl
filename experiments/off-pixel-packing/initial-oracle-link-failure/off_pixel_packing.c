#include "types.h"
#include "workers.h"
#include "frag_hot.h"
#include <stdio.h>

extern int sg_raster_triangle_tile_prepared(softgl_ctx *, const sg_vert *, const sg_vert *, const sg_vert *, int, int, const sg_tex_tri_ctx *);
extern int sg_raster_triangle_depth_capture(softgl_ctx *, const sg_vert *, const sg_vert *, const sg_vert *, int, int, const sg_tex_tri_ctx *);
extern int sg_off_packet_reference_tile(softgl_ctx *, const sg_vert *, const sg_vert *, const sg_vert *, int, int, const sg_tex_tri_ctx *);
extern int sg_off_packet_reference_capture(softgl_ctx *, const sg_vert *, const sg_vert *, const sg_vert *, int, int, const sg_tex_tri_ctx *);
extern void sg_off_packet_test_reset(void);
extern double sg_off_packet_test_read(int);
#define CHECK(x) do { if (!(x)) { fprintf(stderr, "%d: %s\n", __LINE__, #x); return 1; } } while (0)
static uint32_t rng = 173;
static uint32_t bits(void) { rng ^= rng << 13; rng ^= rng >> 17; rng ^= rng << 5; return rng; }
static float value(void) { return (bits() >> 8) * (1.f / 16777216.f); }

static void chain(softgl_ctx *c, int kind) {
    for (int u = 0; u < 4; u++) {
        sg_tex_env *e = &c->tex_env[u];
        e->env_mode = GL_COMBINE;
        e->rgb_scale = e->alpha_scale = 1.f;
        e->op_rgb[0] = e->op_rgb[1] = GL_SRC_COLOR;
        e->op_a[0] = e->op_a[1] = GL_SRC_ALPHA;
        e->combine_a = GL_REPLACE;
        e->src_a[0] = GL_PREVIOUS;
        e->src_rgb[0] = GL_PREVIOUS;
        e->src_rgb[1] = GL_TEXTURE;
        for (int k = 0; k < 4; k++) e->env_color[k] = value() * 2.f - .5f;
    }
    c->tex_env[0].combine_rgb = GL_DOT3_RGB;
    c->tex_env[0].src_rgb[0] = GL_TEXTURE;
    c->tex_env[0].src_rgb[1] = GL_PRIMARY_COLOR;
    c->tex_env[1].combine_rgb = kind == 1 ? GL_ADD : GL_MODULATE;
    c->tex_env[1].src_rgb[1] = kind == 1 ? GL_CONSTANT : GL_PREVIOUS;
    c->tex_env[2].combine_rgb = GL_MODULATE;
    c->tex_env[2].src_rgb[1] = kind == 3 ? GL_PREVIOUS : GL_TEXTURE;
    if (kind == 1) {
        c->tex_env[2].combine_a = GL_MODULATE;
        c->tex_env[2].src_a[1] = GL_TEXTURE;
    }
    c->tex_env[3].combine_rgb = kind == 1 ? GL_ADD : GL_MODULATE;
    c->tex_env[3].src_rgb[1] = kind == 1 ? GL_TEXTURE : GL_CONSTANT;
    c->tex_env[3].src_a[0] = kind == 1 ? GL_PREVIOUS : GL_CONSTANT;
}

int main(void) {
    enum { W = 31, H = 23, PIXELS = W * H };
    softgl_ctx *c = softgl_create(W, H);
    CHECK(c);
    softgl_make_current(c);
    sg_workers_shutdown(c);
    CHECK(!sg_raster_bin);
    GLuint textures[4], query;
    glGenTextures(4, textures);
    glGenQueries(1, &query);
    uint8_t texels[8 * 8 * 4];
    for (int u = 0; u < 4; u++) {
        for (unsigned i = 0; i < sizeof(texels); i++) texels[i] = (uint8_t)bits();
        glActiveTexture(GL_TEXTURE0 + u);
        glEnable(GL_TEXTURE_2D);
        glBindTexture(GL_TEXTURE_2D, textures[u]);
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 8, 8, 0, GL_RGBA, GL_UNSIGNED_BYTE, texels);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
        glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, u & 1 ? GL_NEAREST : GL_LINEAR);
    }
    uint8_t original_color[PIXELS * 4], expected_color[PIXELS * 4];
    float original_depth[PIXELS], expected_depth[PIXELS];
    uint8_t original_stencil[PIXELS], expected_stencil[PIXELS];
    const GLenum funcs[] = {GL_NEVER, GL_LESS, GL_EQUAL, GL_LEQUAL, GL_GREATER, GL_NOTEQUAL, GL_GEQUAL, GL_ALWAYS};
    unsigned comparisons = 0, reduced = 0, tails[4] = {0};
    uint64_t old_packets = 0, new_packets = 0, live_pixels = 0;
    for (int kind = 1; kind <= 3; kind++)
    for (int f = 0; f < 8; f++) for (int variant = 0; variant < 32; variant++)
    for (int shape = 0; shape < 8; shape++) for (int capture = 0; capture < 2; capture++) {
        chain(c, kind);
        c->depth_test = variant != 31;
        c->depth_mask = !(variant & 1);
        c->depth_func = funcs[f];
        c->blend = !!(variant & 2);
        c->blend_src = variant & 1 ? GL_ONE : GL_SRC_ALPHA;
        c->blend_dst = variant & 4 ? GL_ONE : GL_ONE_MINUS_SRC_ALPHA;
        c->stencil_test = !!(variant & 4);
        c->stencil_func = variant & 2 ? GL_LEQUAL : GL_ALWAYS;
        c->stencil_ref = 113;
        c->stencil_value_mask = 127;
        c->stencil_write_mask = 85;
        c->stencil_sfail = GL_INCR;
        c->stencil_dpfail = GL_INVERT;
        c->stencil_dppass = GL_REPLACE;
        c->alpha_test = !!(variant & 8);
        c->alpha_func = GL_GREATER;
        c->alpha_ref = .37f;
        c->color_logic_op_enabled = variant % 7 == 0;
        c->logic_op = GL_XOR;
        for (int k = 0; k < 4; k++) c->color_mask[k] = variant % 3 || k != variant % 4;
        c->scissor_enabled = variant % 5 == 0;
        c->scissor[0] = 2; c->scissor[1] = 1; c->scissor[2] = 25; c->scissor[3] = 19;
        c->polygon_offset_fill = variant % 4 == 3;
        c->polygon_offset_factor = .1f; c->polygon_offset_units = 1.f;
        c->polygon_stipple_enable = variant == 29;
        c->fog_enabled = variant == 30;
        sg_tex_tri_ctx t;
        sg_tex_tri_prepare(c, &t);
        CHECK(t.combine_kind == kind);
        sg_vert v[3]; memset(v, 0, sizeof(v));
        float x = shape & 1 ? -2.3f : 3.2f, y = shape & 2 ? -1.1f : 2.4f;
        float extent = shape < 4 ? .9f + shape * 1.25f : 20.7f;
        v[0].ndc.x = x; v[0].ndc.y = y;
        v[1].ndc.x = x + extent; v[1].ndc.y = y + .13f;
        v[2].ndc.x = x + .21f; v[2].ndc.y = y + extent;
        for (int i = 0; i < 3; i++) {
            v[i].ndc.z = shape & 1 ? .5f : .1f + value() * .8f;
            v[i].ndc.w = .1f + value() * 4.f;
            for (int k = 0; k < 4; k++) (&v[i].color.x)[k] = value() * 2.f - .5f;
            for (int u = 0; u < 4; u++) {
                v[i].uv[u].x = value() * 8.f - 4.f;
                v[i].uv[u].y = value() * 8.f - 4.f;
                v[i].uv[u].z = value() * 8.f - 4.f;
            }
        }
        for (int i = 0; i < PIXELS; i++) {
            original_depth[i] = shape & 1 ? .5f : value();
            original_stencil[i] = (uint8_t)bits();
        }
        for (unsigned i = 0; i < sizeof(original_color); i++) original_color[i] = (uint8_t)bits();
        int expected_result = 0;
        GLuint expected_query = 0;
        uint64_t expected_counts[4] = {0};
        int ix0 = shape == 7 ? 7 : 0, ix1 = shape == 6 ? 13 : W;
        for (int reference = 1; reference >= 0; reference--) {
            memcpy(c->fb.color, original_color, sizeof(original_color));
            memcpy(c->fb.depth, original_depth, sizeof(original_depth));
            memcpy(c->fb.stencil, original_stencil, sizeof(original_stencil));
            if (variant & 16) glBeginQuery(GL_SAMPLES_PASSED, query);
            sg_off_packet_test_reset();
            int result = reference
                ? (capture ? sg_off_packet_reference_capture : sg_off_packet_reference_tile)(c,&v[0],&v[1],&v[2],ix0,ix1,&t)
                : (capture ? sg_raster_triangle_depth_capture : sg_raster_triangle_tile_prepared)(c,&v[0],&v[1],&v[2],ix0,ix1,&t);
            uint64_t counts[4];
            for (int k = 0; k < 4; k++) counts[k] = (uint64_t)sg_off_packet_test_read(k);
            GLuint query_result = 0;
            if (variant & 16) {
                glEndQuery(GL_SAMPLES_PASSED);
                glGetQueryObjectuiv(query, GL_QUERY_RESULT, &query_result);
            }
            CHECK(glGetError() == GL_NO_ERROR);
            if (reference) {
                memcpy(expected_color,c->fb.color,sizeof(expected_color));
                memcpy(expected_depth,c->fb.depth,sizeof(expected_depth));
                memcpy(expected_stencil,c->fb.stencil,sizeof(expected_stencil));
                memcpy(expected_counts,counts,sizeof(counts));
                expected_result = result; expected_query = query_result;
            } else {
                CHECK(result == expected_result && query_result == expected_query);
                CHECK(!memcmp(expected_color,c->fb.color,sizeof(expected_color)));
                CHECK(!memcmp(expected_depth,c->fb.depth,sizeof(expected_depth)));
                CHECK(!memcmp(expected_stencil,c->fb.stencil,sizeof(expected_stencil)));
                CHECK(counts[1] == expected_counts[1] && counts[0] <= expected_counts[0]);
                CHECK(counts[0] == (counts[1] + 3) / 4);
                CHECK(counts[2] + counts[3] == counts[0] && counts[3] <= 1);
                if (counts[3]) tails[counts[1] % 4]++;
                reduced += counts[0] < expected_counts[0];
                old_packets += expected_counts[0]; new_packets += counts[0]; live_pixels += counts[1];
            }
        }
        comparisons++;
    }
    CHECK(reduced && tails[1] && tails[2] && tails[3] && new_packets < old_packets);
    glDeleteQueries(1,&query); glDeleteTextures(4,textures); softgl_destroy(c);
    printf("%u exact off raster pairs: color/depth/stencil/query/capture; all three tails; %u reduced cases; %llu/%llu packets, %llu live pixels\n",
           comparisons,reduced,(unsigned long long)new_packets,(unsigned long long)old_packets,(unsigned long long)live_pixels);
    return 0;
}
