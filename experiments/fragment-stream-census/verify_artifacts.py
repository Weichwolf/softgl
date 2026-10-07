"""Verify diagnostic source/evidence closure and recorded gates; no timing claim."""
from pathlib import Path
import hashlib
import json
import shutil
import subprocess
import sys
import tempfile

sys.dont_write_bytecode = True
r = Path(__file__).resolve().parent
repo = r.parents[1]
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
m, v = load(r / 'results.json'), load(r / 'validation.json')
actual = {str(p.relative_to(r)) for p in r.rglob('*') if p.is_file()
    and p != r / 'results.json' and '__pycache__' not in p.parts}
assert actual == set(m['artifacts'])
for name, digest in m['artifacts'].items(): assert sha(r / name) == digest, name
assert m['status'] == 'diagnostic' and not m['rendererAdopted'] and m['notAcceptanceTimings']
assert m['candidateWasmSha256'] == v['diagnosticWasmSha256']
assert m['referenceWasmSha256'] == v['referenceWasmSha256']
assert m['gateExitCode'] == m['observationExitCode'] == 0
assert v['independentSourcePatchVerified'] and sha(r / 'source.patch') == v['patchSha256']
assert len(v['objects']) == 20 and len(v['disabledObjects']) == 20 and len(v['linkedObjects']) == 259
comparison = load(r / 'object-comparison.json')
assert len(comparison) == 20 and [name for name, same in comparison.items() if not same] == ['workers.c.o']
baseline = load(r / 'baseline-producer.json')
assert v['disabledBuildByteExact'] and v['disabledWasmSha256'] == baseline['referenceWasmSha256'] == v['referenceWasmSha256']
assert v['disabledJsSha256'] == baseline['referenceJsSha256']
by_name = lambda items: {Path(n).name: digest for n, digest in items.items()}
assert by_name(v['disabledObjects']) == by_name(baseline['objects'])
commands = load(r / 'producer-commands.json')
assert [row['enabled'] for row in commands] == [False, True]
for row in commands:
    assert len(row['compile']) == 20
    for cmd in row['compile']:
        assert '-O2' in cmd and '-msimd128' in cmd and '-pthread' in cmd
        assert ('-DSG_FRAGMENT_STREAM_DIAG=1' in cmd) == row['enabled']
assert load(r / 'native-warnings-comparison.json')['newWarningLines'] == []
assert load(r / 'native-warnings-comparison.json')['candidateLogSha256'] == sha(r / 'native-full-build.log')
tmp = repo / 'build/tmp'
tmp.mkdir(parents=True, exist_ok=True)
with tempfile.TemporaryDirectory(dir=tmp) as directory:
    stage = Path(directory)
    for name in v['changedFiles']:
        original = r / 'original' / name
        if original.exists():
            target = stage / name
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(original, target)
    subprocess.run(['git', 'init', '-q'], cwd=stage, check=True)
    subprocess.run(['git', 'apply', str(r / 'source.patch')], cwd=stage, check=True)
    for name in v['changedFiles']:
        assert (stage / name).read_bytes() == (r / 'candidate-source' / name).read_bytes()
        assert sha(stage / name) == v['finalSourceFiles'][name]
for receipt in v['fullGateReceipts']: assert sha(r / receipt['file']) == receipt['sha256']
for name, count in [('native-full-tests.log', 745), ('native-full-bench.log', 1), ('asan-full-tests.log', 25)]:
    assert f'100% tests passed, 0 tests failed out of {count}' in (r / name).read_text()
mesa = load(r / 'mesa-images.json')
assert mesa['wasmSha256'] == v['candidateWasmSha256']
assert len(mesa['images']) == 240 and all(x['passed'] for x in mesa['images'])
for samples, name in [(0, 'all-tests-ms0-results.json'), (2, 'all-tests-msaa-results.json'), (4, 'all-tests-msaa4-results.json')]:
    images = load(r / name)
    assert images['passed'] and images['samples'] == samples and images['exactImages'] == len(images['images']) == 234
    frames = load(r / f'frame-equivalence-{samples}.json')
    assert frames['wasmSha256'] == v['candidateWasmSha256'] and frames['baselineSha256'] == v['referenceWasmSha256']
    assert set(frames['models']) == {'bmw', 'tank'}
    for model in frames['models'].values():
        assert model['workers'] == 3 and model['frameHashesEqual'] == len(model['rows']) == 100
        assert model['representativeFramesByteEqual'] == 4
contracts = load(r / 'wasm-contracts/results.json')
assert contracts['completed'] == contracts['planned'] == len(contracts['results']) == 24
for row in contracts['results']:
    assert row['passed'] and sha(r / row['log']) == row['logSha256']
    assert sha(r / 'fixtures' / (row['name'] + '.c')) == row['fixtureSha256']
for name in ['native-fragment_stream-run.log', 'wasm-contracts/fragment_stream-run.log']:
    text = (r / name).read_text()
    assert 'Codec: 2304 full-frame oracle cases; 894930 exact decoded cells; 5577200 exact raw edge lanes, including 2259840 wide values' in text
    assert text.count('color/depth/stencil exact') == 3
for name in ['native-msaa_store-run.log', 'wasm-contracts/msaa_store-run.log']:
    text = (r / name).read_text()
    for samples in [0, 2, 4]:
        assert f'{samples}x: 98304 exact post-Z stores, 640 DOT3 query-oracle frames and fallback states passed' in text
    assert '262144 exact RGBA quantizations passed' in text
for name in ['native-depth_replay-run.log', 'wasm-contracts/depth_replay-run.log']:
    text = (r / name).read_text()
    assert 'off capture: 4608 cases' in text and '232 LESS ties' in text
    assert '8192 actual LEQUAL/ALWAYS classification cases exact' in text and '416 LESS ties preserved' in text
    assert text.count('22 actual queued state/sample-plane cases exact') == 6
    assert text.count('18 actual queued state/sample-plane cases exact') == 12
for name in ['native-msaa_edge-run.log', 'wasm-edge-run.log']:
    assert '4480 frames, 62251008 exact sample masks, 12431040 exact coefficient lanes' in (r / name).read_text()
for name in ['native-index-range-run.log', 'wasm-contracts/index_range-run.log']:
    assert (r / name).read_text().strip() == load(r / 'range-oracle.json')['stdout'].strip()
for name in ['native-pixel_packet-run.log', 'wasm-contracts/pixel_packet-run.log']:
    assert '128054 exact four-pixel shader comparisons passed' in (r / name).read_text()
assert load(r / 'process-completion.json') == dict(gateStatus='terminal', gateExitCode=0,
    observationStatus='terminal', observationExitCode=0)
assert load(r / 'gate-process.json')['exitCode'] == load(r / 'observation-process.json')['exitCode'] == 0
recipe = load(r / 'recipe-check/reproduction-receipt.json')
assert recipe['changedSourcesExact'] and recipe['sourcePatchSha256'] == v['patchSha256']
assert recipe['recipeSha256'] == sha(r / 'reproduce-diagnostic.py')
assert not recipe['rendererBuildExecuted'] and not recipe['fullGatesExecuted'] and not recipe['observationsExecuted']
assert load(r / 'recipe-check/validation.json')['finalSourceFiles'] == v['finalSourceFiles']
identities = load(r / 'observer-input-identities.json')
for name in ['wasm_perf_stream.cjs', 'check-row.py', 'run-observations.py', 'wasm_quiet_audit.py']:
    assert [digest for path, digest in identities.items() if path.endswith('/' + name)] == [sha(r / name)]
assert 'FOREIGN_CPU_CORES = .10' in (r / 'wasm_quiet_audit.py').read_text()
source = load(r / 'sources.json')
assert source['researchBriefSha256'] == sha(repo / source['researchBrief'])
assert source['researchReceiptsSha256'] == sha(repo / source['researchReceipts'])
subprocess.run([sys.executable, str(r / 'analyze-observations.py'), '--check'], check=True)
a = load(r / 'analysis.json')
assert a['framesChecked'] == 1200 and a['guardedCaptures'] == 6 and a['totalRawTraceSnapshots'] == 48
assert all(all(value == 100 for key, value in row.items() if key.startswith('equal')) for row in a['repeatedAuditChecks'])
print('PASS:', len(actual), 'artifacts; source patch, full native/WASM/image/model/edge gates, disabled D4 byte identity, six guarded observations and 48 raw trace snapshots; no speed claim')
