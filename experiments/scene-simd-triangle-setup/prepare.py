#!/usr/bin/env python3
"""Freeze accepted sources for exact scalar one-pixel scene visibility."""
import argparse
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='d5e79c7')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root = repo/'build/scene-simd-triangle-setup'
names = subprocess.check_output(['git','ls-tree','-r','--name-only',base,'libsoftgl'],cwd=repo,text=True).splitlines()
for variant in ('source','baseline-source'):
    if (root/variant).exists(): shutil.rmtree(root/variant)
    for name in names:
        p = root/variant/name; p.parent.mkdir(parents=True,exist_ok=True)
        p.write_bytes(subprocess.check_output(['git','show',f'{base}:{name}'],cwd=repo))
    (root/variant/'model_wrap.c').write_bytes(subprocess.check_output(['git','show',f'{base}:wasm/model_wrap.c'],cwd=repo))
    (root/variant/'baseline.txt').write_text(base+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt';p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p = root/'source/libsoftgl/src/geometry.inc';s = p.read_text()
a = s.index('    sg_worker_pool *pool = f->context->workers;\n    p->first_bin', s.index('static void scene_geometry_append('))
b = s.index('\nstatic void scene_geometry_triangles(',a)
tail = s[a:b]
# Extract the unchanged allocation/record-emission tail for shared use.
helper = "static void scene_geometry_store(struct sg_scene_visibility *f, scene_geometry_task *task,\n    scene_primitive *p, int first, int last, scene_clipped_primitive *clipped) {\n"+tail
begin=s.index('static void scene_geometry_append(')
s=s[:begin]+helper+'\n'+s[begin:a]+"    scene_geometry_store(f,task,p,first,last,clipped);\n}\n"+s[b:]
needle='static void scene_geometry_triangles('
assert s.count(needle)==1
s=s.replace(needle,(Path(__file__).parent/'setup.inc').read_text()+'\n'+needle)
needle='        for (uint32_t i = task->first; i < task->end; i += 3) {\n'
assert s.count(needle)==1
s=s.replace(needle,needle+"            if (i+12 <= task->end && scene_geometry_packet(f,task,m,i)) { i += 9; continue; }\n")
p.write_text(s)
print(root/'source')
