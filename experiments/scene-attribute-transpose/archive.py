#!/usr/bin/env python3
"""Retain frozen transposition candidates and completed source/text receipts."""
import difflib
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
validation = experiment/'validation'
validation.mkdir(exist_ok=True)


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


for version in ('v1-all', 'v2-coherent'):
    root = repo/'build/scene-attribute-transpose'/version
    source = root/'source'
    target = validation/version
    target.mkdir(exist_ok=True)
    revision = (source/'baseline.txt').read_text().strip()
    patch = []
    for path in sorted((source/'libsoftgl').rglob('*')):
        if not path.is_file():
            continue
        name = str(path.relative_to(source))
        original = subprocess.run(['git', 'show', f'{revision}:{name}'], cwd=repo,
                                  text=True, capture_output=True)
        assert original.returncode == 0 or path.name == 'scene_attribute_packet.h', name
        patch.extend(difflib.unified_diff(original.stdout.splitlines(True),
            path.read_text().splitlines(True),
            fromfile=f'a/{name}' if original.returncode == 0 else '/dev/null', tofile=f'b/{name}'))
    (target/'candidate.patch').write_text(''.join(patch))
    manifest = dict(baseline=revision,
        sourcesSha256={str(p.relative_to(source)): digest(p) for p in sorted(source.rglob('*')) if p.is_file()},
        nativeArchivesSha256={str(p.relative_to(root)): digest(p) for p in sorted((root/'native').rglob('*.a'))},
        numericFixtureSha256=digest(experiment/'attribute_contract.c'))
    (target/'manifest.json').write_text(json.dumps(manifest, indent=2)+'\n')
    for p in list(root.glob('*.json')) + list(root.glob('*.txt')):
        shutil.copy2(p, target/p.name)
    shutil.copy2(root/'native/CMakeCache.txt', target/'native-CMakeCache.txt')
    for folder in ('checks', 'recipe', 'fixtures', 'wasm-contract'):
        for p in (root/folder).rglob('*'):
            if p.is_file() and p.suffix in ('.json', '.txt', '.c', '.h', '.py'):
                dest = target/folder/p.relative_to(root/folder)
                dest.parent.mkdir(parents=True, exist_ok=True)
                shutil.copy2(p, dest)
for p in (repo/'tmp/scene-attribute-transpose').rglob('*'):
    if p.is_file() and p.suffix in ('.json', '.txt'):
        dest = validation/'runs'/p.relative_to(repo/'tmp/scene-attribute-transpose')
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(p, dest)
for p in Path('/tmp').glob('softgl-scene-attribute-transpose*.txt'):
    shutil.copy2(p, validation/p.name)
sources = validation/'sources'
sources.mkdir(exist_ok=True)
for name in ('scene-depth-order-cached-keys/resident_diagnostic.py',
             'scene-material-visibility/resident_trial.c',
             'scene-depth-order-cached-keys/quality_frames.c',
             'scene-depth-order-cached-keys/check_quality.py'):
    shutil.copy2(repo/'experiments'/name, sources/Path(name).name)
for p in experiment.iterdir():
    if p.is_file() and p.name != 'README.md':
        shutil.copy2(p, sources/p.name)
files = {str(p.relative_to(validation)): digest(p) for p in sorted(validation.rglob('*'))
         if p.is_file() and p.name != 'artifacts.json'}
(validation/'artifacts.json').write_text(json.dumps(files, indent=2)+'\n')
print(len(files), 'frozen source/text artifacts archived', flush=True)
