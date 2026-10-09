#!/usr/bin/env python3
"""Verify retained source identities and recompute measured trial medians."""
import hashlib
import io
import json
from pathlib import Path
import statistics
import subprocess
import tarfile
import tempfile

repo = Path(__file__).resolve().parents[2]
out = Path(__file__).parent/'native-validation'
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
index = json.loads((out/'artifacts.json').read_text())
actual = {str(p.relative_to(out)):digest(p) for p in sorted(out.rglob('*'))
    if p.is_file() and p.name != 'artifacts.json'}
assert actual == index
for version in ('v1', 'v2-packed', 'v3-amortized'):
    target = out/version
    manifest = json.loads((target/'manifest.json').read_text())
    revision = manifest['baseline']
    assert not manifest['productionAdopted']
    with tempfile.TemporaryDirectory() as directory:
        root = Path(directory)
        archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl', 'wasm/model_wrap.c',
            'wasm/lod.inc', 'wasm/cluster_load.inc'], cwd=repo)
        with tarfile.open(fileobj=io.BytesIO(archive)) as files:
            files.extractall(root, filter='data')
        for name in ('model_wrap.c', 'lod.inc', 'cluster_load.inc'):
            (root/name).write_bytes((root/'wasm'/name).read_bytes())
        (root/'baseline.txt').write_text(revision+'\n')
        baseline = {str(p.relative_to(root)):digest(p) for p in sorted(root.rglob('*')) if p.is_file()}
        cmake = root/'libsoftgl/CMakeLists.txt'
        baseline['libsoftgl/CMakeLists.txt'] = hashlib.sha256(cmake.read_text().replace('softgl', 'baseline_softgl').encode()).hexdigest()
        assert baseline == manifest['baselineSourceSha256']
        subprocess.run(['git', 'apply', '--unsafe-paths', str((target/'candidate.patch').resolve())],
            cwd=root, check=True, capture_output=True)
        candidate = {str(p.relative_to(root)):digest(p) for p in sorted(root.rglob('*')) if p.is_file()}
        assert candidate == manifest['sourceSha256']
        for name in ('attribute_planes.h', 'plane_packet.h'):
            if (root/'libsoftgl/src'/name).exists():
                assert (root/'libsoftgl/src'/name).read_bytes() == (target/'recipe'/name).read_bytes()
    isa = json.loads((target/'isa.json').read_text())
    assert isa['passed'] and len(isa['binaries']) == 7
    for binary in isa['binaries'].values():
        assert not binary['avxInstructions'] and not binary['wideRegisters'] and binary['xmmReferences']
    checks = json.loads((target/'contract.json').read_text())
    assert checks['comparisons'] == 327680 and checks['mixedMasks'] == 16 and checks['invalidFallbacks'] == 5
    assert 0 <= checks['maxAttributeError'] <= 8e-5
views = selected = 0
for run in sorted((out/'runs').iterdir()):
    if not (run/'receipt.json').exists(): continue
    receipt = json.loads((run/'receipt.json').read_text())
    if 'records' in receipt and 'binarySha256' in receipt:
        assert receipt['runnerSha256'] == digest(out/'drivers/check_quality.py')
        assert receipt['driverSha256'] == digest(out/'drivers/quality_frames.c')
        rows = receipt['records']; views += len(rows)
        for row in rows:
            assert row['stencilAndSampleStencilByteIdentical'] and row['resolvedDepth']['byteIdentical']
            if row['samples']: assert row['sampleDepth']['byteIdentical']
            assert row['maxChannelError'] <= 1
    elif 'records' in receipt and 'candidateSourcesSha256' in receipt:
        assert receipt['runnerSha256'] == digest(out/'drivers/resident_diagnostic.py')
        assert receipt['driverSha256'] == digest(out/'drivers/resident_trial.c')
        version = {'v1':'v1', 'v2':'v2-packed', 'v3':'v3-amortized'}[run.name.split('-')[0]]
        manifest = json.loads((out/version/'manifest.json').read_text())
        assert receipt['candidateWrapperSha256'] == manifest['sourceSha256']['model_wrap.c']
        assert receipt['baselineWrapperSha256'] == manifest['baselineSourceSha256']['model_wrap.c']
        assert receipt['candidateSourcesSha256'] == {k.removeprefix('libsoftgl/'):v
            for k, v in manifest['sourceSha256'].items() if k.startswith('libsoftgl/')}
        assert receipt['baselineSourcesSha256'] == {k.removeprefix('libsoftgl/'):v
            for k, v in manifest['baselineSourceSha256'].items() if k.startswith('libsoftgl/')}
        assert receipt['width'] == 640 and receipt['height'] == 360 and receipt['residentAssets']
        for summary in json.loads((run/'summary.json').read_text()):
            rows = [r for r in receipt['records'] if r.get('accepted') and
                r['asset'] == summary['asset'] and r['samples'] == summary['samples']]
            selected += len(rows)
            assert all(r['threads'] == 4 and r['width'] == 640 and r['height'] == 360 and
                r['foreignCpuCores'] <= .1 for r in rows)
            medians = {v:statistics.median(r['ms'] for r in rows if r['variant'] == v)
                for v in ('baseline', 'candidate')}
            assert medians == summary['mediansMs']
            assert abs((medians['candidate']/medians['baseline']-1)*100-summary['frameTimeChangePercent']) < 1e-10
    elif 'checks' in receipt and 'actualSimd128Wasm' in receipt:
        assert receipt['passed'] and not receipt['wholeSceneOrBrowserValidated']
        assert receipt['checks']['comparisons'] == 327680
assert views == 234
print(f'{views} native view pairs, {selected} selected native trials and frozen SIMD128 coefficient contracts verified.')
