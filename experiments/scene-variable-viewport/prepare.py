#!/usr/bin/env python3
"""Freeze accepted sources for variable scene framebuffer dimensions."""
import argparse
from pathlib import Path
import shutil
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='d5e79c7')
args = parser.parse_args()
repo = Path(__file__).resolve().parents[2]
base = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
root = repo/'build/scene-variable-viewport'
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
replace('!c->fb.samples && c->fb.w == 640 && c->fb.h == 360 &&',
    '!c->fb.samples && c->fb.w > 0 && c->fb.h > 0 &&\n        c->fb.w <= 16384 && c->fb.h <= 16384 &&')
replace('/* The caller bounds positions to [-1,641] x [-1,361]. At 16 units\n * per pixel even origin/sample edges and inactive tail lanes fit int32. */',
    '/* Positions within [-1,1023] on both axes keep 16.4 origin/sample\n * edges and inactive tail lanes within int32; larger triangles use int64. */')
for i in range(3):
    replace(f'v{i}->ndc.x <= 641.f',f'v{i}->ndc.x <= 1023.f')
    replace(f'v{i}->ndc.y <= 361.f',f'v{i}->ndc.y <= 1023.f')
p.write_text(s)
p=root/'source/libsoftgl/src/geometry.inc';s=p.read_text()
replace('c->viewport[2] != 640 || c->viewport[3] != 360',
    'c->viewport[2] != c->fb.w || c->viewport[3] != c->fb.h')
replace('static sg_vec4 scene_viewport(sg_vec4 clip)',
    'static sg_vec4 scene_viewport(sg_vec4 clip, const softgl_ctx *c)')
replace('*640.f','*(float)c->fb.w');replace('*360.f','*(float)c->fb.h')
for arg in ('v','clip','v[j]->clip'):
    replace(f'scene_viewport({arg})',f'scene_viewport({arg},f->context)')
replace('if (last > 640) last = 640','if (last > f->context->fb.w) last = f->context->fb.w')
replace('(miny >> 8) >= 360','(miny >> 8) >= f->context->fb.h')
replace('if (top > 360) top = 360','if (top > f->context->fb.h) top = f->context->fb.h')
p.write_text(s)
print(root/'source')
