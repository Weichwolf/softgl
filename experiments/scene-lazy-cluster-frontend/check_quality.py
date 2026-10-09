#!/usr/bin/env python3
"""Compare coarse skipping to an all-bin unpruned oracle and original renderer."""
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
parser.add_argument('--root',type=Path,default=repo/'build/scene-lazy-cluster-frontend/v2')
parser.add_argument('--output',type=Path,required=True)
parser.add_argument('--assets',default='bmw,t80,sponza,bistro')
parser.add_argument('--samples',default='0,2,4')
args = parser.parse_args(); output = args.output; output.mkdir(parents=True)
models = json.loads((repo/'assets/models.json').read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
receipt = dict(width=640,height=360,threads=4,records=[],runs=[],
    runnerSha256=sha(Path(__file__)),binarySha256={variant:sha(args.root/'native'/f'quality_{variant}')
    for variant in ('baseline','candidate','unpruned')})
for asset in args.assets.split(','):
    for samples in map(int,args.samples.split(',')):
        frames = {}
        for variant in ('baseline','candidate','unpruned'):
            env = os.environ.copy(); env.pop('SOFTGL_CAMERA',None)
            env['SOFTGL_CAMERA'] = ','.join(map(str,models[asset]['camera']))
            pack = repo/'build/assets'/f'{asset}.pack'
            command = [str(args.root/'native'/f'quality_{variant}'),str(pack),str(samples),
                str(output/f'{asset}-ms{samples}-{variant}')]
            result = subprocess.run(command,env=env,text=True,capture_output=True,check=True)
            frames[variant] = [json.loads(line) for line in result.stdout.splitlines() if line.startswith('{')]
            assert len(frames[variant]) == 9
            receipt['runs'].append(dict(asset=asset,samples=samples,variant=variant,frames=frames[variant],
                stderr=result.stderr,command=command,camera=models[asset]['camera'],packSha256=sha(pack)))
        for base,candidate,oracle in zip(frames['baseline'],frames['candidate'],frames['unpruned']):
            assert base['angle'] == candidate['angle'] == oracle['angle']; angle = base['angle']
            fields = ('rgba','depth','stencil','sampleDepth','sampleStencil')
            exact = all(candidate[field] == oracle[field] for field in fields)
            stems = {v:output/f'{asset}-ms{samples}-{v}-angle{angle}' for v in frames}
            images = {v:np.asarray(Image.open(str(p)+'.ppm')).astype(np.int16) for v,p in stems.items()}
            delta = np.abs(images['baseline']-images['candidate'])
            row = dict(asset=asset,samples=samples,angle=angle,
                allBinUnprunedReportedPlanesExact=exact,baselineRgbaExact=base['rgba']==candidate['rgba'],
                meanAbsoluteRgbError=float(delta.mean()),maxRgbError=int(delta.max()),
                pixelFractionOver8=float((delta.max(axis=2)>8).mean()))
            for suffix,label,units in [('depth','depth',640*360)]+(
                [('sample-depth','sampleDepth',640*360*samples)] if samples else []):
                a,b = [np.fromfile(str(stems[v])+'.'+suffix,dtype=np.float32) for v in ('baseline','candidate')]
                assert a.size == b.size == units and np.isfinite(a).all() and np.isfinite(b).all()
                row[label] = dict(byteExact=bool(np.array_equal(a.view(np.uint32),b.view(np.uint32))),
                    removedCoverage=int(((a<1.) & ~(b<1.)).sum()),
                    addedCoverage=int((~(a<1.) & (b<1.)).sum()),
                    changedFraction=float((a!=b).mean()),maxAbsoluteError=float(np.abs(a-b).max()))
            receipt['records'].append(row)
        (output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
        rows = [r for r in receipt['records'] if r['asset']==asset and r['samples']==samples]
        failures = [r for r in rows if not r['allBinUnprunedReportedPlanesExact']]
        print(json.dumps(dict(asset=asset,samples=samples,comparedViews=9,
            allBinOracleExact=not failures,failedAngles=[r['angle'] for r in failures],
            worstMeanRgbError=max(r['meanAbsoluteRgbError'] for r in rows),
            removedSamples=max(r.get('sampleDepth',{}).get('removedCoverage',0) for r in rows))),flush=True)
        assert not failures, 'Coarse skipping or distribution differs from independent all-bin oracle; do not time/adopt'
print(f"{len(receipt['records'])} paired all-bin oracle views PASS",flush=True)
