"""Verify retained source/evidence closure; do not claim fresh execution or FPS."""
from pathlib import Path
import hashlib
import json
import shutil
import subprocess
import sys
import tempfile

sys.dont_write_bytecode = True
r = Path(__file__).resolve().parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
m, v = load(r/'results.json'), load(r/'validation.json')
actual = {str(p.relative_to(r)) for p in r.rglob('*') if p.is_file() and p != r/'results.json' and '__pycache__' not in p.parts}
assert actual == set(m['artifacts'])
for name,digest in m['artifacts'].items(): assert sha(r/name) == digest,name
assert m['status'] == 'diagnostic-only-not-adopted' and m['notAcceptanceTimings'] and v['notAcceptanceTimings']
assert m['diagnosticWasmSha256'] == v['diagnosticWasmSha256'] and m['referenceWasmSha256'] == v['referenceWasmSha256']
assert v['independentSourcePatchVerified'] and sha(r/'source.patch') == v['patchSha256']
assert len(v['objects']) == len(v['disabledObjects']) == 20 and len(v['linkedObjects']) == v['linkInputCount'] == 259
comparison = load(r/'object-comparison.json')
assert len(comparison) == 20 and [n for n,equal in comparison.items() if not equal] == ['fragment.c.o','rasterizer.c.o']
baseline = load(r/'baseline-producer.json')
assert v['disabledBuildByteExact'] and v['disabledWasmSha256'] == baseline['referenceWasmSha256'] == v['referenceWasmSha256']
assert v['disabledJsSha256'] == baseline['referenceJsSha256']
by_name = lambda items: {Path(n).name:digest for n,digest in items.items()}
assert by_name(v['disabledObjects']) == by_name(baseline['objects'])
commands = load(r/'producer-commands.json')
assert [x['enabled'] for x in commands] == [False,True]
for row in commands:
    assert len(row['compile']) == 20
    assert all(('-DSG_SAMPLER_FOOTPRINTS_DIAG=1' in cmd) == row['enabled'] for cmd in row['compile'])
    assert all('-O2' in cmd and '-msimd128' in cmd and '-pthread' in cmd for cmd in row['compile'])
    assert ('_sg_tex_diag_data' in ' '.join(row['link'])) == row['enabled']
tmp = Path.cwd()/'build/tmp'
tmp.mkdir(parents=True,exist_ok=True)
with tempfile.TemporaryDirectory(prefix='sampler-footprints-',dir=tmp) as directory:
    stage = Path(directory)
    for p in (r/'original').rglob('*'):
        if p.is_file():
            target = stage/p.relative_to(r/'original')
            target.parent.mkdir(parents=True,exist_ok=True)
            shutil.copy2(p,target)
    subprocess.run(['git','apply',str(r/'source.patch')],cwd=stage,check=True)
    for name,digest in v['finalSourceFiles'].items():
        assert sha(stage/name) == sha(r/'diagnostic-source'/name) == digest,name
for name,digest in v['scopeSourceFiles'].items(): assert sha(r/'scope-source'/name) == digest,name
for receipt in v['fullGateReceipts']: assert sha(r/receipt['file']) == receipt['sha256']
for name,count in [('native-full-tests.log',745),('native-full-bench.log',1),('asan-full-tests.log',25)]:
    assert f'100% tests passed, 0 tests failed out of {count}' in (r/name).read_text()
assert load(r/'native-warnings-comparison.json')['newWarningLines'] == []
assert load(r/'native-warnings-comparison.json')['candidateLogSha256'] == sha(r/'native-full-build.log')
mesa = load(r/'mesa-images.json')
assert mesa['wasmSha256'] == v['diagnosticWasmSha256'] and len(mesa['images']) == 240 and all(x['passed'] for x in mesa['images'])
for samples,name in [(0,'all-tests-ms0-results.json'),(2,'all-tests-msaa-results.json'),(4,'all-tests-msaa4-results.json')]:
    data = load(r/name)
    assert data['passed'] and data['samples'] == samples and data['exactImages'] == len(data['images']) == 234
    frames = load(r/f'frame-equivalence-{samples}.json')
    assert frames['wasmSha256'] == v['diagnosticWasmSha256'] and frames['baselineSha256'] == v['referenceWasmSha256']
    assert set(frames['models']) == {'bmw','tank'}
    for model in frames['models'].values():
        assert model['workers'] == 3 and model['frameHashesEqual'] == len(model['rows']) == 100
        assert model['representativeFramesByteEqual'] == 4
contracts = load(r/'wasm-contracts/results.json')
assert contracts['completed'] == contracts['planned'] == len(contracts['results']) == 24
for record in contracts['results']:
    assert record['passed'] and sha(r/record['log']) == record['logSha256']
    assert sha(r/'fixtures'/(record['name']+'.c')) == record['fixtureSha256']
for name in ['native-sampler_footprints-run.log','wasm-contracts/sampler_footprints-run.log']:
    assert '294912 exact parallel sample records; independently traversed tile maps; 16 joined reset cycles; masks/nearest/keys/value/thread overflow explicit' in (r/name).read_text()
for name in ['native-pixel_packet-run.log','wasm-contracts/pixel_packet-run.log']:
    assert '331447 exact four-pixel sampler comparisons passed' in (r/name).read_text()
    assert '128054 exact four-pixel shader comparisons passed' in (r/name).read_text()
for name in ['native-msaa_store-run.log','wasm-contracts/msaa_store-run.log']:
    text = (r/name).read_text()
    for samples in [0,2,4]: assert f'{samples}x: 98304 exact post-Z stores, 640 DOT3 query-oracle frames and fallback states passed' in text
    assert '262144 exact RGBA quantizations passed' in text
for name in ['native-depth_replay-run.log','wasm-contracts/depth_replay-run.log']:
    text = (r/name).read_text()
    assert 'off capture: 4608 cases' in text and '232 LESS ties' in text
    assert '8192 actual LEQUAL/ALWAYS classification cases exact' in text and '416 LESS ties preserved' in text
    assert text.count('22 actual queued state/sample-plane cases exact') == 6 and text.count('18 actual queued state/sample-plane cases exact') == 12
for name in ['native-msaa_edge-run.log','wasm-edge-run.log']:
    assert '4480 frames, 62251008 exact sample masks, 12431040 exact coefficient lanes' in (r/name).read_text()
for name in ['native-index-range-run.log','wasm-contracts/index_range-run.log']:
    assert (r/name).read_text().strip() == load(r/'range-oracle.json')['stdout'].strip()
for symbol in ['sg_tex_diag_reset','sg_tex_diag_meta','sg_tex_diag_data']:
    assert ':'+symbol+'\n' in (r/'diagnostic.symbols').read_text()
    assert ':'+symbol+'\n' not in (r/'disabled.symbols').read_text()
for path,digest in load(r/'observer-input-identities.json').items():
    name = Path(path).name
    if name in ['wasm_quiet_audit.py','wasm_perf_footprints.cjs','check-row.py','run-observations.py'] or name.startswith('frame-equivalence-'):
        assert sha(r/name) == digest,name
completion = load(r/'process-completion.json')
assert completion == dict(gateStatus='terminal',gateExitCode=0,observationExitCode=0,observationStatus='terminal')
assert load(r/'gate-process.json')['exitCode'] == 0
recipe = load(r/'recipe-check/reproduction-receipt.json')
assert recipe['changedSourcesExact'] and recipe['sourcePatchSha256'] == v['patchSha256']
assert not recipe['rendererBuildExecuted'] and not recipe['fullGatesExecuted'] and not recipe['observationsExecuted']
assert load(r/'recipe-check/validation.json')['finalSourceFiles'] == v['finalSourceFiles']
subprocess.run([sys.executable,str(r/'analyze-observations.py'),'--check'],check=True)
print('PASS:',len(actual),'hashed artifacts; source reconstructed; full gate receipts; six successful guards with all contaminated attempts retained; 1200 sampler/frame partitions. No FPS or fresh-build claim.')
