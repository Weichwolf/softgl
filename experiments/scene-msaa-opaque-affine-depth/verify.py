#!/usr/bin/env python3
"""Bind the default-state contracts and enabled near-tie assessments."""
import hashlib
import json
from pathlib import Path
import subprocess

experiment = Path(__file__).resolve().parent
validation = experiment / 'validation'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
subprocess.run(['python3',str(validation / 'archive_recipe.py'),'verify',str(experiment)],check=True)
variant = validation / 'variants/pure'
build, scope = read(variant / 'build.json'), read(variant / 'source.json')
assert scope['approximateDepth'] and scope['branchFreeSmallAndRebased'] and scope['explicitModelOptIn']
assert scope['originalMeshes'] and scope['fullShading'] and not scope['temporalCache']
control = validation / 'checks/control'
binding = read(control / 'binding.json')
assert digest(control / 'source.json') == binding['sourceManifestSha256']
assert scope['beforeSourceSha256'] == read(control / 'source.json')['sourceSha256']
assert read(control / 'isa.json')['librarySha256'] == binding['librarySha256']
path = validation / 'checks/contracts-v1'
receipt = read(path / 'receipt.json')
assert receipt['passed'] and receipt['librarySha256'] == build['librarySha256']
assert receipt['sourceManifestSha256'] == build['sourceManifestSha256']
assert receipt['recipeSha256'] == {p.name:digest(p) for p in (path / 'recipe').iterdir()}
for row in receipt['runs']:
    assert row['exitCode'] == 0 and row['fixtureSha256'] == digest(path / 'recipe' / (row['kind']+'.c'))
path = validation / 'checks/quality-v1'
quality = read(path / 'receipt.json')
reference = read(path / 'reference-receipt.json')
assert quality['runnerSha256'] == digest(path / 'check_direct.py')
assert quality['referenceReceiptSha256'] == digest(path / 'reference-receipt.json')
assert reference['passed'] and reference['pairedViews'] == 108
assert reference['binarySha256']['baseline'] == binding['qualityBinarySha256']
assert quality['binarySha256']['baseline'] == binding['qualityBinarySha256']
assert quality['binarySha256']['candidate'] == build['binarySha256']['quality_candidate']
assert quality['sourceManifestSha256'] == build['sourceManifestSha256']
assert quality['passed'] and quality['pairedViews'] == 36 and quality['assessmentOnly']
assert not quality['adopted'] and not quality['alphaMeasured'] and not quality['allWithinExploratoryBudget']
before = {(r['asset'],r['samples'],r['angle']):r['reference'] for r in reference['records']}
for row in quality['records']:
    assert row['reference'] == before[row['asset'],row['samples'],row['angle']]
    assert row['samples'] == 4 and row['stencilExact']
    for plane in row['depthPlanes'].values():
        assert plane['finiteInRange'] and plane['missingCoveredValues'] == plane['extraCoveredValues'] == 0
for campaign in (validation / 'timings').iterdir():
    assert read(campaign / 'receipt.json')['baselineSha256'] == binding['residentBinarySha256']
print('Pure depth source, default contracts and 36 enabled near-tie assessments verified without adopting an error budget')
