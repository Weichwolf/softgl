#!/usr/bin/env python3
"""Count static load/stack instructions; never an executed-work or FPS metric."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--root', type=Path, required=True)
args = parser.parse_args()
root = args.root.resolve()
result = {}
for variant, library in (('baseline', 'baseline_softgl'), ('candidate', 'softgl')):
    path = root/'native'/f'{variant}-library/CMakeFiles/{library}.dir/src/scene_visibility.c.o'
    nm = subprocess.check_output(['nm', '-S', '--size-sort', str(path)], text=True)
    symbols = {fields[3]: int(fields[1], 16) for line in nm.splitlines()
               if len(fields := line.split()) == 4 and
               ('scene_resolve' in fields[3] or 'scene_gather_lerp' in fields[3])}
    disassembly = subprocess.check_output(['objdump', '-d', str(path)], text=True)
    match = re.search(r'^[0-9a-f]+ <scene_resolve>:\n(.*?)(?=\n[0-9a-f]+ <|\Z)',
                      disassembly, re.M | re.S)
    assert match
    body = match[1]
    result[variant] = dict(symbolBytes=symbols,
        movssInstructions=len(re.findall(r'\bmovss\b', body)),
        shufpsInstructions=len(re.findall(r'\bshufps\b', body)),
        stackReferences=len(re.findall(r'\(%rsp\)', body)),
        objectSha256=hashlib.sha256(path.read_bytes()).hexdigest(),
        disassemblySha256=hashlib.sha256(disassembly.encode()).hexdigest())
(root/'instruction-diagnostic.json').write_text(json.dumps(result, indent=2)+'\n')
print(json.dumps(result, indent=2))
