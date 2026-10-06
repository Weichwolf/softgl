from pathlib import Path
import json,hashlib,subprocess,sys
r=Path(__file__).resolve().parent;records=json.loads((r/'observations.json').read_text());assert records['completed']==records['planned']==len(records['records'])==12
v=json.loads((r/'validation.json').read_text());result=[]
for entry in records['records']:
 p=r/entry['file'];assert hashlib.sha256(p.read_bytes()).hexdigest()==entry['sha256']
 d=json.loads(p.read_text());h=d['hardwareProfile'];assert d['wasmSha256']==v['referenceWasmSha256'];assert h['preparation']==dict(warmup=80,frames=240,workers=3)
 counts=[0.]*5;raw=[0]*5;clock=0;threads=[]
 for row in h['rows']:
  enabled=row['timeEnabledNs'];running=row['timeRunningNs'];ratio=running/enabled if enabled else None
  scale=enabled/running if running else 0
  assert not any(row['values']) or running>0
  vals=[x*scale for x in row['values']]
  raw=[a+b for a,b in zip(raw,row['values'])];counts=[a+b for a,b in zip(counts,vals)];clock+=row['taskClockNs']
  threads.append(dict(pid=row['pid'],tid=row['tid'],name=row['name'],birthTicks=row['birthTicks'],raw=row['values'],scaled=vals,runningFraction=ratio,taskClockNs=row['taskClockNs']))
 frames=240;wall=h['render']['elapsedMs'];cycles,instructions,branches,l1,cache=counts
 one=dict(audit=entry['audit'],scene=entry['scene'],samples=entry['samples'],file=entry['file'],sha256=entry['sha256'],frames=frames,threadCount=len(threads),events=[x['name'] for x in h['events']],rawTotals=raw,scaledTotals=counts,threads=threads,
  renderWindowMs=wall,frameMs=wall/frames,taskClockMsPerFrame=clock/1e6/frames,taskClockOverRenderWindow=clock/1e6/wall,
  cyclesPerFrame=cycles/frames,instructionsPerFrame=instructions/frames,branchMissesPerFrame=branches/frames,l1dReadMissesPerFrame=l1/frames,generalCacheMissesPerFrame=cache/frames,
  ipc=instructions/cycles,branchMissesPerKInstructions=branches/instructions*1000,l1dReadMissesPerKInstructions=l1/instructions*1000,generalCacheMissesPerKInstructions=cache/instructions*1000,
  activeDedicatedWorkers=sum(x['name']=='DedicatedWorker' and x['raw'][1]>0 for x in threads),minimumPositiveRunningFraction=min(x['runningFraction'] for x in threads if x['runningFraction'] is not None),
  enableSpreadNs=h['collector']['started']['endNs']-h['collector']['started']['beginNs'],disableSpreadNs=h['collector']['stopped']['endNs']-h['collector']['stopped']['beginNs'])
 assert one['activeDedicatedWorkers']==3;result.append(one)
summary=[]
for scene in ['bmw','tank']:
 for mode in [0,2,4]:
  pair=sorted([x for x in result if x['scene']==scene and x['samples']==mode],key=lambda x:x['audit']);assert len(pair)==2
  fields=['frameMs','taskClockMsPerFrame','taskClockOverRenderWindow','cyclesPerFrame','instructionsPerFrame','branchMissesPerFrame','l1dReadMissesPerFrame','generalCacheMissesPerFrame','ipc','branchMissesPerKInstructions','l1dReadMissesPerKInstructions','generalCacheMissesPerKInstructions','minimumPositiveRunningFraction']
  summary.append(dict(scene=scene,samples=mode,**{name:[row[name] for row in pair] for name in fields}))
analysis=dict(status='all12-raw-hardware-observations-derived',referenceWasmSha256=v['referenceWasmSha256'],records=result,summary=summary,
 limitations='Scaled values use each thread hardware enabled/running ratio; all raw values/times retained. Software task clock is a separate event, not a useful-work counter. Renderer snapshot includes JS/V8/CDP boundary and background renderer work. General cache misses cannot establish physical traffic, texture miss rate, latency, cache-caused cycles, removed work or a hardware ceiling. This is not an optimization comparison.')
if '--check' in sys.argv:assert json.loads((r/'analysis.json').read_text())==analysis
else:(r/'analysis.json').write_text(json.dumps(analysis,indent=2)+'\n')
for x in summary:
 print(x['scene'],x['samples'],'frame ms',*[round(a,4) for a in x['frameMs']],'taskClock/wall',*[round(a,4) for a in x['taskClockOverRenderWindow']],
  'M instructions/frame',*[round(a/1e6,4) for a in x['instructionsPerFrame']],'IPC',*[round(a,4) for a in x['ipc']],
  'L1miss/kinst',*[round(a,4) for a in x['l1dReadMissesPerKInstructions']],'generalMiss/kinst',*[round(a,4) for a in x['generalCacheMissesPerKInstructions']])
