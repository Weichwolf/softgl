#!/usr/bin/env python3
"""Verify pending-depth evidence against the exact frozen measured builds."""
import hashlib
import json
from pathlib import Path
import subprocess

experiment = Path(__file__).resolve().parent
validation = experiment/'validation'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
subprocess.run(['python3',str(validation/'archive_recipe.py'),'verify',str(experiment)],check=True)
variants = ('plumbing','packets','streamlined','compact')
for version,name in enumerate(variants,1):
    build = read(validation/'variants'/name/'build.json')
    path = validation/'checks'/('contracts-v'+str(version))
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
for name,fixture in [('packets','numeric-v2b'),('streamlined','numeric-v3'),('compact','numeric-v4')]:
    variant = validation/'variants'/name
    build = read(variant/'build.json')
    path = validation/'checks'/fixture
    receipt = read(path/'receipt.json')
    assert receipt['passed'] and receipt['exitCode'] == 0 and receipt['simdBits'] == 128
    assert receipt['empirical'] and not receipt['universalProof']
    assert receipt['sourceManifestSha256'] == build['sourceManifestSha256']
    kernel_path = variant/'overrides/libsoftgl/src/scene_visibility.c'
    assert receipt['kernelSha256'] == digest(kernel_path)
    assert receipt['recipeSha256'] == {p.name:digest(p) for p in (path/'recipe').iterdir()}
    kernel = kernel_path.read_text()
    a = kernel.index('#define SCENE_PACKET_DEPTH_GUARD ')
    b = kernel.index('static __attribute__((noinline)) void scene_packet_depth_capture(',a)
    helper = (path/'recipe/interval_helper.inc').read_text()
    assert helper.startswith(kernel[a:b])
    a = kernel.index('    sg_f32x4 center = ',b)
    b = kernel.index('    unsigned pass = ',a)
    assert kernel[a:b] in helper
path = validation/'checks/profile-v3-bmw'
receipt = read(path/'receipt.json')
build = read(validation/'variants/streamlined/build.json')
assert receipt['measuredWithProfiler'] and not receipt['performanceAcceptance']
assert receipt['runnerSha256'] == digest(validation/'checks/profile.py')
assert receipt['threads'] == 4 and receipt['samples'] == 4
logs = read(path/'logs.json')
for row in receipt['records']:
    assert row['binarySha256'] == build['binarySha256']['resident_candidate']
    assert hashlib.sha256(logs[row['variant']+'-report.txt'].encode()).hexdigest() == row['reportSha256']
    for field in ('rgba','depth','stencil','sampleDepth','sampleStencil'):
        assert row['driverResult'][field] == row['warmResult'][field]
for campaign in (validation/'timings').iterdir():
    receipt = read(campaign/'receipt.json')
    for asset in ('bistro','sponza','bmw','t80'):
        for field in ('rgba','depth','stencil','sampleDepth','sampleStencil'):
            assert len({r[field] for r in receipt['records'] if r.get('accepted') and r['asset']==asset}) == 1
print('Four frozen contract sets, actual interval arithmetic and diagnostic profile verified')
