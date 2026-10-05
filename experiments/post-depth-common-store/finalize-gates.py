from pathlib import Path
import hashlib,json
r=Path(__file__).resolve().parent; v=json.loads((r/'validation.json').read_text()); frozen=Path('build/controls/post-depth-common-store-candidate'); reference=Path('build/controls/depth-replay-off-bound-candidate')
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
assert sha(r/'softgl.wasm')==sha(frozen/'softgl.wasm')==v['candidateWasmSha256']
assert sha(r/'softgl.js')==sha(frozen/'softgl.js')==v['candidateJsSha256']
assert sha(reference/'softgl.wasm')==v['referenceWasmSha256'] and sha(r/'source.patch')==v['patchSha256']
for f,h in v['productionSources'].items(): assert sha(r/'source-root'/f)==h,f
for f,h in v['objects'].items(): assert sha(Path(f))==h,f
assert len(v['objects'])==20
receipts=[]
for f,n in [('native-full-tests.log',743),('native-full-bench.log',1),('asan-full-tests.log',23)]:
 assert f'100% tests passed, 0 tests failed out of {n}' in (r/f).read_text(),f
 receipts.append(dict(file=f,passed=n,sha256=sha(r/f)))
mesa=json.loads((r/'mesa-images.json').read_text()); assert mesa['wasmSha256']==v['candidateWasmSha256']
assert len(mesa['images'])==240 and all(i['passed'] for i in mesa['images'])
for mode,name in [(0,'all-tests-ms0-results.json'),(2,'all-tests-msaa-results.json'),(4,'all-tests-msaa4-results.json')]:
 d=json.loads((r/name).read_text()); assert d['passed'] and d['samples']==mode and d['exactImages']==len(d['images'])==234
 f=frozen/f'frame-equivalence-{mode}.json'; d=json.loads(f.read_text())
 assert d['wasmSha256']==v['candidateWasmSha256'] and d['baselineSha256']==v['referenceWasmSha256']
 assert set(d['models'])=={'bmw','tank'}
 for model in d['models'].values():
  assert model['workers']==3 and model['frameHashesEqual']==len(model['rows'])==100 and model['representativeFramesByteEqual']==4
 receipts.append(dict(file=str(f),sha256=sha(f),models=2,hashes=100,rawFrames=4))
d=json.loads((r/'wasm-contracts/results.json').read_text()); assert d['completed']==d['planned']==len(d['results'])==22
for record in d['results']:
 assert record['passed'] and sha(r/record['log'])==record['logSha256']
 assert sha(r/'source-root/tests'/(record['name']+'.c'))==record['fixtureSha256']
for file in ['native-store-run.log','wasm-store-run.log','wasm-contracts/msaa_store-run.log']:
 t=(r/file).read_text()
 for n in (0,2,4): assert f'{n}x: 98304 exact post-Z stores, 640 DOT3 query-oracle frames and fallback states passed' in t
 assert '262144 exact RGBA quantizations passed' in t
for file in ['native-capture-run.log','wasm-contracts/depth_replay-run.log']:
 t=(r/file).read_text(); assert 'off capture: 4608 cases' in t and '232 LESS ties' in t
 assert '8192 actual LEQUAL/ALWAYS classification cases exact' in t and '416 LESS ties preserved' in t
 assert t.count('22 actual queued state/sample-plane cases exact')==6 and t.count('18 actual queued state/sample-plane cases exact')==12
assert '4480 frames, 62251008 exact sample masks, 12431040 exact coefficient lanes' in (r/'wasm-edge-run.log').read_text()
symbols=(r/'softgl.js.symbols').read_text()
for name in ['sg_store_off_post_depth','sg_store_blend_msaa2_post_depth','sg_store_blend_msaa4_post_depth']: assert ':'+name+'\n' in symbols,name
for name in ['sg_depth_replay_diag_counter','sg_msaa_edge_test']: assert name not in symbols
v.update(status='full-correctness-gates-passed-ready-for-18-pair-timings',fullGateReceipts=receipts,regressions=dict(native=743,benchmark=1,asanUbsan=23,mesaImages=240,exactImagesEachMode=234,modelHashesEachModeEachModel=100,modelRawFramesEachModeEachModel=4,wasmContracts=22,offCaptureCasesEachEngine=4608,msaaCaptureCasesEachEngine=8192,queuedApiCasesEachEngine=348,postDepthStoresEachModeEachEngine=98304,actualDot3QueryScenesEachModeEachEngine=640,quantizationsEachEngine=262144),nativeArchiveSha256=sha(r/'native-full/libsoftgl/libsoftgl.a'))
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n'); print('All complete source/module/gate receipts verified before timing')
