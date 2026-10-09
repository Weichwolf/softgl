#!/usr/bin/env python3
"""Verify the removed product paths, exact frame controls and measured scope."""
import hashlib
import io
import json
from pathlib import Path
import statistics
import subprocess
import tarfile
import tempfile

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
validation = experiment/'validation'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
read = lambda p: json.loads(p.read_text())
assert read(experiment/'artifacts.json') == {str(p.relative_to(experiment)):digest(p)
    for p in sorted(experiment.rglob('*'))
    if p.is_file() and p.name != 'artifacts.json' and '__pycache__' not in p.parts}
scope = read(validation/'validation.json')
assert scope['passed'] and scope['nativeTestsPassed'] == 759 and scope['nativeTestsFailed'] == 0
assert not scope['regularTolerancesChanged'] and not scope['performanceGainClaimed']
with tempfile.TemporaryDirectory() as directory:
    source = Path(directory)
    archive = subprocess.check_output(['git', 'archive', scope['parentRevision'], 'libsoftgl',
        'wasm/model_wrap.c', 'wasm/lod.inc', 'wasm/cluster_load.inc', 'wasm/index.html',
        'wasm/main.js', 'wasm/CMakeLists.txt', 'tests/CMakeLists.txt', 'tests/scene_positions.c',
        'tests/scene_coarse.c'], cwd=repo)
    with tarfile.open(fileobj=io.BytesIO(archive)) as files:
        files.extractall(source, filter='data')
    subprocess.run(['git', 'apply', str(validation/'withdrawal.patch')], cwd=source, check=True)
    for name, expected in scope['productSourceSha256'].items():
        assert digest(source/name) == expected, name
    assert not any((source/name).exists() for name in ('libsoftgl/src/scene_coarse_types.h',
        'libsoftgl/src/scene_coarse_impl.inc', 'wasm/lod.inc', 'wasm/cluster_load.inc', 'tests/scene_coarse.c'))
    manifest = read(validation/'source.json')
    actual = {str(p.relative_to(source)):digest(p) for p in sorted((source/'libsoftgl').rglob('*')) if p.is_file()}
    actual['model_wrap.c'] = digest(source/'wasm/model_wrap.c')
    assert actual == manifest['sourceSha256']
native = read(validation/'native-quality.json')
assert native['passed'] and native['pairedViews'] == len(native['records']) == 108
assert native['sourceManifest'] == manifest
assert native['runnerSha256'] == digest(experiment/'check_quality.py')
for row in native['records']:
    assert row['allExportedPlanesExact']
    for name in ('rgba', 'depth', 'stencil', 'sampleDepth', 'sampleStencil'):
        assert row['reference'][name] == row['candidate'][name]
browser = read(validation/'browser-models.json')
assert browser['passed'] and browser['pairedViews'] == 108 and len(browser['records']) == 12
assert browser['fullRgbaByteIdentical'] and browser['selectorsAndExportsRemoved'] and not browser['errors']
assert browser['runnerSha256'] == digest(validation/'recipe/wasm_full_model_check.cjs')
assert browser['peakHeapBytes'] < 4294967296
for row in browser['records']:
    assert row['workers'] == 3 and row['removedExports'] and len(row['frames']) == 9
preview = read(validation/'preview.json')
assert preview['passed'] and preview['displayedTests'] == 234 and not preview['errors']
assert preview['wasmSha256'] == browser['httpSha256']['softgl.wasm']
assert preview['threads'] == '4 (3 workers + main thread)'
for name in ('native-isa.json', 'control-isa.json'):
    isa = read(validation/name)
    assert isa['passed'] and not isa['wideRegisters'] and not isa['avxInstructions']
if not scope['nativeTimingsPending']:
    timing = read(validation/'native-timings/receipt.json')
    assert not timing['screeningOnly'] and timing['driverSha256'] == digest(validation/'native-recipe/resident_trial.c')
    assert timing['candidateWrapperSha256'] == manifest['sourceSha256']['model_wrap.c']
    assert timing['candidateSourcesSha256'] == {name.removeprefix('libsoftgl/'):value
        for name, value in manifest['sourceSha256'].items() if name.startswith('libsoftgl/')}
    rows = [row for row in timing['records'] if row.get('accepted')]
    assert len(rows) == 144
    assert all(row['threads'] == 4 and row['foreignCpuCores'] <= .1 for row in rows)
    for summary in read(validation/'native-timings/summary.json'):
        selected = [row for row in rows if (row['asset'], row['samples']) == (summary['asset'], summary['samples'])]
        assert len(selected) == 12 and summary['angle160RgbByteIdentical']
        medians = {variant:statistics.median(row['ms'] for row in selected if row['variant'] == variant)
            for variant in ('baseline', 'candidate')}
        assert medians == summary['mediansMs']
    for asset in ('bmw', 'bistro'):
        profile = read(validation/f'profile-{asset}/receipt.json')
        assert profile['measuredWithProfiler'] and not profile['performanceAcceptance']
        assert profile['width'] == 640 and profile['height'] == 360 and profile['threads'] == 4
        for row in profile['records']:
            assert row['binarySha256'] == timing['candidateSha256']
            assert row['reportSha256'] == digest(validation/f'profile-{asset}'/(row['variant']+'-report.txt'))
print('Removed product paths, 759 native tests, 108 native and 108 browser exact model pairs verified.')
