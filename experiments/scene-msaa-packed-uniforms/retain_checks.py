#!/usr/bin/env python3
"""Retain actual measured-library contracts and hardware reports, without binaries."""
import hashlib
import json
from pathlib import Path
import shutil

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
origin = repo / 'tmp/scene-msaa-packed-uniforms'
target = experiment / 'validation/checks'
target.mkdir(parents=True, exist_ok=False)
for name in ('contracts-v2', 'contracts-v3', 'contracts-v4', 'paired-counters-v2'):
    source = origin / name
    out = target / name
    out.mkdir()
    shutil.copyfile(source / 'receipt.json', out / 'receipt.json')
    if (source / 'recipe').exists():
        shutil.copytree(source / 'recipe', out / 'recipe')
    logs = {p.name: p.read_text() for p in sorted(source.iterdir())
            if p.is_file() and (p.suffix in ('.log', '.csv') or p.name.endswith('-stderr.txt'))}
    (out / 'logs.json').write_text(json.dumps(logs, indent=2) + '\n')
shutil.copyfile(experiment / 'paired_counters.py', target / 'paired_counters.py')
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
print('Three native contract sets and paired hardware diagnostics retained')
