#!/usr/bin/env python3
"""Freeze an actual renderer and add private material-atlas capture/reprojection."""
import argparse
import hashlib
import io
import json
from pathlib import Path
import shutil
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='7b49448')
parser.add_argument('--output-root', type=Path, required=True)
args = parser.parse_args()
root = args.output_root.resolve()
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
source = root/'source'; source.mkdir(parents=True,exist_ok=False)
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c',
    'wasm/lod.inc','wasm/cluster_load.inc'],cwd=repo)
with tarfile.open(fileobj=io.BytesIO(archive)) as files:
    files.extractall(source,filter='data')
for name in ('model_wrap.c','lod.inc','cluster_load.inc'):
    shutil.copyfile(source/'wasm'/name,source/name)
wrapper = source/'model_wrap.c'
text = wrapper.read_text()
before = 'glRotatef(camera.yaw+20.f*sinf(angle*0.017453292519943295f), 0.f, 1.f, 0.f);'
assert text.count(before) == 1
text = text.replace(before,before.replace('camera.yaw+','camera.yaw+sg_key_yaw_offset+'))
before = 'glRotatef(angle, 0.f, 1.f, 0.f);'
assert text.count(before) == 1
text = text.replace(before,'glRotatef(angle+sg_key_yaw_offset, 0.f, 1.f, 0.f);')
before = '        float half = camera.near_plane*tanf(camera.fov*0.008726646259971648f);'
assert text.count(before) == 1
text = text.replace(before,before[:-1]+'/sg_key_projection_scale;')
before = '    } else glFrustum(-.16f*aspect, .16f*aspect, -.16f, .16f, 1., 20.);'
assert text.count(before) == 1
text = text.replace(before,'    } else glFrustum(-.16f*aspect/sg_key_projection_scale, .16f*aspect/sg_key_projection_scale,\n'
    '        -.16f/sg_key_projection_scale, .16f/sg_key_projection_scale, 1., 20.);')
before = '    int scene_visibility = coarse_shading ? softgl_scene_visibility_begin() :\n        softgl_scene_visibility_begin_adaptive(G.triangles,2);'
assert text.count(before) == 1
text = text.replace(before,'    int scene_visibility = softgl_scene_visibility_begin();')
wrapper.write_text('float sg_key_projection_scale = 1.f, sg_key_yaw_offset = 0.f;\n'+text)
src = source/'libsoftgl/src'
for name in ('atlas.h','capture.inc','compact.inc','reconstruct.inc'):
    shutil.copyfile(experiment/name,src/name)
path = src/'scene_visibility.c'
path.write_text(path.read_text()+'\n#include "atlas.h"\n#include "capture.inc"\n#include "compact.inc"\n#include "reconstruct.inc"\n')
recipe = root/'recipe'; recipe.mkdir()
for name in ('atlas.h','capture.inc','compact.inc','reconstruct.inc','probe.c','prepare.py','CMakeLists.txt'):
    shutil.copyfile(experiment/name,recipe/name)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
(root/'source.json').write_text(json.dumps(dict(baseline=revision,
    sourceSha256={str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()},
    recipeSha256={p.name:digest(p) for p in sorted(recipe.iterdir())}),indent=2)+'\n')
print(root,flush=True)
