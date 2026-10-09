#!/usr/bin/env python3
"""Measure FLIP on actual native renderer output, outside all timing runs."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess

import numpy as np
from PIL import Image


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


parser = argparse.ArgumentParser()
parser.add_argument('--quality',type=Path,required=True)
parser.add_argument('--metric',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
parser.add_argument('--angles',default='160')
parser.add_argument('--ppd',type=int,default=60)
args = parser.parse_args()
quality,metric,output = [p.resolve() for p in (args.quality,args.metric,args.output)]
reference = json.loads((quality/'receipt.json').read_text())
repo = Path(__file__).resolve().parents[2]
metric_receipt_path = repo/'experiments/scene-codec-luma-chroma/validation/receipt.json'
metric_receipt = json.loads(metric_receipt_path.read_text())
assert digest(metric) == metric_receipt['binarySha256']
assert reference['width'] == 640 and reference['height'] == 360 and reference['threads'] == 4
output.mkdir(parents=True,exist_ok=False)
angles = {int(x) for x in args.angles.split(',')}
records = []
for row in reference['records']:
    if row['angle'] not in angles: continue
    stem = f"{row['asset']}-ms{row['samples']}-angle{row['angle']}"
    linear_paths = []
    for variant in ('baseline','candidate'):
        path = quality/f"{row['asset']}-ms{row['samples']}-{variant}-angle{row['angle']}.ppm"
        assert digest(path) == row['imageSha256'][variant]
        rgb = np.asarray(Image.open(path)).astype(np.float64)/255
        assert rgb.shape == (360,640,3)
        linear = np.where(rgb <= .04045,rgb/12.92,((rgb+.055)/1.055)**2.4)
        destination = output/f'{stem}-{variant}.rgb'
        linear.astype('<f4').tofile(destination)
        linear_paths.append(destination)
    target = output/f'{stem}.flip'
    command = [str(metric),*(str(p) for p in linear_paths),'640','360',str(args.ppd),str(target)]
    result = subprocess.run(command,text=True,capture_output=True,check=True)
    report = json.loads(result.stdout)
    values = np.fromfile(target,dtype='<f4')
    assert values.size == 640*360 and np.isfinite(values).all()
    assert abs(report['mean']-float(values.mean(dtype=np.float64))) < 1e-12
    records.append(dict(asset=row['asset'],samples=row['samples'],angle=row['angle'],
        imageSha256=row['imageSha256'],meanAbsoluteChannelError=row['meanAbsoluteChannelError'],
        maxChannelError=row['maxChannelError'],flip=report,command=command,
        stdout=result.stdout,stderr=result.stderr,errorMapSha256=digest(target)))
    print(json.dumps(records[-1]),flush=True)
receipt = dict(qualityOnly=True,rendererImplementation=True,speedupMeasured=False,
    width=640,height=360,ppd=args.ppd,
    colorPolicy='Assume displayed RGB8 is sRGB; convert to linear RGB for LDR-FLIP',
    qualityReceiptSha256=digest(quality/'receipt.json'),metricBinarySha256=digest(metric),
    metricReceiptSha256=digest(metric_receipt_path),runnerSha256=digest(Path(__file__)),records=records)
assert records
(output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
