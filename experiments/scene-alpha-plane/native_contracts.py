#!/usr/bin/env python3
"""Run independent packet/mutation tests and paired renderer fixtures."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument('--root', type=Path, required=True)
args = parser.parse_args()
root = args.root.resolve()
output = root/'checks'
output.mkdir(parents=True, exist_ok=True)
records = []


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


for kind in ('quantized', 'small', 'positions', 'hz', 'order', 'hint', 'alpha_contract'):
    variants = ('baseline', 'candidate') if kind != 'alpha_contract' else ('candidate',)
    captured = []
    for variant in variants:
        name = kind if kind == 'alpha_contract' else f'{kind}_{variant}'
        binary = root/'native'/name
        result = subprocess.run([str(binary)], capture_output=True, check=True)
        (output/f'{name}.txt').write_bytes(result.stdout)
        (output/f'{name}-stderr.txt').write_bytes(result.stderr)
        captured.append(result.stdout)
        records.append(dict(kind=kind, variant=variant, binarySha256=digest(binary),
                            stdoutSha256=hashlib.sha256(result.stdout).hexdigest(),
                            stderrSha256=hashlib.sha256(result.stderr).hexdigest(),
                            returnCode=result.returncode))
    if len(captured) == 2:
        assert captured[0] == captured[1], kind
    print(kind, 'PASS', flush=True)
(root/'contracts.json').write_text(json.dumps(records, indent=2)+'\n')
