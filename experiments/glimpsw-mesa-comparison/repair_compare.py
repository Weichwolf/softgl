#!/usr/bin/env python3
"""Retain disturbed runs and repeat entire balanced comparison blocks."""
from pathlib import Path
import json,sys
original=Path(__file__).resolve().parent/'timings-raw.json'
source=(original.parent/'compare.py').read_text()
prefix=source[:source.index("for name in args.assets.split(','):")]
prefix=prefix.replace("timings-raw.json", "timings-repair-raw.json")
exec(compile(prefix,str(original.parent/'compare.py'),'exec'))
initial=json.loads(original.read_text())['records']
cutoff=.1
accepted=[]
rejections=[]
for name in args.assets.split(','):
 for resolution in args.resolutions.split(','):
  w,h=map(int,resolution.split('x'))
  for threads in map(int,args.threads.split(',')):
   for pair in range(args.pairs):
    block=[x for x in initial if x['asset']==name and x['width']==w and x['height']==h and x['threads']==threads and x['pair']==pair]
    attempt=0
    while len(block)!=6 or max(x['foreignCpuCores']for x in block)>cutoff:
     rejections.append({'asset':name,'width':w,'height':h,'threads':threads,'pair':pair,'attempt':attempt,'reason':'foreign CPU load exceeds 0.1 core or incomplete block','records':block})
     attempt+=1
     if attempt>6:raise RuntimeError(f'{name} {w}: quiet block unavailable after six repetitions')
     sequence=['glimpsw','mesa','softgl'];sequence=sequence[pair%3:]+sequence[:pair%3];block=[]
     for order in ['forward','reverse']:
      for slot,renderer in enumerate(sequence if order=='forward'else sequence[::-1]):
       result=run(renderer,name,w,h,threads,pair,order,slot);result['attempt']=attempt;block.append(result)
    for r in block:r.setdefault('attempt',0)
    accepted+=block
    (root/'quiet-blocks.json').write_text(json.dumps({'foreignCpuCoreCutoff':cutoff,'accepted':accepted,'rejected':rejections},indent=2)+'\n')
summary=[]
for name in args.assets.split(','):
 for resolution in args.resolutions.split(','):
  w,h=map(int,resolution.split('x'))
  for threads in map(int,args.threads.split(',')):
   selected=[r for r in accepted if r['asset']==name and r['width']==w and r['height']==h and r['threads']==threads]
   times={renderer:[r['ms']for r in selected if r['renderer']==renderer+'-native']for renderer in ['glimpsw','mesa','softgl']}
   medians={renderer:statistics.median(values)for renderer,values in times.items()};ratio=medians['softgl']/medians['glimpsw']
   summary.append({'asset':name,'width':w,'height':h,'threads':threads,'samples':0,'mediansMs':medians,'rawMs':times,'softglToGlimpswRatio':ratio,'glimpswTimeReductionPercent':(1-1/ratio)*100,'softglToMesaRatio':medians['softgl']/medians['mesa'],'maximumForeignCpuCores':max(r['foreignCpuCores']for r in selected)})
(root/'timings-quiet-summary.json').write_text(json.dumps(summary,indent=2)+'\n')
print(json.dumps(summary,indent=2))
