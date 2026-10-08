#!/usr/bin/env python3
"""Freeze accepted source for global pre-transform static group culling."""
import argparse
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='3495913')
parser.add_argument('--cones', action='store_true')
parser.add_argument('--unique', action='store_true')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root = repo/'build/scene-static-groups'
names = subprocess.check_output(['git','ls-tree','-r','--name-only',base,'libsoftgl'],cwd=repo,text=True).splitlines()
for variant in ('source','baseline-source'):
    if (root/variant).exists(): shutil.rmtree(root/variant)
    for name in names:
        p = root/variant/name; p.parent.mkdir(parents=True,exist_ok=True)
        p.write_bytes(subprocess.check_output(['git','show',f'{base}:{name}'],cwd=repo))
    (root/variant/'model_wrap.c').write_bytes(subprocess.check_output(['git','show',f'{base}:wasm/model_wrap.c'],cwd=repo))
    (root/variant/'baseline.txt').write_text(base+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
src = root/'source/libsoftgl/src'
shutil.copyfile(Path(__file__).parent/'groups.inc',src/'groups.inc')
shutil.copyfile(Path(__file__).parent/'groups_types.inc',src/'groups_types.inc')
p = src/'geometry_types.inc'; s = p.read_text()
s = f'#define SCENE_GROUP_CONES {int(args.cones)}\n#define SCENE_GROUP_UNIQUE {int(args.unique)}\n#include "groups_types.inc"\n'+s
s = s.replace('    int cull_enabled;', '    int cull_enabled, group_mode;')
s = s.replace('    atomic_int next_task;\n} scene_geometry;', '    atomic_int next_task;\n    scene_static_entry *static_entries;\n    uint32_t static_epoch;\n    size_t static_bytes;\n} scene_geometry;')
p.write_text(s)
p = src/'scene_visibility.c';s = p.read_text()
s = s.replace('    scene_geometry *geometry;', '    scene_geometry *geometry;\n    uint32_t static_epoch;')
s = s.replace('    f->deferred_meshes = 0; f->mesh_vertices = 0;', '    f->deferred_meshes = 0; f->mesh_vertices = 0; f->static_epoch = 0;')
p.write_text(s)
p = src/'geometry.inc';s = p.read_text()
s = s.replace('static void scene_geometry_destroy(scene_geometry *g) {', 'static void scene_groups_clear(scene_geometry *g);\n\nstatic void scene_geometry_destroy(scene_geometry *g) {')
s = s.replace('    if (!g) return;','    if (!g) return;\n    scene_groups_clear(g);',1)
at = s.index('static void scene_geometry_positions_fast(')
s = s[:at]+'#include "groups.inc"\n\n'+s[at:]
s = s.replace('    for (uint32_t i = first; i < end; i += 4) {', '''    for (uint32_t i = first; i < end; i += 4) {
        if (m->group_mode == 1) {
            int used = 0;
            for (int l = 0; l < 4 && i+(unsigned)l < end; l++)
                used |= atomic_load_explicit(&g->ready[m->offset+i+(unsigned)l],memory_order_relaxed);
            if (!used) continue;
        }''',1)
needle = '        const scene_mesh *m = &f->materials[task->material].mesh;\n        if (scene_geometry_fast_matrix(m))'
assert s.count(needle)==1
s = s.replace(needle,'        const scene_mesh *m = &f->materials[task->material].mesh;\n        if (m->group_mode == 2) continue;\n        if (scene_geometry_fast_matrix(m))')
needle = '        for (uint32_t i = task->first; i < task->end; i++) {\n            const float *p ='
assert s.count(needle)==1
s = s.replace(needle,'''        for (uint32_t i = task->first; i < task->end; i++) {
            if (m->group_mode == 1 && !atomic_load_explicit(&g->ready[m->offset+i],memory_order_relaxed)) continue;
            const float *p =''')
needle = '        scene_geometry_task *task = &g->tasks[id]; const scene_mesh *m = &f->materials[task->material].mesh;\n        for (uint32_t i = task->first; i < task->end; i += 3) {'
assert s.count(needle)==1
s = s.replace(needle,'''        scene_geometry_task *task = &g->tasks[id]; const scene_mesh *m = &f->materials[task->material].mesh;
        if (m->group_mode == 2) continue;
        for (uint32_t i = task->first; i < task->end; i += 3) {
            if (m->group_mode == 1 && !g->static_entries[task->material].live[i/SCENE_GROUP_INDICES]) {
                i = (i/SCENE_GROUP_INDICES+1)*SCENE_GROUP_INDICES-3;
                continue;
            }''')
needle = '    scene_geometry *g = f->geometry;\n    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);\n    sg_workers_run_callback(f->context,scene_geometry_positions,f);'
assert s.count(needle)==1
s = s.replace(needle,'    scene_geometry *g = f->geometry;\n    scene_groups_prepare(f);\n    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);\n    sg_workers_run_callback(f->context,scene_geometry_positions,f);')
p.write_text(s)
p = root/'source/model_wrap.c';s = p.read_text()
s = s.replace('    int scene_visibility = softgl_scene_visibility_begin();','    int scene_visibility = softgl_scene_visibility_begin();\n#ifdef SOFTGL_MODEL_STATIC_GROUPS\n    if (scene_visibility) softgl_scene_static_groups(G.static_vbo);\n#endif')
p.write_text(s)
p = root/'source/libsoftgl/include/GL/softgl.h';s = p.read_text()
s = s.replace('int softgl_scene_visibility_begin(void);','/* Opt-in: source geometry remains immutable until the nonzero epoch changes. */\nvoid softgl_scene_static_groups(GLuint epoch);\nint softgl_scene_visibility_begin(void);')
p.write_text(s)
(root/'source/cones.txt').write_text(str(int(args.cones))+'\n')
(root/'source/unique.txt').write_text(str(int(args.unique))+'\n')
print(root/'source')
