#!/usr/bin/env python3
"""Freeze unchanged accepted source for stable parallel scene bin construction."""
from pathlib import Path
import argparse
import shutil
import subprocess

parser=argparse.ArgumentParser()
parser.add_argument('--baseline',default='d481c90')
args=parser.parse_args()
repo=Path(__file__).resolve().parents[2]
base=subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root=repo/'build/scene-parallel-bins'
names=subprocess.check_output(['git','ls-tree','-r','--name-only',base,'libsoftgl'],cwd=repo,text=True).splitlines()
for variant in ('source','baseline-source'):
    if (root/variant).exists(): shutil.rmtree(root/variant)
    for name in names:
        p=root/variant/name; p.parent.mkdir(parents=True,exist_ok=True)
        p.write_bytes(subprocess.check_output(['git','show',f'{base}:{name}'],cwd=repo))
    (root/variant/'model_wrap.c').write_bytes(subprocess.check_output(['git','show',f'{base}:wasm/model_wrap.c'],cwd=repo))
    (root/variant/'baseline.txt').write_text(base+'\n')
p=root/'baseline-source/libsoftgl/CMakeLists.txt';p.write_text(p.read_text().replace('softgl','baseline_softgl'))
src=root/'source/libsoftgl/src'
p=src/'geometry_types.inc';s=p.read_text()
s=s.replace('    uint32_t count, capacity;\n    scene_clipped_primitive *clipped;', '    uint32_t count, capacity;\n    uint32_t bin_counts[SG_MAX_BINS], bin_offsets[SG_MAX_BINS];\n    scene_clipped_primitive *clipped;')
p.write_text(s)
p=src/'geometry.inc';s=p.read_text()
old='    task->primitives[task->count++] = *p;'
assert s.count(old)==1
s=s.replace(old,old+'\n    for (int bin = p->first_bin; bin <= p->last_bin; bin++) task->bin_counts[bin]++;')
s=s.replace('            task->count = 0; task->clipped_count = 0;', '            task->count = 0; task->clipped_count = 0;\n            memset(task->bin_counts,0,sizeof(task->bin_counts));')
a=s.index('    for (int bin = 0; bin < SG_MAX_BINS; bin++) g->bins[bin].count = 0;',s.index('static void scene_geometry_build('))
b=s.index('    for (int bin = 0; bin < SG_MAX_BINS; bin++) {',a)
s=s[:a]+(Path(__file__).parent/'prefix.inc').read_text()+s[b:]
a=s.index('        b->count = 0;',s.index('static void scene_geometry_build('))
b=s.index('    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);',a)
s=s[:a]+'    }\n    atomic_store_explicit(&g->next_task,0,memory_order_relaxed);\n    sg_workers_run_callback(f->context,scene_geometry_references,f);\n'+s[b:]
a=s.index('static void scene_geometry_build(')
s=s[:a]+(Path(__file__).parent/'references.inc').read_text()+'\n'+s[a:]
p.write_text(s)
print(root/'source')
