#!/usr/bin/env python3
"""Freeze accepted geometry and retain position postprocessing in SIMD128."""
from pathlib import Path
import argparse
import shutil
import subprocess

parser=argparse.ArgumentParser()
parser.add_argument('--baseline',default='d481c90')
args=parser.parse_args()
repo=Path(__file__).resolve().parents[2]
base=subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root=repo/'build/scene-simd-positions'
names=subprocess.check_output(['git','ls-tree','-r','--name-only',base,'libsoftgl'],cwd=repo,text=True).splitlines()
for variant in ('source','baseline-source'):
    if (root/variant).exists(): shutil.rmtree(root/variant)
    for name in names:
        p=root/variant/name; p.parent.mkdir(parents=True,exist_ok=True)
        p.write_bytes(subprocess.check_output(['git','show',f'{base}:{name}'],cwd=repo))
    (root/variant/'model_wrap.c').write_bytes(subprocess.check_output(['git','show',f'{base}:wasm/model_wrap.c'],cwd=repo))
    (root/variant/'baseline.txt').write_text(base+'\n')
p=root/'baseline-source/libsoftgl/CMakeLists.txt';p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p=root/'source/libsoftgl/src/geometry.inc';s=p.read_text()
a=s.index('        _MM_TRANSPOSE4_PS(clip[0],clip[1],clip[2],clip[3]);')
b=s.index('\n    }\n}\n\nstatic void scene_geometry_positions(void *data)',a)
s=s[:a]+(Path(__file__).parent/'viewport.inc').read_text().rstrip()+s[b:]
s='#include <float.h>\n'+s
p.write_text(s)
print(root/'source')
