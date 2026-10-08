#!/usr/bin/env python3
"""108 paired native images with independent opaque coverage-plane checks."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import numpy as np
from PIL import Image

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--assets',default='bmw,t80,sponza,bistro')
parser.add_argument('--samples',default='0,2,4')
parser.add_argument('--allow-reorder',action='store_true')
args = parser.parse_args()
output = repo/'tmp/fused-transparent-pass/quality'
output.mkdir(parents=True,exist_ok=True)
models = json.loads((repo/'assets/models.json').read_text())
binaries = {v:repo/'build/fused-transparent-pass/native'/f'quality_{v}' for v in ('baseline','candidate')}
def digest(p):
    return hashlib.sha256(p.read_bytes()).hexdigest()
receipt = {'width':640,'height':360,'threads':4,'angles':[0,45,90,135,160,180,225,270,315],
           'samples':list(map(int,args.samples.split(','))),'binarySha256':{v:digest(p) for v,p in binaries.items()},
           'runnerSha256':digest(Path(__file__)),'driverSha256':digest(repo/'experiments/scene-hierarchical-depth/quality_frames.c'),
           'allowReorder':args.allow_reorder,
           'records':[],'runs':[]}
for a in args.assets.split(','):
    for samples in map(int,args.samples.split(',')):
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
            depths={v:np.fromfile(output/f'{a}-ms{samples}-{v}-angle{angle}.depth',dtype=np.float32) for v in binaries}
            assert all(d.size==640*360 and np.isfinite(d).all() for d in depths.values())
            depth_error=np.abs(depths['baseline']-depths['candidate'])
            depth_ulps=np.abs(depths['baseline'].view(np.uint32).astype(np.int64)-depths['candidate'].view(np.uint32).astype(np.int64))
            row={'asset':a,'samples':samples,'angle':angle,
                 'coveragePlanesByteIdentical':all(x[k]==y[k] for k in ('depth','stencil','sampleDepth','sampleStencil')),
                 'depthCoverageMaskByteIdentical':bool(np.array_equal(depths['baseline']<1.,depths['candidate']<1.)),
                 'stencilAndSamplePlanesByteIdentical':all(x[k]==y[k] for k in ('stencil','sampleDepth','sampleStencil')),
                 'maxAbsoluteDepthError':float(depth_error.max()),'maxDepthUlps':int(depth_ulps.max()),
                 'meanAbsoluteChannelError':float(delta.mean()),'maxChannelError':int(delta.max()),
                 'pixelFractionOver1':float((delta.max(axis=2)>1).mean()),
                 'pixelFractionOver8':float((delta.max(axis=2)>8).mean()),
                 'pixelFractionOver32':float((delta.max(axis=2)>32).mean()),
                 'imageSha256':{v:digest(p) for v,p in files.items()}}
            receipt['records'].append(row)
            (output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
            if args.allow_reorder:
                assert row['depthCoverageMaskByteIdentical'] and row['stencilAndSamplePlanesByteIdentical'] and row['maxAbsoluteDepthError']<=2e-6, row
            else:
                assert row['coveragePlanesByteIdentical'], row
        print(json.dumps({'asset':a,'samples':samples,'nineCoverageComparisons':'PASS',
                          'worstMeanError':max(r['meanAbsoluteChannelError'] for r in receipt['records'] if r['asset']==a and r['samples']==samples),
                          'maxChannelError':max(r['maxChannelError'] for r in receipt['records'] if r['asset']==a and r['samples']==samples)}),flush=True)
print(f'{len(receipt["records"])} paired images: selected coverage policy PASS',flush=True)
