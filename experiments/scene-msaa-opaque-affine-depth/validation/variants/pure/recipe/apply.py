#!/usr/bin/env python3
"""Create separate branch-free approximate opaque depth kernels."""
from pathlib import Path
import sys

root = Path(sys.argv[1]); path = root / 'libsoftgl/src/scene_visibility.c'
s = path.read_text()
def change(old,new):
    global s
    assert s.count(old) == 1,(s.count(old),old[:100])
    s = s.replace(old,new)

change('    pthread_mutex_t allocation_mutex;', '    pthread_mutex_t allocation_mutex;\n    int affine_depth;')
change('    f->quantized = 0;', '    f->quantized = 0; f->affine_depth = 0;')
change('/* The caller bounds positions',
    'void softgl_scene_affine_depth(GLboolean enabled) {\n'
    '    softgl_ctx *c = sg_current();\n'
    '    if (c && c->scene_visibility) c->scene_visibility->affine_depth = enabled != GL_FALSE;\n'
    '}\n\n/* The caller bounds positions')

for name,end,rebased in [('scene_small_msaa4','static inline sg_f32x4 scene_rebased_edge_float',False),
                         ('scene_rebased_msaa4','int sg_scene_visibility_triangle',True)]:
    a = s.index('static int '+name+'('); b = s.index(end,a)
    original = s[a:b]
    section = original.replace('static int '+name+'(', 'static int '+name+'_affine(',1)
    marker = '    const sg_vert *vertices[3] = {v0,v1,v2};'
    assert section.count(marker) == 1
    section = section.replace(marker,
        '    struct sg_scene_visibility *f = c->scene_visibility;\n'
        '    if (!f->deferred_meshes || f->materials[c->scene_material].alpha_test ||\n'
        '        !(v0->ndc.z >= 0.f && v0->ndc.z <= 1.f &&\n'
        '          v1->ndc.z >= 0.f && v1->ndc.z <= 1.f &&\n'
        '          v2->ndc.z >= 0.f && v2->ndc.z <= 1.f))\n'
        '        return '+name+'(c,v0,v1,v2,tile_ix0,tile_ix1,texture);\n'+marker)
    marker = '    sg_f32x4 z0 = sg_f32x4_splat(v0->ndc.z), z1 = sg_f32x4_splat(v1->ndc.z), z2 = sg_f32x4_splat(v2->ndc.z);'
    assert section.count(marker) == 1
    setup = '    float coefficient0 = inverse*(v0->ndc.z-v2->ndc.z);\n'
    setup += '    float coefficient1 = inverse*(v1->ndc.z-v2->ndc.z);\n'
    if rebased:
        setup += '    sg_f32x4 plane0 = sg_f32x4_splat(256.f*coefficient0);\n'
        setup += '    sg_f32x4 plane1 = sg_f32x4_splat(256.f*coefficient1);\n'
        setup += '    sg_f32x4 plane_constant = sg_f32x4_add(sg_f32x4_add(\n'
        setup += '        sg_f32x4_mul(_mm_cvtepi32_ps(remainders[0]),sg_f32x4_splat(coefficient0)),\n'
        setup += '        sg_f32x4_mul(_mm_cvtepi32_ps(remainders[1]),sg_f32x4_splat(coefficient1))),\n'
        setup += '        sg_f32x4_splat(v2->ndc.z));'
        weights = '                sg_f32x4 b0 = sg_f32x4_mul(scene_rebased_edge_float(raw0,remainders[0],1),inverse4);\n'
        weights += '                sg_f32x4 b1 = sg_f32x4_mul(scene_rebased_edge_float(raw1,remainders[1],1),inverse4);'
        raw = ''
    else:
        setup += '    sg_f32x4 plane0 = sg_f32x4_splat(coefficient0), plane1 = sg_f32x4_splat(coefficient1);\n'
        setup += '    sg_f32x4 plane_constant = sg_f32x4_splat(v2->ndc.z);'
        weights = '                sg_f32x4 b0 = sg_f32x4_mul(_mm_cvtepi32_ps(_mm_sub_epi32(e0,bias0)),inverse4);\n'
        weights += '                sg_f32x4 b1 = sg_f32x4_mul(_mm_cvtepi32_ps(_mm_sub_epi32(e1,bias1)),inverse4);'
        raw = '                sg_i32x4 raw0 = _mm_sub_epi32(e0,bias0), raw1 = _mm_sub_epi32(e1,bias1);\n'
    section = section.replace(marker,setup)
    old = weights+'\n                sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);\n'
    old += '                sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,z0),\n'
    old += '                    sg_f32x4_mul(b1,z1)),sg_f32x4_mul(b2,z2)),sg_f32x4_splat(0.f));'
    assert section.count(old) == 1
    section = section.replace(old,raw+
        '                sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(\n'
        '                    sg_f32x4_mul(_mm_cvtepi32_ps(raw0),plane0),\n'
        '                    sg_f32x4_mul(_mm_cvtepi32_ps(raw1),plane1)),plane_constant);')
    section = section.replace('    sg_f32x4 inverse4 = sg_f32x4_splat(inverse);\n','')
    assert 'if (direct)' not in section and 'sg_f32x4 b0 =' not in section
    s = s[:b]+section+s[b:]
    call = name+'(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture)'
    change(call,'(f->affine_depth ? '+name+'_affine(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture)\n'
        '        : '+call+')')
path.write_text(s)

path = root / 'model_wrap.c'; s = path.read_text()
change('static GLuint texture2d(', 'void softgl_scene_affine_depth(GLboolean enabled);\n\nstatic GLuint texture2d(')
change('    if (scene_visibility) softgl_scene_msaa_material_merge(GL_TRUE);',
    '    if (scene_visibility) {\n        softgl_scene_msaa_material_merge(GL_TRUE);\n'
    '        softgl_scene_affine_depth(GL_TRUE);\n    }')
path.write_text(s)
