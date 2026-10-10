#!/usr/bin/env python3
"""Bind ordering-only history, actual planes, platform gates and failed screens."""
import hashlib
import json
from pathlib import Path
import subprocess

experiment = Path(__file__).resolve().parent
validation = experiment / 'validation'
read = lambda p: json.loads(p.read_text())
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
subprocess.run(['python3',str(validation / 'archive_recipe.py'),'verify',str(experiment)],check=True)
names = {0:'zero-budget',1:'triangle',2:'narrow',3:'small',4:'representative'}
scopes = {n:read(validation / 'variants' / name / 'source.json') for n,name in names.items()}
builds = {n:read(validation / 'variants' / name / 'build.json') for n,name in names.items()}
control_scope = read(validation / 'variants/control/source.json')
control_build = read(validation / 'variants/control/build.json')
assert control_scope['beforeSourceSha256'] == control_scope['sourceSha256']
for number in names:
    scope, build = scopes[number], builds[number]
    assert scope['beforeSourceSha256'] == control_scope['sourceSha256']
    assert scope['originalMeshes'] and scope['originalTextures'] and scope['fullShading']
    assert scope['temporalOrderPrediction'] and scope['currentGeometrySamples']
    assert not scope['oldRenderedDataReused']
    assert scope['historyBytes'] == (0 if number == 0 else 131072 if number >= 3 else 1048576)
    for kind in ('contracts','temporal'):
        path = validation / 'checks' / f'{kind}-v{number}'
        gate = read(path / 'receipt.json')
        assert gate['passed'] and gate['simdBits'] == 128
        assert gate['sourceManifestSha256'] == build['sourceManifestSha256']
        key = 'librarySha256' if kind == 'contracts' else 'measuredLibrarySha256'
        assert gate[key] == build['librarySha256']
        assert gate['recipeSha256'] == {p.name:digest(p) for p in (path / 'recipe').iterdir()}
        for row in gate['runs']:
            assert row['exitCode'] == 0
            fixture = row.get('kind',row.get('name'))+'.c'
            assert row['fixtureSha256'] == digest(path / 'recipe' / fixture)
            if kind == 'temporal':
                assert '216 fresh full-plane pairs' in row['stdout']
    if number >= 2:
        timing = read(validation / 'timings' / f'screen-v{number}' / 'receipt.json')
        assert timing['baselineSha256'] == control_build['binarySha256']['resident_candidate']
        assert timing['candidateSha256'] == build['binarySha256']['resident_candidate']
        for asset in ('bistro','sponza','bmw','t80'):
            rows = [r for r in timing['records'] if r.get('accepted') and r['asset'] == asset]
            assert len(rows) == 4 and all(r['samples'] == 4 for r in rows)
            for field in ('depth','stencil','sampleDepth','sampleStencil'):
                assert len({r[field] for r in rows}) == 1
for number in (1,2):
    path = validation / 'checks' / f'quality-v{number}'
    quality, alpha = read(path / 'receipt.json'), read(path / 'alpha-audit.json')
    assert quality['passed'] and quality['pairedViews'] == len(quality['records']) == 36
    assert quality['approximateOpaqueOrder'] and quality['temporalOrderPrediction']
    assert not quality['renderedHistoryReused'] and quality['alphaPlanesMeasured']
    assert quality['sourceManifest'] == scopes[number]
    assert quality['runnerSha256'] == digest(path / 'recipe/check_quality.py')
    assert quality['driverSha256'] == scopes[number]['recipeSha256']['quality_frames.c']
    assert quality['binarySha256'] == dict(baseline=control_build['binarySha256']['quality_candidate'],
        candidate=builds[number]['binarySha256']['quality_candidate'])
    assert alpha['passed'] and alpha['qualityReceiptSha256'] == digest(path / 'receipt.json')
    assert alpha['runnerSha256'] == digest(path / 'recipe/audit_alpha.py')
    assert alpha['binarySha256'] == quality['binarySha256'] and len(alpha['records']) == 36
    assert {(r['asset'],r['samples'],r['angle']) for r in quality['records']} == {
        (a,4,angle) for a in ('bistro','sponza','bmw','t80')
        for angle in (0,45,90,135,160,180,225,270,315)}
    for row, planes in zip(quality['records'],alpha['records']):
        assert (row['asset'],row['samples'],row['angle']) == (planes['asset'],planes['samples'],planes['angle'])
        assert row['physicalPlanesExact'] and row['depthBuffersByteIdentical'] and row['alphaPlanesByteIdentical']
        for field in ('depth','stencil','sampleDepth','sampleStencil'):
            assert row['reference'][field] == row['candidate'][field]
        for suffix,samples in [('alpha',1),('sample-alpha',4)]:
            plane = planes['planes'][suffix]
            assert plane['byteIdentical'] and plane['bytes'] == 640*360*samples
            assert plane['sha256']['baseline'] == plane['sha256']['candidate']
for platform in ('wasm','sanitize'):
    path = validation / 'checks' / (platform+'-v2')
    gate = read(path / 'receipt.json')
    assert gate['passed'] and gate['platform'] == platform and gate['simdBits'] == 128
    assert gate['sourceManifestSha256'] == builds[2]['sourceManifestSha256']
    assert gate['sourcesSha256'] == {k.removeprefix('libsoftgl/'):v
        for k,v in scopes[2]['sourceSha256'].items() if k.startswith('libsoftgl/')}
    assert gate['measuredKernelSha256'] == scopes[2]['sourceSha256']['libsoftgl/src/scene_visibility.c']
    assert gate['runnerSha256'] == digest(path / 'recipe/platform_gates.py')
    assert gate['recipeSha256'] == {p.name:digest(p) for p in (path / 'recipe').iterdir()}
    assert len(gate['runs']) == 1
    row = gate['runs'][0]
    assert row['kind'] == 'temporal' and row['exitCode'] == 0 and not row['stderr']
    assert row['fixtureSha256'] == digest(path / 'recipe/temporal.c')
    assert '216 fresh full-plane pairs' in row['stdout']
    if platform == 'wasm':
        assert '-msimd128' in gate['engineCompileCommand']
        assert '-sMAXIMUM_MEMORY=4294967296' in gate['linkCommands']['temporal']
    else:
        assert '-fsanitize=address,undefined' in (path / 'recipe/CMakeLists.txt').read_text()
path = validation / 'checks/census-v1'
census = read(path / 'receipt.json')
assert census['passed'] and not census['performanceAcceptance']
assert census['width'] == 640 and census['height'] == 360 and census['threads'] == 4
assert census['builds']['baseline']['sourceManifestSha256'] == control_build['sourceManifestSha256']
assert census['builds']['candidate']['sourceManifestSha256'] == builds[1]['sourceManifestSha256']
assert census['runnerSha256'] == digest(path / 'recipe/census.py')
assert census['recipeSha256'] == {p.name:digest(p) for p in (path / 'recipe').iterdir()}
assert len(census['records']) == 8
for row in census['records']:
    assert len(row['frameStats']) == 31
    if row['variant'] == 'candidate':
        counts = row['history']
        assert counts['referenceQueries'] > counts['referenceHits'] > 0
        assert counts['triangleProbes'] >= counts['referenceQueries']
        assert counts['visibleMarks'] > 0 and counts['collections'] == 31
        assert counts['bytesCleared'] == 31*1048576
assert census['contract']['exitCode'] == 0 and not census['contract']['stderr']
assert 'Actual predictor:' in census['contract']['stdout']
print('History ordering: frozen sources, five native fixtures, real alpha/depth planes, WASM/sanitizer and three raw screens verified')
