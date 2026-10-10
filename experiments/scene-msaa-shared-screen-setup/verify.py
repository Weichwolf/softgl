#!/usr/bin/env python3
"""Bind exact shared setup, original contracts and the actual native screen."""
import hashlib
import json
from pathlib import Path
import subprocess

experiment = Path(__file__).resolve().parent
validation = experiment / 'validation'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
subprocess.run(['python3',str(validation / 'archive_recipe.py'),'verify',str(experiment)],check=True)
variant = validation / 'variants/shared'
scope, build = read(variant / 'source.json'), read(variant / 'build.json')
assert scope['sharedScreenSetup'] and scope['exactDepth'] and scope['temporaryStackRecord']
assert scope['originalMeshes'] and scope['fullShading'] and not scope['temporalCache']
control = validation / 'checks/control'
binding = read(control / 'binding.json')
assert binding['sourceManifestSha256'] == digest(control / 'source.json')
assert scope['beforeSourceSha256'] == read(control / 'source.json')['sourceSha256']
path = validation / 'checks/contracts-v1'
receipt = read(path / 'receipt.json')
assert receipt['passed'] and receipt['simdBits'] == 128
assert receipt['librarySha256'] == build['librarySha256']
assert receipt['sourceManifestSha256'] == build['sourceManifestSha256']
assert receipt['recipeSha256'] == {p.name:digest(p) for p in (path / 'recipe').iterdir()}
assert [r['kind'] for r in receipt['runs']] == ['scene_material_merge','scene_positions','scene_msaa','scene_coverage']
for row in receipt['runs']:
    assert row['exitCode'] == 0 and row['fixtureSha256'] == digest(path / 'recipe' / (row['kind']+'.c'))
quality = read(validation / 'shared-quality.json')
assert quality['passed'] and quality['pairedViews'] == 108
assert quality['binarySha256']['baseline'] == binding['qualityBinarySha256']
for campaign in (validation / 'timings').iterdir():
    receipt = read(campaign / 'receipt.json')
    assert receipt['baselineSha256'] == binding['residentBinarySha256']
    for asset in ('bistro','sponza','bmw','t80'):
        selected = [r for r in receipt['records'] if r['asset'] == asset and r.get('accepted')]
        assert len(selected) == 4
        for k in ('rgba','depth','stencil','sampleDepth','sampleStencil'):
            assert len({r[k] for r in selected}) == 1
print('Exact shared setup: actual source/library, four contracts, 108 views and raw screen verified')
