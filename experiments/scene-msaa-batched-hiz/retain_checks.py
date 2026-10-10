#!/usr/bin/env python3
"""Retain the real contracts, failed oracle recipes and parent CPU profiles."""
import hashlib
import json
from pathlib import Path
import shutil

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
origin = repo / 'tmp/scene-msaa-batched-hiz'
target = experiment / 'validation/checks'
target.mkdir(parents=True, exist_ok=False)
names = ('contracts-v1', 'contracts-v2', 'hierarchy-v1', 'hierarchy-control-v1',
         'hierarchy-v1-strict', 'hierarchy-control-strict', 'hierarchy-v2-strict',
         'profile-control-bmw', 'profile-control-bistro')
for name in names:
    source = origin / name
    out = target / name
    out.mkdir()
    shutil.copyfile(source / 'receipt.json', out / 'receipt.json')
    if (source / 'recipe').exists():
        shutil.copytree(source / 'recipe', out / 'recipe')
    logs = {p.name: p.read_text() for p in sorted(source.iterdir())
            if p.is_file() and p.suffix in ('.log', '.txt')}
    (out / 'logs.json').write_text(json.dumps(logs, indent=2) + '\n')
shutil.copyfile(experiment / 'profile.py', target / 'profile.py')
control = repo / 'build/scene-msaa-guarded-depth-planes/v1-control'
reference = target / 'control'
reference.mkdir()
shutil.copyfile(control / 'source.json', reference / 'source.json')
shutil.copyfile(control / 'isa.json', reference / 'isa.json')
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
binding = dict(sourceManifestSha256=digest(control / 'source.json'),
    residentBinarySha256=digest(control / 'native/resident_candidate'),
    librarySha256=digest(control / 'native/library/libsoftgl.a'))
(reference / 'binding.json').write_text(json.dumps(binding, indent=2) + '\n')
print('Two contract sets, strict/failed hierarchy oracles and actual-parent profiles retained')
