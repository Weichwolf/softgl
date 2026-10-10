#!/usr/bin/env python3
"""Bind exact-layout screens, contracts and limited hardware diagnostics."""
import hashlib
import json
from pathlib import Path
import subprocess

experiment = Path(__file__).resolve().parent
validation = experiment / 'validation'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
subprocess.run(['python3', str(validation / 'archive_recipe.py'), 'verify', str(experiment)], check=True)
for version, name in [(2, 'materialize'), (3, 'retained'), (4, 'in-place')]:
    build = read(validation / 'variants' / name / 'build.json')
    scope = read(validation / 'variants' / name / 'source.json')
    assert scope['packedUniformMetadata'] and scope['originalMeshes'] and scope['fullShading']
    assert not scope['temporalCache']
    path = validation / 'checks' / ('contracts-v' + str(version))
    receipt = read(path / 'receipt.json')
    assert receipt['passed'] and receipt['simdBits'] == 128
    assert receipt['sourceManifestSha256'] == build['sourceManifestSha256']
    assert receipt['librarySha256'] == build['librarySha256']
    assert receipt['recipeSha256'] == {p.name: digest(p) for p in (path / 'recipe').iterdir()}
    assert [r['kind'] for r in receipt['runs']] == [
        'scene_material_merge', 'scene_positions', 'scene_msaa', 'scene_coverage']
    for row in receipt['runs']:
        assert row['exitCode'] == 0
        assert row['fixtureSha256'] == digest(path / 'recipe' / (row['kind'] + '.c'))
control = validation / 'checks/control'
scope = read(control / 'source.json')
binding = read(control / 'binding.json')
assert binding['sourceManifestSha256'] == digest(control / 'source.json')
assert scope['sourceSha256'] == read(validation / 'variants/materialize/source.json')['beforeSourceSha256']
isa = read(control / 'isa.json')
assert isa['passed'] and isa['objects']['driver']['sha256'] == binding['residentBinarySha256']
assert isa['librarySha256'] == binding['librarySha256']
for campaign in (validation / 'timings').iterdir():
    receipt = read(campaign / 'receipt.json')
    assert receipt['baselineSha256'] == binding['residentBinarySha256']
    accepted = [r for r in receipt['records'] if r.get('accepted')]
    for asset, samples in {(r['asset'], r['samples']) for r in accepted}:
        for field in ('rgba', 'depth', 'stencil', 'sampleDepth', 'sampleStencil'):
            assert len({r[field] for r in accepted if (r['asset'], r['samples']) == (asset, samples)}) == 1
path = validation / 'checks/paired-counters-v2'
receipt = read(path / 'receipt.json')
build = read(validation / 'variants/materialize/build.json')
assert receipt['passed'] and receipt['diagnosticOnly'] and not receipt['performanceAcceptance']
assert receipt['runnerSha256'] == digest(validation / 'checks/paired_counters.py')
assert receipt['sourceManifestSha256']['baseline'] == binding['sourceManifestSha256']
assert receipt['sourceManifestSha256']['candidate'] == build['sourceManifestSha256']
assert receipt['binarySha256']['baseline'] == binding['residentBinarySha256']
assert receipt['binarySha256']['candidate'] == build['binarySha256']['resident_candidate']
assert [r['variant'] for r in receipt['records']] == ['baseline', 'candidate', 'candidate', 'baseline']
assert receipt['threads'] == 4 and receipt['samples'] == 4
logs = read(path / 'logs.json')
for variant in ('baseline', 'candidate'):
    counters = receipt['counters'][variant]
    assert hashlib.sha256(logs[variant + '-counters.csv'].encode()).hexdigest() == counters['reportSha256']
    assert hashlib.sha256(logs[variant + '-stderr.txt'].encode()).hexdigest() == counters['stderrSha256']
    for event in ('cycles:u', 'instructions:u', 'cache-misses:u'):
        row = next(r for r in counters['rows'] if r['event'] == event)
        assert row['raw'] in logs[variant + '-counters.csv'].splitlines()
        assert float(row['value']) > 0 and float(row['runningPercent']) == 100
for field in ('rgba', 'depth', 'stencil', 'sampleDepth', 'sampleStencil'):
    assert len({r['result'][field] for r in receipt['records']}) == 1
print('Three measured exact-layout contracts, all endpoint planes and hardware report bindings verified')
