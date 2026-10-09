#!/usr/bin/env python3
"""Retain frozen policies and completed receipts without images or binaries."""
import difflib
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
validation = experiment/'validation'


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


for version, directory in [('v1', 'v1'), ('v2', 'v2-isolated')]:
    root = repo/'build/scene-msaa-low-density'/directory
    destination = validation/version
    destination.mkdir(parents=True, exist_ok=True)
    source = root/'source'
    revision = (source/'baseline.txt').read_text().strip()
    patch = []
    for name in ('libsoftgl/CMakeLists.txt', 'libsoftgl/include/GL/softgl.h',
                 'libsoftgl/src/scene_density_hint.c',
                 'libsoftgl/src/scene_cost_hint.c', 'wasm/model_wrap.c'):
        local = source/('model_wrap.c' if name == 'wasm/model_wrap.c' else name)
        if not local.exists():
            continue
        original = subprocess.run(['git', 'show', f'{revision}:{name}'], cwd=repo,
                                  text=True, capture_output=True)
        patch.extend(difflib.unified_diff(original.stdout.splitlines(True),
                     local.read_text().splitlines(True),
                     fromfile=f'a/{name}' if original.returncode == 0 else '/dev/null',
                     tofile=f'b/{name}'))
    (destination/'candidate.patch').write_text(''.join(patch))
    manifest = {'baseline': revision, 'sourcesSha256':
        {str(p.relative_to(source)): digest(p) for p in sorted(source.rglob('*')) if p.is_file()},
        'archivesSha256': {str(p.relative_to(root)): digest(p)
                          for p in sorted((root/'native').rglob('*.a'))}}
    for p in list(root.glob('*.json')) + list(root.glob('*.txt')):
        shutil.copy2(p, destination/p.name)
    shutil.copy2(root/'native/CMakeCache.txt', destination/'native-CMakeCache.txt')
    for p in (root/'fixtures').glob('*.c'):
        target = destination/'fixtures'/p.name
        target.parent.mkdir(exist_ok=True)
        shutil.copy2(p, target)
    (destination/'manifest.json').write_text(json.dumps(manifest, indent=2)+'\n')

for p in (repo/'tmp/scene-msaa-low-density').rglob('*'):
    if p.is_file() and p.suffix in ('.json', '.jsonl', '.txt'):
        target = validation/'runs'/p.relative_to(repo/'tmp/scene-msaa-low-density')
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(p, target)
for p in Path('/tmp').glob('softgl-msaa-low-density*.txt'):
    shutil.copy2(p, validation/p.name)
sources = validation/'sources'
sources.mkdir(exist_ok=True)
for name in ('scene-depth-order-cached-keys/resident_diagnostic.py',
             'scene-material-visibility/resident_trial.c',
             'scene-depth-order-cached-keys/quality_frames.c',
             'scene-depth-order-cached-keys/check_quality.py'):
    p = repo/'experiments'/name
    shutil.copy2(p, sources/p.name)
files = {str(p.relative_to(validation)): digest(p) for p in sorted(validation.rglob('*'))
         if p.is_file() and p.name != 'artifacts.json'}
(validation/'artifacts.json').write_text(json.dumps(files, indent=2)+'\n')
print(len(files), 'source/text receipts archived', flush=True)
