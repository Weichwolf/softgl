#!/usr/bin/env python3
"""Offline calibration of sparse error probes; no runtime controller or FPS claim."""
import argparse
import hashlib
import json
from pathlib import Path

import numpy as np
from PIL import Image


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def linear(rgb):
    return np.where(rgb <= .04045, rgb/12.92, ((rgb+.055)/1.055)**2.4)


parser = argparse.ArgumentParser()
parser.add_argument('--quality', type=Path, required=True)
parser.add_argument('--reference', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
args = parser.parse_args()
quality, reference, output = [p.resolve() for p in (args.quality, args.reference, args.output)]
receipt = json.loads((quality/'receipt.json').read_text())
assert receipt['offlineQualityProxy'] and not receipt['rendererImplementation']
assert receipt['width'] == 640 and receipt['height'] == 360
assert len(receipt['records']) == 72
output.mkdir(parents=True, exist_ok=False)
records = []
for row in receipt['records']:
    asset, angle, variant = row['asset'], row['angle'], row['variant']
    ref_path = reference/f'{asset}-ms4-baseline-angle{angle}.ppm'
    candidate_path = quality/f'{asset}-angle{angle}-{variant}.png'
    assert digest(ref_path) == row['sourceImageSha256']
    assert digest(candidate_path) == row['candidateImageSha256']
    original = np.asarray(Image.open(ref_path)).astype(np.float64)/255
    candidate = np.asarray(Image.open(candidate_path)).astype(np.float64)/255
    assert original.shape == candidate.shape == (360,640,3)
    encoded_error = np.square(candidate-original).mean(axis=2)
    linear_error = np.square(linear(candidate)-linear(original)).mean(axis=2)
    depth_path = reference/f'{asset}-ms4-baseline-angle{angle}.sample-depth'
    depth = np.fromfile(depth_path,dtype='<f4')
    assert depth.size == 360*640*4 and np.isfinite(depth).all()
    # Native depth is bottom-origin; exported PPM is top-origin.
    covered = (depth.reshape(360,640,4) < 1).any(axis=2)[::-1]
    assert covered.any()
    tiles = encoded_error.reshape(45,8,80,8).transpose(0,2,1,3).reshape(-1,64)
    actual_tile_mse = tiles.mean(axis=1)
    important = actual_tile_mse > (8/255)**2
    probes = []
    for count in (4,16):
        estimates, misses = [], []
        for seed in range(16):
            # Uniform sampling without replacement in every 8x8 tile.
            # The same seeds/locations are used across variants and scenes.
            generator = np.random.Generator(np.random.PCG64(seed))
            indices = generator.random(tiles.shape).argsort(axis=1)[:,:count]
            estimate = np.take_along_axis(tiles,indices,axis=1).mean(axis=1)
            estimates.append(float(estimate.mean()))
            misses.append(float((estimate[important] <= (8/255)**2).mean())
                          if important.any() else None)
        actual = float(encoded_error.mean())
        probes.append(dict(samplesPerTile=count,fractionPixelsProbed=count/64,
            seeds=list(range(16)),estimatedGlobalMse=estimates,
            meanAbsoluteRelativeGlobalMseError=float(np.mean(np.abs(np.array(estimates)-actual))/actual)
                if actual > 0 else 0.,
            fractionHighErrorTilesMissed=misses,
            meanFractionHighErrorTilesMissed=float(np.mean([v for v in misses if v is not None]))
                if important.any() else None))
    records.append(dict(asset=asset,angle=angle,variant=variant,
        sourceImageSha256=digest(ref_path),candidateImageSha256=digest(candidate_path),
        sampleDepthSha256=digest(depth_path),coveredPixelFraction=float(covered.mean()),
        encodedMse=float(encoded_error.mean()),linearMse=float(linear_error.mean()),
        encodedRmseBytes=float(np.sqrt(encoded_error.mean())*255),
        encodedCoveredMse=float(encoded_error[covered].mean()),
        linearCoveredMse=float(linear_error[covered].mean()),
        tileRmseP95Bytes=float(np.sqrt(np.quantile(actual_tile_mse,.95))*255),
        tileRmseMaxBytes=float(np.sqrt(actual_tile_mse.max())*255),
        fractionTilesOver8ByteRmse=float(important.mean()),probes=probes))
summary = []
for asset in ('bistro','sponza','bmw','t80'):
    for variant in ('fine-y-chroma420','coarse-rgb2'):
        rows = [r for r in records if r['asset'] == asset and r['variant'] == variant]
        result = dict(asset=asset,variant=variant,
            pooledEncodedRmseBytes=float(np.sqrt(np.mean([r['encodedMse'] for r in rows]))*255),
            pooledCoveredRmseBytes=float(np.sqrt(np.mean([r['encodedCoveredMse'] for r in rows]))*255),
            probes=[dict(samplesPerTile=count,
                meanAbsoluteRelativeGlobalMseError=float(np.mean([
                    r['probes'][index]['meanAbsoluteRelativeGlobalMseError'] for r in rows])),
                meanFractionHighErrorTilesMissed=float(np.mean([
                    r['probes'][index]['meanFractionHighErrorTilesMissed'] for r in rows
                    if r['probes'][index]['meanFractionHighErrorTilesMissed'] is not None]))
                    if any(r['probes'][index]['meanFractionHighErrorTilesMissed'] is not None
                           for r in rows) else None)
                for index,count in enumerate((4,16))])
        summary.append(result)
        print(json.dumps(result),flush=True)
result = dict(offlineOnly=True,runtimeControllerImplemented=False,rendererSpeedupMeasured=False,
    estimator='Uniform random sampling without replacement per 8x8 tile; PCG64 seeds 0..15',
    highTileErrorThresholdRmseBytes=8,thresholdIsAcceptanceCriterion=False,
    sampleCostMeasured=False,temporalFramesEvaluated=False,
    runnerSha256=digest(Path(__file__)),inputQualityReceiptSha256=digest(quality/'receipt.json'),
    inputReferenceReceiptSha256=digest(reference/'receipt.json'),records=records)
(output/'receipt.json').write_text(json.dumps(result,indent=2)+'\n')
(output/'summary.json').write_text(json.dumps(summary,indent=2)+'\n')
