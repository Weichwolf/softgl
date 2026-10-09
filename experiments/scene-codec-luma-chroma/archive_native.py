#!/usr/bin/env python3
"""Retain frozen native shader variants, recipes and completed text evidence."""
import difflib
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).resolve().parent
validation = experiment/'native-validation'
validation.mkdir(exist_ok=True)


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


versions = ('v1-lighting', 'v2-lighting-identity', 'v3-full-shading', 'v4-specialized')
for version in versions:
    root = repo/'build/scene-codec-luma-chroma'/version
    source = root/'source'
    target = validation/version
    target.mkdir(exist_ok=True)
    revision = (source/'baseline.txt').read_text().strip()
    patch = []
    paths = sorted(p for p in (source/'libsoftgl').rglob('*') if p.is_file())
    paths.append(source/'wasm/model_wrap.c')
    for path in paths:
        name = str(path.relative_to(source))
        original = subprocess.run(['git', 'show', f'{revision}:{name}'], cwd=repo,
                                  text=True, capture_output=True)
        assert original.returncode == 0 or path.name.startswith('scene_codec_'), name
        patch.extend(difflib.unified_diff(original.stdout.splitlines(True),
            path.read_text().splitlines(True),
            fromfile=f'a/{name}' if original.returncode == 0 else '/dev/null', tofile=f'b/{name}'))
    (target/'candidate.patch').write_text(''.join(patch))
    manifest = dict(baseline=revision,
        sourcesSha256={str(p.relative_to(source)): digest(p) for p in sorted(source.rglob('*')) if p.is_file()},
        nativeArchivesSha256={str(p.relative_to(root)): digest(p) for p in sorted((root/'native').rglob('*.a'))})
    (target/'manifest.json').write_text(json.dumps(manifest, indent=2)+'\n')
    for path in [*root.glob('*.json'), *root.glob('*.txt')]:
        shutil.copy2(path, target/path.name)
    shutil.copy2(root/'native/CMakeCache.txt', target/'native-CMakeCache.txt')
    shutil.copytree(root/'recipe', target/'recipe', dirs_exist_ok=True)
for root in sorted((repo/'tmp/scene-codec-luma-chroma').glob('v[1-4]-*')):
    if not root.is_dir() or not any(s in root.name for s in ('lighting', 'shading', 'specialized')):
        continue
    for path in root.rglob('*'):
        if path.is_file() and path.suffix in ('.json', '.txt', '.c', '.inc', '.py'):
            target = validation/'runs'/root.name/path.relative_to(root)
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(path, target)
for pattern in ('softgl-codec-lighting-v*.txt', 'softgl-codec-v4-*.txt'):
    for path in Path('/tmp').glob(pattern):
        shutil.copy2(path, validation/path.name)
sources = validation/'sources'
sources.mkdir(exist_ok=True)
for name in ('scene-depth-order-cached-keys/resident_diagnostic.py',
             'scene-material-visibility/resident_trial.c',
             'scene-depth-order-cached-keys/quality_frames.c',
             'scene-depth-order-cached-keys/check_quality.py'):
    shutil.copy2(repo/'experiments'/name, sources/Path(name).name)
manifest = {str(p.relative_to(repo)): digest(p) for p in sorted(validation.rglob('*'))
            if p.is_file() and p.name != 'artifacts.json'}
for path in experiment.iterdir():
    if path.is_file(): manifest[str(path.relative_to(repo))] = digest(path)
(validation/'artifacts.json').write_text(json.dumps(manifest, indent=2)+'\n')
print(len(manifest), 'native source/text artifacts archived', flush=True)
