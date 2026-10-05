#!/usr/bin/env python3
"""Verify archived profile evidence and independently recompute self samples."""
from collections import defaultdict
from pathlib import Path
import hashlib,json,math,re
r=Path(__file__).resolve().parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
m=json.loads((r/'results.json').read_text())
assert set(m['artifacts'])=={str(p.relative_to(r)) for p in r.rglob('*') if p.is_file() and p!=r/'results.json'}
for f,h in m['artifacts'].items(): assert sha(r/f)==h,f
assert m['notAcceptanceTimings'] is True
assert sha(r/'module.symbols')==m['symbolMapSha256']
symbols={int(l.split(':',1)[0]):l.split(':',1)[1] for l in (r/'module.symbols').read_text().splitlines()}
runs=json.loads((r/'runs/runs.json').read_text())
assert runs['wasmSha256']==m['moduleSha256'] and runs['symbolMapSha256']==m['symbolMapSha256']
assert {(i['scene'],i['samples']) for i in runs['runs']}=={(s,n) for s in ('bmw','tank') for n in (0,2,4)}
for run in runs['runs']:
 base=r/'runs'; result=json.loads((base/run['result']).read_text()); summary=json.loads((base/run['summary']).read_text()); raw=json.loads((base/run['profile']).read_text())
 for key in ('result','summary','profile'): assert sha(base/run[key])==run[key+'Sha256']
 assert result['wasmSha256']==m['moduleSha256']
 assert result['profile']['preparation']=={'frames':240,'warmup':80,'workers':3}
 assert result['options']['samples']==run['samples'] and result['options']['frames']==240 and result['options']['warmup']==80
 assert result['benchmarks']['workers']==3 and result['benchmarks']['resolvePerFrame'] is True
 assert result['metadata']['width']==640 and result['metadata']['height']==360
 assert summary['sourceResultSha256']==sha(base/run['result']) and summary['sourceProfileSha256']==sha(base/run['profile'])
 assert summary['wasmSha256']==m['moduleSha256'] and summary['symbolMapSha256']==sha(r/'module.symbols')
 assert summary['scene']==raw['scene']==run['scene'] and summary['samples']==run['samples']
 assert summary['frames']==240 and summary['intervalUs']==result['profile']['intervalUs']==1000
 assert len(raw['profiles'])==len(summary['profiles'])==9
 total=defaultdict(lambda:[0,0.]); active=0
 for profile,row in zip(raw['profiles'],summary['profiles']):
  p=profile['profile']; nodes={n['id']:n['callFrame']['functionName'] for n in p['nodes']}; values=defaultdict(lambda:[0,0.])
  assert len(p['samples'])==len(p['timeDeltas'])
  for sample,delta in zip(p['samples'],p['timeDeltas']):
   assert math.isfinite(delta) and delta>=0
   name=nodes[sample]; match=re.fullmatch(r'wasm-function\[(\d+)\]',name)
   if match: name=symbols[int(match[1])]
   values[name][0]+=1; values[name][1]+=delta/1000
  renderer=sum(v[1] for k,v in values.items() if k.startswith(('sg_','_sg_')))
  selected=profile['label']=='main' or renderer>=10
  assert row['selected']==selected and row['label']==profile['label'] and row['rendererSampledSelfMs']==renderer
  assert {v['name']:(v['selfSamples'],v['sampledSelfMs'],v['sampledSelfMsPerFrame']) for v in row['functions']}=={k:(v[0],v[1],v[1]/240) for k,v in values.items()}
  if selected:
   if profile['label']!='main': active+=1
   for k,v in values.items(): total[k][0]+=v[0]; total[k][1]+=v[1]
 assert active==summary['observedActiveWorkers']==3
 assert {v['name']:(v['selfSamples'],v['sampledSelfMs'],v['sampledSelfMsPerFrame']) for v in summary['combinedSelectedFunctions']}=={k:(v[0],v[1],v[1]/240) for k,v in total.items()}
 passed=0
 for attempt in run['attempts']:
  assert sha(base/attempt['file'])==attempt['sha256']
  guard=json.loads((base/attempt['file']).read_text()); assert guard['foreignCPUThresholdCores']==.10
  ok=guard['exitCode']==0 and not guard['unexpectedActivity']; assert ok==attempt['passed']; passed+=ok
 assert passed==1 and len(run['attempts'])==1
 print(run['scene'],run['samples'],'profile/guard/self samples verified')
print('Verified',len(m['artifacts']),'artifact hashes and all six current-renderer profiles; no performance claim')
