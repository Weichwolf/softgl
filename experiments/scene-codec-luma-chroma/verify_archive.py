#!/usr/bin/env python3
"""Verify research/proxy receipts in the worktree, staged index or committed tree."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--git-tree', choices=('index','HEAD'))
args = parser.parse_args()


def content(name):
    if not args.git_tree:
        return (repo/name).read_bytes()
    prefix = ':' if args.git_tree == 'index' else 'HEAD:'
    return subprocess.check_output(['git','show',prefix+name],cwd=repo)


base = 'experiments/scene-codec-luma-chroma/validation/'
manifest = json.loads(content(base+'artifacts.json'))
for name, expected in manifest.items():
    assert hashlib.sha256(content(name)).hexdigest() == expected, name
receipt = json.loads(content(base+'receipt.json'))
assert len(receipt['records']) == 72
assert receipt['offlineQualityProxy'] and not receipt['rendererImplementation']
assert not receipt['performanceAcceptance'] and not receipt['temporalQualityTested']
assert receipt['runnerSha256'] == manifest['experiments/scene-codec-luma-chroma/quality_probe.py']
assert receipt['helperSha256'] == manifest['experiments/scene-perceptual-frequency-budget/flip_probe.cpp']
assert sum(len(r['flip']) for r in receipt['records']) == 144
for pair in receipt['controls']:
    assert pair['identity']['max'] == 0
    assert pair['opposite']['mean'] > .1
    # Max is serialized with nine significant digits; mean retains seventeen.
    assert pair['opposite']['mean'] <= pair['opposite']['max']+1e-9
profile = 'experiments/scene-error-budget-profiles/'
probe = json.loads(content(profile+'validation/receipt.json'))
assert len(probe['records']) == 72
assert probe['offlineOnly'] and not probe['runtimeControllerImplemented']
assert not probe['rendererSpeedupMeasured'] and not probe['sampleCostMeasured']
assert probe['runnerSha256'] == manifest[profile+'mse_probe.py']
assert probe['inputQualityReceiptSha256'] == manifest[base+'receipt.json']
assert receipt['referenceReceiptSha256'] == manifest[base+'reference-receipt.json']
assert probe['inputReferenceReceiptSha256'] == manifest[base+'reference-receipt.json']
print(len(manifest),'retained files exact;', '144 FLIP pairs / 72 sparse-probe cases verified;',
      args.git_tree or 'working tree')
