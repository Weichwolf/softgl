#!/usr/bin/env python3
"""Private approximate control: eliminate interval guards and reconstruction."""
from pathlib import Path
import sys

path = Path(sys.argv[1])/'libsoftgl/src/scene_visibility.c'
text = path.read_text()
for name,end,rebased in [('scene_small_msaa4','static inline sg_f32x4 scene_rebased_edge_float',False),
                         ('scene_rebased_msaa4','int sg_scene_visibility_triangle',True)]:
    a = text.index('static int '+name+'('); b = text.index(end,a)
    section = text[a:b]
    marker = '    sg_f32x4 z0 = sg_f32x4_splat(v0->ndc.z), z1 = sg_f32x4_splat(v1->ndc.z), z2 = sg_f32x4_splat(v2->ndc.z);'
    assert section.count(marker) == 1
    extra = '''
    struct sg_scene_visibility *f = c->scene_visibility;
    int direct = f->deferred_meshes && !f->materials[c->scene_material].alpha_test &&
        v0->ndc.z >= 0.f && v0->ndc.z <= 1.f &&
        v1->ndc.z >= 0.f && v1->ndc.z <= 1.f &&
        v2->ndc.z >= 0.f && v2->ndc.z <= 1.f;
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
                sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
                sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,z0),
                    sg_f32x4_mul(b1,z1)),sg_f32x4_mul(b2,z2)),sg_f32x4_splat(0.f));'''
    new = raw+'''                sg_f32x4 z;
                if (direct) z = sg_f32x4_add(sg_f32x4_add(
                    sg_f32x4_mul(_mm_cvtepi32_ps(raw0),plane0),
                    sg_f32x4_mul(_mm_cvtepi32_ps(raw1),plane1)),plane_constant);
                else {
'''+weights+'''
                    sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
                    z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,z0),
                        sg_f32x4_mul(b1,z1)),sg_f32x4_mul(b2,z2)),sg_f32x4_splat(0.f));
                }'''
    assert section.count(old) == 1,name
    section = section.replace(old,new)
    text = text[:a]+section+text[b:]
path.write_text(text)
