#!/usr/bin/env python3
"""Freeze accepted sources for exact canonical material UV reuse."""
import argparse
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='0bd845b')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root = repo/'build/scene-shared-material-uv'
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
replace('    for (int u = 0; u < 4; u++) {\n        if (u == 1) continue;', '    /* Canonical programs must preserve identical UV0/UV2; geometry validation\n     * restores the scene if any program violates that contract. */\n    int shared_uv = tri[0]->primitive && tri[1]->primitive && tri[2]->primitive && tri[3]->primitive;\n    int have_uv = 0;\n    sg_f32x4 shared_x, shared_y;\n    for (int u = 0; u < 4; u++) {\n        if (u == 1) continue;')
replace('        sg_f32x4 x = scene_gather_lerp(tri,u,0,w0,w1,w2,inverse);\n        sg_f32x4 y = scene_gather_lerp(tri,u,1,w0,w1,w2,inverse);', '        sg_f32x4 x, y;\n        if (u == 2 && have_uv) {\n            x = shared_x; y = shared_y;\n        } else {\n            x = scene_gather_lerp(tri,u,0,w0,w1,w2,inverse);\n            y = scene_gather_lerp(tri,u,1,w0,w1,w2,inverse);\n            if (u == 0 && shared_uv) { shared_x = x; shared_y = y; have_uv = 1; }\n        }')
p.write_text(s)
print(root/'source')
