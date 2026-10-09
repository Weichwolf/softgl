#!/usr/bin/env python3
"""Quantify actual browser RGBA exports and retain reviewable 4x comparisons."""
import argparse
import hashlib
import json
from pathlib import Path

import numpy as np
from PIL import Image

parser = argparse.ArgumentParser()
parser.add_argument('--input', type=Path, required=True)
args = parser.parse_args()
root = args.input
gate = json.loads((root/'receipt.json').read_text())
assert gate['passed'] and len(gate['records']) == 24
hashes = {(r['asset'],r['samples'],r['mode'],f['angle']):f['rgbaSha256']
          for r in gate['records'] for f in r['frames']}
rows = []
for asset in ('bistro','sponza','bmw','t80'):
    for samples in (0,2,4):
        for angle in (0,45,90,135,160,180,225,270,315):
            images = []
            for mode in ('original','automatic'):
                data = (root/f'{asset}-ms{samples}-{mode}-angle{angle}.rgba').read_bytes()
                assert hashlib.sha256(data).hexdigest() == hashes[asset,samples,mode,angle]
                images.append(np.frombuffer(data,np.uint8).reshape(360,640,4))
            delta = np.abs(images[0][:,:,:3].astype(np.int16)-images[1][:,:,:3].astype(np.int16))
            rows.append(dict(asset=asset,samples=samples,angle=angle,
                meanAbsoluteChannelError=float(delta.mean()),maxChannelError=int(delta.max()),
                pixelFractionOver8=float((delta.max(axis=2)>8).mean())))
            if samples == 4 and angle == (270 if asset == 't80' else 315):
                image = Image.new('RGB',(1280,360))
                for i,value in enumerate(images):image.paste(Image.fromarray(value[:,:,:3][::-1]),(i*640,0))
                image.save(root/f'{asset}-comparison-ms4.png')
receipt = dict(pairedViews=len(rows),records=rows,
    gateReceiptSha256=hashlib.sha256((root/'receipt.json').read_bytes()).hexdigest(),
    runnerSha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
    imageSha256={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in root.glob('*-comparison-ms4.png')})
(root/'quality.json').write_text(json.dumps(receipt,indent=2)+'\n')
print('108 actual browser pairs quantified; four Original/Automatic 4x comparisons written.')
