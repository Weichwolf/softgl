#include "types.h"
#include "dlist.h"
#include "workers.h"
#include "simd.h"

void _sg_sample_coverage_real(GLclampf value, GLboolean invert) {
    softgl_ctx *c = sg_current();
    if (!c) return;
    sg_workers_flush(c);
    c->sample_coverage_value = value < 0.f ? 0.f : value > 1.f ? 1.f : value;
    c->sample_coverage_invert = invert != GL_FALSE;
}

void glSampleCoverage(GLclampf value, GLboolean invert) {
    softgl_ctx *c = sg_current();
    if (!c) return;
    if (c->imm_active) { sg_set_error(GL_INVALID_OPERATION); return; }
    struct { float value; GLboolean invert; } args = {value, invert};
    if (c->dlist_recording) {
        sg_dlist_emit(c, SG_OP_SAMPLE_COVERAGE, &args, sizeof(args));
        if (!c->dlist_exec) return;
    }
    _sg_sample_coverage_real(value, invert);
}

/* Four RGBA8 samples become four RGBA16 sums in the low half. */
SG_INLINE sg_i32x4 sg_resolve_pixel4(const uint8_t *samples) {
    sg_i32x4 rgba = _mm_loadu_si128((const __m128i*)samples);
    sg_i32x4 zero = _mm_setzero_si128();
    sg_i32x4 pairs = _mm_add_epi16(_mm_unpacklo_epi8(rgba, zero),
                                 _mm_unpackhi_epi8(rgba, zero));
    sg_i32x4 sum = _mm_add_epi16(pairs, _mm_srli_si128(pairs, 8));
    return _mm_srli_epi16(_mm_add_epi16(sum, _mm_set1_epi16(2)), 2);
}

/* Drain raster jobs before any framebuffer consumer. Sample zero is the
 * implementation's depth/stencil readback sample; color is the rounded mean. */
void sg_msaa_resolve(softgl_ctx *c) {
    sg_workers_flush(c);
    int n = c->fb.samples;
    if (!n) return;
    size_t pixels = (size_t)c->fb.w * (size_t)c->fb.h;
    size_t i = 0;
    if (n == 4) {
        for (; i + 4 <= pixels; i += 4) {
            const uint8_t *src = c->fb.sample_color + i * 16;
            sg_i32x4 p0 = sg_resolve_pixel4(src);
            sg_i32x4 p1 = sg_resolve_pixel4(src + 16);
            sg_i32x4 p2 = sg_resolve_pixel4(src + 32);
            sg_i32x4 p3 = sg_resolve_pixel4(src + 48);
            sg_i32x4 rgba = _mm_packus_epi16(_mm_unpacklo_epi64(p0, p1),
                                            _mm_unpacklo_epi64(p2, p3));
            _mm_storeu_si128((__m128i*)(c->fb.color + i * 4), rgba);
            const float *depth = c->fb.sample_depth + i * 4;
            _mm_storeu_ps(c->fb.depth + i, sg_f32x4_set(depth[0], depth[4], depth[8], depth[12]));
            for (int k = 0; k < 4; k++) c->fb.stencil[i + k] = c->fb.sample_stencil[(i + k) * 4];
        }
    }
    for (; i < pixels; i++) {
        for (int k = 0; k < 4; k++) {
            unsigned sum = 0;
            for (int s = 0; s < n; s++) sum += c->fb.sample_color[(i * n + s) * 4 + k];
            c->fb.color[i * 4 + k] = (uint8_t)((sum + (unsigned)n / 2) / (unsigned)n);
        }
        c->fb.depth[i] = c->fb.sample_depth[i * n];
        c->fb.stencil[i] = c->fb.sample_stencil[i * n];
    }
}
