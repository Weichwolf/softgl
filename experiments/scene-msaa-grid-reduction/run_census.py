#!/usr/bin/env python3
"""Count real reduced-edge execution; verify every observed physical plane."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import statistics
import subprocess

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--root', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
parser.add_argument('--reference', type=Path, required=True)
args = parser.parse_args()
root, output, reference = [p.resolve() for p in (args.root, args.output, args.reference)]
output.mkdir(parents=True, exist_ok=False)
binary = root/'native/grid_census'
models = json.loads((repo/'assets/models.json').read_text())
quality = json.loads((reference/'receipt.json').read_text())
records = []


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


for asset in ('bistro', 'sponza'):
    for samples in (0, 2, 4):
        env = os.environ.copy()
        env.pop('SOFTGL_CAMERA', None)
        if 'camera' in models[asset]:
            env['SOFTGL_CAMERA'] = ','.join(map(str, models[asset]['camera']))
        pack = repo/'build/assets'/f'{asset}.pack'
        stem = f'{asset}-ms{samples}-candidate'
        command = [str(binary), str(pack), str(samples), str(output/stem)]
        result = subprocess.run(command, env=env, capture_output=True, text=True, check=True)
        (output/f'{asset}-ms{samples}-stdout.txt').write_text(result.stdout)
        (output/f'{asset}-ms{samples}-stderr.txt').write_text(result.stderr)
        frames = [json.loads(x) for x in result.stdout.splitlines() if x.startswith('{')]
        counts = [json.loads(x[5:]) for x in result.stderr.splitlines() if x.startswith('GRID ')]
        expected = next(r for r in quality['runs'] if r['asset'] == asset and
                        r['samples'] == samples and r['variant'] == 'candidate')['frames']
        assert len(frames) == len(counts) == len(expected) == 9
        planes = []
        for frame, census, original in zip(frames, counts, expected):
            assert frame == original and frame['angle'] == census['angle'], (asset, samples, frame)
            values = census['counts']
            assert len(values) == 6 and all(x >= 0 for x in values)
            assert values[0] == sum(values[1:4]) and values[5] <= values[4], census
            if samples == 0:
                assert not any(values), census
            suffixes = ('ppm', 'depth', 'sample-depth') if samples else ('ppm', 'depth')
            for suffix in suffixes:
                name = f'{stem}-angle{frame["angle"]}.{suffix}'
                checksum = digest(output/name)
                assert checksum == digest(reference/name), (asset, samples, name)
                planes.append(dict(name=name, sha256=checksum))
        total = sum(c['counts'][0] for c in counts)
        row = dict(asset=asset, samples=samples, command=command,
                   packSha256=digest(pack), camera=models[asset].get('camera'),
                   frames=frames, counters=counts, physicalPlanes=planes,
                   meanCounters=[statistics.mean(c['counts'][i] for c in counts) for i in range(6)],
                   reducedSetupPercent=100*sum(c['counts'][2] for c in counts)/total if total else 0)
        records.append(row)
        print(json.dumps({k: v for k, v in row.items() if k not in
              ('command', 'frames', 'counters', 'physicalPlanes', 'camera', 'packSha256')}), flush=True)
receipt = dict(width=640, height=360, threads=4, diagnosticOnly=True,
    performanceAcceptance=False, all54ViewsExact=True, binarySha256=digest(binary),
    runnerSha256=digest(Path(__file__)), referenceReceiptSha256=digest(reference/'receipt.json'),
    counterKinds=['general setups after HZ', 'original int32 setups', 'reduced int32 setups',
                  'remaining int64 setups', 'reduced coverage pixels', 'exact f64 reconstruction pixels'],
    scope='General MSAA kernel only; excludes HZ early returns and separate small-triangle kernels',
    records=records)
(output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
