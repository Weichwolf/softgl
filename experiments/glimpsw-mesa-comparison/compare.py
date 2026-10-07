#!/usr/bin/env python3
import argparse,hashlib,json,os,statistics,subprocess,time
from pathlib import Path
root=Path(__file__).resolve().parent
repo=root.parents[1]
parser=argparse.ArgumentParser();parser.add_argument('--pairs',type=int,default=3);parser.add_argument('--frames',type=int,default=120);parser.add_argument('--warmup',type=int,default=60);parser.add_argument('--resolutions',default='640x360,1920x1080');parser.add_argument('--threads',default='4');parser.add_argument('--assets',default='bmw,t80,sponza,bistro');args=parser.parse_args()
models=json.loads((repo/'assets/models.json').read_text());records=[]
def snapshot():
 result={}
 for p in Path('/proc').iterdir():
  if not p.name.isdecimal():continue
  try:
   raw=(p/'stat').read_text(); f=raw[raw.rfind(')')+2:].split(); result[int(p.name)]={'parent':int(f[1]),'ticks':int(f[11])+int(f[12]),'command':raw[raw.find('(')+1:raw.rfind(')')]}
  except (FileNotFoundError,PermissionError,ProcessLookupError):pass
 return result

def run(renderer,name,w,h,threads,pair,order,slot,samples=0):
 executable=root/'build-clang22'/{'softgl':'softgl_bmw','mesa':'mesa_bmw','glimpsw':'glimpsw_bmw'}[renderer]
 source=repo/'build/assets'/f'{name}.pack'if renderer in ('softgl','mesa')else root/name/'scene.gltf'
 env=os.environ.copy();env.pop('SOFTGL_CAMERA',None)
 if 'camera'in models[name]:env['SOFTGL_CAMERA']=','.join(map(str,models[name]['camera']))
 command=[str(executable),str(source),str(w),str(h),str(threads),str(samples),str(args.warmup),str(args.frames),'-']
 before=snapshot();start=time.monotonic();p=subprocess.Popen(command,env=env,stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True)
 tracked={p.pid,os.getpid()}; last=before; delta={}
 while p.poll()is None:
  time.sleep(.2);after=snapshot()
  for pid,v in after.items():
   if v['parent']in tracked:tracked.add(pid)
  for pid,v in after.items():
   if pid in last and pid not in tracked:
    ticks=max(0,v['ticks']-last[pid]['ticks']);delta.setdefault(pid,{'command':v['command'],'ticks':0})['ticks']+=ticks
  last=after
 stdout,stderr=p.communicate();elapsed=time.monotonic()-start
 if p.returncode:raise RuntimeError(f'{command}: {p.returncode}\n{stderr}')
 result=json.loads(next(line for line in stdout.splitlines()if line.startswith('{')))
 result.update(asset=name,pair=pair,order=order,slot=slot,elapsedIncludingLoad=elapsed,command=command,stderr=stderr,foreignCpuCores=sum(v['ticks']for v in delta.values())/os.sysconf('SC_CLK_TCK')/elapsed,foreignProcesses=[{'pid':pid,**v}for pid,v in delta.items()if v['ticks']])
 assert result['threads']==threads
 metadata=json.loads((repo/'build/assets'/f'{name}.json').read_text());assert result['triangles']==metadata['triangles'],(name,result,metadata['triangles'])
 records.append(result);(root/'timings-raw.json').write_text(json.dumps({'arguments':vars(args),'records':records},indent=2)+'\n')
 print(json.dumps({k:result[k]for k in ['renderer','asset','width','threads','pair','order','slot','ms','foreignCpuCores']}),flush=True)
 return result
for name in args.assets.split(','):
 for resolution in args.resolutions.split(','):
  w,h=map(int,resolution.split('x'))
  for threads in map(int,args.threads.split(',')):
   for pair in range(args.pairs):
    sequence=['glimpsw','mesa','softgl']
    sequence=sequence[pair%3:]+sequence[:pair%3]
    for order in ['forward','reverse']:
     for slot,renderer in enumerate(sequence if order=='forward'else sequence[::-1]):run(renderer,name,w,h,threads,pair,order,slot)
summary=[]
for name in args.assets.split(','):
 for resolution in args.resolutions.split(','):
  w,h=map(int,resolution.split('x'))
  for threads in map(int,args.threads.split(',')):
   selected=[r for r in records if r['asset']==name and r['width']==w and r['height']==h and r['threads']==threads]
   times={renderer:[r['ms']for r in selected if r['renderer']==renderer+'-native']for renderer in ['glimpsw','mesa','softgl']}
   medians={renderer:statistics.median(values)for renderer,values in times.items()};ratio=medians['softgl']/medians['glimpsw']
   summary.append({'asset':name,'width':w,'height':h,'threads':threads,'samples':0,'mediansMs':medians,'rawMs':times,'softglToGlimpswRatio':ratio,'glimpswTimeReductionPercent':(1-1/ratio)*100,'softglToMesaRatio':medians['softgl']/medians['mesa'],'maximumForeignCpuCores':max(r['foreignCpuCores']for r in selected)})
(root/'timings-summary.json').write_text(json.dumps(summary,indent=2)+'\n')
print(json.dumps(summary,indent=2))
