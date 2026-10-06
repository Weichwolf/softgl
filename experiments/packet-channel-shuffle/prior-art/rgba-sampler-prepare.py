from pathlib import Path
s=Path('libsoftgl/src/fragment.c').read_text().replace('#include "types.h"','#include "types.h"\n#include "simd.h"')
helper='''/* Read exactly one RGBA8 texel, including at the last texel of a row. */
SG_INLINE sg_f32x4 sg_load_texel_rgba(const uint8_t *p) {
    uint32_t rgba;
    memcpy(&rgba, p, sizeof(rgba));
    return _mm_cvtepi32_ps(_mm_cvtepu8_epi32(_mm_cvtsi32_si128((int32_t)rgba)));
}

SG_INLINE void sg_bilinear_rgba(const uint8_t *p00, const uint8_t *p10,
                               const uint8_t *p01, const uint8_t *p11,
                               float fu, float fv, float out[4]) {
    sg_f32x4 u0 = sg_f32x4_splat(1.f - fu), u1 = sg_f32x4_splat(fu);
    sg_f32x4 v0 = sg_f32x4_splat(1.f - fv), v1 = sg_f32x4_splat(fv);
    sg_f32x4 top = sg_f32x4_add(sg_f32x4_mul(sg_load_texel_rgba(p00), u0),
                               sg_f32x4_mul(sg_load_texel_rgba(p10), u1));
    sg_f32x4 bot = sg_f32x4_add(sg_f32x4_mul(sg_load_texel_rgba(p01), u0),
                               sg_f32x4_mul(sg_load_texel_rgba(p11), u1));
    sg_f32x4 value = sg_f32x4_mul(sg_f32x4_add(sg_f32x4_mul(top, v0),
                                             sg_f32x4_mul(bot, v1)),
                                 sg_f32x4_splat(1.f / 255.f));
    _mm_storeu_ps(out, value);
}

'''
anchor='static int combine_arguments(GLenum operation) {';assert s.count(anchor)==1;s=s.replace(anchor,helper+anchor)
a='''        float ira = 1.f - fu, irb = fu;
        float ica = 1.f - fv, icb = fv;
        for (int k = 0; k < 4; k++) {
            float top = s[0][k] * ira + s[1][k] * irb;
            float bot = s[2][k] * ira + s[3][k] * irb;
            out[k] = (top * ica + bot * icb) * (1.f/255.f);
        }'''
assert s.count(a)==1;s=s.replace(a,'        sg_bilinear_rgba(s[0], s[1], s[2], s[3], fu, fv, out);')
a='''        for (int k = 0; k < 4; k++) {
            float top = p00[k] * (1.f - fu) + p10[k] * fu;
            float bot = p01[k] * (1.f - fu) + p11[k] * fu;
            out[k] = (top * (1.f - fv) + bot * fv) * (1.f/255.f);
        }'''
assert s.count(a)==1;s=s.replace(a,'        sg_bilinear_rgba(p00, p10, p01, p11, fu, fv, out);')
Path('build/diagnostics/rgba-sampler/candidate.c').write_text(s)
print('Prepared RGBA sampler SIMD trial; not applied/compiled during audit')
