#!/usr/bin/env python3
"""Verify exact sample-mask trials, native/WASM evidence and raw failed screens."""
import hashlib
import json
from pathlib import Path
import subprocess

experiment = Path(__file__).resolve().parent
validation = experiment / 'validation'
read = lambda p: json.loads(p.read_text())
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
subprocess.run(['python3',str(validation / 'archive_recipe.py'),'verify',str(experiment)],check=True)
control_scope = read(validation / 'variants/control/source.json')
control = read(validation / 'variants/control/build.json')
assert control_scope['beforeSourceSha256'] == control_scope['sourceSha256']
names = {1:'maintained',2:'direct',3:'outlined'}
scopes, builds = {}, {}
for number, name in names.items():
    path = validation / 'variants' / name
    scope, build = read(path / 'source.json'), read(path / 'build.json')
    scopes[number], builds[number] = scope, build
    assert scope['beforeSourceSha256'] == control_scope['sourceSha256']
    assert scope['partialCellHiz'] and scope['exactGeometryDepth'] and scope['currentGeometrySamples']
    assert scope['originalMeshes'] and scope['originalTextures'] and scope['fullShading']
    assert not scope['temporalCache'] and not scope['oldRenderedDataReused'] and scope['extraStateBytes'] == 0
    assert scope.get('queryLocalBound',False) == (number > 1)
    assert scope.get('outlinedPartialQuery',False) == (number == 3)
    for kind in ('contracts','partial','hierarchy'):
        p = validation / 'checks' / f'{kind}-v{number}'
        gate = read(p / 'receipt.json')
        assert gate['passed'] and gate['simdBits'] == 128
        assert gate['sourceManifestSha256'] == build['sourceManifestSha256']
        assert gate['recipeSha256'] == {f.name:digest(f) for f in (p / 'recipe').iterdir()}
        key = 'measuredLibrarySha256' if kind == 'partial' else 'librarySha256'
        assert gate[key] == build['librarySha256']
        if kind == 'hierarchy':
            assert gate['exitCode'] == 0 and not gate['stderr']
            assert gate['fixtureSha256'] == digest(p / 'recipe/hierarchical_depth.c')
            assert '1048576 numerical bounds' in gate['stdout']
        else:
            for row in gate['runs']:
                assert row['exitCode'] == 0 and not row['stderr']
                name = row['kind']+('_contract' if kind == 'partial' else '')+'.c'
                assert row['fixtureSha256'] == digest(p / 'recipe' / name)
                if kind == 'partial':
                    assert ('24880 queries/281 positive' if row['kind'] == 'mask' else '216 fresh full-plane pairs') in row['stdout']
    p = validation / 'checks' / f'quality-v{number}'
    quality, alpha = read(p / 'receipt.json'), read(p / 'alpha-audit.json')
    assert quality['passed'] and quality['pairedViews'] == len(quality['records']) == 36
    assert quality['partialCellHiz'] and not quality['renderedHistoryReused'] and quality['alphaPlanesMeasured']
    assert quality['sourceManifest'] == scope
    assert quality['runnerSha256'] == digest(p / 'recipe/check_quality.py')
    assert quality['driverSha256'] == scope['recipeSha256']['quality_frames.c']
    assert quality['binarySha256'] == dict(baseline=control['binarySha256']['quality_candidate'],
        candidate=build['binarySha256']['quality_candidate'])
    assert alpha['passed'] and alpha['qualityReceiptSha256'] == digest(p / 'receipt.json')
    assert alpha['runnerSha256'] == digest(p / 'recipe/audit_alpha.py')
    assert alpha['binarySha256'] == quality['binarySha256'] and len(alpha['records']) == 36
    assert {(r['asset'],r['samples'],r['angle']) for r in quality['records']} == {
        (a,4,angle) for a in ('bistro','sponza','bmw','t80')
        for angle in (0,45,90,135,160,180,225,270,315)}
    for row, planes in zip(quality['records'],alpha['records']):
        assert (row['asset'],row['samples'],row['angle']) == (planes['asset'],planes['samples'],planes['angle'])
        assert row['physicalPlanesExact'] and row['depthBuffersByteIdentical'] and row['alphaPlanesByteIdentical']
        assert row['rgbaByteIdentical'] and row['meanAbsoluteChannelError'] == row['maxChannelError'] == 0
        for field in ('rgba','depth','stencil','sampleDepth','sampleStencil'):
            assert row['reference'][field] == row['candidate'][field]
        for suffix, samples in [('alpha',1),('sample-alpha',4)]:
            plane = planes['planes'][suffix]
            assert plane['byteIdentical'] and plane['bytes'] == 640*360*samples
            assert plane['sha256']['baseline'] == plane['sha256']['candidate']
    timing = read(validation / 'timings' / f'screen-v{number}' / 'receipt.json')
    assert timing['baselineSha256'] == control['binarySha256']['resident_candidate']
    assert timing['candidateSha256'] == build['binarySha256']['resident_candidate']
    for asset in ('bistro','sponza','bmw','t80'):
        rows = [r for r in timing['records'] if r.get('accepted') and r['asset'] == asset]
        assert len(rows) == 4 and all(r['samples'] == 4 for r in rows)
        for field in ('rgba','depth','stencil','sampleDepth','sampleStencil'):
            assert len({r[field] for r in rows}) == 1
p = validation / 'checks/wasm-v2'
wasm = read(p / 'receipt.json')
assert wasm['passed'] and wasm['platform'] == 'wasm' and wasm['simdBits'] == 128
assert wasm['sourceManifestSha256'] == builds[2]['sourceManifestSha256']
assert wasm['sourcesSha256'] == {k.removeprefix('libsoftgl/'):v
    for k,v in scopes[2]['sourceSha256'].items() if k.startswith('libsoftgl/')}
assert wasm['runnerSha256'] == digest(p / 'recipe/platform_gates.py')
assert wasm['recipeSha256'] == {f.name:digest(f) for f in (p / 'recipe').iterdir()}
assert '-msimd128' in wasm['engineCompileCommand'] and '-DSOFTGL_PARTIAL_QUERY_LOCAL' in wasm['engineCompileCommand']
assert {r['kind'] for r in wasm['runs']} == {'mask','sequence'}
for row in wasm['runs']:
    assert row['exitCode'] == 0 and not row['stderr']
    assert row['fixtureSha256'] == digest(p / 'recipe' / (row['kind']+'.c'))
    assert '-sMAXIMUM_MEMORY=4294967296' in wasm['linkCommands'][row['kind']]
    assert ('24880 queries/281 positive' if row['kind'] == 'mask' else '216 fresh full-plane pairs') in row['stdout']
p = validation / 'checks/census-v2-ready'
census = read(p / 'receipt.json')
assert census['passed'] and not census['performanceAcceptance']
assert census['sourceManifestSha256'] == builds[2]['sourceManifestSha256']
assert census['runnerSha256'] == digest(p / 'recipe/census.py')
assert census['recipeSha256'] == {f.name:digest(f) for f in (p / 'recipe').iterdir()}
assert len(census['records']) == 4
for row in census['records']:
    assert len(row['frameStats']) == 31
    counts = row['partial']
    assert counts['cellQueries'] > counts['rectangleWritten'] > counts['wholeQueryRejects'] > 0
    assert counts['cellDepthPass'] >= counts['wholeQueryRejects']
comparison = read(p / 'comparison.json')
baseline_path = experiment.parent / 'scene-temporal-visibility-priority/validation/checks/census-v1/receipt.json'
baseline = read(baseline_path)
assert comparison['baselineReceiptSha256'] == digest(baseline_path)
assert comparison['candidateReceiptSha256'] == digest(p / 'receipt.json')
assert comparison['baselineSourceManifestSha256'] == control['sourceManifestSha256']
for row in comparison['records']:
    before = next(r for r in baseline['records'] if r['asset'] == row['asset'] and r['variant'] == 'baseline')
    after = next(r for r in census['records'] if r['asset'] == row['asset'])
    assert row['depthWritesExactPerFrame'] and row['frames'] == 31
    assert before['packSha256'] == after['packSha256'] == row['packSha256']
    assert before['camera'] == after['camera'] == row['camera'] and before['request'] == after['request']
    assert row['baselinePacket'] == before['packet'] and row['candidatePacket'] == after['packet']
    assert all(a['depthPasses'] == b['depthPasses'] for a,b in zip(before['frameStats'],after['frameStats']))
assert 'unknown type name' in (validation / 'checks/census-v2/build.log').read_text()
assert '${SCENE_TRIAL_ROOT}/recipe/resident_trial.c' in (validation / 'checks/census-v2-fixed/recipe/CMakeLists.txt').read_text()
assert '${CMAKE_CURRENT_SOURCE_DIR}/resident_trial.c' in (p / 'recipe/CMakeLists.txt').read_text()
print('Partial-cell Hi-Z: frozen SIMD128 libraries, 108 exact model pairs/real alpha, native oracles, actual WASM, census and raw screens verified')
