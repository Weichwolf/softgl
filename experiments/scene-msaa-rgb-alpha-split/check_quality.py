#!/usr/bin/env python3
"""Measure fresh within-pixel shading error and reject physical-plane changes."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess

import numpy as np

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
parser = argparse.ArgumentParser()
parser.add_argument('--root',type=Path,required=True)
parser.add_argument('--baseline',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
parser.add_argument('--assets',default='bistro,sponza,bmw,t80')
parser.add_argument('--samples',default='0,2,4')
args = parser.parse_args()
root = args.root.resolve()
output = args.output.resolve()
output.mkdir(parents=True,exist_ok=False)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
def read_ppm(path):
    with path.open('rb') as stream:
        assert stream.readline() == b'P6\n'
        assert stream.readline().split() == [b'640',b'360']
        assert stream.readline() == b'255\n'
        return np.frombuffer(stream.read(),dtype=np.uint8).reshape(360,640,3).astype(np.int16)

binaries = dict(baseline=args.baseline.resolve(),candidate=root/'native/quality_candidate')
models = json.loads((repo/'assets/models.json').read_text())
receipt = dict(width=640,height=360,threads=4,originalMeshes=True,
    imagePolicy='Measure approximate per-pixel colors; require exact physical depth/stencil planes',
    approximateIntrapixelShading=True,temporalCache=False,
    runnerSha256=digest(Path(__file__)),driverSha256=digest(root/'recipe/quality_frames.c'),
    sourceManifest=json.loads((root/'source.json').read_text()),
    binarySha256={v:digest(p) for v,p in binaries.items()},records=[],runs=[],passed=False)
for asset in args.assets.split(','):
    for samples in map(int,args.samples.split(',')):
        frames = {}
        paths = {}
        for variant,binary in binaries.items():
            env = os.environ.copy()
            env.pop('SOFTGL_CAMERA',None)
            if 'camera' in models[asset]: env['SOFTGL_CAMERA'] = ','.join(map(str,models[asset]['camera']))
            pack = repo/'build/assets'/(asset+'.pack')
            prefix = output/f'{asset}-ms{samples}-{variant}'
            command = [str(binary),str(pack),str(samples),str(prefix)]
            result = subprocess.run(command,env=env,text=True,capture_output=True,check=True)
            frames[variant] = [json.loads(line) for line in result.stdout.splitlines() if line.startswith('{')]
            paths[variant] = prefix
            assert len(frames[variant]) == 9
            receipt['runs'].append(dict(asset=asset,samples=samples,variant=variant,command=command,
                camera=models[asset].get('camera'),packSha256=digest(pack),stderr=result.stderr))
        for before,after in zip(frames['baseline'],frames['candidate']):
            assert before['angle'] == after['angle']
            exact = {field:before[field] == after[field]
                for field in ('depth','stencil','sampleDepth','sampleStencil')}
            assert all(exact.values()),(asset,samples,before['angle'],exact)
            image_paths = {v:Path(str(p)+f'-angle{before["angle"]}.ppm') for v,p in paths.items()}
            stems = {v:Path(str(p)+f'-angle{before["angle"]}') for v,p in paths.items()}
            for suffix in (['depth','sample-depth'] if samples else ['depth']):
                assert Path(str(stems['baseline'])+'.'+suffix).read_bytes() == \
                    Path(str(stems['candidate'])+'.'+suffix).read_bytes(),(asset,samples,before['angle'],suffix)
            alpha_checks = {}
            for suffix in (['rgba','sample-color'] if samples else ['rgba']):
                a,b = [np.fromfile(Path(str(stems[v])+'.'+suffix),dtype=np.uint8).reshape(-1,4)
                       for v in ('baseline','candidate')]
                assert a.shape == b.shape
                alpha_checks[suffix] = bool(np.array_equal(a[:,3],b[:,3]))
                assert alpha_checks[suffix],(asset,samples,before['angle'],suffix,
                    int(np.abs(a[:,3].astype(np.int16)-b[:,3]).max()))
                if samples != 4: assert np.array_equal(a,b),(asset,samples,before['angle'],suffix)
            images = {v:read_ppm(p) for v,p in image_paths.items()}
            delta = np.abs(images['baseline']-images['candidate'])
            row = dict(asset=asset,samples=samples,angle=before['angle'],
                physicalPlanesExact=True,depthBuffersByteIdentical=True,alphaBuffersByteIdentical=alpha_checks,
                rgbaByteIdentical=before['rgba'] == after['rgba'],
                meanAbsoluteChannelError=float(delta.mean()),meanSquaredChannelError=float((delta.astype(np.float64)**2).mean()),
                maxChannelError=int(delta.max()),pixelFractionOver8=float((delta.max(axis=2)>8).mean()),
                pixelFractionOver32=float((delta.max(axis=2)>32).mean()),
                imageSha256={v:digest(p) for v,p in image_paths.items()},reference=before,candidate=after)
            assert row['meanAbsoluteChannelError'] < 3 and row['pixelFractionOver8'] < .12,row
            receipt['records'].append(row)
        (output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
        rows = [r for r in receipt['records'] if r['asset'] == asset and r['samples'] == samples]
        print(json.dumps(dict(asset=asset,samples=samples,physicalPlanesExact=True,
            worstViewMeanRgbError=max(r['meanAbsoluteChannelError'] for r in rows),
            worstChannelError=max(r['maxChannelError'] for r in rows))),flush=True)
receipt['passed'] = True
receipt['pairedViews'] = len(receipt['records'])
(output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
print(receipt['pairedViews'],'original-model pairs: physical planes exact; colors quantified',flush=True)
