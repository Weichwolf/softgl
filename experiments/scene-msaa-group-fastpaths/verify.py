#!/usr/bin/env python3
"""Verify the exact grouping screen and its measured-library fixture evidence."""
import hashlib
import json
from pathlib import Path
import subprocess

experiment = Path(__file__).resolve().parent
validation = experiment/'validation'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
subprocess.run(['python3', str(validation/'archive_recipe.py'), 'verify',
                str(experiment)], check=True)
control = read(validation/'variants/control/source.json')
assert control['sourceSha256'] == control['beforeSourceSha256']
build = read(validation/'variants/direct_groups/build.json')
path = validation/'native-contracts'
receipt = read(path/'receipt.json')
assert receipt['passed'] and receipt['simdBits'] == 128
assert receipt['sourceManifestSha256'] == build['sourceManifestSha256']
assert receipt['librarySha256'] == build['librarySha256']
assert receipt['recipeSha256'] == {p.name:digest(p) for p in (path/'recipe').iterdir()}
assert [r['kind'] for r in receipt['runs']] == [
    'scene_material_merge', 'scene_positions', 'scene_msaa', 'scene_coverage']
for row in receipt['runs']:
    assert row['exitCode'] == 0
    assert row['fixtureSha256'] == digest(path/'recipe'/(row['kind']+'.c'))
print('Four independent measured-library grouping contracts verified')
