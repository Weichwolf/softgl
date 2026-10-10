#!/usr/bin/env python3
"""Bind independent-origin kernels, sample oracles, model views and screens."""
import hashlib
import json
from pathlib import Path
import subprocess

experiment = Path(__file__).resolve().parent
validation = experiment / 'validation'
read = lambda p: json.loads(p.read_text())
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
subprocess.run(['python3',str(validation / 'archive_recipe.py'),'verify',str(experiment)],check=True)
variants = {name:read(validation / 'variants' / name / 'build.json')
    for name in ('control','one-pixel','two-pixel','prefilter')}
scopes = {name:read(validation / 'variants' / name / 'source.json') for name in variants}
assert scopes['control']['beforeSourceSha256'] == scopes['control']['sourceSha256']
for number, name in [(1,'one-pixel'),(2,'two-pixel'),(3,'prefilter')]:
    scope, build = scopes[name],variants[name]
    assert scope['independentPixelOrigins'] and scope['originalTriangleOrder'] and scope['exactPhysicalSamples']
    assert scope['originalMeshes'] and scope['fullShading'] and not scope['temporalCache']
    assert scope['beforeSourceSha256'] == scopes['control']['sourceSha256']
    assert scope['microExtent'] == (1 if number == 1 else 2)
    assert scope.get('preparedAdmissionMask',False) == (number == 3)
    for kind in ('contracts','micro'):
        suffix = '-fixed' if number == 1 and kind == 'micro' else ''
        path = validation / 'checks' / f'{kind}-v{number}{suffix}'
        receipt = read(path / 'receipt.json')
        assert receipt['passed'] and receipt['simdBits'] == 128
        assert receipt['sourceManifestSha256'] == build['sourceManifestSha256']
        key = 'librarySha256' if kind == 'contracts' else 'measuredLibrarySha256'
        assert receipt[key] == build['librarySha256']
        assert receipt['recipeSha256'] == {p.name:digest(p) for p in (path / 'recipe').iterdir()}
        for row in receipt['runs']:
            assert row['exitCode'] == 0
            fixture = row.get('kind',row.get('name'))+'.c'
            assert row['fixtureSha256'] == digest(path / 'recipe' / fixture)
            if kind == 'micro':
                assert '792 independent full-plane pairs' in row['stdout']
    path = validation / 'checks' / f'census-v{number}'
    census = read(path / 'receipt.json')
    assert not census['performanceAcceptance'] and census['sourceManifestSha256'] == build['sourceManifestSha256']
    assert census['runnerSha256'] == digest(path / 'recipe/census.py')
    assert census['recipeSha256'] == {p.name:digest(p) for p in (path / 'recipe').iterdir()}
    assert 'SOFTGL_INDEPENDENT_MICRO_AUDIT' in (path / 'recipe/CMakeLists.txt').read_text()
    assert len(census['records']) == 4
    for row in census['records']:
        assert row['groupFraction'] == row['groups']/row['packetCalls']
        assert row['eligibleGroups'] >= row['groups']
    assert census['contract']['exitCode'] == (1 if number == 1 else 0)
    if number > 1:
        quality = read(validation / (name+'-quality.json'))
        assert quality['binarySha256']['baseline'] == variants['control']['binarySha256']['quality_candidate']
        assert quality['driverSha256'] == scope['recipeSha256']['quality_frames.c']
        timing = read(validation / 'timings' / f'screen-v{number}' / 'receipt.json')
        assert timing['baselineSha256'] == variants['control']['binarySha256']['resident_candidate']
        assert timing['candidateSha256'] == build['binarySha256']['resident_candidate']
        for asset in ('bmw','t80','sponza','bistro'):
            rows = [r for r in timing['records'] if r.get('accepted') and r['asset'] == asset]
            assert len(rows) == 4
            for field in ('rgba','depth','stencil','sampleDepth','sampleStencil'):
                assert len({r[field] for r in rows}) == 1
for platform in ('wasm','sanitize'):
    path = validation / 'checks' / (platform+'-v3')
    receipt = read(path / 'receipt.json')
    assert receipt['passed'] and receipt['platform'] == platform and receipt['simdBits'] == 128
    assert receipt['sourceManifestSha256'] == variants['prefilter']['sourceManifestSha256']
    scope = scopes['prefilter']
    assert receipt['sourcesSha256'] == {k.removeprefix('libsoftgl/'):v
        for k,v in scope['sourceSha256'].items() if k.startswith('libsoftgl/')}
    assert receipt['measuredKernelSha256'] == scope['sourceSha256']['libsoftgl/src/scene_visibility.c']
    assert receipt['runnerSha256'] == digest(path / 'recipe/platform_gates.py')
    assert receipt['recipeSha256'] == {p.name:digest(p) for p in (path / 'recipe').iterdir()}
    assert len(receipt['runs']) == 1
    row = receipt['runs'][0]
    assert row['kind'] == 'micro' and row['exitCode'] == 0 and not row['stderr']
    assert row['fixtureSha256'] == digest(path / 'recipe/micro.c')
    assert '792 independent full-plane pairs' in row['stdout']
    if platform == 'wasm':
        assert '-msimd128' in receipt['engineCompileCommand']
        assert '-sMAXIMUM_MEMORY=4294967296' in receipt['linkCommands']['micro']
    else:
        assert '-fsanitize=address,undefined' in (path / 'recipe/CMakeLists.txt').read_text()
parent = read(validation / 'checks/parent-fixture-failure/receipt.json')
failed = read(validation / 'checks/micro-v1/receipt.json')
assert parent['exitCode'] == failed['runs'][0]['exitCode'] == 1
assert parent['fixtureSha256'] == failed['runs'][0]['fixtureSha256']
assert parent['librarySha256'] == variants['control']['librarySha256']
assert 'softgl_scene_visibility_begin()' in parent['stderr']
before = read(validation / 'checks/census-v2/receipt.json')['records']
after = read(validation / 'checks/census-v3/receipt.json')['records']
for a,b in zip(before,after):
    for field in ('asset','packSha256','groups','triangles','samples','packetCalls','groupFraction'):
        assert a[field] == b[field]
print('Independent micro kernels: real libraries, 216 model pairs, sample fixtures, census, WASM/sanitizer and raw screens verified')
