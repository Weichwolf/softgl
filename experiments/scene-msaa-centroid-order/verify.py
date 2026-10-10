#!/usr/bin/env python3
"""Verify a failed approximate screen without relabeling it exact or adopted."""
import hashlib
import json
from pathlib import Path
import subprocess

experiment = Path(__file__).resolve().parent
validation = experiment/'validation'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
subprocess.run(['python3',str(validation/'archive_recipe.py'),'verify',str(experiment)],check=True)
build = read(validation/'variants/direct/build.json')
scope = read(validation/'variants/direct/source.json')
assert scope['approximateInteriorOrder'] and scope['pendingSampleDepths']
assert scope['originalMeshes'] and scope['fullShading'] and not scope['temporalCache']
path = validation/'checks/contracts-v2'
receipt = read(path/'receipt.json')
assert receipt['passed'] and receipt['simdBits'] == 128
assert receipt['sourceManifestSha256'] == build['sourceManifestSha256']
assert receipt['librarySha256'] == build['librarySha256']
assert receipt['recipeSha256'] == {p.name:digest(p) for p in (path/'recipe').iterdir()}
assert [r['kind'] for r in receipt['runs']] == [
    'scene_material_merge','scene_positions','scene_msaa','scene_coverage']
for row in receipt['runs']:
    assert row['exitCode'] == 0
    assert row['fixtureSha256'] == digest(path/'recipe'/(row['kind']+'.c'))
path = validation/'checks/quality-v2'
receipt = read(path/'receipt.json')
reference = read(validation/'checks/reference/receipt.json')
assert receipt['passed'] and receipt['assessmentOnly'] and not receipt['adopted']
assert not receipt['alphaMeasured'] and not receipt['allWithinExploratoryBudget']
assert receipt['pairedViews'] == len(receipt['records']) == 36
assert receipt['referenceReceiptSha256'] == digest(validation/'checks/reference/receipt.json')
assert reference['passed'] and reference['pairedViews'] == 108
assert reference['sourceManifest']['beforeSourceSha256'] == scope['beforeSourceSha256']
assert receipt['binarySha256']['baseline'] == reference['binarySha256']['baseline']
assert receipt['binarySha256']['candidate'] == build['binarySha256']['quality_candidate']
assert receipt['sourceManifestSha256'] == build['sourceManifestSha256']
assert receipt['runnerSha256'] == digest(validation/'checks/check_direct.py')
for row in receipt['records']:
    before = next(r for r in reference['records']
        if (r['asset'],r['samples'],r['angle']) == (row['asset'],row['samples'],row['angle']))
    assert row['reference'] == before['reference']
    assert row['samples'] == 4 and row['stencilExact']
    for plane in row['depthPlanes'].values():
        assert plane['finiteInRange'] and plane['missingCoveredValues'] == plane['extraCoveredValues'] == 0
    assert row['withinExploratoryBudget'] == (all(p['maxAbsoluteError'] <= 2e-6 for p in row['depthPlanes'].values()) and
        row['meanAbsoluteRgbError'] < 1 and row['pixelFractionOver8'] < .01)
print('Failed approximate budget, reference views and four measured-library contracts verified')
