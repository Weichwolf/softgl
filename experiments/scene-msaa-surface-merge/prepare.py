#!/usr/bin/env python3
"""Freeze the accepted renderer and add an untimed, read-only surface census."""
import argparse
import io
from pathlib import Path
import subprocess
import tarfile

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--baseline', default='0c46e95')
parser.add_argument('--output-root', type=Path, default=repo/'build/scene-msaa-surface-merge')
args = parser.parse_args()
revision = subprocess.check_output(['git','rev-parse',args.baseline],cwd=repo,text=True).strip()
archive = subprocess.check_output(['git','archive',revision,'libsoftgl','wasm/model_wrap.c'],cwd=repo)
root = args.output_root.resolve()
for variant in ('source','baseline-source'):
    target = root/variant
    assert not target.exists(), 'Preserve frozen sources; choose a new root'
    target.mkdir(parents=True)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(target,filter='data')
    (target/'model_wrap.c').write_bytes((target/'wasm/model_wrap.c').read_bytes())
    (target/'baseline.txt').write_text(revision+'\n')
p = root/'baseline-source/libsoftgl/CMakeLists.txt'
p.write_text(p.read_text().replace('softgl','baseline_softgl'))
p = root/'source/libsoftgl/src/scene_visibility.c'
code = p.read_text()
anchor = 'int softgl_scene_visibility_end(void) {'
assert code.count(anchor) == 1
code = code.replace(anchor,(Path(__file__).parent/'census.inc').read_text()+'\n'+anchor)
anchor = '    uint32_t first = 0;\n    for (int i = 0; i < f->material_count; i++) {'
assert code.count(anchor) == 1
code = code.replace(anchor,'    scene_surface_census(f);\n'+anchor)
p.write_text(code)
(root/'variant.txt').write_text(f'baseline={revision}\nread_only_surface_census=true\n')
print(root/'source')
