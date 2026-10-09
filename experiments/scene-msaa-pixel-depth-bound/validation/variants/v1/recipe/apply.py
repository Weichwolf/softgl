#!/usr/bin/env python3
"""Only alter a frozen raster_msaa_impl.h, checking both original anchors."""
from pathlib import Path
import sys

p = Path(sys.argv[1]).resolve()/'raster_msaa_impl.h'
text = p.read_text()
anchor = '    int packet_shader = c->scene_visibility || sg_packet_supported(c, tctx);'
assert text.count(anchor) == 1
addition = '''#if SG_MSAA_SAMPLES == 4
    int pixel_depth_bound = c->depth_test && !c->stencil_test &&
        (c->depth_func == GL_LESS || c->depth_func == GL_LEQUAL) &&
        v0->ndc.z >= 0.f && v0->ndc.z <= 1.f &&
        v1->ndc.z >= 0.f && v1->ndc.z <= 1.f &&
        v2->ndc.z >= 0.f && v2->ndc.z <= 1.f;
    uint32_t offset_bits; memcpy(&offset_bits, &z_offset, 4);
    pixel_depth_bound &= (offset_bits & UINT32_C(0x7f800000)) != UINT32_C(0x7f800000);
    float near = v0->ndc.z < v1->ndc.z ? v0->ndc.z : v1->ndc.z;
    if (v2->ndc.z < near) near = v2->ndc.z;
    float lower = near + z_offset - 2e-6f * (1.f + fabsf(z_offset));
    lower = lower < 0.f ? 0.f : lower > 1.f ? 1.f : lower;
    sg_f32x4 pixel_lower = sg_f32x4_splat(lower);
#endif
'''
text = text.replace(anchor, addition+anchor)
anchor = '            if (coverage && SG_MSAA_SAMPLES == 4) {'
assert text.count(anchor) == 1
replacement = '''#if SG_MSAA_SAMPLES == 4
            if (coverage && pixel_depth_bound &&
                (coverage & sg_mask4_live(sg_f32x4_lt(_mm_loadu_ps(c->fb.sample_depth +
                    ((size_t)y * c->fb.w + x) * 4), pixel_lower))) == coverage) {
                /* Strict rejection preserves depth-capture equality replay. */
                coverage_seen = 1;
                coverage = 0;
            } else
#endif
            if (coverage && SG_MSAA_SAMPLES == 4) {'''
p.write_text(text.replace(anchor, replacement))
print('Private conservative MSAA pixel bound prepared')
