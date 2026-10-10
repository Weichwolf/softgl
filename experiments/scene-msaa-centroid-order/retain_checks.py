#!/usr/bin/env python3
"""Retain actual contract and approximate assessment recipes without binaries."""
import json
from pathlib import Path
import shutil

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
temporary = repo/'tmp'/experiment.name
checks = experiment/'validation/checks'; checks.mkdir(exist_ok=False)
for name in ('contracts-v2','quality-v2'):
    source = temporary/name; target = checks/name; target.mkdir()
    shutil.copyfile(source/'receipt.json',target/'receipt.json')
    if (source/'recipe').exists():
        shutil.copytree(source/'recipe',target/'recipe')
    logs = {p.name:p.read_text() for p in sorted(source.iterdir())
        if p.is_file() and p.suffix in ('.log','.txt')}
    (target/'logs.json').write_text(json.dumps(logs,indent=2)+'\n')
shutil.copyfile(repo/'experiments/scene-msaa-guarded-depth-planes/check_direct.py',checks/'check_direct.py')
reference = checks/'reference'; reference.mkdir()
shutil.copyfile(repo/'tmp/scene-msaa-packet-depth-bounds/quality-v3/receipt.json',reference/'receipt.json')
print('Actual measured-library fixtures and approximate view assessment retained')
