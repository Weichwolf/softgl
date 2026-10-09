#!/usr/bin/env python3
"""Preserve text/source receipts after all owned timing jobs have finished."""
import difflib
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
validation = experiment/'validation'
revision = subprocess.check_output(['git', 'rev-parse', 'c83e18f'], cwd=repo, text=True).strip()
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
versions = [('v2', 'v2'), ('v3-block32', 'v3'), ('v4-normalized', 'v4'),
            ('v5-spatial', 'v5'), ('v6-rotated', 'v6')]
for name, short in versions:
    root = repo/'build/scene-lazy-cluster-frontend'/name
    destination = validation/name
    destination.mkdir(parents=True, exist_ok=True)
    source = root/'source'
    changes = []
    for p in sorted(source.rglob('*')):
        if not p.is_file():
            continue
        relative = p.relative_to(source)
        if relative == Path('model_wrap.c'):
            original = (root/'baseline-source/model_wrap.c').read_text()
        elif relative.parts[0] == 'libsoftgl':
            original = subprocess.check_output(['git', 'show', f'{revision}:{relative}'], cwd=repo, text=True)
        else:
            continue
        changes.extend(difflib.unified_diff(original.splitlines(True), p.read_text().splitlines(True),
                       fromfile=f'a/{relative}', tofile=f'b/{relative}'))
    (destination/'candidate.patch').write_text(''.join(changes))
    for p in (root/'variant.txt', root/'isa.json', root/'native/CMakeCache.txt'):
        if p.exists():
            shutil.copy2(p, destination/p.name)
    for p in Path('/tmp').glob(f'softgl-lazy-{short}-*.txt'):
        shutil.copy2(p, destination/p.name)
    for p in Path('/tmp').glob(f'softgl-lazy-{short}-*.log'):
        shutil.copy2(p, destination/p.name)
    for p in Path('/tmp').glob(f'softgl-lazy-{short}-*.json'):
        shutil.copy2(p, destination/p.name)
    trial = repo/'tmp/scene-lazy-cluster-frontend'
    for kind in ('screen4', 'quality4'):
        directory = trial/f'{short}-{kind}'
        if directory.exists():
            d = destination/kind
            d.mkdir(exist_ok=True)
            for p in directory.iterdir():
                if p.suffix in ('.json', '.txt'):
                    shutil.copy2(p, d/p.name)
    binaries = [root/'native'/f'{kind}_{variant}'
                for kind in ('resident', 'quality', 'lazy_contract')
                for variant in ('baseline', 'candidate', 'unpruned')]
    binaries += list((root/'native').glob('*-library/*.a'))
    manifest = {'baseline': revision, 'variant': name,
                'sourcesSha256': {str(p.relative_to(source)): sha(p)
                                  for p in sorted(source.rglob('*')) if p.is_file()},
                'binariesSha256': {str(p.relative_to(repo)): sha(p) for p in binaries if p.exists()},
                'driverSha256': sha(repo/'experiments/scene-material-visibility/resident_trial.c'),
                'modelWrapperSha256': sha(source/'model_wrap.c'),
                'archivesExcludeBinariesAndImages': True}
    (destination/'manifest.json').write_text(json.dumps(manifest, indent=2)+'\n')
    print(name, 'sources, raw gates and timing receipts archived', flush=True)
profile = validation/'v2-profile'
profile.mkdir(exist_ok=True)
before = repo/'build/scene-lazy-cluster-frontend/v2/source/libsoftgl/src/geometry.inc'
after = repo/'build/scene-lazy-cluster-frontend/v2-profile/source/libsoftgl/src/geometry.inc'
(profile/'geometry-instrumentation.patch').write_text(''.join(difflib.unified_diff(
    before.read_text().splitlines(True), after.read_text().splitlines(True),
    fromfile='a/libsoftgl/src/geometry.inc', tofile='b/libsoftgl/src/geometry.inc')))
for p in Path('/tmp').glob('softgl-lazy-*profile*.txt'):
    shutil.copy2(p, profile/p.name)
wasm = repo/'build/scene-lazy-cluster-frontend/v6-rotated/wasm-lazy'
if wasm.exists():
    out = validation/'v6-rotated/wasm-lazy'
    out.mkdir(exist_ok=True)
    for p in wasm.iterdir():
        if p.suffix in ('.json', '.txt'):
            shutil.copy2(p, out/p.name)
# Gate logs that predate the per-version naming scheme.
for p in Path('/tmp').glob('softgl-lazy-profile-*.txt'):
    shutil.copy2(p, profile/p.name)
artifact_manifest = {str(p.relative_to(validation)): sha(p)
                     for p in sorted(validation.rglob('*'))
                     if p.is_file() and p.name != 'artifacts.json'}
(validation/'artifacts.json').write_text(json.dumps(artifact_manifest, indent=2)+'\n')
print(len(artifact_manifest), 'text/source artifact hashes preserved', flush=True)
