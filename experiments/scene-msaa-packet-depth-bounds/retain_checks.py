#!/usr/bin/env python3
"""Retain measured-code contracts and profile text, excluding generated binaries."""
import json
from pathlib import Path
import shutil

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
temporary = repo/'tmp'/experiment.name
checks = experiment/'validation/checks'; checks.mkdir(exist_ok=False)
names = ['contracts-v1','contracts-v2','contracts-v3','contracts-v4',
         'numeric-v2b','numeric-v3','numeric-v4','profile-v3-bmw']
for name in names:
    source = temporary/name; target = checks/name; target.mkdir()
    shutil.copyfile(source/'receipt.json',target/'receipt.json')
    if (source/'recipe').exists():
        shutil.copytree(source/'recipe',target/'recipe')
    logs = {p.name:p.read_text() for p in sorted(source.iterdir())
        if p.is_file() and p.suffix in ('.log','.txt')}
    (target/'logs.json').write_text(json.dumps(logs,indent=2)+'\n')
shutil.copyfile(repo/'experiments/scene-msaa-rgb-alpha-split/profile.py',checks/'profile.py')
print('Independent measured-code contract recipes and diagnostic profile retained')
