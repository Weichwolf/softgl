#!/usr/bin/env python3
"""Prepare a minimal optional coarse renderer; keep the ordinary shader intact."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='HEAD')
parser.add_argument('--output-root', type=Path, required=True)
args = parser.parse_args()
root = args.output_root.resolve()
revision = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl',
    'wasm/model_wrap.c', 'wasm/lod.inc', 'wasm/cluster_load.inc'], cwd=repo)
for name in ('source', 'baseline-source'):
    source = root/name; source.mkdir(parents=True, exist_ok=False)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(source, filter='data')
    for name in ('model_wrap.c', 'lod.inc', 'cluster_load.inc'):
        (source/name).write_bytes((source/'wasm'/name).read_bytes())
    (source/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl', 'baseline_softgl'))

def replace(path, before, after):
    text = path.read_text(); assert text.count(before) == 1, (path, before, text.count(before))
    path.write_text(text.replace(before, after))

source = root/'source/libsoftgl'
(source/'src/scene_coarse_types.h').write_bytes((experiment/'coarse_types.h').read_bytes())
p = source/'src/scene_visibility.c'
original = p.read_text(); start = original.index('static void scene_shade_packet(')
end = original.index('\n/* Retained for callers', start)
shader = original[start:end].replace('scene_shade_packet', 'scene_coarse_packet', 1)
output = shader.index('        if (c->fb.samples) {', shader.index('uint32_t packed ='))
shader = shader[:output]+'''        f->coarse.color[pixels[l]] = packed;
    }
}
'''
(source/'src/scene_coarse_impl.inc').write_text(shader+'\n'+(experiment/'coarse_impl.inc').read_text())
replace(p, '#include "geometry_types.inc"', '#include "geometry_types.inc"\n#include "scene_coarse_types.h"')
replace(p, '    pthread_mutex_t allocation_mutex;', '    pthread_mutex_t allocation_mutex;\n    scene_coarse_storage coarse;')
replace(p, '    scene_geometry_destroy(f->geometry);', '    scene_coarse_destroy(&f->coarse);\n    scene_geometry_destroy(f->geometry);')
replace(p, '    f->quantized = 0;', '    f->coarse.enabled = 0; f->coarse.representatives = 0;\n    f->quantized = 0;')
replace(p, 'static void scene_resolve(void *data) {', '#include "scene_coarse_impl.inc"\n\nstatic void scene_resolve(void *data) {')
replace(p, '    if (f->deferred_meshes) {\n        scene_geometry_attributes(f);',
    '''    if (f->coarse.enabled && f->deferred_meshes) {
        atomic_store_explicit(&f->next_task, 0, memory_order_relaxed);
        sg_workers_run_callback(c, scene_coarse_select, f);
        if (atomic_load_explicit(&f->failed, memory_order_relaxed)) {
            scene_restore(f); return 0;
        }
    }
    if (f->deferred_meshes) {
        scene_geometry_attributes(f);''')
replace(p, '    sg_workers_run_callback(c,scene_resolve,f);',
    '''    if (f->coarse.enabled && f->deferred_meshes) {
        scene_coarse_tasks(f, 1);
        atomic_store_explicit(&f->next_task, 0, memory_order_relaxed);
        sg_workers_run_callback(c, scene_coarse_resolve, f);
        scene_coarse_tasks(f, 0);
        atomic_store_explicit(&f->next_task, 0, memory_order_relaxed);
        sg_workers_run_callback(c, scene_coarse_copy, f);
    } else sg_workers_run_callback(c,scene_resolve,f);''')
replace(p, '    if (getenv("SOFTGL_SCENE_STATS")) {',
    '''    if (getenv("SOFTGL_SCENE_STATS")) {
        fprintf(stderr, "COARSE {\\"enabled\\":%d,\\"groups\\":%u,\\"representatives\\":%u,\\"scratchBytes\\":%zu}\\n",
            f->coarse.enabled, visible, f->coarse.representatives, f->coarse.capacity*3*sizeof(uint32_t));''')
p = source/'include/GL/softgl.h'
replace(p, 'int softgl_scene_visibility_end(void);',
    '''int softgl_scene_visibility_end(void);
/* Approximate 2x2 color sharing for canonical opaque scene meshes. Original
 * physical coverage, alpha rejection and depth remain; fine material details
 * may change. Call after begin; each new begin disables it. Returns zero on
 * allocation failure or outside an active batch, retaining ordinary shading. */
int softgl_scene_coarse_shading(GLboolean enabled);''')
p = root/'source/model_wrap.c'
replace(p, 'static struct {\n    int enabled;',
    '''#ifndef SOFTGL_MODEL_COARSE_DEFAULT
#define SOFTGL_MODEL_COARSE_DEFAULT 0
#endif
static int coarse_shading = SOFTGL_MODEL_COARSE_DEFAULT;
void sg_model_set_coarse(int enabled) { coarse_shading = enabled != 0; }

static struct {
    int enabled;''')
replace(p, '    int scene_visibility = softgl_scene_visibility_begin_adaptive(G.triangles,2);',
    '''    int scene_visibility = coarse_shading ? softgl_scene_visibility_begin() :
        softgl_scene_visibility_begin_adaptive(G.triangles,2);
    if (scene_visibility && coarse_shading) {
        softgl_scene_depth_order(2);
        softgl_scene_coarse_shading(GL_TRUE);
    }''')
(root/'source/wasm/model_wrap.c').write_bytes(p.read_bytes())
recipe = root/'recipe'; recipe.mkdir()
for name in ('prepare_clean.py', 'CMakeLists-clean.txt', 'coarse_types.h', 'coarse_impl.inc'):
    (recipe/name).write_bytes((experiment/name).read_bytes())
(recipe/'CMakeLists.txt').write_bytes((experiment/'CMakeLists-clean.txt').read_bytes())
print(root, flush=True)
