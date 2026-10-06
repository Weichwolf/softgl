"""Independently verify every frame partition and summarize raw observations."""
from pathlib import Path
import hashlib,importlib.util,json,math,statistics,sys
sys.dont_write_bytecode=True
r=Path(__file__).resolve().parent;v=json.loads((r/'validation.json').read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
spec=importlib.util.spec_from_file_location('row_check',r/'check-row.py');checker=importlib.util.module_from_spec(spec);spec.loader.exec_module(checker)
index=json.loads((r/'runs/runs.json').read_text());assert index['wasmSha256']==v['diagnosticWasmSha256'] and index['notAcceptanceTimings'] and len(index['records'])==6
rows=[];summary=[];guards=[]
for record in index['records']:
 p=r/'runs'/record['file'];assert sha(p)==record['sha256'];data=json.loads(p.read_text());assert data['wasmSha256']==v['diagnosticWasmSha256'] and data['notAcceptanceTimings']
 assert data['metadata']['width']==640 and data['metadata']['height']==360 and data['metadata']['crossOriginIsolated']
 assert data['options']['rounds']==1 and data['options']['warmup']==80 and data['options']['frames']==100
 assert data['benchmarks']['workerCounts']=={'candidate':3} and data['benchmarks']['samples']==record['samples'] and data['benchmarks']['resolvePerFrame']
 monitors=[]
 for m in sorted((r/'runs').glob(p.stem+'.attempt-*.monitor.json')):
  d=json.loads(m.read_text());assert d['foreignCPUThresholdCores']==.10;monitors.append(dict(file=m.name,sha256=sha(m),exitCode=d['exitCode'],unexpectedActivity=d['unexpectedActivity']))
 assert monitors and any(x['exitCode']==0 and not x['unexpectedActivity'] for x in monitors);guards.extend(monitors)
 observations=data['prepackObservations'];assert len(observations)==2 and {x['name'] for x in observations}=={'bmw','tank'}
 for ob in observations:
  assert ob['workers']==3 and ob['samples']==record['samples'] and ob['warmup']==80 and ob['frames']==len(ob['rows'])==100 and ob['round']==0 and ob['variant']=='candidate'
  parsed=[]
  for frame,raw in enumerate(ob['rows']):
   assert raw['frame']==frame and math.isclose(raw['angle'],frame*3.6,abs_tol=1e-12)
   counts,phases,calls=checker.check_row(raw,v);item=dict(scene=ob['name'],samples=record['samples'],audit=record['audit'],frame=frame,angle=raw['angle'],counts=counts,phasesMs=phases,calls=calls,frameElapsedMs=raw['frameElapsedMs']);rows.append(item);parsed.append(item)
  def dist(values):return dict(mean=statistics.mean(values),median=statistics.median(values),min=min(values),max=max(values))
  counter={n:dist([x['counts'][n] for x in parsed]) for n in v['counters']};phase={n:dist([x['phasesMs'][n] for x in parsed]) for n in v['phases']}
  logical=sum(x['counts']['ordered_bytes'] for x in parsed);adopted=sum(x['counts']['adopted_bytes'] for x in parsed)
  summary.append(dict(scene=ob['name'],samples=record['samples'],audit=record['audit'],counts=counter,phasesMs=phase,adoptedLogicalByteFraction=adopted/logical if logical else None))
assert len(rows)==1200 and len(summary)==12
repeat=[]
for scene in ('bmw','tank'):
 for samples in (0,2,4):
  first=[x for x in rows if x['scene']==scene and x['samples']==samples and x['audit']==1];second=[x for x in rows if x['scene']==scene and x['samples']==samples and x['audit']==2];assert len(first)==len(second)==100
  # Report scheduling-dependent differences; exact equality is not required.
  equal={n:sum(a['counts'][n]==b['counts'][n] for a,b in zip(first,second)) for n in v['counters']}
  repeat.append(dict(scene=scene,samples=samples,equalFramesByCounter=equal,note='Uptake/budget/ownership routes depend on worker progress. These are observation counts, not inferred noninstrumented routes.'))
result=dict(diagnosticWasmSha256=v['diagnosticWasmSha256'],parentCandidateWasmSha256=v['parentCandidateWasmSha256'],referenceWasmSha256=v['referenceWasmSha256'],notAcceptanceTimings=True,checkedFrames=len(rows),rows=rows,summary=summary,repeatability=repeat,guards=guards)
if '--check' in sys.argv:assert json.loads((r/'analysis.json').read_text())==result
else:(r/'analysis.json').write_text(json.dumps(result,indent=2)+'\n')
for x in summary:
 print(x['scene'],x['samples'],x['audit'],'eligible/ready/adopted/budget/discarded',[round(x['counts'][n]['mean'],4) for n in ['eligible','ready','adopted','budget_unavailable','discarded']],'adopted logical byte fraction',x['adoptedLogicalByteFraction'])
print('Verified1200 actual per-frame counter/clock partitions and six guarded runs; no acceptance FPS claim')
