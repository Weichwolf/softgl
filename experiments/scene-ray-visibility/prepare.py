#!/usr/bin/env python3
"""Private full-frame BVH candidate, frozen from accepted rolling SIMD."""
from pathlib import Path
import argparse, shutil, subprocess
parser=argparse.ArgumentParser()
parser.add_argument('--baseline',default='d481c90')
parser.add_argument('--backend',choices=('scalar','packet','raster'),default='packet')
parser.add_argument('--occlusion',action='store_true')
args=parser.parse_args()
if args.occlusion and args.backend != 'raster': parser.error('--occlusion requires --backend raster')
repo=Path(__file__).resolve().parents[2]
base=subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root=repo/'build/scene-ray-visibility'
names=subprocess.check_output(['git','ls-tree','-r','--name-only',base,'libsoftgl'],cwd=repo,text=True).splitlines()
for v in ['source','baseline-source']:
    if (root/v).exists(): shutil.rmtree(root/v)
    for name in names:
        p=root/v/name;p.parent.mkdir(parents=True,exist_ok=True)
        p.write_bytes(subprocess.check_output(['git','show',f'{base}:{name}'],cwd=repo))
    (root/v/'model_wrap.c').write_bytes(subprocess.check_output(['git','show',f'{base}:wasm/model_wrap.c'],cwd=repo))
    (root/v/'baseline.txt').write_text(base+'\n')
    (root/v/'backend.txt').write_text(args.backend+'\n')
p=root/'baseline-source/libsoftgl/CMakeLists.txt';p.write_text(p.read_text().replace('softgl','baseline_softgl'))
src=root/'source/libsoftgl/src'
shutil.copyfile(Path(__file__).parent/('scene_ray_scalar.inc' if args.backend=='scalar' else 'scene_ray.inc'),src/'scene_ray.inc')
if args.backend == 'raster':
    shutil.copyfile(Path(__file__).parent/'scene_bvh_hz.inc',src/'scene_bvh_hz.inc')
    with (src/'scene_ray.inc').open('a') as out:
        if args.occlusion: out.write('\n#define SCENE_BVH_OCCLUSION\n')
        out.write((Path(__file__).parent/'scene_bvh_raster.inc').read_text())
    p=src/'scene_ray.inc';s=p.read_text().replace('static int scene_ray_build(struct sg_scene_visibility *f)', 'static int scene_ray_build_unused(struct sg_scene_visibility *f)')
    s=s.replace('    sg_workers_run_callback(f->context,scene_ray_pixels,f);','    sg_workers_run_callback(f->context,scene_bvh_raster,f);')
    s=s.replace('static int scene_ray_build_unused(struct sg_scene_visibility *f) {','static void scene_bvh_raster(void *);\nstatic int scene_ray_build(struct sg_scene_visibility *f) {')
    p.write_text(s)
shutil.copyfile(Path(__file__).parent/'scene_bvh.h',src/'scene_bvh.h')
p=src/'scene_visibility.c';s=p.read_text()
def replace(old,new):
    global s
    assert s.count(old)==1,(s.count(old),old[:80])
    s=s.replace(old,new)
replace('struct sg_scene_visibility {','typedef struct scene_ray_state scene_ray_state;\nstatic void scene_ray_destroy(scene_ray_state *);\n\nstruct sg_scene_visibility {')
replace('    scene_geometry *geometry;','    scene_geometry *geometry;\n    scene_ray_state *ray;\n    uint32_t ray_epoch;')
replace('    scene_geometry_destroy(f->geometry);','    scene_ray_destroy(f->ray);\n    scene_geometry_destroy(f->geometry);')
replace('    f->deferred_meshes = 0; f->mesh_vertices = 0;','    f->deferred_meshes = 0; f->mesh_vertices = 0; f->ray_epoch = 0;')
replace('#include "geometry.inc"','#include "geometry.inc"\n#include "scene_ray.inc"')
replace('''    if (f->deferred_meshes && !atomic_load_explicit(&f->failed,memory_order_relaxed))
        scene_geometry_build(f);''','''    if (f->deferred_meshes && !atomic_load_explicit(&f->failed,memory_order_relaxed)) {
        if (scene_ray_build(f)) f->deferred_meshes = 0;
        else scene_geometry_build(f);
    }''')
p.write_text(s)
if args.backend == 'raster':
    p=src/'scene_visibility.c';s=p.read_text()
    s=s.replace('    const scene_primitive *primitive;','    const scene_primitive *primitive;\n    uint32_t ray_key;')
    s=s.replace('static void scene_ray_destroy(scene_ray_state *);','static void scene_ray_destroy(scene_ray_state *);\nstatic void scene_ray_fill_record(struct sg_scene_visibility *, scene_triangle *);')
    s=s.replace('    uint32_t ray_epoch;','    uint32_t ray_epoch;\n    int ray_active;\n    uint32_t ray_current[SG_MAX_BINS];')
    s=s.replace('    f->deferred_meshes = 0; f->mesh_vertices = 0; f->ray_epoch = 0;', '    f->deferred_meshes = 0; f->mesh_vertices = 0; f->ray_epoch = 0; f->ray_active = 0;\n    for (int i = 0; i < SG_MAX_BINS; i++) f->ray_current[i] = UINT32_MAX;')
    s=s.replace('    t->primitive = f->current_primitive[bin];','    t->primitive = f->current_primitive[bin];\n    t->ray_key = f->ray_current[bin];')
    s=s.replace('        if (!t->primitive) {','        if (!t->primitive && t->ray_key == UINT32_MAX) {')
    s=s.replace('        if (scene_ray_build(f)) f->deferred_meshes = 0;', '        if (scene_ray_build(f)) f->ray_active = 1;')
    p.write_text(s)
    p=src/'geometry.inc';s=p.read_text().replace('            if (!b->visible[i] || !p) continue;', '            if (!b->visible[i]) continue;\n            if (t->ray_key != UINT32_MAX) { scene_ray_fill_record(f,t); continue; }\n            if (!p) continue;')
    p.write_text(s)
p=root/'source/model_wrap.c';s=p.read_text()
s=s.replace('    int scene_visibility = softgl_scene_visibility_begin();','''    int scene_visibility = softgl_scene_visibility_begin();
#ifdef SOFTGL_MODEL_SCENE_RAYS
    if (scene_visibility) softgl_scene_ray_static_geometry(G.static_vbo);
#endif''');p.write_text(s)
p=root/'source/libsoftgl/include/GL/softgl.h';s=p.read_text().replace('int softgl_scene_visibility_begin(void);','''/* Private prototype: caller guarantees immutable geometry until epoch changes. */
void softgl_scene_ray_static_geometry(GLuint epoch);
int softgl_scene_visibility_begin(void);''');p.write_text(s)
print(root/'source')
