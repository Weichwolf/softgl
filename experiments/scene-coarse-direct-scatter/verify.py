#!/usr/bin/env python3
"""Reconstruct actual trials and recompute retained measurements and gates."""
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
read = lambda p: json.loads(p.read_text())
assert read(out/'artifacts.json') == {str(p.relative_to(out)):digest(p)
    for p in sorted(out.rglob('*')) if p.is_file() and p.name != 'artifacts.json'}
versions = ('v1', 'v2-footprint', 'v3-compact-color', 'v4-representative-attributes', 'v5-clean')
manifests = {}
binary_hashes = set()
for version in versions:
    target = out/version; manifest = manifests[version.split('-')[0]] = read(target/'manifest.json')
    revision = manifest['baseline']
    with tempfile.TemporaryDirectory() as directory:
        root = Path(directory)
        archive = subprocess.check_output(['git', 'archive', revision, 'libsoftgl',
            'wasm/model_wrap.c', 'wasm/lod.inc', 'wasm/cluster_load.inc'], cwd=repo)
        with tarfile.open(fileobj=io.BytesIO(archive)) as files:
            files.extractall(root, filter='data')
        for name in ('model_wrap.c', 'lod.inc', 'cluster_load.inc'):
            (root/name).write_bytes((root/'wasm'/name).read_bytes())
        (root/'baseline.txt').write_text(revision+'\n')
        baseline = {str(p.relative_to(root)):digest(p) for p in sorted(root.rglob('*')) if p.is_file()}
        cmake = root/'libsoftgl/CMakeLists.txt'
        baseline['libsoftgl/CMakeLists.txt'] = hashlib.sha256(cmake.read_text().replace('softgl', 'baseline_softgl').encode()).hexdigest()
        assert baseline == manifest['baselineSourceSha256'], version
        subprocess.run(['git', 'apply', '--unsafe-paths', str((target/'candidate.patch').resolve())],
            cwd=root, capture_output=True, check=True)
        for p in (target/'source').rglob('*'):
            if p.is_file(): (root/p.relative_to(target/'source')).write_bytes(p.read_bytes())
        assert {str(p.relative_to(root)):digest(p) for p in root.rglob('*') if p.is_file()} == manifest['sourceSha256'], version
    isa = read(target/'isa.json'); assert isa['passed']
    for binary in isa['binaries'].values():
        assert not binary['avxInstructions'] and not binary['wideRegisters'] and binary['xmmReferences']
        binary_hashes.add(binary['sha256'])
    if (target/'contract.json').exists():
        fixture = read(target/'contract.json')
        assert fixture['pairedFrames'] == 216 and fixture['legacyCoarseAllPlanesExact']
views = 0; full_trials = 0
for run in sorted((out/'runs').iterdir()):
    if not (run/'receipt.json').exists(): continue
    receipt = read(run/'receipt.json')
    if 'binarySha256' in receipt:
        assert set(receipt['binarySha256'].values()) <= binary_hashes
        assert receipt['runnerSha256'] == digest(out/'drivers/check_quality.py')
        assert receipt['driverSha256'] == digest(out/'drivers/quality_frames.c')
        views += len(receipt['records'])
        for row in receipt['records']:
            assert row['resolvedDepth']['byteIdentical'] and row['stencilAndSampleStencilByteIdentical']
            if row['samples']: assert row['sampleDepth']['byteIdentical']
            if 'legacy' in run.name or 'disabled' in run.name: assert row['rgbaByteIdentical']
    elif 'candidateSourcesSha256' in receipt:
        manifest = manifests[run.name.split('-')[0]]
        assert receipt['runnerSha256'] == digest(out/'drivers/resident_diagnostic.py')
        assert receipt['driverSha256'] == digest(out/'drivers/resident_trial.c')
        assert receipt['candidateSha256'] in binary_hashes and receipt['baselineSha256'] in binary_hashes
        for variant, key in (('candidate','sourceSha256'), ('baseline','baselineSourceSha256')):
            if variant == 'baseline' and 'legacy-screen' in run.name: key = 'sourceSha256'
            assert receipt[variant+'WrapperSha256'] == manifest[key]['model_wrap.c']
            assert receipt[variant+'SourcesSha256'] == {k.removeprefix('libsoftgl/'):v
                for k,v in manifest[key].items() if k.startswith('libsoftgl/')}
        for summary in read(run/'summary.json'):
            rows = [r for r in receipt['records'] if r.get('accepted') and
                (r['asset'],r['samples']) == (summary['asset'],summary['samples'])]
            assert all(r['threads']==4 and r['width']==640 and r['height']==360 and r['foreignCpuCores']<=.1 for r in rows)
            medians = {v:statistics.median(r['ms'] for r in rows if r['variant']==v) for v in ('baseline','candidate')}
            assert medians == summary['mediansMs']
            assert abs((medians['candidate']/medians['baseline']-1)*100-summary['frameTimeChangePercent']) < 1e-10
            if run.name in ('v5-full','v5-complete-t80'): full_trials += len(rows)
    elif 'actualSimd128Wasm' in receipt and 'checks' in receipt:
        assert receipt['passed'] and not receipt['modelOrBrowserValidated']
        checks = receipt['checks']; phase = checks[0] if isinstance(checks,list) else checks
        assert phase['pairedFrames'] == 216
        if run.name.startswith('v5'):
            assert phase['depthAndStencilExact'] and phase['disabledColorExact']
            assert phase['capFallbackChecks']==6 and phase['rollbackEvents']==12
        else: assert phase['legacyCoarseAllPlanesExact']
        if run.name.startswith('v2'): assert checks[1]['physicalSamplePatterns']==65808
    elif 'actualSimd128Wasm' in receipt and 'records' in receipt:
        assert receipt['passed'] and not receipt['errors'] and len(receipt['records'])==48
        assert receipt['defaultShadingFull'] and receipt['ordinaryTestsUnaffectedBySelector']
        assert receipt['peakHeapBytes'] < 4294967296
        for row in receipt['records']:
            assert row['workers']==3 and row['isolated'] and len(row['frames'])==9
        quality = read(run/'quality.json')
        assert quality['pairedViews']==108 and quality['gateReceiptSha256']==digest(run/'receipt.json')
assert views == 612 and full_trials == 144
production = out/'runs/v5-production'
adoption = read(production/'adoption.json'); live = read(production/'live.json')
browser = read(out/'runs/v5-browser/receipt.json')
assert adoption['optionalOnly'] and adoption['defaultShadingFull'] and not adoption['liveUpdatePending']
assert adoption['tests'] == {'nativePassed':760, 'nativeFailed':0}
assert live['passed'] and live['ordinaryTestsPassed'] and not live['errors'] and live['workers']==3
assert live['runnerSha256'] == digest(Path(__file__).parent/'live_smoke.cjs')
for name in ('main.js', 'index.html'):
    assert digest(production/('viewer-'+name)) == live['httpSha256'][name] == adoption['uiSha256'][name]
    assert adoption['sourceSha256']['wasm/'+name] == adoption['uiSha256'][name]
assert digest(production/'viewer-CMakeLists.txt') == adoption['sourceSha256']['wasm/CMakeLists.txt']
for suffix in ('wasm','js'):
    assert browser[suffix+'Sha256'] == adoption[suffix+'Sha256'] == live['httpSha256']['softgl.'+suffix]
for name, expected in adoption['sourceSha256'].items():
    if name.startswith('libsoftgl/'):
        assert expected == manifests['v5']['sourceSha256'][name]
assert adoption['sourceSha256']['wasm/model_wrap.c'] == manifests['v5']['sourceSha256']['model_wrap.c']
assert read(production/'isa.json')['passed']
print('Five frozen SIMD128 variants, 144 final native trials, 612 native image pairs, sanitizer/WASM contracts and 48 browser configurations verified.')
