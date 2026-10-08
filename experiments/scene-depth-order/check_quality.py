#!/usr/bin/env python3
"""Quantify intended order-dependent changes; never weaken ordinary test gates."""
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
parser.add_argument('--root', type=Path, default=repo/'build/scene-depth-order')
parser.add_argument('--output', type=Path, default=repo/'tmp/scene-depth-order/quality')
parser.add_argument('--assets', default='bmw,t80,sponza,bistro')
parser.add_argument('--samples', default='0,2,4')
args = parser.parse_args()
output = args.output; output.mkdir(parents=True,exist_ok=True)
models = json.loads((repo/'assets/models.json').read_text())
def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()
binaries = {v:args.root/'native'/f'quality_{v}' for v in ('baseline','candidate')}
receipt = dict(width=640,height=360,threads=4,
    binarySha256={v:digest(p) for v,p in binaries.items()},
    runnerSha256=digest(Path(__file__)),
    driverSha256=digest(Path(__file__).with_name('quality_frames.c')),
    imagePolicy='Measure order-dependent RGBA and actual depth/sample coverage; no exactness assumed',
    records=[],runs=[])
for asset in args.assets.split(','):
    for samples in map(int,args.samples.split(',')):
        frames = {}
        for variant,binary in binaries.items():
            env = os.environ.copy(); env.pop('SOFTGL_CAMERA',None)
            if 'camera' in models[asset]: env['SOFTGL_CAMERA']=','.join(map(str,models[asset]['camera']))
            pack = repo/'build/assets'/f'{asset}.pack'
            command = [str(binary),str(pack),str(samples),str(output/f'{asset}-ms{samples}-{variant}')]
            result = subprocess.run(command,env=env,text=True,capture_output=True,check=True)
            frames[variant]=[json.loads(s) for s in result.stdout.splitlines() if s.startswith('{')]
            assert len(frames[variant]) == 9
            receipt['runs'].append(dict(asset=asset,samples=samples,variant=variant,
                command=command,stderr=result.stderr,camera=models[asset].get('camera'),
                packSha256=digest(pack),frames=frames[variant]))
        for x,y in zip(frames['baseline'],frames['candidate']):
            assert x['angle'] == y['angle']; angle=x['angle']
            stems={v:output/f'{asset}-ms{samples}-{v}-angle{angle}' for v in binaries}
            images={v:np.asarray(Image.open(str(s)+'.ppm')).astype(np.int16) for v,s in stems.items()}
            delta=np.abs(images['baseline']-images['candidate'])
            row=dict(asset=asset,samples=samples,angle=angle,
                rgbaByteIdentical=x['rgba']==y['rgba'],
                stencilAndSampleStencilByteIdentical=x['stencil']==y['stencil'] and x['sampleStencil']==y['sampleStencil'],
                meanAbsoluteChannelError=float(delta.mean()),maxChannelError=int(delta.max()),
                pixelFractionOver8=float((delta.max(axis=2)>8).mean()),
                pixelFractionOver32=float((delta.max(axis=2)>32).mean()),
                imageSha256={v:digest(Path(str(s)+'.ppm')) for v,s in stems.items()})
            for suffix,label,units in [('depth','resolvedDepth',640*360)]+(
                [('sample-depth','sampleDepth',640*360*samples)] if samples else []):
                a,b=[np.fromfile(str(stems[v])+'.'+suffix,dtype=np.float32) for v in binaries]
                assert a.size==b.size==units and np.isfinite(a).all() and np.isfinite(b).all()
                covered_a,covered_b=a<1.,b<1.
                row[label]=dict(byteIdentical=bool(np.array_equal(a.view(np.uint32),b.view(np.uint32))),
                    maxAbsoluteError=float(np.abs(a-b).max()),
                    maxUlps=int(np.abs(a.view(np.uint32).astype(np.int64)-b.view(np.uint32).astype(np.int64)).max()),
                    changedFraction=float((a!=b).mean()),
                    removedCoverage=int((covered_a & ~covered_b).sum()),
                    addedCoverage=int((~covered_a & covered_b).sum()),
                    errorOver2e6Fraction=float((np.abs(a-b)>2e-6).mean()))
            assert row['stencilAndSampleStencilByteIdentical'],row
            receipt['records'].append(row)
        (output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
        rows=[r for r in receipt['records'] if r['asset']==asset and r['samples']==samples]
        print(json.dumps(dict(asset=asset,samples=samples,nineComparedViews='PASS',
            worstMeanRgbError=max(r['meanAbsoluteChannelError'] for r in rows),
            maxRemovedPixelCoverage=max(r['resolvedDepth']['removedCoverage'] for r in rows),
            maxRemovedSampleCoverage=max((r.get('sampleDepth',{}).get('removedCoverage',0) for r in rows)))),flush=True)
print(f"{len(receipt['records'])} paired views quantified; inspect image/coverage changes before adoption",flush=True)
