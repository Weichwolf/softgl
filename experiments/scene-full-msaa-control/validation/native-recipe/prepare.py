#!/usr/bin/env python3
"""Freeze the current Full renderer and the actual shared benchmark drivers."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
parser = argparse.ArgumentParser()
parser.add_argument('--output-root', type=Path, required=True)
args = parser.parse_args()
root = args.output_root.resolve()
root.mkdir(parents=True, exist_ok=False)
source = root/'source'
source.mkdir()
shutil.copytree(repo/'libsoftgl', source/'libsoftgl')
shutil.copyfile(repo/'wasm/model_wrap.c', source/'model_wrap.c')
recipe = root/'recipe'
recipe.mkdir()
for name in ('CMakeLists.txt', 'prepare.py'):
    shutil.copyfile(experiment/name, recipe/name)
for folder, name in [('scene-material-visibility', 'resident_trial.c'),
    ('scene-depth-order-cached-keys', 'quality_frames.c')]:
    shutil.copyfile(repo/'experiments'/folder/name, recipe/name)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
(root/'source.json').write_text(json.dumps(dict(
    parentRevision=subprocess.check_output(['git', 'rev-parse', 'HEAD'], cwd=repo, text=True).strip(),
    workingTreeSources=True, originalMeshes=True, fullShading=True, temporalCache=False,
    sourceSha256={str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()},
    recipeSha256={p.name:digest(p) for p in sorted(recipe.iterdir())}), indent=2) + '\n')
print(root)
