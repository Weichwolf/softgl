"""Check source/evidence closure, fidelity receipts and all fixed quiet timings."""
from pathlib import Path
import hashlib,json,shutil,subprocess,sys,tempfile
sys.dont_write_bytecode=True
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve()
load=lambda p:json.loads(p.read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
m=load(r/'results.json');v=load(r/'validation.json')
actual={str(p.relative_to(r)) for p in r.rglob('*') if p.is_file() and p!=r/'results.json' and '__pycache__' not in p.parts}
assert actual==set(m['artifacts'])
for name,digest in m['artifacts'].items():assert sha(r/name)==digest,name
for name,digest in m['sourceDependencies'].items():assert sha(repo/name)==digest,name
assert m['status'] in ['accepted','rejected'] and m['goalRemainsActive']
assert m['rendererAdopted']==(m['status']=='accepted')
assert m['candidateWasmSha256']==v['candidateWasmSha256']
assert m['referenceWasmSha256']==v['referenceWasmSha256']
assert v['status']=='full-fidelity-gates-passed-ready-for-timings'
assert load(r/'process-completion.json')==dict(gateStatus='terminal',gateExitCode=0,timingExitCode=0,timingStatus='terminal')
assert sha(r/'source.patch')==v['patchSha256'] and v['independentSourcePatchVerified']
assert len(v['objects'])==len(v['disabledObjects'])==20 and len(v['linkedObjects'])==259
base=load(r/'baseline-producer.json');by_name=lambda items:{Path(k).name:d for k,d in items.items()}
assert v['disabledBuildByteExact'] and v['disabledWasmSha256']==base['referenceWasmSha256']==v['referenceWasmSha256']
assert v['disabledJsSha256']==base['referenceJsSha256'] and by_name(v['disabledObjects'])==by_name(base['objects'])
comp=load(r/'object-comparison.json');assert len(comp)==20 and [n for n,equal in comp.items() if not equal]==['rasterizer.c.o','workers.c.o']
commands=load(r/'producer-commands.json');assert [x['enabled'] for x in commands]==[False,True]
for row in commands:
 assert len(row['compile'])==20
 for cmd in row['compile']:assert '-O2' in cmd and '-msimd128' in cmd and '-pthread' in cmd and '-DSG_FRAGMENT_STREAM_DIAG=1' not in cmd
assert load(r/'native-warnings-comparison.json')['newWarningLines']==[]
assert load(r/'native-warnings-comparison.json')['candidateLogSha256']==sha(r/'native-full-build.log')
tmp=repo/'build/tmp';tmp.mkdir(parents=True,exist_ok=True)
def reconstruct(patch,hashes):
 with tempfile.TemporaryDirectory(dir=tmp) as directory:
  stage=Path(directory)
  for name in v['changedFiles']:
   old=r/'original'/name
   if old.exists():
    target=stage/name;target.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(old,target)
  subprocess.run(['git','init','-q'],cwd=stage,check=True)
  subprocess.run(['git','apply',str(patch)],cwd=stage,check=True)
  for name,digest in hashes.items():assert sha(stage/name)==digest,name
reconstruct(r/'source.patch',v['finalSourceFiles'])
for name,digest in v['finalSourceFiles'].items():assert sha(r/'candidate-source'/name)==digest,name
for receipt in v['fullGateReceipts']:assert sha(r/receipt['file'])==receipt['sha256']
for name,count in [('native-full-tests.log',746),('native-full-bench.log',1),('asan-full-tests.log',26)]:assert f'100% tests passed, 0 tests failed out of {count}' in (r/name).read_text(),name
mesa=load(r/'mesa-images.json');assert mesa['wasmSha256']==v['candidateWasmSha256'] and len(mesa['images'])==240 and all(x['passed'] for x in mesa['images'])
for samples,name in [(0,'all-tests-ms0-results.json'),(2,'all-tests-msaa-results.json'),(4,'all-tests-msaa4-results.json')]:
 images=load(r/name);assert images['passed'] and images['samples']==samples and images['exactImages']==len(images['images'])==234
 frames=load(r/f'frame-equivalence-{samples}.json');assert frames['wasmSha256']==v['candidateWasmSha256'] and frames['baselineSha256']==v['referenceWasmSha256']
 assert set(frames['models'])=={'bmw','tank'}
 for model in frames['models'].values():assert model['workers']==3 and model['frameHashesEqual']==len(model['rows'])==100 and model['representativeFramesByteEqual']==4
contracts=load(r/'wasm-contracts/results.json');assert contracts['completed']==contracts['planned']==len(contracts['results'])==24
for row in contracts['results']:
 assert row['passed'] and sha(r/row['log'])==row['logSha256']
 assert sha(r/'fixtures'/(row['name']+'.c'))==row['fixtureSha256']
for filename in ['native-cross_triangle_packets-run.log','wasm-contracts/cross_triangle_packets-run.log']:
 t=(r/filename).read_text();assert 'Varying shader: 659712 exact scalar comparisons, 126720 nonpositive-W rejections, 14050 wide edge inputs' in t
for filename in ['native-cross_triangle_packets-run.log','native-cross_triangle_packets_production-run.log','wasm-contracts/cross_triangle_packets-run.log']:
 t=(r/filename).read_text();assert 'Direct packet raster: 36 bytewise complete-plane cases, 18 proven deferred tiny-triangle stages' in t and 'Queued packet API: 288 matching full-plane/query signatures' in t
assert len(v['finalSourceFiles'])==11
for name in ['native-producer.json','sanitizer-producer.json']:
 producer=load(r/name);assert producer['sourcePatchSha256']==v['patchSha256'] and len(producer['objects'])==20
 assert producer['sourceFiles']==v['finalSourceFiles'] and '-DSG_CROSS_FRAGMENT_PACKETS=1' in producer['libraryCompileFlags']
for name,digest in load(r/'inline-codegen/codegen.json')['sourceFiles'].items():assert sha(r/'inline-codegen/candidate-source'/name)==digest,name
codegen=load(r/'codegen.json');assert codegen['oneFlushFunction'] and codegen['sourcePatchSha256']==v['patchSha256']
assert [x['textBytes'] for x in codegen['objects']]==[252390,231430]
assert load(r/'previous-default-build-attempt.json')['notAcceptanceTimings']
previous=load(r/'earlier-default-build/validation.json')
assert sha(r/'earlier-default-build/source.patch')==previous['patchSha256']
reconstruct(r/'earlier-default-build/source.patch',previous['finalSourceFiles'])
assert 'multiple definition of' in (r/'earlier-default-build/native-full-build.log').read_text()
assert load(r/'inline-codegen/codegen.json')['sanitizerFixturesExecuted']==False
assert load(r/'recipe-check/reproduction-receipt.json')['changedSourcesExact'] and not load(r/'recipe-check/reproduction-receipt.json')['rendererBuildExecuted']
for name,digest in v['finalSourceFiles'].items():assert sha(r/'recipe-check'/name)==digest,name
# The scripts independently recompute all ratios and intervals from the raw records.
for script in ['analyze-timings.py','analyze-uncertainty.py']:
 subprocess.run([sys.executable,str(r/script),'--check'],cwd=repo,check=True)
# Inspect every quiet monitor without requiring private modules to exist.
analysis=load(r/'analysis.json');assert len(analysis['records'])==18
for entry in analysis['records']:
 data=load(r/'timings'/entry['file']);assert data['wasmSha256']==v['candidateWasmSha256'] and data['referenceWasmSha256']==v['referenceWasmSha256']
 stem=Path(entry['file']).stem;monitors=list((r/'timings').glob(stem+'.attempt-*.monitor.json'));assert monitors
 records=[load(p) for p in monitors];assert any(d['exitCode']==0 and not d['unexpectedActivity'] for d in records)
 for d in records:
  assert d['foreignCPUThresholdCores']==.10
  assert d['guardSha256']==sha(r/'wasm_quiet_audit.py')
assert load(r/'decision.json')['status']==m['status']
print('PASS: eleven-file source reconstruction, full fidelity, GCC sanitizer contracts, diagnostic-attempt retention and eighteen fixed quiet crossover pairs')
