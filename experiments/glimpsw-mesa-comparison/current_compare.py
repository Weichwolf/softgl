#!/usr/bin/env python3
"""Current complete-frame three-renderer comparison, fixed at 640x360/off."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import statistics
import subprocess
import time

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--softgl', type=Path, default=repo/'build/scene-quantized-visibility/native/candidate')
parser.add_argument('--softgl-source', type=Path, default=repo/'build/scene-quantized-visibility/source')
parser.add_argument('--reference-root', type=Path, default=repo/'tmp/glimpsw-original')
parser.add_argument('--output', type=Path, default=repo/'tmp/current-three-renderers')
parser.add_argument('--pairs', type=int, default=3)
parser.add_argument('--frames', type=int, default=30)
parser.add_argument('--warmup', type=int, default=15)
args = parser.parse_args()
args.output.mkdir(parents=True,exist_ok=True)
models = json.loads((repo/'assets/models.json').read_text())
binaries = {'softgl':args.softgl, 'mesa':args.reference_root/'build-clang22/mesa_bmw',
            'glimpsw':args.reference_root/'build-clang22/glimpsw_bmw'}
records = []
def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()
def snapshot():
    result = {}
    for p in Path('/proc').iterdir():
        if not p.name.isdecimal(): continue
        try:
            raw = (p/'stat').read_text(); fields = raw[raw.rfind(')')+2:].split()
            result[int(p.name)] = (int(fields[1]), int(fields[11])+int(fields[12]))
        except (FileNotFoundError,ProcessLookupError,PermissionError): pass
    return result
receipt = {'width':640,'height':360,'samples':0,'threads':4,'warmup':args.warmup,
           'frames':args.frames,'pairs':args.pairs,'records':records,
           'gitHead':subprocess.check_output(['git','rev-parse','HEAD'],cwd=repo,text=True).strip(),
           'binarySha256':{k:digest(p) for k,p in binaries.items()},
           'packsSha256':{a:digest(repo/'build/assets'/f'{a}.pack') for a in ('bmw','t80','sponza','bistro')},
           'runnerSha256':digest(Path(__file__)),
           'softglSourcesSha256':{str(p.relative_to(args.softgl_source/'libsoftgl')):digest(p) for p in sorted((args.softgl_source/'libsoftgl').rglob('*')) if p.is_file()},
           'softglWrapperSha256':digest(args.softgl_source/'model_wrap.c'),
           'softglSourceRoot':str(args.softgl_source),
           'productionSourcesSha256':{str(p.relative_to(repo/'libsoftgl')):digest(p) for p in sorted((repo/'libsoftgl').rglob('*')) if p.is_file()},
           'productionWrapperSha256':digest(repo/'wasm/model_wrap.c'),
           'referenceProvenanceSha256':digest(repo/'experiments/glimpsw-mesa-comparison/provenance.json'),
           'exportFilesSha256':{a:{str(p.relative_to(args.reference_root/a)):digest(p) for p in sorted((args.reference_root/a).rglob('*')) if p.is_file()} for a in ('bmw','t80','sponza','bistro')},
           'renderingNote':'Same prepared geometry/base assets/cameras; GLimpSW uses its different PBR/quantized/cutout pipeline. SoftGL worker attributes retain the eager Mesa wrapper formulas for opaque/masked material draws; opt-in transparent fusion uses one premultiplied pass with documented RGB/alpha differences. SoftGL off also explicitly uses 1/16-pixel canonical visibility edges with quantified depth/coverage/RGB differences. GLimpSW and the OSMesa comparison driver support off mode only.'}
def run(asset,renderer,pair,order,attempt):
    env = os.environ.copy(); env.pop('SOFTGL_CAMERA',None)
    if 'camera' in models[asset]: env['SOFTGL_CAMERA'] = ','.join(map(str,models[asset]['camera']))
    source = args.reference_root/asset/'scene.gltf' if renderer=='glimpsw' else repo/'build/assets'/f'{asset}.pack'
    image = args.output/f'{asset}-{renderer}.ppm'
    command = [str(binaries[renderer].resolve()),str(source.resolve()),'640','360','4','0',str(args.warmup),str(args.frames),str(image.resolve())]
    before = snapshot(); start = time.monotonic()
    p = subprocess.Popen(command,env=env,stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True)
    tracked = {os.getpid(),p.pid}; ticks = 0
    while p.poll() is None:
        time.sleep(.2); now = snapshot()
        for pid,(parent,_) in now.items():
            if parent in tracked: tracked.add(pid)
        for pid,(_,value) in now.items():
            if pid not in tracked and pid in before: ticks += max(0,value-before[pid][1])
        before = now
    stdout,stderr = p.communicate(); elapsed = time.monotonic()-start
    if p.returncode: raise RuntimeError((command,p.returncode,stderr))
    r = json.loads(next(x for x in stdout.splitlines() if x.startswith('{')))
    metadata = json.loads((repo/'build/assets'/f'{asset}.json').read_text())
    assert r['triangles']==metadata['triangles'] and r['threads']==4 and r['samples']==0
    r.update(asset=asset,backend=renderer,pair=pair,order=order,attempt=attempt,
             command=command,stderr=stderr,camera=models[asset].get('camera'),
             foreignCpuCores=ticks/os.sysconf('SC_CLK_TCK')/elapsed,imageSha256=digest(image))
    records.append(r)
    (args.output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(json.dumps({k:r[k] for k in ('asset','backend','pair','order','attempt','ms','foreignCpuCores')}),flush=True)
    return r
summary=[]
for asset in ('bmw','t80','sponza','bistro'):
    accepted=[]
    for pair in range(args.pairs):
        sequence=['glimpsw','mesa','softgl']; sequence=sequence[pair%3:]+sequence[:pair%3]
        for attempt in range(6):
            block=[]
            for order,seq in (('forward',sequence),('reverse',sequence[::-1])):
                for renderer in seq: block.append(run(asset,renderer,pair,order,attempt))
            quiet=max(r['foreignCpuCores'] for r in block)<=.1
            for r in block:r['accepted']=quiet
            if quiet:
                accepted.extend(block); break
        else: raise RuntimeError('No quiet balanced block')
    raw={b:[r['ms'] for r in accepted if r['backend']==b] for b in binaries}
    medians={b:statistics.median(v) for b,v in raw.items()}
    summary.append({'asset':asset,'width':640,'height':360,'samples':0,'threads':4,
                    'mediansMs':medians,'rawMs':raw,
                    'softglFrameTimeVsMesaPercent':(medians['softgl']/medians['mesa']-1)*100,
                    'softglToGlimpswRatio':medians['softgl']/medians['glimpsw']})
    (args.output/'summary.json').write_text(json.dumps(summary,indent=2)+'\n')
    (args.output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(json.dumps(summary[-1]),flush=True)
