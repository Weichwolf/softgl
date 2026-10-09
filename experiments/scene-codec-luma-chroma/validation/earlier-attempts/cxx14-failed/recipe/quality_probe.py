#!/usr/bin/env python3
"""Offline image-quality proxy, never a renderer or speedup measurement."""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess

import numpy as np
from PIL import Image

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--reference', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
parser.add_argument('--flip-repo', type=Path, default=Path('/home/cosmo/Git/flip'))
parser.add_argument('--compiler', default='/home/cosmo/.local/bin/clang++-22')
parser.add_argument('--ppd', default='60,90')
args = parser.parse_args()
reference, output, upstream = [p.resolve() for p in (args.reference, args.output, args.flip_repo)]
output.mkdir(parents=True, exist_ok=False)
quality = json.loads((reference/'receipt.json').read_text())
assert quality['width'] == 640 and quality['height'] == 360 and quality['threads'] == 4
revision = subprocess.check_output(['git','rev-parse','HEAD'],cwd=upstream,text=True).strip()
assert revision == 'b475eb4bf394ab877c42166c9eb0a84a02cc5b14', revision
assert not subprocess.check_output(['git','status','--porcelain'],cwd=upstream)
helper = repo/'experiments/scene-perceptual-frequency-budget/flip_probe.cpp'
header = upstream/'src/cpp/FLIP.h'
binary = output/'flip_probe'
command = [args.compiler,'-std=c++14','-O2','-Wall','-Wextra','-msse4.1',
           '-mno-avx','-mno-avx2','-mno-avx512f','-isystem',str(header.parent),
           str(helper),'-o',str(binary)]
with (output/'build.txt').open('w') as log:
    subprocess.run(command,stdout=log,stderr=subprocess.STDOUT,check=True)


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def shrink_expand(values):
    height, width = values.shape[:2]
    assert height % 2 == width % 2 == 0
    coarse = values.reshape(height//2,2,width//2,2,*values.shape[2:]).mean(axis=(1,3))
    x = (np.arange(width)+.5)/2-.5
    y = (np.arange(height)+.5)/2-.5
    x0, y0 = np.floor(x).astype(int), np.floor(y).astype(int)
    fx, fy = x-x0, y-y0
    shape_x = (1,width)+(1,)*(values.ndim-2)
    shape_y = (height,1)+(1,)*(values.ndim-2)
    fx, fy = fx.reshape(shape_x), fy.reshape(shape_y)
    x1, y1 = np.clip(x0+1,0,width//2-1), np.clip(y0+1,0,height//2-1)
    x0, y0 = np.clip(x0,0,width//2-1), np.clip(y0,0,height//2-1)
    top = coarse[y0[:,None],x0[None,:]]*(1-fx)+coarse[y0[:,None],x1[None,:]]*fx
    bottom = coarse[y1[:,None],x0[None,:]]*(1-fx)+coarse[y1[:,None],x1[None,:]]*fx
    return top*(1-fy)+bottom*fy


weights = np.array([.2126,.7152,.0722])


def chroma_420(rgb):
    y = rgb @ weights
    cb = (rgb[:,:,2]-y)/(2*(1-weights[2]))
    cr = (rgb[:,:,0]-y)/(2*(1-weights[0]))
    cb, cr = shrink_expand(cb), shrink_expand(cr)
    red = y+2*(1-weights[0])*cr
    blue = y+2*(1-weights[2])*cb
    green = (y-weights[0]*red-weights[2]*blue)/weights[1]
    return np.stack([red,green,blue],axis=-1)


def linear_file(path, rgb):
    values = rgb.astype(np.float64)/255
    linear = np.where(values <= .04045,values/12.92,((values+.055)/1.055)**2.4)
    linear.astype('<f4').tofile(path)


def metric(ref_path, test_path, stem, ppd):
    target = output/f'{stem}-ppd{ppd}.flip'
    cmd = [str(binary),str(ref_path),str(test_path),'640','360',str(ppd),str(target)]
    result = subprocess.run(cmd,text=True,capture_output=True,check=True)
    (output/f'{stem}-ppd{ppd}-stdout.txt').write_text(result.stdout)
    (output/f'{stem}-ppd{ppd}-stderr.txt').write_text(result.stderr)
    values = np.fromfile(target,dtype='<f4')
    assert values.size == 640*360 and np.isfinite(values).all()
    return dict(**json.loads(result.stdout), command=cmd, errorMapSha256=digest(target))


# Meaningful evaluator controls: identical input and maximum grayscale contrast.
black, white = np.zeros((360,640,3),dtype=np.uint8), np.full((360,640,3),255,dtype=np.uint8)
linear_file(output/'control-black.rgb',black)
linear_file(output/'control-white.rgb',white)
controls = []
for ppd in map(int,args.ppd.split(',')):
    same = metric(output/'control-black.rgb',output/'control-black.rgb','identity',ppd)
    opposite = metric(output/'control-black.rgb',output/'control-white.rgb','opposite',ppd)
    assert same['max'] == 0 and opposite['mean'] > .1, (same,opposite)
    controls.append(dict(identity=same,opposite=opposite))
records = []
for asset in ('bistro','sponza','bmw','t80'):
    rows = [r for r in quality['records'] if r['asset'] == asset and r['samples'] == 4]
    assert len(rows) == 9
    for row in rows:
        angle = row['angle']
        path = reference/f'{asset}-ms4-baseline-angle{angle}.ppm'
        assert digest(path) == row['imageSha256']['baseline']
        original = np.asarray(Image.open(path))
        assert original.shape == (360,640,3)
        ref_path = output/f'{asset}-angle{angle}-reference.rgb'
        linear_file(ref_path,original)
        normalized = original.astype(np.float64)/255
        variants = {'fine-y-chroma420':chroma_420(normalized),
                    'coarse-rgb2':shrink_expand(normalized)}
        for name, unbounded in variants.items():
            clipping = (unbounded < 0) | (unbounded > 1)
            candidate = np.floor(np.clip(unbounded,0,1)*255+.5).astype(np.uint8)
            stem = f'{asset}-angle{angle}-{name}'
            test_path = output/f'{stem}.rgb'
            linear_file(test_path,candidate)
            metrics = [metric(ref_path,test_path,stem,p) for p in map(int,args.ppd.split(','))]
            delta = np.abs(candidate.astype(np.int16)-original.astype(np.int16))
            y_error = np.abs((candidate.astype(np.float64)-original) @ weights)
            image_path = output/f'{stem}.png'
            Image.fromarray(candidate).save(image_path)
            result = dict(asset=asset,angle=angle,variant=name,sourceImage=str(path),
                sourceImageSha256=digest(path),candidateImageSha256=digest(image_path),
                meanAbsoluteChannelError=float(delta.mean()),maxChannelError=int(delta.max()),
                fractionPixelsOver8=float((delta.max(axis=2)>8).mean()),
                fractionPixelsOver32=float((delta.max(axis=2)>32).mean()),
                meanLumaError=float(y_error.mean()),maxLumaError=float(y_error.max()),
                fractionPixelsClippedBeforeQuantization=float(clipping.any(axis=2).mean()),
                flip=metrics)
            records.append(result)
        print(json.dumps(dict(asset=asset,angle=angle,comparedVariants=len(variants))),flush=True)
receipt = dict(width=640,height=360,inputMsaa=4,anglesPerAsset=9,assets=4,
    offlineQualityProxy=True,performanceAcceptance=False,rendererImplementation=False,
    temporalQualityTested=False,referenceReceiptSha256=digest(reference/'receipt.json'),
    runnerSha256=digest(Path(__file__)),helperSha256=digest(helper),binarySha256=digest(binary),
    upstreamRevision=revision,upstreamHeaderSha256=digest(header),buildCommand=command,
    colorPolicy='Full-range encoded RGB709 luma coefficients; centered 2x2 box chroma, bilinear reconstruction; RGB gamut clip/round; assume display sRGB then convert to linear RGB for LDR-FLIP',
    samplePolicy='Original full renders are filtered after rendering; no actual shader or geometry work is skipped',
    viewingAssumptionsPpd=list(map(int,args.ppd.split(','))),controls=controls,records=records)
(output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
summary = []
for asset in ('bistro','sponza','bmw','t80'):
    for variant in ('fine-y-chroma420','coarse-rgb2'):
        rows = [r for r in records if r['asset'] == asset and r['variant'] == variant]
        result = dict(asset=asset,variant=variant,
            meanChannelError=float(np.mean([r['meanAbsoluteChannelError'] for r in rows])),
            worstChannelError=max(r['maxChannelError'] for r in rows),
            meanLumaError=float(np.mean([r['meanLumaError'] for r in rows])),
            flipMeanByPpd={str(ppd):float(np.mean([next(f['mean'] for f in r['flip'] if f['ppd'] == ppd) for r in rows]))
                           for ppd in receipt['viewingAssumptionsPpd']})
        summary.append(result)
        print(json.dumps(result),flush=True)
(output/'summary.json').write_text(json.dumps(summary,indent=2)+'\n')
