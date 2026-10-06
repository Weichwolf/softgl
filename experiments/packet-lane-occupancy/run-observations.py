"""Repeat logical observations with fixed modes, model order and frame checks."""
from pathlib import Path
import hashlib,importlib.util,json,os,subprocess
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;v=json.loads((r/'validation.json').read_text())
assert v['status']=='full-fidelity-gates-passed-ready-for-observations'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
for name,digest in json.loads((r/'observer-input-identities.json').read_text()).items():assert sha(repo/name)==digest,name
spec=importlib.util.spec_from_file_location('row_check',r/'check-row.py');checker=importlib.util.module_from_spec(spec);spec.loader.exec_module(checker)
out=r/'runs';out.mkdir(exist_ok=True);records=[]
env=dict(os.environ,NODE_PATH=str(repo/'build/node/node_modules'),TMPDIR=str(repo/'build/tmp'),XDG_CACHE_HOME=str(repo/'build/browser-cache'))
for audit in [1,2]:
 for samples in ([0,2,4] if audit==1 else [4,2,0]):
  output=out/f'lanes-ms{samples}-audit-{audit}.json'
  if not output.exists():
   subprocess.run(['python3','tools/wasm_quiet_audit.py',str(output),'node',str(r/'wasm_perf_lanes.cjs'),'--bench-only','--wasm-build','build/controls/packet-lane-occupancy-candidate','--native-build',str(r/'native-full'),'--scenes','bmw,tank' if audit==1 else 'tank,bmw','--samples',str(samples),'--rounds','1','--warmup','80','--frames','100','--output',str(output)],env=env,check=True)
  data=json.loads(output.read_text());assert data['wasmSha256']==v['diagnosticWasmSha256'] and data['notAcceptanceTimings']
  assert data['driverSha256']==sha(r/'wasm_perf_lanes.cjs')
  assert data['benchmarks']['workerCounts']=={'candidate':3} and data['benchmarks']['samples']==samples and data['benchmarks']['resolvePerFrame']
  accepted=[]
  for p in out.glob(output.stem+'.attempt-*.monitor.json'):
   q=json.loads(p.read_text())
   assert q['guardSha256']==sha(repo/'tools/wasm_quiet_audit.py') and q['foreignCPUThresholdCores']==.10
   if not q['unexpectedActivity'] and q['exitCode']==0:accepted.append(p.name)
  assert len(accepted)==1
  observations=data['laneObservations'];assert [x['name'] for x in observations]==(['bmw','tank'] if audit==1 else ['tank','bmw'])
  expected=json.loads((r/f'frame-equivalence-{samples}.json').read_text())['models']
  for observation in observations:
   name=observation['name'];assert observation['workers']==3 and observation['samples']==samples and observation['round']==0 and observation['variant']=='candidate'
   assert observation['warmup']==80 and observation['frames']==len(observation['rows'])==100
   checked=[]
   for i,row in enumerate(observation['rows']):
    assert row['frame']==i and row['angle']==i*360/100
    checked.append(checker.check_row(row,samples,expected[name]['rows'][i]['hash']))
   total_packets=sum(x['packets'] for x in checked);total_pixels=sum(x['pixels'] for x in checked)
   fraction=round(total_pixels/(4*total_packets)*100,3) if total_packets else None
   print('audit',audit,'samples',samples,name,'useful lanes percent',fraction,'packets/frame',total_packets/100,flush=True)
  records.append(dict(audit=audit,samples=samples,file=output.name,sha256=sha(output)))
  (out/'runs.json').write_text(json.dumps(dict(wasmSha256=v['diagnosticWasmSha256'],notAcceptanceTimings=True,records=records),indent=2)+'\n')
print('All6 guarded observations and1200 full-frame/hash/thread partition checks complete',flush=True)
