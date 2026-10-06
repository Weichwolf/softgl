"""Portable checks of the actual source patch, complete gates, all paired observations."""
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
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
expected = manifest['artifacts']
actual = {str(path.relative_to(root)) for path in root.rglob('*') if path.is_file() and
    path != root/'results.json' and '__pycache__' not in path.parts}
assert actual == set(expected),(actual-set(expected),set(expected)-actual)
for filename,digest in expected.items(): assert sha(root/filename) == digest,filename
validation = json.loads((root/'validation.json').read_text())
assert validation['independentSourcePatchVerified'] and validation['patchSha256'] == sha(root/'source.patch')
assert len(validation['objects']) == 20 and len(validation['linkedObjects']) == 259
assert validation['changedLibraryObjects'] == ['pipeline.c.o']
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
oracle = json.loads((root/'range-oracle.json').read_text())
assert oracle['cases'] == 1007307 and oracle['items'] == 182312387
for filename in ['native-index-range-run.log','wasm-contracts/index_range-run.log']:
    assert (root/filename).read_text().strip() == oracle['stdout'].strip()
assert validation['fixtureWarningCorrected']
correction = validation['fixtureCorrection']
assert sha(root/'fixture-correction/original-index_range.c') == correction['originalFixtureSha256']
assert sha(root/'fixtures/index_range.c') == correction['finalFixtureSha256']
assert correction['nativeAndSanitizerLibrariesByteExact'] and correction['runtimeWasmUnchanged']
assert correction['nativeSanitizerWasmContractsPassed']
original = (root/'fixture-correction/original-index_range.c').read_text()
needle = '    if (!allocation) return 0;\n'
assert original.count(needle) == 1
assert original.replace(needle,needle+'    memset(allocation, 0xa5, (size_t)offset + bytes + (bytes ? 0 : 1));\n') == (root/'fixtures/index_range.c').read_text()
for kind in ['native-full','asan-full']:
    assert 'warning:' not in (root/'fixture-correction'/(kind+'-build.log')).read_text()
    output = (root/'fixture-correction'/(kind+'-run.log')).read_text()
    assert '100% tests passed, 0 tests failed out of 1' in output and oracle['stdout'].strip() in output
assert (root/'fixture-correction/wasm-range-run.log').read_text().strip() == oracle['stdout'].strip()
comparison = json.loads((root/'codegen-comparison.json').read_text())
assert len(comparison['rows']) == 18 and sum(row['bodyByteExact'] for row in comparison['rows']) == 17
for record in json.loads((root/'simd-opcodes.json').read_text())['records']:
    assert sha(root/record['rootFile']) == record['rootSha256']
    symbols_file = 'reference.symbols' if record['label'] == 'reference' else 'candidate.symbols'
    assert sha(root/symbols_file) == record['symbolMapSha256']
    symbols = {name:int(index) for line in (root/symbols_file).read_text().splitlines() for index,name in [line.split(':',1)]}
    assert symbols[record['function']] == record['absoluteFunctionIndex']
    assert record['definedFunctionLabel'] == record['absoluteFunctionIndex'] - record['importFunctionCount']
    export = record['mappingExport']
    assert symbols[export['name']] == export['absoluteFunctionIndex']
    assert export['definedFunctionLabel'] == export['absoluteFunctionIndex'] - record['importFunctionCount']
    body = (root/record['rootFile']).read_text()
    assert body.startswith(' (func $'+str(record['definedFunctionLabel'])+' ')
    for op,count in record['unsignedSimdExtremaOpcodes'].items():
        assert body.count('('+op) == count
    assert (all(record['unsignedSimdExtremaOpcodes'].values()) if record['label']=='candidate' else not any(record['unsignedSimdExtremaOpcodes'].values()))
identities = json.loads((root/'timing-input-identities.json').read_text())
for filename in ['wasm_perf.cjs','wasm_quiet_audit.py','compare-all.py']:
    keys = [key for key in identities if key.endswith('/'+filename)]
    assert len(keys)==1 and sha(root/filename)==identities[keys[0]]
assert 'FOREIGN_CPU_CORES = .10' in (root/'wasm_quiet_audit.py').read_text()
replacement = json.loads((root/'compare-replacement.json').read_text())
text = (root/'compare-all.py').read_text()
assert text.count(replacement['new']) == 1
assert text.replace(replacement['new'],replacement['old']) == (root/'compare-original.py').read_text()
raw = sorted((root/'timings').glob('simd-index-range*-audit-*-pair-*.json'))
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
if manifest['status'] == 'accepted':
    assert validation['canonicalJsWasmByteExact'] and validation['canonicalNativeAllPassed']
    assert validation['bothBrowserUiGatesPassed'] and validation['previewServerOwnedAndStopped']
    assert '100% tests passed, 0 tests failed out of 744' in (root/'canonical-native-tests.log').read_text()
    assert '100% tests passed, 0 tests failed out of 1' in (root/'canonical-native-bench.log').read_text()
    for receipt in validation['browserUiGateReceipts']:
        assert sha(root/receipt['file']) == receipt['sha256']
        browser = json.loads((root/receipt['file']).read_text())
        assert browser['passed'] and browser['wasmSha256'] == validation['candidateWasmSha256']
        assert browser['displayedTests'] == 234 and browser['renderWorkers'] == 3
        assert browser['reportedProcessors'] == 9 and browser['isolated'] and browser['errors'] == []
        assert browser['cancelledBenchmark'] and browser['offlineGeometry'] and browser['multisampleModes'] == [0,2,4]
        assert len(re.findall('^scene=',browser['benchmark'],re.M)) == 18
        assert re.findall('^# MSAA=(off|2x|4x)',browser['benchmark'],re.M) == ['off','2x','4x']
    live = json.loads((root/'live-adoption.json').read_text())
    assert live['allSixHttpAssetsByteExact'] and live['isolationHeaders']
    assert live['wasmSha256'] == validation['candidateWasmSha256']
subprocess.run([sys.executable,str(root/'analyze-timings.py'),'--check'],check=True)
print(f'PASS: {len(expected)} artifacts, actual four-file source patch, all gates/guards and eighteen independently recomputed comparisons')
