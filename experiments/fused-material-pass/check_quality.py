#!/usr/bin/env python3
"""108 paired native images with independent opaque coverage-plane checks."""
import hashlib
import json
import os
from pathlib import Path
import subprocess
import numpy as np
from PIL import Image

repo = Path(__file__).resolve().parents[2]
output = repo/'tmp/fused-material-pass/quality'
output.mkdir(parents=True,exist_ok=True)
models = json.loads((repo/'assets/models.json').read_text())
binaries = {v:repo/'build/fused-material-pass/native'/f'quality_{v}' for v in ('baseline','candidate')}
def digest(p):
    return hashlib.sha256(p.read_bytes()).hexdigest()
receipt = {'width':640,'height':360,'threads':4,'angles':[0,45,90,135,160,180,225,270,315],
           'samples':[0,2,4],'binarySha256':{v:digest(p) for v,p in binaries.items()},
           'runnerSha256':digest(Path(__file__)),'driverSha256':digest(Path(__file__).with_name('quality_frames.c')),
           'records':[],'runs':[]}
for a in ('bmw','t80','sponza','bistro'):
    for samples in (0,2,4):
        results={}
        for v in binaries:
            env=os.environ.copy();env.pop('SOFTGL_CAMERA',None)
            if 'camera' in models[a]:env['SOFTGL_CAMERA']=','.join(map(str,models[a]['camera']))
            command=[str(binaries[v]),str(repo/'build/assets'/f'{a}.pack'),str(samples),str(output/f'{a}-ms{samples}-{v}')]
            r=subprocess.run(command,env=env,text=True,capture_output=True,check=True)
            results[v]=[json.loads(s) for s in r.stdout.splitlines() if s.startswith('{')]
            assert len(results[v])==9
            receipt['runs'].append(dict(asset=a,samples=samples,variant=v,command=command,stderr=r.stderr,
                                        camera=models[a].get('camera'),frames=results[v],packSha256=digest(repo/'build/assets'/f'{a}.pack')))
        for x,y in zip(results['baseline'],results['candidate']):
            assert x['angle']==y['angle']
            angle=x['angle']
            files={v:output/f'{a}-ms{samples}-{v}-angle{angle}.ppm' for v in binaries}
            p=np.asarray(Image.open(files['baseline'])).astype(np.int16)
            q=np.asarray(Image.open(files['candidate'])).astype(np.int16)
            delta=np.abs(p-q)
            row={'asset':a,'samples':samples,'angle':angle,
                 'coveragePlanesByteIdentical':all(x[k]==y[k] for k in ('depth','stencil','sampleDepth','sampleStencil')),
                 'meanAbsoluteChannelError':float(delta.mean()),'maxChannelError':int(delta.max()),
                 'pixelFractionOver1':float((delta.max(axis=2)>1).mean()),
                 'pixelFractionOver8':float((delta.max(axis=2)>8).mean()),
                 'pixelFractionOver32':float((delta.max(axis=2)>32).mean()),
                 'imageSha256':{v:digest(p) for v,p in files.items()}}
            receipt['records'].append(row)
            (output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
            assert row['coveragePlanesByteIdentical'], row
        print(json.dumps({'asset':a,'samples':samples,'nineCoverageComparisons':'PASS',
                          'worstMeanError':max(r['meanAbsoluteChannelError'] for r in receipt['records'] if r['asset']==a and r['samples']==samples),
                          'maxChannelError':max(r['maxChannelError'] for r in receipt['records'] if r['asset']==a and r['samples']==samples)}),flush=True)
print('108 paired images: all opaque depth, stencil and MSAA coverage planes identical',flush=True)
