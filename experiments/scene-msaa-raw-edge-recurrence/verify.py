#!/usr/bin/env python3
"""Verify integer recurrence contracts and both explicitly separate timing scopes."""
import hashlib
import json
from pathlib import Path
import statistics
import subprocess

experiment = Path(__file__).resolve().parent
validation = experiment/'validation'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
subprocess.run(['python3', str(validation/'archive_recipe.py'), 'verify',
                str(experiment)], check=True)
control = read(validation/'variants/control/source.json')
assert control['sourceSha256'] == control['beforeSourceSha256']
for name, variant in (('contracts-v1', 'rebased'), ('contracts-v2', 'small'), ('contracts-v3', 'points')):
    path = validation/name
    receipt = read(path/'receipt.json')
    build = read(validation/'variants'/variant/'build.json')
    assert receipt['passed'] and receipt['simdBits'] == 128
    assert receipt['sourceManifestSha256'] == build['sourceManifestSha256']
    assert receipt['librarySha256'] == build['librarySha256']
    assert receipt['recipeSha256'] == {p.name:digest(p) for p in (path/'recipe').iterdir()}
    assert [r['kind'] for r in receipt['runs']] == [
        'scene_material_merge', 'scene_positions', 'scene_msaa', 'scene_coverage']
    for row in receipt['runs']:
        assert row['exitCode'] == 0
        assert row['fixtureSha256'] == digest(path/'recipe'/(row['kind']+'.c'))

receipt = read(validation/'single_launch/receipt.json')
assert receipt['passed'] and receipt['diagnosticOnly'] and not receipt['performanceAcceptance']
assert receipt['processPerRequest'] and not receipt['residentAssets']
assert receipt['runnerSha256'] == digest(experiment/'single_launch.py')
assert (receipt['width'], receipt['height'], receipt['threads']) == (640, 360, 4)
for role, variant in (('baseline', 'control'), ('candidate', 'points')):
    build = read(validation/'variants'/variant/'build.json')
    assert receipt['binarySha256'][role] == build['binarySha256']['resident_candidate']
    assert receipt['sourceManifestSha256'][role] == build['sourceManifestSha256']
assert receipt['arguments']['pairs'] == 3
assert receipt['arguments']['warmup'] == 60 and receipt['arguments']['frames'] == 30
rows = [r for r in receipt['records'] if r['accepted']]
assert len(rows) == 12 and all(r['foreignCpuCores'] <= .1 and r['samples'] == 4 for r in rows)
for pair in range(3):
    assert len([r for r in rows if r['pair'] == pair]) == 4
medians = {v:statistics.median(r['ms'] for r in rows if r['variant'] == v)
    for v in ('baseline', 'candidate')}
assert medians == receipt['summary']['mediansMs']
assert receipt['summary']['frameTimeChangePercent'] == (medians['candidate']/medians['baseline']-1)*100
assert receipt['summary']['finalAllPlanesIdentical']
for field in ('rgba', 'depth', 'stencil', 'sampleDepth', 'sampleStencil'):
    assert len({r[field] for r in rows}) == 1
print('Integer recurrence contracts and separate single-launch Sponza diagnostic verified')
