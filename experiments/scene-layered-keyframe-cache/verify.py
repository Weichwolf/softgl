#!/usr/bin/env python3
"""Verify archived source identities and recompute complete-driver measurements."""
import hashlib
import json
from pathlib import Path
import statistics
import tempfile
from restore import restore


experiment = Path(__file__).resolve().parent
validation = experiment/'validation'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
assert read(experiment/'artifacts.json') == {str(p.relative_to(experiment)):digest(p)
    for p in sorted(experiment.rglob('*'))
    if p.is_file() and p.name != 'artifacts.json' and '__pycache__' not in p.parts}
scope = read(validation/'scope.json')
assert not scope['fullFresh4xMsaaEveryFrame'] and not scope['v12MovingImageValidation']
manifests = {}
for variant in ('v10-pipeline', 'v12', 'v12-pipeline', 'production-v1'):
    with tempfile.TemporaryDirectory() as directory:
        manifests[variant] = restore(variant, Path(directory)/'trial')
timing = read(validation/'v12-full-pixel-confirmation/receipt.json')
assert not timing['screeningOnly'] and timing['residentAssets']
assert timing['runnerSha256'] == digest(validation/'controls/resident_diagnostic.py')
assert timing['driverSha256'] == digest(validation/'controls/resident_trial.c')
source = manifests['v12-pipeline']['sourceSha256']
assert timing['candidateSourcesSha256'] == {name.removeprefix('libsoftgl/'):value
    for name, value in source.items() if name.startswith('libsoftgl/')}
assert timing['candidateWrapperSha256'] == source['model_wrap.c']
baseline = read(validation/'controls/baseline.json')
assert timing['baselineSha256'] == baseline['residentBinarySha256']
rows = [row for row in timing['records'] if row.get('accepted')]
assert len(rows) == 144
assert all(row['threads'] == 4 and row['width'] == 640 and row['height'] == 360 and
    row['foreignCpuCores'] <= .1 for row in rows)
for summary in read(validation/'v12-full-pixel-confirmation/summary.json'):
    selected = [row for row in rows if (row['asset'], row['samples']) == (summary['asset'], summary['samples'])]
    assert len(selected) == 12
    medians = {variant:statistics.median(row['ms'] for row in selected if row['variant'] == variant)
        for variant in ('baseline', 'candidate')}
    assert medians == summary['mediansMs']
    assert abs((medians['candidate']/medians['baseline'] - 1)*100 - summary['frameTimeChangePercent']) < 1e-10
quality = read(validation/'v12-quality/receipt.json')
assert len(quality['records']) == 108
assert quality['runnerSha256'] == digest(validation/'controls/check_quality.py')
assert quality['driverSha256'] == digest(validation/'controls/quality_frames.c')
assert quality['sourceManifest'] == manifests['v12-pipeline']
assert quality['binarySha256']['baseline'] == baseline['qualityBinarySha256']
for row in quality['records']:
    assert row['stencilAndSampleStencilByteIdentical']
    if row['asset'] in ('bmw', 't80'):
        assert row['rgbaByteIdentical'] and row['resolvedDepth']['byteIdentical']
        if row['samples']:
            assert row['sampleDepth']['byteIdentical']
for name in ('softgl-key-atlas-v10-sanitize-contract.txt', 'softgl-key-atlas-v10-wasm-contract.txt'):
    assert '216 current-pose frames' in (validation/name).read_text()
    assert 'PASS' in (validation/name).read_text()
print('Four frozen variants, 144 selected native timings and 108 quality pairs verified; prototype held.')
