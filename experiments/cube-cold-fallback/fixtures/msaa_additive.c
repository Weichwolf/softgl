#include "types.h"
#include "msaa_additive.h"
#include <stdio.h>
#include <math.h>

#define CHECK(x) do { if (!(x)) { fprintf(stderr, "%d: %s\n", __LINE__, #x); return 1; } } while (0)
static uint32_t rng = 731;
static uint32_t bits(void) { rng ^= rng << 13; rng ^= rng >> 17; rng ^= rng << 5; return rng; }
static float from_bits(uint32_t v) { float f; memcpy(&f, &v, 4); return f; }
static uint64_t fast, fallback, compared;

#ifdef __EMSCRIPTEN__
__attribute__((used, noinline))
#else
static __attribute__((noinline))
#endif
int sg_additive_apply(const float color[4], float alpha, float factor,
                       const uint8_t destination[16], uint8_t out[16]) {
    sg_i32x4 result;
    int accepted = sg_try_blend_additive_msaa4(color, alpha, factor,
        _mm_loadu_si128((const sg_i32x4 *)destination), &result);
    if (accepted) _mm_storeu_si128((sg_i32x4 *)out, result);
    return accepted;
}

static int check(const float color[4], float alpha, float factor) {
    uint8_t destination[16], result[16];
    for (int b = 0; b < 256; b++) {
        for (int sample = 0; sample < 4; sample++) for (int k = 0; k < 4; k++)
            destination[sample*4+k] = (uint8_t)(b + sample*73 + k*37);
        if (!sg_additive_apply(color, alpha, factor, destination, result)) {
            fallback++; return 0;
        }
        if (!b) fast++;
        for (int sample = 0; sample < 4; sample++) for (int k = 0; k < 4; k++) {
            /* Independent scalar expression from the original blend writer. */
            float source = (k == 3 ? alpha : color[k]) * factor;
            float dest = destination[sample*4+k] * (1.f / 255.f);
            uint8_t expected = sg_quantize(source + dest);
            if (result[sample*4+k] != expected) {
                fprintf(stderr, "b=%d channel=%d source=%.9g alpha=%.9g factor=%.9g dst=%u got=%u expected=%u\n",
                    b, k, color[k], alpha, factor, destination[sample*4+k], result[sample*4+k], expected);
                return 1;
            }
            compared++;
        }
    }
    return 0;
}

static void configure(softgl_ctx *c, unsigned flags, GLenum func) {
    c->depth_test = !(flags & 1); c->depth_mask = !(flags & 2); c->depth_func = func;
    c->blend = !(flags & 4);
    c->blend_src = flags & 8 ? GL_ONE : GL_SRC_ALPHA;
    c->blend_dst = flags & 16 ? GL_ONE_MINUS_SRC_ALPHA : GL_ONE;
    c->sample_alpha_to_coverage = !!(flags & 32);
    c->sample_alpha_to_one = !!(flags & 64);
    c->sample_coverage = !!(flags & 128);
    c->sample_coverage_value = .625f; c->sample_coverage_invert = !!(flags & 256);
    c->multisample = !(flags & 512);
    c->alpha_test = !!(flags & 1024); c->alpha_func = GL_GREATER; c->alpha_ref = .5f;
    c->stencil_test = !!(flags & 2048); c->stencil_func = GL_NOTEQUAL;
    c->stencil_ref = 3; c->stencil_value_mask = 255; c->stencil_write_mask = 127;
    c->stencil_sfail = GL_INCR; c->stencil_dpfail = GL_DECR; c->stencil_dppass = GL_REPLACE;
    c->color_logic_op_enabled = !!(flags & 4096); c->logic_op = GL_XOR;
    c->color_mask[0] = 1; c->color_mask[1] = !(flags & 8192);
    c->color_mask[2] = c->color_mask[3] = 1;
    c->scissor_enabled = !!(flags & 16384);
    c->scissor[0] = c->scissor[1] = 1; c->scissor[2] = 7; c->scissor[3] = 5;
}

static int writer_contract(int samples) {
    enum { W = 9, H = 7 };
    int pixels = W * H * samples;
    softgl_ctx *c = softgl_create_multisample(W, H, samples);
    softgl_ctx *reference = softgl_create_multisample(W, H, samples);
    CHECK(c && reference);
    /* A real active query forces the unchanged scalar sample writer. Its
     * count is irrelevant here; framebuffer/sample storage is the oracle. */
    softgl_make_current(reference); GLuint query;
    glGenQueries(1, &query); glBeginQuery(GL_SAMPLES_PASSED, query);
    const GLenum funcs[] = {GL_NEVER,GL_LESS,GL_EQUAL,GL_LEQUAL,GL_GREATER,GL_NOTEQUAL,GL_GEQUAL,GL_ALWAYS};
    for (int n = 0; n < 32768; n++) {
        configure(c, (unsigned)n, funcs[n % 8]);
        configure(reference, (unsigned)n, funcs[n % 8]);
        for (int i = 0; i < pixels; i++) {
            for (int k = 0; k < 4; k++) c->fb.sample_color[i*4+k] = (uint8_t)bits();
            c->fb.sample_depth[i] = (bits() >> 8) * (1.f / 16777216.f);
            c->fb.sample_stencil[i] = (uint8_t)bits();
        }
        memcpy(reference->fb.sample_color, c->fb.sample_color, pixels*4);
        memcpy(reference->fb.sample_depth, c->fb.sample_depth, pixels*sizeof(float));
        memcpy(reference->fb.sample_stencil, c->fb.sample_stencil, pixels);
        int x = n % 11 - 1, y = (n / 11) % 9 - 1;
        float color[4], z[4];
        for (int k = 0; k < 4; k++) {
            color[k] = (bits() >> 8) * (2.f / 16777216.f) - .25f;
            z[k] = n & 1 ? (bits() >> 8) * (1.f / 16777216.f) : .5f;
        }
        unsigned coverage = (unsigned)(n / 8) & ((1u << samples) - 1u);
        sg_write_multisample(c,x,y,coverage,z,color);
        sg_write_multisample(reference,x,y,coverage,z,color);
        CHECK(!memcmp(c->fb.sample_color,reference->fb.sample_color,pixels*4));
        CHECK(!memcmp(c->fb.sample_depth,reference->fb.sample_depth,pixels*sizeof(float)));
        CHECK(!memcmp(c->fb.sample_stencil,reference->fb.sample_stencil,pixels));
    }
    softgl_make_current(reference); glEndQuery(GL_SAMPLES_PASSED); glDeleteQueries(1,&query);
    softgl_destroy(reference); softgl_destroy(c);
    printf("32768 actual %d-sample color/depth/stencil writes exact to scalar query path\n", samples);
    return 0;
}

int main(void) {
    /* Every destination byte for each accepted source; rejected rounding
     * boundaries explicitly exercise the unchanged fallback. */
    for (int q = 0; q < 256; q++) {
        float f = (q + .5f) / 255.f;
        uint32_t word; memcpy(&word, &f, 4);
        for (int delta = -64; delta <= 64; delta++) {
            float v = from_bits(word + delta), color[4] = {v,v,v,1.f};
            CHECK(!check(color, 1.f, 1.f));
        }
    }
    for (int n = 0; n < 32768; n++) {
        float color[4];
        for (int k = 0; k < 4; k++) color[k] = n & 1
            ? (bits() >> 8) * (1.f / 16777216.f)
            : from_bits(bits() % UINT32_C(0x3f800001));
        CHECK(!check(color, color[3], 1.f));
        CHECK(!check(color, color[3], color[3]));
    }
    const uint32_t special[] = {0,UINT32_C(0x80000000),1,UINT32_C(0x80000001),
        UINT32_C(0x3f800000),UINT32_C(0x3f800001),UINT32_C(0xbf800000),
        UINT32_C(0x7f800000),UINT32_C(0xff800000),UINT32_C(0x7fc00000),UINT32_C(0xffc00001)};
    for (unsigned i=0;i<sizeof(special)/sizeof(special[0]);i++) {
        float f=from_bits(special[i]), color[4]={f,f,f,f};
        CHECK(!check(color,f,1.f)); CHECK(!check(color,f,f));
    }
    CHECK(fast && fallback && compared);
    printf("Additive bytes: %llu exact lanes, %llu accepted source packets, %llu fallback packets\n",
        (unsigned long long)compared,(unsigned long long)fast,(unsigned long long)fallback);
    CHECK(!writer_contract(2));
    CHECK(!writer_contract(4));
    return 0;
}
