#!/usr/bin/env python3
"""Replace eager barycentric construction with a guarded edge-depth plane."""
from pathlib import Path
import sys

root = Path(sys.argv[1])
recipe = Path(__file__).resolve().parent
path = root/'libsoftgl/src/scene_visibility.c'
text = path.read_text()
a = text.index('static inline unsigned scene_guarded_compare(')
b = text.index('/* A small original bounding box',a)
text = text[:a]+(recipe/'edge_plane.inc').read_text()+'\n'+text[b:]
text = text.replace('#define SCENE_DEPTH_GUARD_EPSILON 0x1p-18f',
                    '#define SCENE_DEPTH_GUARD_EPSILON 0x1p-19f')

# A uniform record reconstructs all four samples from one origin and plane.
at = '    float edge0[4], edge1[4], inverse[4], z0[4], z1[4], z2[4];'
assert text.count(at) == 1
fast = '''    if (f->shade_mask[base] == 0x80) {
        uint32_t id = f->winner[base];
        const scene_triangle *t = &f->bins[id >> SCENE_INDEX_BITS].triangles[id & SCENE_INDEX_MASK];
        if (t->primitive) {
            float edge[2][4];
            for (int k = 0; k < 2; k++) {
                int64_t center = t->edge[k][0]+t->edge[k][1]*x+t->edge[k][2]*y;
                for (int s = 0; s < 4; s++) {
                    int sx, sy; sg_sample_position(4,s,&sx,&sy);
                    edge[k][s] = (float)(center+(t->edge[k][1]/256)*(sx-128)+
                        (t->edge[k][2]/256)*(sy-128));
                }
            }
            sg_f32x4 b0 = sg_f32x4_mul(sg_f32x4_load(edge[0]),sg_f32x4_splat(t->inverse_area));
            sg_f32x4 b1 = sg_f32x4_mul(sg_f32x4_load(edge[1]),sg_f32x4_splat(t->inverse_area));
            sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
            sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(
                sg_f32x4_mul(b0,sg_f32x4_splat(t->visibility_depth[0])),
                sg_f32x4_mul(b1,sg_f32x4_splat(t->visibility_depth[1]))),
                sg_f32x4_mul(b2,sg_f32x4_splat(t->visibility_depth[2]))),sg_f32x4_splat(0.f));
            z = sg_f32x4_select(sg_f32x4_lt(z,sg_f32x4_splat(0.f)),sg_f32x4_splat(0.f),z);
            return sg_f32x4_select(sg_f32x4_gt(z,sg_f32x4_splat(1.f)),sg_f32x4_splat(1.f),z);
        }
    }
'''
text = text.replace(at,fast+at)

for name,end,rebased in [('scene_small_msaa4','static inline sg_f32x4 scene_rebased_edge_float',False),
                         ('scene_rebased_msaa4','int sg_scene_visibility_triangle',True)]:
    a = text.index('static int '+name+'('); b = text.index(end,a)
    section = text[a:b]
    marker = '    sg_f32x4 z0 = sg_f32x4_splat(v0->ndc.z), z1 = sg_f32x4_splat(v1->ndc.z), z2 = sg_f32x4_splat(v2->ndc.z);'
    assert section.count(marker) == 1
    extra = '''
    float coefficient0 = inverse*(v0->ndc.z-v2->ndc.z);
    float coefficient1 = inverse*(v1->ndc.z-v2->ndc.z);
'''
    if rebased:
        extra += '''    sg_f32x4 plane0 = sg_f32x4_splat(256.f*coefficient0);
    sg_f32x4 plane1 = sg_f32x4_splat(256.f*coefficient1);
    sg_f32x4 plane_constant = sg_f32x4_add(sg_f32x4_add(
        sg_f32x4_mul(_mm_cvtepi32_ps(remainders[0]),sg_f32x4_splat(coefficient0)),
        sg_f32x4_mul(_mm_cvtepi32_ps(remainders[1]),sg_f32x4_splat(coefficient1))),z2);
'''
    else:
        extra += '''    sg_f32x4 plane0 = sg_f32x4_splat(coefficient0);
    sg_f32x4 plane1 = sg_f32x4_splat(coefficient1);
    sg_f32x4 plane_constant = z2;
'''
    section = section.replace(marker,marker+extra)
    if rebased:
        weights = '''                sg_f32x4 b0 = sg_f32x4_mul(scene_rebased_edge_float(raw0,remainders[0],1),inverse4);
                sg_f32x4 b1 = sg_f32x4_mul(scene_rebased_edge_float(raw1,remainders[1],1),inverse4);'''
        raw = ''
    else:
        weights = '''                sg_f32x4 b0 = sg_f32x4_mul(_mm_cvtepi32_ps(_mm_sub_epi32(e0,bias0)),inverse4);
                sg_f32x4 b1 = sg_f32x4_mul(_mm_cvtepi32_ps(_mm_sub_epi32(e1,bias1)),inverse4);'''
        raw = '''                sg_i32x4 raw0 = _mm_sub_epi32(e0,bias0), raw1 = _mm_sub_epi32(e1,bias1);
'''
    old = weights+'''
                size_t base = ((size_t)y*c->fb.w+x)*4;
                sg_f32x4 z;
                if (guarded) coverage = scene_guarded_compare(c,base,coverage,b0,b1,z0,z1,z2,&z);
                else {'''
    new = raw+'''                size_t base = ((size_t)y*c->fb.w+x)*4;
                sg_f32x4 z;
                if (guarded) {
                    sg_f32x4 approximate = sg_f32x4_add(sg_f32x4_add(
                        sg_f32x4_mul(_mm_cvtepi32_ps(raw0),plane0),
                        sg_f32x4_mul(_mm_cvtepi32_ps(raw1),plane1)),plane_constant);
                    unsigned uncertain;
                    coverage = scene_plane_prepare(c,base,coverage,approximate,&z,&uncertain);
                    sg_f32x4 b0 = sg_f32x4_splat(0.f), b1 = sg_f32x4_splat(0.f);
                    if (uncertain) {
'''+weights.replace('sg_f32x4 b0 =','b0 =').replace('sg_f32x4 b1 =','b1 =')+'''
                    }
                    coverage = scene_plane_finish(c,base,coverage,uncertain,b0,b1,z0,z1,z2,&z);
                } else {
'''+weights
    assert section.count(old) == 1,name
    section = section.replace(old,new)
    text = text[:a]+section+text[b:]
path.write_text(text)
