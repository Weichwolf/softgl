#!/usr/bin/env python3
"""Count actual cutout sampler packets and compare original physical planes."""
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
assert not (output/'receipt.json').exists(), 'Use a fresh census output'
output.mkdir(parents=True, exist_ok=True)
binary = root/'native/alpha_census'
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
        counts = [json.loads(x[6:]) for x in result.stderr.splitlines() if x.startswith('ALPHA ')]
        expected = next(r for r in quality['runs'] if r['asset'] == asset and
                        r['samples'] == samples and r['variant'] == 'candidate')['frames']
        assert len(frames) == len(counts) == len(expected) == 9
        planes = []
        for frame, census, original in zip(frames, counts, expected):
            assert frame == original and frame['angle'] == census['angle'], (asset, samples, frame)
            assert census['bytes'] <= 64*1024*1024
            assert len(census['counts']) == 4 and all(len(x) == 16 for x in census['counts'])
            suffixes = ('ppm', 'depth', 'sample-depth') if samples else ('ppm', 'depth')
            for suffix in suffixes:
                name = f'{stem}-angle{frame["angle"]}.{suffix}'
                checksum = digest(output/name)
                assert checksum == digest(reference/name), (asset, samples, name)
                planes.append(dict(name=name, sha256=checksum))
        packets = [sum(sum(kind) for kind in c['counts'][:3]) for c in counts]
        live_pixels = [sum(mask.bit_count()*n for kind in c['counts'][:3]
                           for mask, n in enumerate(kind)) for c in counts]
        full_packets = [sum(kind[15] for kind in c['counts'][:3]) for c in counts]
        paired = [c['counts'][3][0] for c in counts]
        row = dict(asset=asset, samples=samples, command=command,
                   packSha256=digest(pack), camera=models[asset].get('camera'),
                   frames=frames, counters=counts, physicalPlanes=planes,
                   meanAlphaPackets=statistics.mean(packets),
                   meanAlphaLivePixels=statistics.mean(live_pixels),
                   fullPacketPercent=100*sum(full_packets)/sum(packets) if sum(packets) else 0,
                   pairedPacketPercent=100*sum(paired)/sum(packets) if sum(packets) else 0,
                   maxAlphaBytes=max(c['bytes'] for c in counts),
                   maxAlphaPlanes=max(c['planes'] for c in counts))
        records.append(row)
        print(json.dumps({k: v for k, v in row.items() if k not in
              ('command', 'frames', 'counters', 'physicalPlanes', 'camera', 'packSha256')}), flush=True)
receipt = dict(width=640, height=360, threads=4, diagnosticOnly=True,
    performanceAcceptance=False, all54ViewsExact=True, binarySha256=digest(binary),
    runnerSha256=digest(Path(__file__)), referenceReceiptSha256=digest(reference/'receipt.json'),
    counterKinds=['constant unit', 'alpha plane', 'RGBA fallback', 'paired alpha packets'],
    records=records)
(output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
