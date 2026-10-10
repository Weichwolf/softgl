#!/usr/bin/env python3
"""Verify approximation scopes and the separately instrumented visit census."""
import hashlib
import io
import json
from pathlib import Path
import subprocess
import tarfile
import tempfile

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
validation = experiment/'validation'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
subprocess.run(['python3', str(validation/'archive_recipe.py'), 'verify',
                str(experiment)], check=True)
builds = {name:read(validation/'variants'/name/'build.json')
    for name in ('control', 'inline', 'outlined')}
control = read(validation/'variants/control/source.json')
assert control['sourceSha256'] == control['beforeSourceSha256']
quality = []
for name, variant in (('quality-v1', 'inline'), ('quality-v2', 'outlined')):
    receipt = read(validation/name/'receipt.json')
    assert receipt['passed'] and receipt['assessmentOnly'] and not receipt['adopted']
    assert receipt['pairedViews'] == len(receipt['records']) == 36
    assert receipt['sourceManifestSha256'] == builds[variant]['sourceManifestSha256']
    assert receipt['binarySha256']['candidate'] == builds[variant]['binarySha256']['quality_candidate']
    assert receipt['binarySha256']['baseline'] == builds['control']['binarySha256']['quality_candidate']
    assert receipt['referenceReceiptSha256'] == digest(validation/'reference/receipt.json')
    assert receipt['runnerSha256'] == digest(validation/'check_direct.py')
    assert not receipt['alphaMeasured'] and receipt['allWithinExploratoryBudget']
    assert {r['asset'] for r in receipt['records']} == {'bmw', 't80', 'sponza', 'bistro'}
    for row in receipt['records']:
        assert row['samples'] == 4 and row['stencilExact']
        for plane in row['depthPlanes'].values():
            assert plane['finiteInRange'] and plane['maxAbsoluteError'] <= 2e-6
            assert plane['missingCoveredValues'] == plane['extraCoveredValues'] == 0
    quality.append(receipt)
reference = read(validation/'reference/receipt.json')
assert digest(validation/'reference/receipt.json') == digest(
    repo/'experiments/scene-msaa-guarded-depth-planes/validation/exact_v4-quality.json')
assert reference['sourceManifest']['beforeSourceSha256'] == control['sourceSha256']
assert reference['binarySha256']['baseline'] == builds['control']['binarySha256']['quality_candidate']
assert reference['passed'] and reference['pairedViews'] == len(reference['records']) == 108
assert all(r['allExportedPlanesExact'] for r in reference['records'])
for a,b in zip(quality[0]['records'], quality[1]['records']):
    assert (a['asset'], a['samples'], a['angle']) == (b['asset'], b['samples'], b['angle'])
    assert a['candidate'] == b['candidate'] and a['depthPlanes'] == b['depthPlanes']

path = validation/'exact-contract-v2'
receipt = read(path/'receipt.json')
assert not receipt['passed'] and receipt['simdBits'] == 128
assert receipt['sourceManifestSha256'] == builds['outlined']['sourceManifestSha256']
assert receipt['librarySha256'] == builds['outlined']['librarySha256']
assert [(r['kind'], r['exitCode']) for r in receipt['runs']] == [
    ('scene_material_merge', 0), ('scene_positions', 1)]
assert 'memcmp(a->fb.depth,b->fb.depth' in receipt['runs'][1]['stderr']
for row in receipt['runs']:
    assert row['fixtureSha256'] == digest(path/'recipe'/(row['kind']+'.c'))

path = validation/'census'
receipt = read(path/'receipt.json')
assert receipt['diagnosticOnly'] and receipt['instrumentation'] and not receipt['performanceAcceptance']
assert receipt['parentMeasuredSourceManifestSha256'] == builds['outlined']['sourceManifestSha256']
assert receipt['parentMeasuredBinarySha256'] == builds['outlined']['binarySha256']['resident_candidate']
assert receipt['runnerSha256'] == digest(path/'recipe/census.py')
assert receipt['recipeSha256'] == {p.name:digest(p) for p in (path/'recipe').iterdir()}
assert '-DCMAKE_C_FLAGS=-DSOFTGL_MSAA_VISIBILITY_AUDIT' in receipt['configureCommand']
with tempfile.TemporaryDirectory() as directory:
    source = Path(directory)
    data = subprocess.check_output(['git', 'archive', control['parentRevision'],
        'libsoftgl', 'wasm/model_wrap.c'], cwd=repo)
    with tarfile.open(fileobj=io.BytesIO(data)) as files:
        files.extractall(source, filter='data')
    (source/'wasm/model_wrap.c').rename(source/'model_wrap.c'); (source/'wasm').rmdir()
    target = source/'libsoftgl/src/scene_visibility.c'
    target.write_bytes((path/'scene_visibility.c').read_bytes())
    assert receipt['instrumentedSourceSha256'] == {str(p.relative_to(source)):digest(p)
        for p in source.rglob('*') if p.is_file()}
for row in receipt['records']:
    assert row['request'] == '4 0 1 160 -'
    assert [r['angle'] for r in row['counts']] == [0,160]
    for counts in row['counts']:
        assert counts['pixels'] > 0 and counts['pixels'] % 4 == 0
        assert counts['pixels'] <= counts['specializedCandidatePixels']
    endpoint = json.loads(row['stdout'].splitlines()[-1])
    expected = next(r['candidate'] for r in quality[1]['records']
        if r['asset'] == row['asset'] and r['angle'] == 160)
    assert endpoint['threads'] == endpoint['samples'] == 4
    for field in ('rgba', 'depth', 'stencil', 'sampleDepth', 'sampleStencil'):
        assert endpoint[field] == expected[field]
print('Both approximation assessments, unchanged-fixture failure and untimed batch census verified')
