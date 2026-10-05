"""Portable checks of the actual source patch, complete gates, all paired observations."""
from pathlib import Path
import hashlib
import json
import shutil
import subprocess
import sys
import tempfile

root = Path(__file__).resolve().parent
manifest = json.loads((root/'results.json').read_text())
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
expected = manifest['artifacts']
actual = {str(path.relative_to(root)) for path in root.rglob('*') if path.is_file() and
    path != root/'results.json' and '__pycache__' not in path.parts}
assert actual == set(expected),(actual-set(expected),set(expected)-actual)
for filename,digest in expected.items(): assert sha(root/filename) == digest,filename
validation = json.loads((root/'validation.json').read_text())
assert validation['independentSourcePatchVerified'] and validation['patchSha256'] == sha(root/'source.patch')
assert len(validation['objects']) == 20 and len(validation['linkedObjects']) == 259
assert validation['changedLibraryObjects'] == ['workers.c.o']
assert validation['referenceWasmSha256'] == '7cc38593ef399417a3ab4497dae40a162f9ae9550ad2181140d5d0f3c8df3b77'
assert validation['candidateWasmSha256'] == manifest['candidateWasmSha256']
assert manifest['gateExitCode'] == manifest['timingExitCode'] == 0
with tempfile.TemporaryDirectory() as temporary:
    stage = Path(temporary)
    for filename in validation['changedFiles']:
        original = root/'original'/filename
        if original.is_file():
            target = stage/filename;target.parent.mkdir(parents=True,exist_ok=True)
            shutil.copy2(original,target)
    subprocess.run(['git','apply',str(root/'source.patch')],cwd=stage,check=True)
    for filename in validation['changedFiles']:
        assert (stage/filename).read_bytes() == (root/'candidate-source'/filename).read_bytes()
        assert sha(stage/filename) == validation['finalSourceFiles'][filename]
proof = json.loads((root/'layout-lifecycle-proof.json').read_text())
old = (root/'original/libsoftgl/src/workers_queue_raw.inc').read_text()
new = (root/'candidate-source/libsoftgl/src/workers_queue_raw.inc').read_text()
for item, start, stop in zip(proof['sections'],
        ['/* Private experiment:', 'static void sg_queue_transform'],
        ['static int sg_queue_multitexture', '/* The browser caller cannot block']):
    before = old[old.index(start):old.index(stop)]
    after = new[new.index(start):new.index(stop)]
    if item['name']=='stage_publication_and_join':
        after = after.replace('sg_queue_vertex_claim(q, &begin, &end, p->nworkers)',
                              'sg_queue_vertex_claim(q, &begin, &end)')
    assert before == after
    assert hashlib.sha256(before.encode()).hexdigest() == item['referenceSha256'] == item['normalizedCandidateSha256']
for receipt in validation['fullGateReceipts']:
    assert sha(root/receipt['file']) == receipt['sha256']
for filename,count in [('native-full-tests.log',744),('native-full-bench.log',1),('asan-full-tests.log',24)]:
    assert f'100% tests passed, 0 tests failed out of {count}' in (root/filename).read_text()
mesa = json.loads((root/'mesa-images.json').read_text())
assert mesa['wasmSha256'] == manifest['candidateWasmSha256']
assert len(mesa['images']) == 240 and all(row['passed'] for row in mesa['images'])
for samples,filename in [(0,'all-tests-ms0-results.json'),(2,'all-tests-msaa-results.json'),(4,'all-tests-msaa4-results.json')]:
    images = json.loads((root/filename).read_text())
    assert images['passed'] and images['samples'] == samples and images['exactImages'] == len(images['images']) == 234
    frames = json.loads((root/f'frame-equivalence-{samples}.json').read_text())
    assert frames['wasmSha256'] == manifest['candidateWasmSha256'] and frames['baselineSha256'] == validation['referenceWasmSha256']
    assert set(frames['models']) == {'bmw','tank'}
    for row in frames['models'].values():
        assert row['workers'] == 3 and row['frameHashesEqual'] == len(row['rows']) == 100 and row['representativeFramesByteEqual'] == 4
contracts = json.loads((root/'wasm-contracts/results.json').read_text())
assert contracts['completed'] == contracts['planned'] == len(contracts['results']) == 23
for record in contracts['results']:
    assert record['passed'] and sha(root/record['log']) == record['logSha256']
    assert sha(root/'fixtures'/(record['name']+'.c')) == record['fixtureSha256']
for filename in ['native-msaa_store-run.log','wasm-contracts/msaa_store-run.log']:
    content = (root/filename).read_text()
    for samples in (0,2,4):
        assert f'{samples}x: 98304 exact post-Z stores, 640 DOT3 query-oracle frames and fallback states passed' in content
    assert '262144 exact RGBA quantizations passed' in content
for filename in ['native-depth_replay-run.log','wasm-contracts/depth_replay-run.log']:
    content = (root/filename).read_text()
    assert 'off capture: 4608 cases' in content and '232 LESS ties' in content
    assert '8192 actual LEQUAL/ALWAYS classification cases exact' in content and '416 LESS ties preserved' in content
    assert content.count('22 actual queued state/sample-plane cases exact') == 6
    assert content.count('18 actual queued state/sample-plane cases exact') == 12
for filename in ['native-msaa_edge-run.log','wasm-edge-run.log']:
    assert '4480 frames, 62251008 exact sample masks, 12431040 exact coefficient lanes' in (root/filename).read_text()
for filename in ['native-batch-run.log','wasm-contracts/geometry_batch-run.log']:
    assert 'Geometry batches: 558 concurrent reservation cases, 4951980 exactly-once items, 12822 reservations versus 38880 original slices, 312 reduced cases' in (root/filename).read_text()
assert 'sg_geometry_batch_test_claim' not in (root/'candidate.symbols').read_text()
identities = json.loads((root/'timing-input-identities.json').read_text())
for filename in ['wasm_perf.cjs','wasm_quiet_audit.py','compare-all.py']:
    keys = [key for key in identities if key.endswith('/'+filename)]
    assert len(keys)==1 and sha(root/filename)==identities[keys[0]]
assert 'FOREIGN_CPU_CORES = .10' in (root/'wasm_quiet_audit.py').read_text()
replacement = json.loads((root/'compare-replacement.json').read_text())
text = (root/'compare-all.py').read_text()
assert text.count(replacement['new']) == 1
assert text.replace(replacement['new'],replacement['old']) == (root/'compare-original.py').read_text()
raw = sorted((root/'timings').glob('geometry-claim-batches*-audit-*-pair-*.json'))
raw = [path for path in raw if '.attempt-' not in path.name]
assert len(raw) == 18
for path in raw:
    monitors = sorted(path.parent.glob(path.stem+'.attempt-*.monitor.json'))
    assert monitors
    accepted = []
    for monitor in monitors:
        data = json.loads(monitor.read_text())
        assert data['guardSha256'] == sha(root/'wasm_quiet_audit.py')
        assert data['foreignCPUThresholdCores'] == .10 and data['settlePolls'] == 6 and data['pollSeconds'] == .5
        assert monitor.with_name(monitor.name.replace('.monitor.json','.log')).is_file()
        if not data['unexpectedActivity'] and data['exitCode']==0: accepted.append(data['attempt'])
    assert len(accepted) == 1
subprocess.run([sys.executable,str(root/'analyze-timings.py'),'--check'],check=True)
print(f'PASS: {len(expected)} artifacts, actual three-file source patch, all gates/guards and eighteen independently recomputed comparisons')
