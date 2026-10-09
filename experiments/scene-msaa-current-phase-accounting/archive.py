#!/usr/bin/env python3
"""Archive completed native phase receipts without binaries or image files."""
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
for version in ('v1', 'v2'):
    root = repo/'build/scene-msaa-current-phase-accounting'/version
    destination = validation/version
    destination.mkdir(parents=True, exist_ok=True)
    source = root/'source'
    revision = (source/'baseline.txt').read_text().strip()
    patch = []
    for name in ('libsoftgl/src/scene_visibility.c', 'libsoftgl/src/geometry.inc'):
        original = subprocess.check_output(['git', 'show', f'{revision}:{name}'], cwd=repo, text=True)
        patch.extend(difflib.unified_diff(original.splitlines(True), (source/name).read_text().splitlines(True),
                     fromfile=f'a/{name}', tofile=f'b/{name}'))
    (destination/'clocks.patch').write_text(''.join(patch))
    for p in (root/'isa.json', root/'native/CMakeCache.txt'):
        if p.exists():
            shutil.copy2(p, destination/p.name)
    for p in (repo/'tmp/scene-msaa-current-phase-accounting'/version).iterdir():
        if p.suffix in ('.json', '.jsonl', '.txt'):
            shutil.copy2(p, destination/p.name)
    manifest = {'baseline': revision, 'sourcesSha256':
        {str(p.relative_to(source)): sha(p) for p in sorted(source.rglob('*')) if p.is_file()},
        'binarySha256': sha(root/'native/phase_scene'),
        'archiveSha256': sha(root/'native/library/libsoftgl.a')}
    (destination/'manifest.json').write_text(json.dumps(manifest, indent=2)+'\n')
destination = validation/'v2-default-camera'
destination.mkdir(exist_ok=True)
for p in (repo/'tmp/scene-msaa-current-phase-accounting/v2-default-camera').iterdir():
    if p.suffix in ('.json', '.jsonl', '.txt'):
        shutil.copy2(p, destination/p.name)
for p in Path('/tmp').glob('softgl-msaa-current-phase*.txt'):
    shutil.copy2(p, validation/p.name)
files = {str(p.relative_to(validation)): sha(p) for p in sorted(validation.rglob('*'))
         if p.is_file() and p.name != 'artifacts.json'}
(validation/'artifacts.json').write_text(json.dumps(files, indent=2)+'\n')
print(len(files), 'phase text/source receipts archived', flush=True)
