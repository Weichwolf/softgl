#!/usr/bin/env python3
"""Verify failed speed screens without conflating them with exact contract gates."""
import hashlib
import json
from pathlib import Path
import subprocess

experiment = Path(__file__).resolve().parent
validation = experiment / 'validation'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
subprocess.run(['python3', str(validation / 'archive_recipe.py'), 'verify', str(experiment)], check=True)
builds = {}
for version, name in [(1, 'small-only'), (2, 'all-packets')]:
    build = read(validation / 'variants' / name / 'build.json')
    builds[version] = build
    scope = read(validation / 'variants' / name / 'source.json')
    assert scope['batchedDepthStores'] and scope['exactHierarchy']
    assert scope['originalMeshes'] and scope['fullShading'] and not scope['temporalCache']
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
assert scope['sourceSha256'] == read(validation / 'variants/small-only/source.json')['beforeSourceSha256']
isa = read(control / 'isa.json')
assert isa['passed'] and isa['objects']['driver']['sha256'] == binding['residentBinarySha256']
assert isa['librarySha256'] == binding['librarySha256']
for name, build, passed in [
    ('hierarchy-v1', builds[1], False), ('hierarchy-control-v1', binding, False),
    ('hierarchy-v1-strict', builds[1], True), ('hierarchy-control-strict', binding, True),
    ('hierarchy-v2-strict', builds[2], True)]:
    path = validation / 'checks' / name
    receipt = read(path / 'receipt.json')
    assert receipt['passed'] == passed and (receipt['exitCode'] == 0) == passed
    assert receipt['sourceManifestSha256'] == build['sourceManifestSha256']
    assert receipt['librarySha256'] == build['librarySha256']
    assert receipt['fixtureSha256'] == digest(path / 'recipe/hierarchical_depth.c')
    assert receipt['recipeSha256'] == {p.name: digest(p) for p in (path / 'recipe').iterdir()}
    if passed:
        assert '-fno-fast-math' in receipt['command'] and '-ffp-contract=off' in receipt['command']
    else:
        assert '-ffast-math' in receipt['command'] and 'line 172:' in receipt['stderr']
for campaign in (validation / 'timings').iterdir():
    receipt = read(campaign / 'receipt.json')
    assert receipt['baselineSha256'] == binding['residentBinarySha256']
    accepted = [r for r in receipt['records'] if r.get('accepted')]
    for asset, samples in {(r['asset'], r['samples']) for r in accepted}:
        for field in ('rgba', 'depth', 'stencil', 'sampleDepth', 'sampleStencil'):
            assert len({r[field] for r in accepted if (r['asset'], r['samples']) == (asset, samples)}) == 1
for asset in ('bmw', 'bistro'):
    path = validation / 'checks' / ('profile-control-' + asset)
    receipt = read(path / 'receipt.json')
    assert receipt['measuredWithProfiler'] and not receipt['performanceAcceptance']
    assert receipt['runnerSha256'] == digest(validation / 'checks/profile.py')
    assert receipt['asset'] == asset and receipt['threads'] == 4 and receipt['samples'] == 4
    assert len(receipt['records']) == 1
    row = receipt['records'][0]
    assert row['binarySha256'] == binding['residentBinarySha256']
    logs = read(path / 'logs.json')
    assert hashlib.sha256(logs['candidate-report.txt'].encode()).hexdigest() == row['reportSha256']
    assert 'Total Lost Samples: 0' in logs['candidate-report.txt']
    for field in ('rgba', 'depth', 'stencil', 'sampleDepth', 'sampleStencil'):
        assert row['driverResult'][field] == row['warmResult'][field]
print('Exact captured-scene contracts, hierarchy oracle correction and actual-parent CPU profiles verified')
