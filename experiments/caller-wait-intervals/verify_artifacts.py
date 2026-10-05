"""Portable archive checks: raw frame arithmetic, patch, guards and gate receipts."""
from pathlib import Path
import hashlib
import json
import re
import shutil
import subprocess
import sys
import tempfile

root = Path(__file__).resolve().parent
manifest = json.loads((root/'results.json').read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
expected = manifest['artifacts']
actual = {str(p.relative_to(root)) for p in root.rglob('*') if p.is_file() and
          p != root/'results.json' and '__pycache__' not in p.parts}
assert actual == set(expected), (actual-set(expected),set(expected)-actual)
for filename,digest in expected.items(): assert sha(root/filename) == digest,filename
validation = json.loads((root/'validation.json').read_text())
assert validation['notAcceptanceTimings'] and validation['disabledBuildByteExact']
assert validation['independentSourcePatchVerified']
assert validation['status'] == 'full-fidelity-gates-passed-ready-for-observations'
assert validation['patchSha256'] == sha(root/'source.patch')
assert len(validation['objects']) == 20 and len(validation['linkedObjects']) == 259
assert validation['referenceWasmSha256'] == '7cc38593ef399417a3ab4497dae40a162f9ae9550ad2181140d5d0f3c8df3b77'
assert validation['diagnosticWasmSha256'] == manifest['diagnosticWasmSha256']
assert validation['predeclaredObservation'] == dict(auditsEachMode=2,samples=[0,2,4],models=['bmw','tank'],warmup=80,frames=100,workers=3)
# Verify the two-file patch on archived exact originals, independently of generator.
with tempfile.TemporaryDirectory() as temporary:
    stage = Path(temporary)
    for filename in validation['changedFiles']:
        target = stage/filename
        target.parent.mkdir(parents=True,exist_ok=True)
        shutil.copy2(root/'original'/filename,target)
    subprocess.run(['git','apply',str(root/'source.patch')],cwd=stage,check=True)
    for filename in validation['changedFiles']:
        assert (stage/filename).read_bytes() == (root/'instrumented-source'/filename).read_bytes()
        assert sha(stage/filename) == validation['productionSources'][filename]
text = '\n'.join((root/'instrumented-source'/filename).read_text() for filename in validation['changedFiles'])
assert text.count('sg_caller_wait_calls[wait_kind]++;') == 7
assert text.count('double wait_start = sg_caller_wait_clock();') == 7
for body in re.findall(r'\bdo \{(.*?)\} while \(',text,re.S):
    assert 'sg_caller_wait_' not in body
# Reverse all observer edits, proving the warmup and unrelated benchmark code.
observer = (root/'wasm_perf_wait.cjs').read_text()
for replacement in reversed(json.loads((root/'observer-replacements.json').read_text())):
    assert observer.count(replacement['new']) == 1
    observer = observer.replace(replacement['new'],replacement['old'])
assert observer == (root/'wasm_perf.cjs').read_text()
identities = json.loads((root/'observer-input-identities.json').read_text())
for filename in ['wasm_perf.cjs','wasm_quiet_audit.py','wasm_perf_wait.cjs','observer-replacements.json']:
    keys = [key for key in identities if key.endswith('/'+filename)]
    assert len(keys) == 1 and sha(root/filename) == identities[keys[0]]
assert 'FOREIGN_CPU_CORES = .10' in (root/'wasm_quiet_audit.py').read_text()
assert manifest['gateExitCode'] == manifest['observationExitCode'] == 0
for receipt in validation['fullGateReceipts']:
    assert sha(root/receipt['file']) == receipt['sha256']
for filename,count in [('native-full-tests.log',743),('native-full-bench.log',1),('asan-full-tests.log',23)]:
    assert f'100% tests passed, 0 tests failed out of {count}' in (root/filename).read_text()
mesa = json.loads((root/'mesa-images.json').read_text())
assert mesa['wasmSha256'] == manifest['diagnosticWasmSha256']
assert len(mesa['images']) == 240 and all(row['passed'] for row in mesa['images'])
for samples,filename in [(0,'all-tests-ms0-results.json'),(2,'all-tests-msaa-results.json'),(4,'all-tests-msaa4-results.json')]:
    images = json.loads((root/filename).read_text())
    assert images['passed'] and images['samples'] == samples and images['exactImages'] == len(images['images']) == 234
    frames = json.loads((root/f'frame-equivalence-{samples}.json').read_text())
    assert frames['wasmSha256'] == manifest['diagnosticWasmSha256'] and frames['baselineSha256'] == validation['referenceWasmSha256']
    assert set(frames['models']) == {'bmw','tank'}
    for row in frames['models'].values():
        assert row['workers'] == 3 and row['frameHashesEqual'] == len(row['rows']) == 100 and row['representativeFramesByteEqual'] == 4
contracts = json.loads((root/'wasm-contracts/results.json').read_text())
assert contracts['completed'] == contracts['planned'] == len(contracts['results']) == 22
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
runs = json.loads((root/'runs/runs.json').read_text())
assert len(runs['records']) == 6
assert {(row['audit'],row['samples']) for row in runs['records']} == {(a,s) for a in (1,2) for s in (0,2,4)}
for run in runs['records']:
    path = root/'runs'/run['file']
    assert sha(path) == run['sha256']
    monitors = sorted(path.parent.glob(path.stem+'.attempt-*.monitor.json'))
    assert monitors
    accepted = []
    for monitor in monitors:
        data = json.loads(monitor.read_text())
        assert data['guardSha256'] == sha(root/'wasm_quiet_audit.py')
        assert data['foreignCPUThresholdCores'] == .10 and data['settlePolls'] == 6 and data['pollSeconds'] == .5
        log = monitor.with_name(monitor.name.replace('.monitor.json','.log'))
        assert log.is_file()
        if not data['unexpectedActivity'] and data['exitCode'] == 0: accepted.append(data['attempt'])
    assert len(accepted) == 1
subprocess.run([sys.executable,str(root/'analyze-observations.py'),'--check'],check=True)
print(f'PASS: {len(expected)} artifacts; exact source patch, observer reversal, complete fidelity gates and all guarded raw frame observations')
