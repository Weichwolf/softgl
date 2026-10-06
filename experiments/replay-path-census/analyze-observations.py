from pathlib import Path
import json,math,statistics,hashlib,sys
r=Path(__file__).resolve().parent;v=json.loads((r/'validation.json').read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest();runs=json.loads((r/'runs/runs.json').read_text());assert len(runs['records'])==6
assert {(x['audit'],x['samples']) for x in runs['records']}=={(a,m) for a in (1,2) for m in (0,2,4)}
summary=[];guards=[];all_rows=[]
for record in runs['records']:
 p=r/'runs'/record['file'];assert sha(p)==record['sha256'];d=json.loads(p.read_text());mode=record['samples']
 assert d['wasmSha256']==v['diagnosticWasmSha256'] and d['notAcceptanceTimings']
 assert d['options']['rounds']==1 and d['options']['warmup']==80 and d['options']['frames']==100
 assert d['metadata']['width']==640 and d['metadata']['height']==360 and d['metadata']['crossOriginIsolated']
 assert d['benchmarks']['workerCounts']=={'candidate':3} and d['benchmarks']['resolvePerFrame'] and d['benchmarks']['samples']==mode
 obs=d['replayPathObservations'];assert len(obs)==2 and {x['name'] for x in obs}=={'bmw','tank'}
 for o in obs:
  assert o['workers']==3 and o['samples']==mode and o['warmup']==80 and o['frames']==len(o['rows'])==100 and o['round']==0 and o['variant']=='candidate'
  for index,row in enumerate(o['rows']):
   assert row['frame']==index and math.isclose(row['angle'],index*3.6,abs_tol=1e-12)
   c=row['counts'];assert len(c)==8 and all(math.isfinite(x) and x>=0 and x<2**53 and int(x)==x for x in c)
   calls,empty,total,filtered,fi,fo,copied,copy=c
   assert total==fi+copy and fo<=fi
   assert empty+filtered+copied==calls*(12 if mode==0 else 32)
   if o['name']=='bmw':assert calls>0 and total>0
   # Current model T-80 has no geometric replay; preserve observation as a check.
   if o['name']=='tank':assert all(x==0 for x in c)
   assert math.isfinite(row['frameElapsedMs']) and row['frameElapsedMs']>0
   assert math.isclose(row['frameEnd']-row['frameStart'],row['frameElapsedMs'],abs_tol=1e-9)
   all_rows.append(dict(audit=record['audit'],samples=mode,scene=o['name'],frame=index,counts=c))
  counters={name:dict(mean=statistics.mean(row['counts'][i] for row in o['rows']),min=min(row['counts'][i] for row in o['rows']),max=max(row['counts'][i] for row in o['rows']),median=statistics.median(row['counts'][i] for row in o['rows'])) for i,name in enumerate(v['counters'])}
  total=sum(row['counts'][2] for row in o['rows']);copy=sum(row['counts'][7] for row in o['rows']);fi=sum(row['counts'][4] for row in o['rows']);fo=sum(row['counts'][5] for row in o['rows'])
  summary.append(dict(audit=record['audit'],samples=mode,scene=o['name'],frames=100,counters=counters,copyFractionOfInput=copy/total if total else None,filteredSurvivorFraction=fo/fi if fi else None,logicalWholeBinCopiedBytesPerFrame=copy*16/100,logicalFilteredCopiedBytesPerFrame=fo*16/100))
 attempts=[]
 for p in sorted((r/'runs').glob(Path(record['file']).stem+'.attempt-*.monitor.json')):
  m=json.loads(p.read_text());attempts.append(dict(file=p.name,sha256=sha(p),exitCode=m['exitCode'],unexpectedActivity=m['unexpectedActivity'],threshold=m['foreignCPUThresholdCores']))
 assert attempts and any(x['exitCode']==0 and not x['unexpectedActivity'] and x['threshold']==.10 for x in attempts)
 guards.append(dict(audit=record['audit'],samples=mode,attempts=attempts))
assert len(summary)==12 and len(all_rows)==1200
result=dict(referenceWasmSha256=v['referenceWasmSha256'],diagnosticWasmSha256=v['diagnosticWasmSha256'],notAcceptanceTimings=True,frames=1200,summary=summary,guards=guards,allRows=all_rows,scope='Logical record-path and copy counts. Byte totals multiply actual copied record counts by16, not physical cache/DRAM transfers. Raw outer frame times include observer effects and do not establish saved cost, FPS gain or hardware ceiling.')
if '--check' in sys.argv:assert json.loads((r/'analysis.json').read_text())==result
else:(r/'analysis.json').write_text(json.dumps(result,indent=2)+'\n')
for row in summary:
 c=row['counters'];print(row['scene'],row['samples'],row['audit'],'calls',c['replay_calls']['mean'],'filteredIn/Out',c['filtered_input_records']['mean'],c['filtered_output_records']['mean'],'wholeCopied',c['copied_records']['mean'],'wholeCopyFraction',row['copyFractionOfInput'])
print('Validated all1200 frames and all guard attempts; no acceptance timing claim')
