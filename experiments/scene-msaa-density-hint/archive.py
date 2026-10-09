#!/usr/bin/env python3
"""Archive frozen policies and receipts, excluding executable and image assets."""
import difflib
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
validation = experiment/'validation'
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
for version, directory in [('v1', 'v1'), ('v2', 'v2-isolated')]:
    root = repo/'build/scene-msaa-density-hint'/directory
    destination = validation/version
    destination.mkdir(parents=True, exist_ok=True)
    source = root/'source'
    revision = (source/'baseline.txt').read_text().strip()
    patch = []
    changed = ['libsoftgl/src/scene_visibility.c', 'libsoftgl/CMakeLists.txt',
               'libsoftgl/include/GL/softgl.h', 'wasm/model_wrap.c']
    if (source/'libsoftgl/src/scene_density_hint.c').exists():
        changed.append('libsoftgl/src/scene_density_hint.c')
    for name in changed:
        local = source/('model_wrap.c' if name == 'wasm/model_wrap.c' else name)
        original = subprocess.run(['git', 'show', f'{revision}:{name}'], cwd=repo,
                                  text=True, capture_output=True)
        patch.extend(difflib.unified_diff(original.stdout.splitlines(True),
                     local.read_text().splitlines(True),
                     fromfile=f'a/{name}' if original.returncode == 0 else '/dev/null',
                     tofile=f'b/{name}'))
    (destination/'candidate.patch').write_text(''.join(patch))
    manifest = {'baseline': revision, 'sourcesSha256':
        {str(p.relative_to(source)): sha(p) for p in sorted(source.rglob('*')) if p.is_file()}}
    for name in ('native', 'sanitize'):
        build = root/name
        if not build.exists():
            continue
        for p in (build/'CMakeCache.txt', build/'CMakeCache-timed.txt'):
            if p.exists():
                shutil.copy2(p, destination/f'{name}-{p.name}')
        archives = sorted(build.rglob('libsoftgl.a'))
        manifest[name+'ArchivesSha256'] = {str(p.relative_to(build)): sha(p) for p in archives}
    for p in root.glob('*.json'):
        shutil.copy2(p, destination/p.name)
    for p in root.glob('*.txt'):
        shutil.copy2(p, destination/p.name)
    for p in (root/'fixtures').glob('*.c'):
        fixtures = destination/'fixtures'
        fixtures.mkdir(exist_ok=True)
        shutil.copy2(p, fixtures/p.name)
    for p in (root/'wasm-contracts').rglob('*'):
        if p.is_file() and p.suffix in ('.json', '.txt'):
            target = destination/'wasm-contracts'/p.relative_to(root/'wasm-contracts')
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(p, target)
    (destination/'manifest.json').write_text(json.dumps(manifest, indent=2)+'\n')
    sources = destination/'sources'
    sources.mkdir(exist_ok=True)
    # Preserve the V1 factory snapshot made before V2 was implemented.
    if version == 'v2':
        for p in experiment.iterdir():
            if p.suffix in ('.c', '.py', '.cjs') or p.name == 'CMakeLists.txt':
                shutil.copy2(p, sources/p.name)

for p in (repo/'tmp/scene-msaa-density-hint').rglob('*'):
    if p.is_file() and p.suffix in ('.json', '.jsonl', '.txt'):
        target = validation/'runs'/p.relative_to(repo/'tmp/scene-msaa-density-hint')
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(p, target)
for p in Path('/tmp').glob('softgl-msaa-density*.txt'):
    shutil.copy2(p, validation/p.name)
for p in Path('/tmp').glob('softgl-msaa-density*.json'):
    shutil.copy2(p, validation/p.name)
files = {str(p.relative_to(validation)): sha(p) for p in sorted(validation.rglob('*'))
         if p.is_file() and p.name != 'artifacts.json'}
(validation/'artifacts.json').write_text(json.dumps(files, indent=2)+'\n')
print(len(files), 'density policy source/text receipts archived', flush=True)
