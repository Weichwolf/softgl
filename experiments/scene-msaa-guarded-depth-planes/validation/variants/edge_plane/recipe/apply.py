#!/usr/bin/env python3
"""Build the private guarded-depth variant from a frozen committed parent."""
from pathlib import Path
import sys

root = Path(sys.argv[1])
recipe = Path(__file__).resolve().parent
path = root/'libsoftgl/src/scene_visibility.c'
text = path.read_text()

def change(old,new,count=1):
    global text
    assert text.count(old) == count,(old[:70],text.count(old))
    text = text.replace(old,new)

change('    sg_vec4 color[3], uv[4][3];','''    union {
        sg_vec4 color[3];
        float visibility_depth[3]; /* consumed before deferred attributes fill color */
    };
    sg_vec4 uv[4][3];''')
change('    const scene_primitive *current_primitive;',
       '    const scene_primitive *current_primitive;\n    int pending_depth;')
change('        f->bins[i].count = 0; f->bins[i].depth_passes = 0;',
       '        f->bins[i].count = 0; f->bins[i].depth_passes = 0; f->bins[i].pending_depth = 0;')
change('        t->inverse_w[i] = vertices[i]->ndc.w;',
       '        t->inverse_w[i] = vertices[i]->ndc.w;\n        if (t->primitive) t->visibility_depth[i] = vertices[i]->ndc.z;')
change('/* A small original bounding box proves all sample edges fit int32, without',
       (recipe/'guarded_depth.inc').read_text()+'\n/* A small original bounding box proves all sample edges fit int32, without')
start = text.index('static int scene_small_msaa4(')
end = text.index('int sg_scene_visibility_triangle(',start)
section = text[start:end]
old = '''                sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
                sg_f32x4 z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,z0),
                    sg_f32x4_mul(b1,z1)),sg_f32x4_mul(b2,z2)),sg_f32x4_splat(0.f));
                z = sg_f32x4_select(sg_f32x4_lt(z,sg_f32x4_splat(0.f)),sg_f32x4_splat(0.f),z);
                z = sg_f32x4_select(sg_f32x4_gt(z,sg_f32x4_splat(1.f)),sg_f32x4_splat(1.f),z);
                size_t base = ((size_t)y*c->fb.w+x)*4;
                coverage &= sg_mask4_live(sg_f32x4_lt(z,_mm_loadu_ps(c->fb.sample_depth+base)));'''
new = '''                size_t base = ((size_t)y*c->fb.w+x)*4;
                sg_f32x4 z;
                if (guarded) coverage = scene_guarded_compare(c,base,coverage,b0,b1,z0,z1,z2,&z);
                else {
                    sg_f32x4 b2 = sg_f32x4_sub(sg_f32x4_sub(sg_f32x4_splat(1.f),b0),b1);
                    z = sg_f32x4_add(sg_f32x4_add(sg_f32x4_add(sg_f32x4_mul(b0,z0),
                        sg_f32x4_mul(b1,z1)),sg_f32x4_mul(b2,z2)),sg_f32x4_splat(0.f));
                    z = sg_f32x4_select(sg_f32x4_lt(z,sg_f32x4_splat(0.f)),sg_f32x4_splat(0.f),z);
                    z = sg_f32x4_select(sg_f32x4_gt(z,sg_f32x4_splat(1.f)),sg_f32x4_splat(1.f),z);
                    coverage &= sg_mask4_live(sg_f32x4_lt(z,_mm_loadu_ps(c->fb.sample_depth+base)));
                }'''
assert section.count(old) == 2
section = section.replace(old,new)
marker = '    sg_f32x4 inverse4 = sg_f32x4_splat(inverse);'
assert section.count(marker) == 2
section = section.replace(marker,marker+'\n    int guarded = scene_guarded_supported(c,v0,v1,v2,tile_ix0);')
text = text[:start]+section+text[end:]
change('    if (c->fb.samples == 4 && scene_small_msaa4(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture)) return 0;',
'''    int guarded_bin = ((sg_worker_pool *)c->workers)->column_bin[tile_ix0];
    if (c->fb.samples == 4 && !scene_guarded_supported(c,v0,v1,v2,tile_ix0))
        scene_guarded_materialize_bin(f,guarded_bin);
    if (c->fb.samples == 4 && scene_small_msaa4(c,v0,v1,v2,tile_ix0,tile_ix1,&m->texture)) return 0;''')
change('    if (c->fb.samples)\n        return sg_raster_triangle_tile_prepared',
'''    if (c->fb.samples == 4) scene_guarded_materialize_bin(f,guarded_bin);
    if (c->fb.samples)
        return sg_raster_triangle_tile_prepared''')
change('    uint32_t visible = 0;',
'''    if (c->fb.samples == 4) {
        atomic_store_explicit(&f->next_task,0,memory_order_relaxed);
        sg_workers_run_callback(c,scene_guarded_materialize,f);
    }
    uint32_t visible = 0;''')
path.write_text(text)
