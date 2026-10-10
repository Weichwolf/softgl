#!/usr/bin/env python3
"""Retain actual native fixtures, arithmetic, dispatch and failed compilation."""
import hashlib
import json
from pathlib import Path
import shutil

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
origin = repo / 'tmp/scene-msaa-short-coverage'
target = experiment / 'validation/checks'
target.mkdir(parents=True, exist_ok=False)
names = ('contracts-v2', 'contracts-v3', 'hierarchy-v2', 'hierarchy-v3',
         'arithmetic-v2', 'arithmetic-v3', 'dispatch-v2', 'dispatch-v2-fixed',
         'dispatch-v3', 'small-v2', 'small-v3', 'census-v3', 'paired-counters-v3')
for name in names:
    source = origin / name
    out = target / name
    out.mkdir()
    for file in ('receipt.json', 'failure.json'):
        if (source / file).exists():
            shutil.copyfile(source / file, out / file)
    if (source / 'recipe').exists():
        shutil.copytree(source / 'recipe', out / 'recipe')
    logs = {p.name: p.read_text() for p in sorted(source.iterdir())
            if p.is_file() and p.suffix in ('.log', '.txt', '.csv')}
    (out / 'logs.json').write_text(json.dumps(logs, indent=2) + '\n')
shutil.copyfile(repo / 'experiments/scene-msaa-packed-uniforms/paired_counters.py',
                target / 'paired_counters.py')
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
print('Two measured variants, broad original fixtures and failed audit compilation retained')
