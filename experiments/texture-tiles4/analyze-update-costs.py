"""Summarize the fixed native mutation-cost diagnostic without FPS claims."""
from pathlib import Path
import hashlib,json,statistics,sys
r=Path(__file__).resolve().parent;load=lambda p:json.loads(p.read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
data=load(r/'update-costs.json');producers=load(r/'update-cost-producer.json')
assert data['notAcceptanceTimings'] and len(data['records'])==12
expected=[(g,v) for g in range(1,7) for v in (['reference','candidate'] if g%2 else ['candidate','reference'])]
assert [(d['group'],d['variant']) for d in data['records']]==expected
rows={};sizes={}
for record in data['records']:
 variant=record['variant'];producer=producers[variant=='candidate'];d=record['data']
 assert record['binarySha256']==producer['binarySha256'] and json.loads(record['rawStdout'])==d
 assert d['notAcceptanceTimings'] and d['warmup']==4 and d['iterations']==40 and d['noWorkers'] and len(d['records'])==20
 sizes[variant]=dict(texture=d['textureStructBytes'],unit=d['unitStructBytes'])
 for t in d['records']:
  key=t['width'],t['height'],t['operation'];assert t['derivedBytes']==(t['rowBytes'] if variant=='candidate' else 0)
  assert t['msPerUpdate']>0 and abs(t['elapsedMs']/40-t['msPerUpdate'])<1e-8
  rows.setdefault(key,{}).setdefault(variant,[]).append(t['msPerUpdate'])
summary=[]
for (width,height,operation),times in sorted(rows.items()):
 assert len(times['candidate'])==len(times['reference'])==6
 reference=statistics.median(times['reference']);candidate=statistics.median(times['candidate'])
 summary.append(dict(width=width,height=height,operation=operation,referenceMedianMs=reference,candidateMedianMs=candidate,
     extraMedianMs=candidate-reference,medianRatio=candidate/reference,rawMs=times))
accepted=[];attempts=[]
for monitor in sorted(r.glob('update-costs.attempt-*.monitor.json')):
 q=load(monitor);assert q['guardSha256']==sha(r/'wasm_quiet_audit.py') and q['foreignCPUThresholdCores']==.10
 assert q['settlePolls']==6 and q['pollSeconds']==.5 and monitor.with_name(monitor.name.replace('.monitor.json','.log')).is_file()
 attempts.append(dict(file=monitor.name,sha256=sha(monitor),exitCode=q['exitCode'],unexpectedActivity=q['unexpectedActivity']))
 if not q['unexpectedActivity'] and q['exitCode']==0:accepted.append(monitor.name)
assert len(accepted)==1
result=dict(scope=data['scope'],notAcceptanceTimings=True,sourceSha256=sha(r/'texture-update-cost.c'),structBytes=sizes,summary=summary,attempts=attempts)
if '--check' in sys.argv:assert load(r/'update-cost-analysis.json')==result
else:(r/'update-cost-analysis.json').write_text(json.dumps(result,indent=2)+'\n')
for d in summary:
 print(d['width'],d['height'],d['operation'],'row/tile/extra-ms',d['referenceMedianMs'],d['candidateMedianMs'],d['extraMedianMs'])
print('PASS: all12 ordered native API-only diagnostic runs; no renderer acceptance timing claim')
