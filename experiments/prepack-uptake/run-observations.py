"""Two guarded model observations per MSAA mode; no acceptance timing claims."""
from pathlib import Path
import hashlib,importlib.util,json,os,subprocess
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;v=json.loads((r/'validation.json').read_text());assert v['status']=='full-fidelity-gates-passed-ready-for-observations'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
for artifact,digest in json.loads((r/'observer-input-identities.json').read_text()).items():assert sha(repo/artifact)==digest,artifact
spec=importlib.util.spec_from_file_location('row_check',r/'check-row.py');checker=importlib.util.module_from_spec(spec);spec.loader.exec_module(checker)
out=r/'runs';out.mkdir(exist_ok=False)
env=dict(os.environ,NODE_PATH=str(repo/'build/node/node_modules'),TMPDIR=str(repo/'build/tmp'),XDG_CACHE_HOME=str(repo/'build/browser-cache'))
records=[]
for audit in (1,2):
 for samples in ((0,2,4) if audit==1 else (4,2,0)):
  output=out/f'uptake-ms{samples}-audit-{audit}.json'
  subprocess.run(['python3','tools/wasm_quiet_audit.py',str(output),'node',str(r/'wasm_perf_producer.cjs'),'--bench-only','--wasm-build','build/controls/prepack-uptake-diagnostic','--native-build',str(r/'native-full'),'--scenes','bmw,tank','--samples',str(samples),'--rounds','1','--warmup','80','--frames','100','--output',str(output)],env=env,check=True)
  data=json.loads(output.read_text());assert data['wasmSha256']==v['diagnosticWasmSha256'] and data['notAcceptanceTimings']
  assert data['benchmarks']['workerCounts']=={'candidate':3} and data['benchmarks']['samples']==samples and data['benchmarks']['resolvePerFrame']
  observations=data['prepackObservations'];assert len(observations)==2 and {x['name'] for x in observations}=={'bmw','tank'}
  for observation in observations:
   assert observation['workers']==3 and observation['samples']==samples and observation['round']==0 and observation['variant']=='candidate'
   assert observation['warmup']==80 and observation['frames']==len(observation['rows'])==100
   checked=[checker.check_row(row,v)[0] for row in observation['rows']]
   print('audit',audit,'samples',samples,observation['name'],'eligible/adopted/budget misses means',[sum(x[n] for x in checked)/100 for n in ['eligible','adopted','budget_unavailable']],flush=True)
  records.append(dict(audit=audit,samples=samples,file=output.name,sha256=sha(output)));(out/'runs.json').write_text(json.dumps(dict(wasmSha256=v['diagnosticWasmSha256'],notAcceptanceTimings=True,records=records),indent=2)+'\n')
print('All six guarded observations and1200 per-frame partition checks complete',flush=True)
