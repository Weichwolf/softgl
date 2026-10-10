#!/usr/bin/env python3
"""Bind measured libraries, exact original fixtures and extracted arithmetic."""
import hashlib
import json
from pathlib import Path
import re
import subprocess

experiment = Path(__file__).resolve().parent
validation = experiment / 'validation'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
subprocess.run(['python3', str(validation / 'archive_recipe.py'), 'verify', str(experiment)], check=True)
control = validation / 'checks/control'
binding = read(control / 'binding.json')
assert binding['sourceManifestSha256'] == digest(control / 'source.json')
isa = read(control / 'isa.json')
assert isa['passed'] and isa['objects']['driver']['sha256'] == binding['residentBinarySha256']
assert isa['librarySha256'] == binding['librarySha256']
builds = {}
for version, name in [(2, 'span-tail'), (3, 'small-proof')]:
    variant = validation / 'variants' / name
    build = builds[version] = read(variant / 'build.json')
    scope = read(variant / 'source.json')
    assert scope['shortCoverage'] and scope['exactDepth']
    assert scope.get('smallBoxProof', False) == (version == 3)
    assert scope['originalMeshes'] and scope['fullShading'] and not scope['temporalCache']
    assert scope['additionalBytesPerPixel'] == 0
    assert read(control / 'source.json')['sourceSha256'] == scope['beforeSourceSha256']
    for kind in ('contracts', 'hierarchy', 'arithmetic', 'small'):
        path = validation / 'checks' / (kind + '-v' + str(version))
        receipt = read(path / 'receipt.json')
        assert receipt['passed'] and receipt['simdBits'] == 128
        assert receipt['sourceManifestSha256'] == build['sourceManifestSha256']
        assert receipt['recipeSha256'] == {p.name: digest(p) for p in (path / 'recipe').iterdir()}
        if kind != 'arithmetic':
            assert receipt['librarySha256'] == build['librarySha256']
        if kind == 'contracts':
            assert [r['kind'] for r in receipt['runs']] == [
                'scene_material_merge', 'scene_positions', 'scene_msaa', 'scene_coverage']
            for row in receipt['runs']:
                assert row['exitCode'] == 0
                assert row['fixtureSha256'] == digest(path / 'recipe' / (row['kind'] + '.c'))
        elif kind == 'hierarchy':
            assert receipt['exitCode'] == 0
            assert receipt['fixtureSha256'] == digest(path / 'recipe/hierarchical_depth.c')
            assert '-fno-fast-math' in receipt['command'] and '-ffp-contract=off' in receipt['command']
        elif kind == 'arithmetic':
            assert receipt['exitCode'] == 0 and receipt['empirical'] and not receipt['universalProof']
            assert receipt['kernelSha256'] == scope['sourceSha256']['libsoftgl/src/scene_visibility.c']
            kernel = (variant / 'overrides/libsoftgl/src/scene_visibility.c').read_text()
            kernel = kernel[kernel.index('static int scene_short_msaa4('):kernel.index('int sg_scene_visibility_triangle(')]
            helper = (path / 'recipe/arithmetic_helper.inc').read_text()
            for start, end in [
                ('        int64_t x_delta = ', '        sg_i32x4 first = '),
                ('        sg_i32x4 first = ', '        step_x[e] = '),
                ('            sg_i32x4 signs = ', '            SCENE_SHORT_AUDIT(3,'),
                ('                sg_i32x4 q0 = ', '                sg_f32x4 b0 = '),
                ('        step_x[e] = ', '        step_y[e] = '),
                ('        step_y[e] = ', '        max_coarse[e] = ')]:
                a = kernel.index(start)
                assert kernel[a:kernel.index(end, a)] in helper
            if version == 3:
                assert '#define HAS_SMALL_PROOF 1' in helper
                assert '3122160 small-box corner checks PASS' in receipt['stdout']
        elif kind == 'small':
            assert receipt['pairedFrames'] == 576 and receipt['allPlanesExact']
            assert receipt['controlSourceManifestSha256'] == binding['sourceManifestSha256']
            assert receipt['controlLibrarySha256'] == binding['librarySha256']
            original = (path / 'recipe/small_contract.c').read_text()
            assert (path / 'recipe/counted_small.c').read_text() == original.replace(
                'int main(void) {', 'int original_small_main(void) {', 1)
            frames = []
            for row in receipt['runs']:
                assert row['exitCode'] == 0
                fixture = 'dispatch.c' if row['name'] == 'counted' else 'small_contract.c'
                assert row['fixtureSha256'] == digest(path / 'recipe' / fixture)
                values = [json.loads(line) for line in row['stdout'].splitlines() if line.startswith('{')]
                assert len(values) == 576
                frames.append(values)
            assert len(frames) == 3 and frames[0] == frames[1] == frames[2]
            counts = re.search(r'Actual small dispatch: (\d+) attempts, (\d+) range admissions, (\d+) range fallbacks, (\d+) real pixels, (\d+) depth-passing samples PASS', receipt['runs'][-1]['stdout'])
            assert counts and all(int(v) > 100 for v in counts.groups())
    path = validation / 'checks' / ('dispatch-v2-fixed' if version == 2 else 'dispatch-v3')
    receipt = read(path / 'receipt.json')
    assert receipt['passed'] and receipt['exitCode'] == 0
    assert receipt['sourceManifestSha256'] == build['sourceManifestSha256']
    assert receipt['measuredLibrarySha256'] == build['librarySha256']
    assert receipt['auditLibrarySha256'] == read(validation / 'checks' / ('small-v' + str(version)) / 'receipt.json')['auditLibrarySha256']
    assert receipt['recipeSha256'] == {p.name: digest(p) for p in (path / 'recipe').iterdir()}
    original = (path / 'recipe/scene_msaa.c').read_text()
    assert (path / 'recipe/counted_scene_msaa.c').read_text() == original.replace(
        'int main(void) {', 'int original_fixture_main(void) {', 1)
failure = validation / 'checks/dispatch-v2'
receipt = read(failure / 'failure.json')
assert not receipt['passed'] and receipt['stage'] == 'fixture-compilation'
assert receipt['measuredLibrarySha256'] == builds[2]['librarySha256']
assert receipt['recipeSha256'] == {p.name: digest(p) for p in (failure / 'recipe').iterdir()}
logs = read(failure / 'logs.json')
assert hashlib.sha256(logs['fixture-build.log'].encode()).hexdigest() == receipt['buildLogSha256']
assert 'error:' in logs['fixture-build.log']
path = validation / 'checks/census-v3'
receipt = read(path / 'receipt.json')
assert receipt['passed'] and receipt['diagnosticOnly'] and not receipt['performanceAcceptance']
assert receipt['allEndpointPlanesExact'] and len(receipt['records']) == 36
assert receipt['sourceManifestSha256'] == builds[3]['sourceManifestSha256']
assert receipt['librarySha256'] == builds[3]['librarySha256']
assert receipt['controlSourceManifestSha256'] == binding['sourceManifestSha256']
assert receipt['controlLibrarySha256'] == binding['librarySha256']
assert receipt['auditLibrarySha256'] == read(validation / 'checks/dispatch-v3/receipt.json')['auditLibrarySha256']
assert receipt['recipeSha256'] == {p.name: digest(p) for p in (path / 'recipe').iterdir()}
assert receipt['threads'] == 4 and receipt['samples'] == 4 and receipt['framesPerAngle'] == 2
for asset in ('bistro', 'sponza', 'bmw', 't80'):
    rows = [r for r in receipt['records'] if r['asset'] == asset]
    assert [r['baseline']['angle'] for r in rows] == receipt['angles']
    assert dict(zip(('attempts', 'admissions', 'rangeFallbacks', 'realPixels', 'passingSamples'),
        rows[-1]['cumulativeCounts'])) == receipt['counts'][asset]
    for row in rows:
        for key in ('rgba', 'depth', 'stencil', 'sampleDepth', 'sampleStencil'):
            assert row['baseline'][key] == row['candidate'][key]
path = validation / 'checks/paired-counters-v3'
receipt = read(path / 'receipt.json')
assert receipt['passed'] and receipt['diagnosticOnly'] and not receipt['performanceAcceptance']
assert receipt['runnerSha256'] == digest(validation / 'checks/paired_counters.py')
assert receipt['sourceManifestSha256']['baseline'] == binding['sourceManifestSha256']
assert receipt['sourceManifestSha256']['candidate'] == builds[3]['sourceManifestSha256']
assert receipt['binarySha256']['baseline'] == binding['residentBinarySha256']
assert receipt['binarySha256']['candidate'] == builds[3]['binarySha256']['resident_candidate']
assert [r['variant'] for r in receipt['records']] == ['baseline', 'candidate', 'candidate', 'baseline']
assert receipt['threads'] == 4 and receipt['samples'] == 4
logs = read(path / 'logs.json')
for name in ('baseline', 'candidate'):
    counters = receipt['counters'][name]
    assert hashlib.sha256(logs[name + '-counters.csv'].encode()).hexdigest() == counters['reportSha256']
    assert hashlib.sha256(logs[name + '-stderr.txt'].encode()).hexdigest() == counters['stderrSha256']
    for event in ('cycles:u', 'instructions:u', 'cache-misses:u'):
        row = next(r for r in counters['rows'] if r['event'] == event)
        assert row['raw'] in logs[name + '-counters.csv'].splitlines()
        assert float(row['value']) > 0 and float(row['runningPercent']) == 100
for field in ('rgba', 'depth', 'stencil', 'sampleDepth', 'sampleStencil'):
    assert len({r['result'][field] for r in receipt['records']}) == 1
for campaign in (validation / 'timings').iterdir():
    receipt = read(campaign / 'receipt.json')
    assert receipt['baselineSha256'] == binding['residentBinarySha256']
    accepted = [r for r in receipt['records'] if r.get('accepted')]
    for asset, samples in {(r['asset'], r['samples']) for r in accepted}:
        for field in ('rgba', 'depth', 'stencil', 'sampleDepth', 'sampleStencil'):
            assert len({r[field] for r in accepted if (r['asset'], r['samples']) == (asset, samples)}) == 1
print('Two exact short-edge variants, extracted arithmetic, 576 real plane pairs and screen endpoints verified')
