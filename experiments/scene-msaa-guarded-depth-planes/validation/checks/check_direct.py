#!/usr/bin/env python3
"""Assess approximate depth against previously exported exact control views."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess

import numpy as np

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--root',type=Path,required=True)
parser.add_argument('--reference',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
parser.add_argument('--assets',default='bistro,sponza,bmw,t80')
parser.add_argument('--samples',default='4')
args = parser.parse_args()
root,reference,output = args.root.resolve(),args.reference.resolve(),args.output.resolve()
output.mkdir(parents=True,exist_ok=False)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
control = json.loads((reference/'receipt.json').read_text())
assert control['passed'] and control['pairedViews'] == 108
models = json.loads((repo/'assets/models.json').read_text())
binary = root/'native/quality_candidate'
receipt = dict(passed=False,assessmentOnly=True,adopted=False,width=640,height=360,threads=4,
    originalMeshes=True,originalTextures=True,temporalCache=False,alphaMeasured=False,
    imagePolicy='Require equal covered-depth masks; assess absolute depth/RGB errors explicitly',
    referenceReceiptSha256=digest(reference/'receipt.json'),runnerSha256=digest(Path(__file__)),
    binarySha256=dict(baseline=control['binarySha256']['baseline'],candidate=digest(binary)),
    sourceManifestSha256=digest(root/'source.json'),records=[],runs=[])

def ppm(path):
    with path.open('rb') as stream:
        assert stream.readline() == b'P6\n'
        assert stream.readline().split() == [b'640',b'360'] and stream.readline() == b'255\n'
        return np.frombuffer(stream.read(),dtype=np.uint8).reshape(360,640,3).astype(np.int16)

for asset in args.assets.split(','):
    for samples in map(int,args.samples.split(',')):
        env = os.environ.copy(); env.pop('SOFTGL_CAMERA',None)
        if 'camera' in models[asset]: env['SOFTGL_CAMERA'] = ','.join(map(str,models[asset]['camera']))
        prefix = output/f'{asset}-ms{samples}-candidate'
        command = [str(binary),str(repo/'build/assets'/(asset+'.pack')),str(samples),str(prefix)]
        result = subprocess.run(command,env=env,capture_output=True,text=True,check=True)
        after = [json.loads(line) for line in result.stdout.splitlines() if line.startswith('{')]
        before = [r['reference'] for r in control['records'] if (r['asset'],r['samples']) == (asset,samples)]
        assert len(before) == len(after) == 9
        receipt['runs'].append(dict(asset=asset,samples=samples,command=command,stderr=result.stderr,
            packSha256=digest(repo/'build/assets'/(asset+'.pack')),camera=models[asset].get('camera')))
        for a,b in zip(before,after):
            assert a['angle'] == b['angle']
            old = reference/f'{asset}-ms{samples}-baseline-angle{a["angle"]}'
            new = Path(str(prefix)+f'-angle{b["angle"]}')
            planes = {}
            for suffix in (('depth','sample-depth') if samples else ('depth',)):
                left,right = [np.fromfile(Path(str(p)+'.'+suffix),dtype=np.float32) for p in (old,new)]
                assert left.shape == right.shape
                missing = int(((left < 1.0) & ~(right < 1.0)).sum())
                extra = int((~(left < 1.0) & (right < 1.0)).sum())
                planes[suffix] = dict(byteIdentical=bool(np.array_equal(left.view(np.uint32),right.view(np.uint32))),
                    maxAbsoluteError=float(np.abs(left.astype(np.float64)-right.astype(np.float64)).max()),
                    finiteInRange=bool(np.isfinite(right).all() and (right >= 0.0).all() and (right <= 1.0).all()),
                    missingCoveredValues=missing,extraCoveredValues=extra,
                    sha256=dict(reference=digest(Path(str(old)+'.'+suffix)),candidate=digest(Path(str(new)+'.'+suffix))))
            delta = np.abs(ppm(Path(str(old)+'.ppm'))-ppm(Path(str(new)+'.ppm')))
            row = dict(asset=asset,samples=samples,angle=a['angle'],depthPlanes=planes,
                stencilExact=a['stencil'] == b['stencil'] and a['sampleStencil'] == b['sampleStencil'],
                rgbaHashExact=a['rgba'] == b['rgba'],meanAbsoluteRgbError=float(delta.mean()),
                maxRgbError=int(delta.max()),pixelFractionOver1=float((delta.max(axis=2)>1).mean()),
                pixelFractionOver8=float((delta.max(axis=2)>8).mean()),
                pixelFractionOver32=float((delta.max(axis=2)>32).mean()),reference=a,candidate=b)
            row['withinExploratoryBudget'] = all(p['finiteInRange'] and p['maxAbsoluteError'] <= 2e-6 and
                p['missingCoveredValues'] == p['extraCoveredValues'] == 0 for p in planes.values()) and \
                row['stencilExact'] and row['meanAbsoluteRgbError'] < 1 and row['pixelFractionOver8'] < .01
            if samples != 4:
                row['withinExploratoryBudget'] &= row['rgbaHashExact'] and all(p['byteIdentical'] for p in planes.values())
            receipt['records'].append(row)
        rows = [r for r in receipt['records'] if (r['asset'],r['samples']) == (asset,samples)]
        print(json.dumps(dict(asset=asset,samples=samples,views=len(rows),
            masksExact=all(p['missingCoveredValues'] == p['extraCoveredValues'] == 0 for r in rows for p in r['depthPlanes'].values()),
            maxDepthError=max(p['maxAbsoluteError'] for r in rows for p in r['depthPlanes'].values()),
            worstMeanRgbError=max(r['meanAbsoluteRgbError'] for r in rows),maxRgbError=max(r['maxRgbError'] for r in rows),
            worstPixelFractionOver8=max(r['pixelFractionOver8'] for r in rows))),flush=True)
        (output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
receipt['passed'] = True
receipt['pairedViews'] = len(receipt['records'])
receipt['allWithinExploratoryBudget'] = all(r['withinExploratoryBudget'] for r in receipt['records'])
(output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
print(receipt['pairedViews'],'approximate view assessments complete; budget',receipt['allWithinExploratoryBudget'],flush=True)
