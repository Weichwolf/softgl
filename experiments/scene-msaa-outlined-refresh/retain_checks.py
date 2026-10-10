#!/usr/bin/env python3
"""Retain native exactness and code-size diagnostics for the real trial."""
import hashlib
import json
from pathlib import Path
import shutil

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
origin = repo / 'tmp/scene-msaa-outlined-refresh'
target = experiment / 'validation/checks'
target.mkdir(parents=True, exist_ok=False)
for name in ('contracts-v1', 'hierarchy-v1'):
    source = origin / name
    out = target / name
    out.mkdir()
    shutil.copyfile(source / 'receipt.json', out / 'receipt.json')
    shutil.copytree(source / 'recipe', out / 'recipe')
    logs = {p.name: p.read_text() for p in sorted(source.iterdir())
            if p.is_file() and p.suffix == '.log'}
    (out / 'logs.json').write_text(json.dumps(logs, indent=2) + '\n')
shutil.copyfile(origin / 'code-size.json', target / 'code-size.json')
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
print('Actual-library contracts and exact-source/code-size diagnostics retained')
