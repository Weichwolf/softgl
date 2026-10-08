#!/usr/bin/env python3
"""Freeze accepted sources and time joined whole-scene phases for diagnostics."""
import argparse
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='91ab0d1')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root = repo/'build/scene-current-phase-accounting'
if (root/'source').exists(): shutil.rmtree(root/'source')
names = subprocess.check_output(['git','ls-tree','-r','--name-only',base,'libsoftgl'],cwd=repo,text=True).splitlines()
for name in names:
    p = root/'source'/name; p.parent.mkdir(parents=True,exist_ok=True)
    p.write_bytes(subprocess.check_output(['git','show',f'{base}:{name}'],cwd=repo))
(root/'source/model_wrap.c').write_bytes(subprocess.check_output(['git','show',f'{base}:wasm/model_wrap.c'],cwd=repo))
(root/'source/baseline.txt').write_text(base+'\n')
src = root/'source/libsoftgl/src'
p = src/'scene_visibility.c';s = p.read_text()
s = s.replace('#include <stdio.h>', '#include <stdio.h>\n#include <time.h>\n\nstatic double scene_phase_now(void) {\n    struct timespec t; clock_gettime(CLOCK_MONOTONIC,&t);\n    return t.tv_sec+t.tv_nsec*1e-9;\n}')
s = s.replace('    int material_count, task_count;', '    int material_count, task_count;\n    double phase[11], phase_begin;\n    int phase_complete;')
s = s.replace('int softgl_scene_visibility_begin(void) {', 'int softgl_scene_visibility_begin(void) {\n    double phase_start = scene_phase_now();')
needle = '    c->scene_material = -1; c->scene_visibility = f;\n    return 1;'
assert s.count(needle)==1
s = s.replace(needle,'    c->scene_material = -1; c->scene_visibility = f;\n    memset(f->phase,0,sizeof(f->phase)); f->phase_complete = 0;\n    f->phase_begin = scene_phase_now(); f->phase[0] = f->phase_begin-phase_start;\n    return 1;')
needle = '    struct sg_scene_visibility *f = c->scene_visibility;\n    sg_workers_flush(c);'
assert s.count(needle)==1
s = s.replace(needle,needle+'\n    f->phase[1] = scene_phase_now()-f->phase_begin;')
needle = '    if (f->deferred_meshes && !scene_geometry_visible(f)) {'
assert s.count(needle)==1
s = s.replace(needle,'    double phase_mark = scene_phase_now();\n'+needle)
needle = '    uint32_t first = 0;\n    for (int i = 0; i < f->material_count; i++) {'
assert s.count(needle)==1
s = s.replace(needle,'    f->phase[8] = scene_phase_now()-phase_mark; phase_mark = scene_phase_now();\n'+needle)
needle = '    sg_workers_run_callback(c,scene_resolve,f);'
assert s.count(needle)==1
s = s.replace(needle,'    f->phase[9] = scene_phase_now()-phase_mark; phase_mark = scene_phase_now();\n'+needle+'\n    f->phase[10] = scene_phase_now()-phase_mark; f->phase_complete = 1;')
s+='''\nint softgl_scene_phase_read(GLdouble phases[11]) {
    softgl_ctx *c = sg_current();
    struct sg_scene_visibility *f = c ? c->scene_storage : NULL;
    if (!f || !f->phase_complete) return 0;
    memcpy(phases,f->phase,sizeof(f->phase)); return 1;
}
'''
p.write_text(s)
p = src/'geometry.inc';s = p.read_text()
s = s.replace('static void scene_geometry_build(struct sg_scene_visibility *f) {', 'static void scene_geometry_build(struct sg_scene_visibility *f) {\n    double phase_mark = scene_phase_now();')
needle = '    scene_geometry *g = f->geometry;\n    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);\n    sg_workers_run_callback(f->context,scene_geometry_positions,f);'
assert s.count(needle)==1
s = s.replace(needle,'    f->phase[2] = scene_phase_now()-phase_mark; phase_mark = scene_phase_now();\n'+needle+'\n    f->phase[3] = scene_phase_now()-phase_mark; phase_mark = scene_phase_now();')
needle = '    sg_workers_run_callback(f->context,scene_geometry_triangles,f);'
assert s.count(needle)==1
s = s.replace(needle,needle+'\n    f->phase[4] = scene_phase_now()-phase_mark; phase_mark = scene_phase_now();')
needle = '    sg_workers_run_callback(f->context,scene_geometry_references,f);'
assert s.count(needle)==1
s = s.replace(needle,'    f->phase[5] = scene_phase_now()-phase_mark; phase_mark = scene_phase_now();\n'+needle+'\n    f->phase[6] = scene_phase_now()-phase_mark; phase_mark = scene_phase_now();')
needle = '    sg_workers_run_callback(f->context,scene_geometry_raster,f);'
assert s.count(needle)==1
s = s.replace(needle,needle+'\n    f->phase[7] = scene_phase_now()-phase_mark;')
p.write_text(s)
p = root/'source/libsoftgl/include/GL/softgl.h';p.write_text(p.read_text().replace('int softgl_scene_visibility_begin(void);','int softgl_scene_phase_read(GLdouble phases[11]);\nint softgl_scene_visibility_begin(void);'))
print(root/'source')
