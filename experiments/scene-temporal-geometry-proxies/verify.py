#!/usr/bin/env python3
"""Verify retained opportunity census; never treats counts as FPS gains."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--git-tree', choices=('index', 'HEAD'))
args = parser.parse_args()
base = 'experiments/scene-temporal-geometry-proxies/'


def content(name):
    if not args.git_tree: return (repo/name).read_bytes()
    return subprocess.check_output(['git', 'show', (':' if args.git_tree == 'index' else 'HEAD:')+name], cwd=repo)


manifest = json.loads(content(base+'validation/artifacts.json'))
for name, expected in manifest.items():
    assert hashlib.sha256(content(name)).hexdigest() == expected, name
receipt = json.loads(content(base+'validation/receipt.json'))
assert receipt['metadataOnly'] and not receipt['rendererImplemented'] and not receipt['speedupMeasured']
assert receipt['driverSha256'] == manifest[base+'census.c']
assert receipt['runnerSha256'] == manifest[base+'census.py']
assert len(receipt['controls']) == 3 and len(receipt['assets']) == 4
assert receipt['controls'][2]['returnCode'] != 0
for asset in receipt['assets']:
    rows = asset['records']; assert len(rows) == 30
    raw = content(base+'validation/'+asset['asset']+'-stdout.txt').decode()
    assert rows == [json.loads(line) for line in raw.splitlines()]
    assert all(r['triangles'] == asset['summary']['submittedTrianglesPerFrame'] for r in rows)
    assert [r['angle'] for r in rows] == list(range(0, 360, 12))
    for row in rows:
        assert row['triangleAreaAtMost3'] <= row['fullyInsideTriangles'] <= row['triangles']
        for group in row['groups']:
            assert group['edgeConnected'] <= group['boxAtMost3'] <= group['fullyInside'] <= group['total']
isa = json.loads(content(base+'validation/isa.json'))
assert isa['passed'] and not isa['avxInstructions'] and not isa['wideRegisters']
print('120 native projected-area records, three controls and SIMD128 ISA verified; no renderer/FPS claim;', args.git_tree or 'worktree')
