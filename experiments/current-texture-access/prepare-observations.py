from pathlib import Path
import hashlib,json,subprocess,urllib.request,os
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;v=json.loads((r/'validation.json').read_text());p=repo/'build/diagnostics/simd-index-range';base=json.loads((p/'validation.json').read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
assert not subprocess.check_output(['git','status','--porcelain'],text=True).strip()
assert subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()==v['researchBaselineCommit']
for name,digest in base['productionSources'].items():assert sha(repo/name)==digest,name
for name,digest in base['finalSourceFiles'].items():assert sha(repo/name)==digest,name
assert v['referenceWasmSha256']==base['candidateWasmSha256']
receipts=[]
for x in base['fullGateReceipts']:
 assert sha(p/x['file'])==x['sha256'];receipts.append(x)
for filename,count in [('native-full-tests.log',744),('native-full-bench.log',1),('asan-full-tests.log',24)]:
 assert f'100% tests passed, 0 tests failed out of {count}' in (p/filename).read_text()
assert base['canonicalJsWasmByteExact'] and base['canonicalNativeAllPassed'] and base['bothBrowserUiGatesPassed']
live={}
for name in ['softgl.js','softgl.wasm','main.js','index.html','bmw.pack','tank.pack']:
 with urllib.request.urlopen('http://127.0.0.1:8000/'+name) as response:
  data=response.read();assert response.headers['Cross-Origin-Opener-Policy']=='same-origin' and response.headers['Cross-Origin-Embedder-Policy']=='require-corp'
 assert data==(repo/'build/controls/simd-index-range-candidate'/name).read_bytes()==(repo/'build/wasm'/name).read_bytes()
 live[name]=dict(bytes=len(data),sha256=hashlib.sha256(data).hexdigest())
(r/'baseline-fidelity.json').write_text(json.dumps(dict(status='unmodified-accepted-D4-full-gates-and-live-bound',productionSources=base['productionSources'],finalSourceFiles=base['finalSourceFiles'],referenceWasmSha256=v['referenceWasmSha256'],fullGateReceipts=receipts,regressions=base['regressions'],liveAssets=live,baselineValidationSha256=sha(p/'validation.json'),linuxKernel=os.uname().release,perfEventParanoid=Path('/proc/sys/kernel/perf_event_paranoid').read_text().strip()),indent=2)+'\n')
v.update(status='hardware-observer-preflight-passed-ready-for12-guarded-observations',hardwareCollectorSha256=sha(r/'pmu-collector'),softwareTaskClock=True,eventSemantics='Five grouped user/hypervisor-excluded hardware events; separate software TASK_CLOCK with same exclusions. General cache-miss event, not the unsupported LL-read-miss type. CPU task clock, instruction counts and cache events do not isolate useful WASM work or texture work.',preflight='Final user-excluded task-clock collector selfcheck and12-frame BMW0 observer pass; earlier LL event, unbuilt generator assertion, and default kernel task-clock permission failure retained. No failed attempt reached an enabled renderer counter interval.')
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
print('Current D4 source/module/full fidelity and live assets bound; hardware observer preflight passes')
