from pathlib import Path
import os,subprocess,json,hashlib,math,statistics
repo=Path.cwd();out=repo/'build/perf/tigerlake-20261005';env=os.environ.copy();env.update(NODE_PATH=str(repo/'build/node/node_modules'),TMPDIR=str(repo/'build/tmp'),XDG_CACHE_HOME=str(repo/'build/browser-cache'))
candidate=repo/'build/controls/msaa-edge-reuse-candidate';reference=repo/'build/controls/hz2-static-candidate'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
result={'purpose':'Three predeclared additional 4x pairs to check the small BMW gain and mixed T80 result after the complete fifteen-pair protocol. No further acceptance timings planned for this variant.','candidateWasmSha256':sha(candidate/'softgl.wasm'),'referenceWasmSha256':sha(reference/'softgl.wasm'),'samples':4,'pairs':[],'scenes':[]}
for pair in range(1,4):
 p=out/f'msaa-edge-reuse-confirm4-pair-{pair}.json';assert not p.exists()
 subprocess.run(['python3','tools/wasm_quiet_audit.py',str(p),'node','tools/wasm_perf.cjs','--bench-only','--crossover','--wasm-build',str(candidate),'--reference-build',str(reference),'--scenes','bmw,tank','--samples','4','--rounds','2','--warmup','80','--frames','100','--output',str(p)],env=env,check=True)
 d=json.loads(p.read_text());b=d['benchmarks'];assert d['wasmSha256']==result['candidateWasmSha256'] and d['referenceWasmSha256']==result['referenceWasmSha256'];assert b['samples']==4 and b['resolvePerFrame'] and b['workerCounts']=={'candidate':3,'reference':3};assert b['protocol']=='page crossover AB/BA, two-round geometric pairs';assert d['options']['rounds']==2 and d['options']['warmup']==80 and d['options']['frames']==100;assert d['metadata']['width']==640 and d['metadata']['height']==360;assert d['modelAssets']['candidatePackSha256']==d['modelAssets']['referencePackSha256'] and d['modelAssets']['candidatePackSha256']
 for s in b['scenes']:
  assert len(s['samples'])==len(s['reference']['samples'])==2 and all(math.isfinite(t) and t>0 for t in s['samples']+s['reference']['samples']);assert math.isclose(s['medianRatio'],math.sqrt(math.prod(t/r for t,r in zip(s['samples'],s['reference']['samples']))),rel_tol=1e-12)
 attempts=[{'file':p.name,'record':json.loads(p.read_text())} for p in sorted(out.glob(p.stem+'.attempt-*.monitor.json'))];passed=[x for x in attempts if x['record']['exitCode']==0 and not x['record']['unexpectedActivity']];assert passed and all(x['record']['foreignCPUThresholdCores']==.10 for x in passed)
 result['pairs'].append({'file':p.name,'measurement':d,'acceptedMonitors':passed,'attempts':attempts});print('Confirmation pair',pair,'verified',flush=True)
for name in ['bmw','tank']:
 scenes=[next(s for s in p['measurement']['benchmarks']['scenes'] if s['name']==name) for p in result['pairs']];ratios=[s['medianRatio'] for s in scenes];times=[t for s in scenes for t in s['samples']];result['scenes'].append({'name':name,'changePercent':(statistics.median(ratios)-1)*100,'pairRatios':ratios,'medianMs':statistics.median(times),'fps':1000/statistics.median(times)})
(out/'msaa-edge-reuse-confirm4-results.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result['scenes']),flush=True)
