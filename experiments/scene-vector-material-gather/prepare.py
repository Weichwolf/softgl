#!/usr/bin/env python3
"""Freeze accepted sources for exact vector material attribute gathers."""
import argparse
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='d5e79c7')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root = repo/'build/scene-vector-material-gather'
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
replace('static void scene_shade_packet(', (Path(__file__).parent/'gather.inc').read_text()+'\nstatic void scene_shade_packet(')
replace('    for (int k = 0; k < 4; k++) primary[k] = scene_gather_lerp(tri,-1,k,w0,w1,w2,inverse);\n    for (int k = 0; k < 3; k++) encoded_half[k] = scene_gather_lerp(tri,1,k,w0,w1,w2,inverse);', '    scene_gather_vector(tri,-1,w0,w1,w2,inverse,primary);\n    scene_gather_vector(tri,1,w0,w1,w2,inverse,encoded_half);')
p.write_text(s)
print(root/'source')
