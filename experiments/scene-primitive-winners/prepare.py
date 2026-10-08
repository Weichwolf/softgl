#!/usr/bin/env python3
"""Freeze accepted sources for primitive-ID visibility and shared final surfaces."""
import argparse
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='d5e79c7')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root = repo/'build/scene-primitive-winners'
names = subprocess.check_output(['git','ls-tree','-r','--name-only',base,'libsoftgl'],cwd=repo,text=True).splitlines()
for variant in ('source','baseline-source'):
    if (root/variant).exists(): shutil.rmtree(root/variant)
    for name in names:
        p = root/variant/name; p.parent.mkdir(parents=True,exist_ok=True)
        p.write_bytes(subprocess.check_output(['git','show',f'{base}:{name}'],cwd=repo))
    (root/variant/'model_wrap.c').write_bytes(subprocess.check_output(['git','show',f'{base}:wasm/model_wrap.c'],cwd=repo))
    (root/variant/'baseline.txt').write_text(base+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt';p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p = root/'source/libsoftgl/src/scene_visibility.c';s = p.read_text()
def replace(old,new):
    global s
    assert s.count(old)==1,(s.count(old),old[:80])
    s=s.replace(old,new)
replace('    scene_bin bins[SG_MAX_BINS];', '    int primitive_winners;\n    scene_triangle *surfaces;\n    uint32_t surface_count, surface_capacity, current_primitive_id[SG_MAX_BINS];\n    scene_bin bins[SG_MAX_BINS];')
replace('    free(f->materials); free(f->tasks);', '    free(f->materials); free(f->tasks); free(f->surfaces);')
replace('    f->quantized = 0;', '    f->quantized = 0; f->primitive_winners = 0; f->surface_count = 0;')
replace('    scene_bin *b = &f->bins[bin];\n    if (b->count == b->capacity) {', '    scene_bin *b = &f->bins[bin];\n    if (f->primitive_winners) {\n        if (!f->current_primitive[bin] || !f->quantized) {\n            atomic_store_explicit(&f->failed,1,memory_order_relaxed); return UINT32_MAX;\n        }\n        return f->current_primitive_id[bin];\n    }\n    if (b->count == b->capacity) {')
replace('/* The caller bounds positions', 'void softgl_scene_primitive_winners(GLboolean enabled) {\n    softgl_ctx *c = sg_current();\n    if (!c || !c->scene_visibility) return;\n    struct sg_scene_visibility *f = c->scene_visibility;\n    if (enabled && !f->quantized) { atomic_store_explicit(&f->failed,1,memory_order_relaxed); return; }\n    f->primitive_winners = enabled != GL_FALSE;\n}\n\n/* The caller bounds positions')
replace('    int32_t x0 = sg_fp_screen_from_float(v0->ndc.x), y0 = sg_fp_screen_from_float(v0->ndc.y);', '    if (f->primitive_winners) {\n        atomic_store_explicit(&f->failed,1,memory_order_relaxed); return 0;\n    }\n    int32_t x0 = sg_fp_screen_from_float(v0->ndc.x), y0 = sg_fp_screen_from_float(v0->ndc.y);')
replace('    return &f->bins[id >> SCENE_INDEX_BITS].triangles[id & SCENE_INDEX_MASK];', '    if (f->primitive_winners) return &f->surfaces[id];\n    return &f->bins[id >> SCENE_INDEX_BITS].triangles[id & SCENE_INDEX_MASK];')
replace('    if (f->deferred_meshes && !scene_geometry_visible(f)) {', '    if (f->deferred_meshes && (f->primitive_winners ? !scene_shared_surface_prepare(f) : !scene_geometry_visible(f))) {')
replace('            f->bins[id >> SCENE_INDEX_BITS].visible[id & SCENE_INDEX_MASK] = 1;', '            if (f->primitive_winners) {\n                uint32_t surface = scene_shared_surface(f,id);\n                if (surface == UINT32_MAX) {\n                    memcpy(c->fb.depth,f->backup_depth,pixels*sizeof(float));\n                    memcpy(c->fb.color,f->backup_color,pixels*4); return 0;\n                }\n                f->winner[p] = surface;\n            } else f->bins[id >> SCENE_INDEX_BITS].visible[id & SCENE_INDEX_MASK] = 1;')
replace('        fprintf(stderr,"SCENE {', '        if (f->primitive_winners) stored = f->surface_count;\n        fprintf(stderr,"SCENE {')
p.write_text(s)
p=root/'source/libsoftgl/src/geometry_types.inc';s=p.read_text()
replace('    uint32_t clipped_count, clipped_capacity;', '    uint32_t clipped_count, clipped_capacity;\n    uint32_t *surface_map, surface_capacity;')
replace('    size_t primitive_bytes, reference_bytes;', '    size_t primitive_bytes, reference_bytes, surface_index_bytes;')
p.write_text(s)
p=root/'source/libsoftgl/src/geometry.inc';s=p.read_text()
replace('        free(g->tasks[i].primitives); free(g->tasks[i].clipped);', '        free(g->tasks[i].primitives); free(g->tasks[i].clipped); free(g->tasks[i].surface_map);')
replace('            f->current_primitive[bin] = p; local.scene_material = (int)p->material;', '            f->current_primitive[bin] = p; local.scene_material = (int)p->material;\n            if (f->primitive_winners) f->current_primitive_id[bin] = id;')
replace('static int scene_geometry_visible(', (Path(__file__).parent/'surfaces.inc').read_text()+'\nstatic int scene_geometry_visible(')
replace('    sg_workers_run_callback(f->context,scene_geometry_attribute_bins,f);', '    sg_workers_run_callback(f->context,f->primitive_winners ? scene_shared_surface_attributes : scene_geometry_attribute_bins,f);')
p.write_text(s)
p=root/'source/libsoftgl/include/GL/softgl.h';s=p.read_text();replace('void softgl_scene_quantized_visibility(GLboolean enabled);', 'void softgl_scene_quantized_visibility(GLboolean enabled);\nvoid softgl_scene_primitive_winners(GLboolean enabled);');p.write_text(s)
p=root/'source/model_wrap.c';s=p.read_text();replace('    int scene_visibility = softgl_scene_visibility_begin();', '    int scene_visibility = softgl_scene_visibility_begin();')
needle='#ifdef SOFTGL_MODEL_SCENE_POSITIONS\n    scene_indices = NULL;'
replace(needle, '#ifdef SOFTGL_MODEL_PRIMITIVE_WINNERS\n    if (scene_visibility) softgl_scene_primitive_winners(GL_TRUE);\n#endif\n#ifdef SOFTGL_MODEL_SCENE_POSITIONS\n    scene_indices = NULL;')
p.write_text(s)
print(root/'source')
