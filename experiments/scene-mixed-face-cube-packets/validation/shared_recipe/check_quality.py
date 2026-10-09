#!/usr/bin/env python3
"""Compare the full native renderer's exported planes with its previous control."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
parser = argparse.ArgumentParser()
parser.add_argument('--root', type=Path, required=True)
parser.add_argument('--baseline', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
args = parser.parse_args()
root = args.root.resolve()
output = args.output.resolve()
output.mkdir(parents=True, exist_ok=False)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
binaries = {'baseline':args.baseline.resolve(), 'candidate':root/'native/quality_candidate'}
models = json.loads((repo/'assets/models.json').read_text())
receipt = dict(width=640, height=360, threads=4, originalMeshes=True, fullShading=True,
    runnerSha256=digest(Path(__file__)), binarySha256={name:digest(p) for name, p in binaries.items()},
    driverSha256=digest(root/'recipe/quality_frames.c'), sourceManifest=json.loads((root/'source.json').read_text()),
    records=[], runs=[], passed=False)
for asset in ('bistro', 'sponza', 'bmw', 't80'):
    pack = repo/'build/assets'/f'{asset}.pack'
    for samples in (0, 2, 4):
        views = {}
        for variant, binary in binaries.items():
            env = os.environ.copy()
            env.pop('SOFTGL_CAMERA', None)
            if 'camera' in models[asset]:
                env['SOFTGL_CAMERA'] = ','.join(map(str, models[asset]['camera']))
            command = [str(binary), str(pack), str(samples), str(output/f'{asset}-ms{samples}-{variant}')]
            result = subprocess.run(command, env=env, text=True, capture_output=True, check=True)
            views[variant] = [json.loads(line) for line in result.stdout.splitlines() if line.startswith('{')]
            assert len(views[variant]) == 9
            receipt['runs'].append(dict(asset=asset, samples=samples, variant=variant, command=command,
                stderr=result.stderr, camera=models[asset].get('camera'), packSha256=digest(pack)))
        for before, after in zip(views['baseline'], views['candidate']):
            assert before['angle'] == after['angle']
            exact = {name:before[name] == after[name]
                for name in ('rgba', 'depth', 'stencil', 'sampleDepth', 'sampleStencil')}
            assert all(exact.values()), (asset, samples, before['angle'], exact)
            receipt['records'].append(dict(asset=asset, samples=samples, angle=before['angle'],
                allExportedPlanesExact=True, reference=before, candidate=after))
        print(asset, samples, 'nine full native plane pairs exact', flush=True)
        (output/'receipt.json').write_text(json.dumps(receipt, indent=2) + '\n')
receipt['passed'] = True
receipt['pairedViews'] = len(receipt['records'])
(output/'receipt.json').write_text(json.dumps(receipt, indent=2) + '\n')
print(receipt['pairedViews'], 'original-model native pairs exact')
