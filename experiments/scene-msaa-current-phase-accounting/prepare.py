#!/usr/bin/env python3
"""Freeze SIMD128 production and add joined clocks without changing layouts."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='c83e18f')
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-msaa-current-phase-accounting/v2')
args = parser.parse_args()
root = args.output_root.resolve()
assert not (root/'source').exists(), 'Use a fresh root; preserve measured sources'
revision = subprocess.check_output(['git', 'rev-parse', args.baseline], cwd=repo, text=True).strip()
archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl', 'wasm/model_wrap.c'], cwd=repo)
source = root/'source'
source.mkdir(parents=True)
with tarfile.open(fileobj=io.BytesIO(archive)) as files:
    files.extractall(source, filter='data')
(source/'model_wrap.c').write_bytes((source/'wasm/model_wrap.c').read_bytes())
(source/'baseline.txt').write_text(revision+'\n')
def replace(path, before, after):
    s = path.read_text()
    assert s.count(before) == 1, (path, before, s.count(before))
    path.write_text(s.replace(before, after))
p = source/'libsoftgl/src/scene_visibility.c'
replace(p, '#include <stdio.h>', '''#include <stdio.h>
#include <time.h>
/* Diagnostic clocks live in caller TLS; preserve every engine layout. */
static _Thread_local double scene_phase[12], scene_phase_mark;
static _Thread_local int scene_phase_complete;
static double scene_phase_now(void) {
    struct timespec t; clock_gettime(CLOCK_MONOTONIC,&t);
    return t.tv_sec+t.tv_nsec*1e-9;
}
static void scene_phase_checkpoint(unsigned phase) {
    double now = scene_phase_now(); scene_phase[phase] = now-scene_phase_mark; scene_phase_mark = now;
}''')
replace(p, 'int softgl_scene_visibility_begin(void) {', '''int softgl_scene_visibility_begin(void) {
    memset(scene_phase,0,sizeof(scene_phase)); scene_phase_complete = 0;
    scene_phase_mark = scene_phase_now();''')
replace(p, '    c->scene_material = -1; c->scene_visibility = f;\n    return 1;',
        '    c->scene_material = -1; c->scene_visibility = f;\n    scene_phase_checkpoint(0);\n    return 1;')
replace(p, '    struct sg_scene_visibility *f = c->scene_visibility;\n    sg_workers_flush(c);',
        '    struct sg_scene_visibility *f = c->scene_visibility;\n    sg_workers_flush(c);\n    scene_phase_checkpoint(1);')
replace(p, '    uint32_t first = 0;\n    for (int i = 0; i < f->material_count; i++) {',
        '    scene_phase_checkpoint(9);\n    uint32_t first = 0;\n    for (int i = 0; i < f->material_count; i++) {')
replace(p, '    sg_workers_run_callback(c,scene_resolve,f);',
        '    scene_phase_checkpoint(10);\n    sg_workers_run_callback(c,scene_resolve,f);\n'
        '    scene_phase_checkpoint(11); scene_phase_complete = 1;')
p.write_text(p.read_text()+'''
int softgl_scene_phase_read(GLdouble phases[12]) {
    if (!scene_phase_complete) return 0;
    memcpy(phases,scene_phase,sizeof(scene_phase)); scene_phase_complete = 0; return 1;
}
''')
p = source/'libsoftgl/src/geometry.inc'
replace(p, '    scene_geometry *g = f->geometry;\n    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);\n    sg_workers_run_callback(f->context,scene_geometry_positions,f);',
        '    scene_geometry *g = f->geometry;\n    scene_phase_checkpoint(2);\n'
        '    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);\n'
        '    sg_workers_run_callback(f->context,scene_geometry_positions,f);\n    scene_phase_checkpoint(3);')
replace(p, '    sg_workers_run_callback(f->context,scene_geometry_triangles,f);',
        '    sg_workers_run_callback(f->context,scene_geometry_triangles,f);\n    scene_phase_checkpoint(4);')
replace(p, '    sg_workers_run_callback(f->context,scene_geometry_references,f);',
        '    scene_phase_checkpoint(5);\n    sg_workers_run_callback(f->context,scene_geometry_references,f);\n'
        '    scene_phase_checkpoint(6);')
replace(p, '    sg_workers_run_callback(f->context,scene_geometry_raster,f);',
        '    scene_phase_checkpoint(7);\n    sg_workers_run_callback(f->context,scene_geometry_raster,f);\n'
        '    scene_phase_checkpoint(8);')
print(root, flush=True)
