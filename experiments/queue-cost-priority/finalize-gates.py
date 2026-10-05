"""Bind the actual candidate producer and complete fidelity receipts."""
from pathlib import Path
import hashlib
import json
import subprocess

root = Path(__file__).resolve().parent
repo = Path.cwd().resolve()
validation = json.loads((root/'validation.json').read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
frozen = repo/'build/controls/queue-cost-priority-candidate'
reference = repo/'build/controls/post-depth-common-store-candidate'
for suffix, key in [('wasm','candidateWasmSha256'),('js','candidateJsSha256')]:
    assert sha(root/('softgl.'+suffix)) == sha(frozen/('softgl.'+suffix)) == validation[key]
assert sha(reference/'softgl.wasm') == validation['referenceWasmSha256']
assert sha(root/'source.patch') == validation['patchSha256']
for filename, digest in validation['finalSourceFiles'].items():
    assert sha(root/'source-root'/filename) == digest, filename
for filename, digest in validation['productionSources'].items():
    assert sha(root/'source-root'/filename) == digest, filename
for collection in ['objects','linkedObjects']:
    for filename, digest in validation[collection].items():
        assert sha(repo/filename) == digest, filename
assert len(validation['objects']) == 20 and len(validation['linkedObjects']) == 259
receipts = []
for filename, count in [('native-full-tests.log',744),('native-full-bench.log',1),('asan-full-tests.log',24)]:
    assert f'100% tests passed, 0 tests failed out of {count}' in (root/filename).read_text(), filename
    receipts.append(dict(file=filename,passed=count,sha256=sha(root/filename)))
mesa = json.loads((root/'mesa-images.json').read_text())
assert mesa['wasmSha256'] == validation['candidateWasmSha256']
assert len(mesa['images']) == 240 and all(image['passed'] for image in mesa['images'])
receipts.append(dict(file='mesa-images.json',passed=240,sha256=sha(root/'mesa-images.json')))
for mode, filename in [(0,'all-tests-ms0-results.json'),(2,'all-tests-msaa-results.json'),(4,'all-tests-msaa4-results.json')]:
    data = json.loads((root/filename).read_text())
    assert data['passed'] and data['samples'] == mode and data['exactImages'] == len(data['images']) == 234
    receipts.append(dict(file=filename,passed=234,sha256=sha(root/filename)))
    producer = frozen/f'frame-equivalence-{mode}.json'
    data = json.loads(producer.read_text())
    assert data['wasmSha256'] == validation['candidateWasmSha256'] and data['baselineSha256'] == validation['referenceWasmSha256']
    assert set(data['models']) == {'bmw','tank'}
    for model in data['models'].values():
        assert model['workers'] == 3 and model['frameHashesEqual'] == len(model['rows']) == 100
        assert model['representativeFramesByteEqual'] == 4
    local = root/producer.name
    local.write_bytes(producer.read_bytes())
    receipts.append(dict(file=local.name,sha256=sha(local),models=2,hashes=100,rawFrames=4))
contracts = json.loads((root/'wasm-contracts/results.json').read_text())
assert contracts['completed'] == contracts['planned'] == len(contracts['results']) == 23
for record in contracts['results']:
    assert record['passed'] and sha(root/record['log']) == record['logSha256']
    assert sha(root/'source-root/tests'/(record['name']+'.c')) == record['fixtureSha256']
# CTest receipts alone omit successful test stdout; retain direct native oracle output.
for target in ['msaa_store','depth_replay','msaa_edge']:
    log = root/('native-'+target+'-run.log')
    assert not log.exists(), 'Direct oracle invocation must not silently overwrite an attempt'
    with log.open('w') as stream:
        subprocess.run([str(root/'native-full/tests'/(target+'_contract'))],stdout=stream,stderr=subprocess.STDOUT,check=True)
for filename in ['native-msaa_store-run.log','wasm-contracts/msaa_store-run.log']:
    text = (root/filename).read_text()
    for mode in (0,2,4):
        assert f'{mode}x: 98304 exact post-Z stores, 640 DOT3 query-oracle frames and fallback states passed' in text
    assert '262144 exact RGBA quantizations passed' in text
for filename in ['native-depth_replay-run.log','wasm-contracts/depth_replay-run.log']:
    text = (root/filename).read_text()
    assert 'off capture: 4608 cases' in text and '232 LESS ties' in text
    assert '8192 actual LEQUAL/ALWAYS classification cases exact' in text and '416 LESS ties preserved' in text
    assert text.count('22 actual queued state/sample-plane cases exact') == 6
    assert text.count('18 actual queued state/sample-plane cases exact') == 12
for filename in ['native-msaa_edge-run.log','wasm-edge-run.log']:
    assert '4480 frames, 62251008 exact sample masks, 12431040 exact coefficient lanes' in (root/filename).read_text()
symbols = (root/'softgl.js.symbols').read_text()
assert 'sg_queue_priority_test_claim' not in symbols
for filename in ['native-priority-run.log','wasm-contracts/queue_priority-run.log']:
    assert 'Queue priority: 40960 actual scheduler cases, 13750 non-leftmost claims, 508 high-bit claims, 12435 unavailable' in (root/filename).read_text()
validation.update(status='full-correctness-gates-passed-ready-for-18-pair-timings',fullGateReceipts=receipts,
    regressions=dict(native=744,benchmark=1,asanUbsan=24,mesaImages=240,exactImagesEachMode=234,
        modelHashesEachModeEachModel=100,modelRawFramesEachModeEachModel=4,wasmContracts=23,
        offCaptureCasesEachEngine=4608,msaaCaptureCasesEachEngine=8192,queuedApiCasesEachEngine=348,
        postDepthStoresEachModeEachEngine=98304,actualDot3QueryScenesEachModeEachEngine=640,
        quantizationsEachEngine=262144,queuePriorityCasesEachEngine=40960,queuePriorityNonLeftmostClaimsEachEngine=13750,queuePriorityHighBitClaimsEachEngine=508),nativeArchiveSha256=sha(root/'native-full/libsoftgl/libsoftgl.a'))
(root/'validation.json').write_text(json.dumps(validation,indent=2)+'\n')
print('Complete candidate fidelity gates verified; eighteen paired timings may start')
