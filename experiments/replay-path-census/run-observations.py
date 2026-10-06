from pathlib import Path
import json,hashlib,os,subprocess,math
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;v=json.loads((r/'validation.json').read_text())
assert v['status']=='full-fidelity-gates-passed-ready-for-observations'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
for fn,digest in json.loads((r/'observer-input-identities.json').read_text()).items():assert sha(repo/fn)==digest,fn
out=r/'runs';out.mkdir(exist_ok=False);env=dict(os.environ,NODE_PATH=str(repo/'build/node/node_modules'),TMPDIR=str(repo/'build/tmp'),XDG_CACHE_HOME=str(repo/'build/browser-cache'))
records=[]
for audit in (1,2):
 for mode in ((0,2,4) if audit==1 else (4,2,0)):
  p=out/f'replay-ms{mode}-audit-{audit}.json'
  subprocess.run(['python3','tools/wasm_quiet_audit.py',str(p),'node',str(r/'wasm_perf_replay.cjs'),'--bench-only','--wasm-build','build/controls/replay-path-census-diagnostic','--native-build',str(r/'native-full'),'--scenes','bmw,tank','--samples',str(mode),'--rounds','1','--warmup','80','--frames','100','--output',str(p)],env=env,check=True)
  d=json.loads(p.read_text());assert d['wasmSha256']==v['diagnosticWasmSha256'] and d['notAcceptanceTimings']
  assert d['benchmarks']['workerCounts']=={'candidate':3} and d['benchmarks']['resolvePerFrame'] and d['benchmarks']['samples']==mode
  obs=d['replayPathObservations'];assert len(obs)==2 and {x['name'] for x in obs}=={'bmw','tank'}
  for o in obs:
   assert o['workers']==3 and o['samples']==mode and o['warmup']==80 and o['frames']==len(o['rows'])==100 and o['round']==0 and o['variant']=='candidate'
   for row in o['rows']:
    values=row['counts'];assert len(values)==8 and all(isinstance(x,(int,float)) and x>=0 and x<2**53 and int(x)==x for x in values)
    calls,empty,total,filtered,filter_in,filter_out,copied,copy_records=values
    assert total==filter_in+copy_records and filter_out<=filter_in
    assert empty+filtered+copied==calls*(12 if mode==0 else 32)
    assert math.isfinite(row['frameElapsedMs']) and row['frameElapsedMs']>0
   means=[sum(row['counts'][i] for row in o['rows'])/100 for i in range(8)]
   print('audit',audit,'samples',mode,o['name'],dict(zip(v['counters'],means)),flush=True)
  records.append(dict(audit=audit,samples=mode,file=p.name,sha256=sha(p)))
  (out/'runs.json').write_text(json.dumps(dict(wasmSha256=v['diagnosticWasmSha256'],notAcceptanceTimings=True,records=records),indent=2)+'\n')
print('All six guarded audits complete;1200 raw scene frames',flush=True)
