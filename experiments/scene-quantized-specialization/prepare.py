#!/usr/bin/env python3
"""Freeze accepted sources for separate opaque and masked quantized kernels."""
import argparse
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='0bd845b')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root = repo/'build/scene-quantized-specialization'
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
start=s.index('static int scene_quantized_triangle(')
end=s.index('\nint sg_scene_visibility_triangle(',start)
kernel=s[start:end]
assert kernel.count('if (m->alpha_test)')==1
# Use the original full kernel twice with constant alpha-test eligibility.
# Opaque mode removes the sampler and all perspective/attribute alpha work.
opaque=kernel.replace('scene_quantized_triangle(', 'scene_quantized_triangle_opaque(').replace('if (m->alpha_test)', 'if (0)')
masked=kernel.replace('scene_quantized_triangle(', 'scene_quantized_triangle_masked(').replace('if (m->alpha_test)', 'if (1)')
opaque=opaque.replace('static int scene_quantized_triangle_opaque(', 'static __attribute__((noinline)) int scene_quantized_triangle_opaque(')
masked=masked.replace('static int scene_quantized_triangle_masked(', 'static __attribute__((noinline)) int scene_quantized_triangle_masked(')
s=s[:start]+opaque+'\n'+masked+s[end:]
old='        return scene_quantized_triangle(c,v0,v1,v2,tile_ix0,tile_ix1,bin);'
assert s.count(old)==1
s=s.replace(old, '        return m->alpha_test ? scene_quantized_triangle_masked(c,v0,v1,v2,tile_ix0,tile_ix1,bin) :\n            scene_quantized_triangle_opaque(c,v0,v1,v2,tile_ix0,tile_ix1,bin);')
p.write_text(s)
print(root/'source')
