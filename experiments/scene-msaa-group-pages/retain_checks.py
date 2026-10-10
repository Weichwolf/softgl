#!/usr/bin/env python3
"""Retain actual queue-order, rollback and sampled CPU evidence, without builds."""
import hashlib
import json
from pathlib import Path
import shutil

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
origin = repo / 'tmp/scene-msaa-group-pages'
target = experiment / 'validation/checks'
target.mkdir(parents=True, exist_ok=False)
names = ('contracts-v2', 'contracts-v3', 'audit-v2', 'audit-v3',
         'failure-zero-v2', 'failure-partial-v2', 'profile-v2-bmw')
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
shutil.copyfile(repo / 'experiments/scene-msaa-batched-hiz/profile.py', target / 'profile.py')
control = repo / 'build/scene-msaa-guarded-depth-planes/v1-control'
reference = target / 'control'
reference.mkdir()
for name in ('source.json', 'isa.json'):
    shutil.copyfile(control / name, reference / name)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
binding = dict(sourceManifestSha256=digest(control / 'source.json'),
    residentBinarySha256=digest(control / 'native/resident_candidate'),
    librarySha256=digest(control / 'native/library/libsoftgl.a'))
(reference / 'binding.json').write_text(json.dumps(binding, indent=2) + '\n')
print('Two measured queue variants, actual ordering/forced rollback and CPU profile retained')
