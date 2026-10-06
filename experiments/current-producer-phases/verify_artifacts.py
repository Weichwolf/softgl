"""Portable retained-evidence verifier; does not rebuild or rerun rendering."""
from pathlib import Path
import hashlib,json,shutil,subprocess,sys,tempfile
r=Path(__file__).resolve().parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
m=json.loads((r/'results.json').read_text());files={str(p.relative_to(r)) for p in r.rglob('*') if p.is_file()}-{'results.json'}
assert files==set(m['artifacts'])
for fn,digest in m['artifacts'].items():assert sha(r/fn)==digest,fn
v=json.loads((r/'validation.json').read_text())
assert v['notAcceptanceTimings'] and v['disabledBuildByteExact'] and v['sourcePatchReconstructionPassed']
assert v['referenceWasmSha256']=='d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0'
assert v['diagnosticWasmSha256']==m['diagnosticWasmSha256']
assert v['changedLibraryObjects']==['workers.c.o','pipeline.c.o'] and v['reusedLibraryObjects']==18
assert len(v['objects'])==20 and len(v['linkedObjects'])==v['linkInputCount']==259
assert sha(r/'build-wasm.py')==v['executedBuildScriptSha256']
assert sha(r/'source.patch')==v['patchSha256']
assert len(v['phases'])==13 and len(v['counters'])==18
assert v['topLevelPhases']==v['phases'][:9] and v['nestedSubmitPhases']==v['phases'][9:]
assert v['phaseParent']=={name:'stream_submit' for name in v['nestedSubmitPhases']}
parent=Path.cwd()/'build/tmp';parent.mkdir(parents=True,exist_ok=True)
with tempfile.TemporaryDirectory(prefix='softgl-current-phases-',dir=parent) as folder:
 stage=Path(folder)
 for p in (r/'original').rglob('*'):
  if p.is_file():
   dst=stage/p.relative_to(r/'original');dst.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,dst)
 subprocess.run(['git','apply',str(r/'source.patch')],cwd=stage,check=True)
 for fn in v['changedFiles']:
  assert sha(stage/fn)==v['productionSources'][fn]
  assert (stage/fn).read_bytes()==(r/'instrumented-source'/fn).read_bytes()
pipeline=(r/'instrumented-source/libsoftgl/src/pipeline.c').read_text()
worker=(r/'instrumented-source/libsoftgl/src/workers.c').read_text()
queue=(r/'instrumented-source/libsoftgl/src/workers_queue_raw.inc').read_text()
assert pipeline.count('SG_PRODUCER_BEGIN(')==pipeline.count('SG_PRODUCER_END(')==9
assert worker.count('SG_PRODUCER_BEGIN(')==worker.count('SG_PRODUCER_END(')==5
assert queue.count('SG_PRODUCER_BEGIN(')==queue.count('SG_PRODUCER_END(')==4
for name in v['topLevelPhases']:
 assert pipeline.count('SG_PRODUCER_BEGIN('+name.upper()+')')==pipeline.count('SG_PRODUCER_END('+name.upper()+')')==1
assert 'BIN_GROW_CALLS' not in worker and 'ready_count' not in pipeline
observer=(r/'wasm_perf_producer.cjs').read_text()
for row in reversed(json.loads((r/'observer-replacements.json').read_text())):
 assert observer.count(row['new'])==1;observer=observer.replace(row['new'],row['old'])
assert observer==(r/'wasm_perf.cjs').read_text()
identities=json.loads((r/'observer-input-identities.json').read_text())
for fn in ['wasm_perf.cjs','wasm_quiet_audit.py','wasm_perf_producer.cjs','observer-replacements.json']:
 keys=[key for key in identities if key.endswith('/'+fn)];assert len(keys)==1 and sha(r/fn)==identities[keys[0]]
assert m['gateExitCode']==m['finalizerExitCode']==m['observationExitCode']==0
for receipt in v['fullGateReceipts']:assert sha(r/receipt['file'])==receipt['sha256']
for fn,count in [('native-full-tests.log',744),('native-full-bench.log',1),('asan-full-tests.log',24)]:
 assert f'100% tests passed, 0 tests failed out of {count}' in (r/fn).read_text()
mesa=json.loads((r/'mesa-images.json').read_text());assert mesa['wasmSha256']==v['diagnosticWasmSha256'];assert len(mesa['images'])==240 and all(x['passed'] for x in mesa['images'])
for mode,fn in [(0,'all-tests-ms0-results.json'),(2,'all-tests-msaa-results.json'),(4,'all-tests-msaa4-results.json')]:
 data=json.loads((r/fn).read_text());assert data['passed'] and data['samples']==mode and data['exactImages']==len(data['images'])==234
 data=json.loads((r/f'frame-equivalence-{mode}.json').read_text());assert data['wasmSha256']==v['diagnosticWasmSha256'] and data['baselineSha256']==v['referenceWasmSha256']
 assert set(data['models'])=={'bmw','tank'}
 for row in data['models'].values():assert row['workers']==3 and row['frameHashesEqual']==len(row['rows'])==100 and row['representativeFramesByteEqual']==4
contracts=json.loads((r/'wasm-contracts/results.json').read_text());assert contracts['planned']==contracts['completed']==len(contracts['results'])==23
for c in contracts['results']:
 assert c['passed'] and sha(r/c['log'])==c['logSha256'];assert sha(r/'fixtures'/(c['name']+'.c'))==c['fixtureSha256']
for fn in ['native-index_range-run.log','wasm-contracts/index_range-run.log']:
 assert (r/fn).read_text().strip()==json.loads((r/'range-oracle.json').read_text())['stdout'].strip()
for fn in ['native-msaa_edge-run.log','wasm-edge-run.log']:
 assert '4480 frames, 62251008 exact sample masks, 12431040 exact coefficient lanes' in (r/fn).read_text()
for fn in ['native-msaa_store-run.log','wasm-contracts/msaa_store-run.log']:
 text=(r/fn).read_text();assert '262144 exact RGBA quantizations passed' in text
 for mode in [0,2,4]:assert f'{mode}x: 98304 exact post-Z stores, 640 DOT3 query-oracle frames and fallback states passed' in text
for fn in ['native-depth_replay-run.log','wasm-contracts/depth_replay-run.log']:
 text=(r/fn).read_text();assert 'off capture: 4608 cases' in text and '232 LESS ties' in text
 assert '8192 actual LEQUAL/ALWAYS classification cases exact' in text and '416 LESS ties preserved' in text
 assert text.count('22 actual queued state/sample-plane cases exact')==6 and text.count('18 actual queued state/sample-plane cases exact')==12
runs=json.loads((r/'runs/runs.json').read_text());assert len(runs['records'])==6
assert {(x['audit'],x['samples']) for x in runs['records']}=={(a,s) for a in [1,2] for s in [0,2,4]}
for row in runs['records']:
 p=r/'runs'/row['file'];assert sha(p)==row['sha256']
 monitors=sorted(p.parent.glob(p.stem+'.attempt-*.monitor.json'));assert monitors
 passed=[]
 for path in monitors:
  d=json.loads(path.read_text());assert d['guardSha256']==sha(r/'wasm_quiet_audit.py') and d['foreignCPUThresholdCores']==.10 and d['settlePolls']==6 and d['pollSeconds']==.5
  assert path.with_name(path.name.replace('.monitor.json','.log')).is_file()
  if d['exitCode']==0 and not d['unexpectedActivity']:passed.append(d['attempt'])
 assert len(passed)==1
# Recompute repeatability directly from every corresponding-angle counter row.
repeat=json.loads((r/'counter-repeatability.json').read_text());comparisons=[]
for mode in [0,2,4]:
 data=[json.loads((r/'runs'/f'producer-ms{mode}-audit-{audit}.json').read_text()) for audit in [1,2]]
 for scene in ['bmw','tank']:
  left=next(x for x in data[0]['callerProducerObservations'] if x['name']==scene)['rows']
  right=next(x for x in data[1]['callerProducerObservations'] if x['name']==scene)['rows']
  changes=[dict(frame=k,counter=name,left=a['counts'][i],right=b['counts'][i]) for k,(a,b) in enumerate(zip(left,right)) for i,name in enumerate(v['counters']) if a['counts'][i]!=b['counts'][i]]
  comparisons.append(dict(samples=mode,scene=scene,matchedFrames=100,exactCounterFrames=sum(a['counts']==b['counts'] for a,b in zip(left,right)),changes=changes))
assert comparisons==repeat['comparisons'] and repeat['pairedMatchingAngleFrames']==600 and repeat['observedFrames']==1200
assert all(x['exactCounterFrames']==100 and not x['changes'] for x in comparisons)
disabled=json.loads((r/'disabled-identity.json').read_text());assert disabled['disabledWasmSha256']==v['referenceWasmSha256']
assert len(disabled['objects'])==2 and all(x['byteExact'] and x['disabledSha256']==x['referenceSha256'] for x in disabled['objects'])

subprocess.run([sys.executable,str(r/'analyze-observations.py'),'--check'],stdout=subprocess.DEVNULL,check=True)
print(f'PASS: {len(files)} bound artifacts; exact four-file source patch, observer reversal, native744+Bench1/ASan24/WASM23, all-mode image receipts and1200 raw frames with disjoint parent/nested time checks.')
