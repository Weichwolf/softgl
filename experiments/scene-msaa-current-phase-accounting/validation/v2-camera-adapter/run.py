#!/usr/bin/env python3
"""Profile joined production scopes; compare final images to original c83e18f."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import statistics
import subprocess
import time

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--root', type=Path, default=repo/'build/scene-msaa-current-phase-accounting/v2')
parser.add_argument('--baseline', type=Path, default=repo/'build/scene-lazy-cluster-frontend/v6-rotated/native/resident_baseline')
parser.add_argument('--output', type=Path, required=True)
parser.add_argument('--assets', default='bmw,t80,sponza,bistro')
parser.add_argument('--samples', default='0,2,4')
parser.add_argument('--frames', type=int, default=30)
parser.add_argument('--warmup', type=int, default=60)
args = parser.parse_args()
output = args.output.resolve()
output.mkdir(parents=True)
source = args.root.resolve()/'source'
binary = args.root.resolve()/'native/phase_scene'
models = json.loads((repo/'assets/models.json').read_text())
phases = ['begin', 'commandsAndFlush', 'allocation', 'positions', 'triangles',
          'prefix', 'references', 'depthOrder', 'visibility', 'winningGroupsAndAttributes',
          'materialBuckets', 'shading']
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
receipt = {'diagnosticOnly': True, 'width': 640, 'height': 360, 'threads': 4,
           'warmup': args.warmup, 'frames': args.frames, 'phases': phases, 'runs': [],
           'baseline': (source/'baseline.txt').read_text().strip(),
           'binarySha256': sha(binary), 'baselineBinarySha256': sha(args.baseline),
           'driverSha256': sha(Path(__file__).with_name('phase_scene.c')),
           'runnerSha256': sha(Path(__file__)), 'sourcesSha256':
           {str(p.relative_to(source)): sha(p) for p in sorted(source.rglob('*')) if p.is_file()}}
def snapshot():
    result = {}
    for p in Path('/proc').iterdir():
        if not p.name.isdecimal():
            continue
        try:
            raw = (p/'stat').read_text()
            fields = raw[raw.rfind(')')+2:].split()
            result[int(p.name)] = (int(fields[1]), int(fields[11])+int(fields[12]))
        except (FileNotFoundError, ProcessLookupError, PermissionError):
            pass
    return result
summary = []
for asset in args.assets.split(','):
    pack = repo/'build/assets'/f'{asset}.pack'
    pack_hash = sha(pack)
    env = os.environ.copy()
    env.pop('SOFTGL_CAMERA', None)
    env['SOFTGL_CAMERA'] = ','.join(map(str, models[asset]['camera']))
    for samples in map(int, args.samples.split(',')):
        image = output/f'{asset}-ms{samples}.ppm'
        reference = output/f'{asset}-ms{samples}-baseline.ppm'
        command = [str(binary), str(pack), str(samples), str(args.warmup),
                   str(args.frames), str(image)]
        before = snapshot()
        start = time.monotonic()
        tracked = {os.getpid()}
        ticks = 0
        with (output/f'{asset}-ms{samples}.jsonl').open('w') as log:
            process = subprocess.Popen(command, env=env, stdout=log, stderr=subprocess.PIPE, text=True)
            tracked.add(process.pid)
            while process.poll() is None:
                time.sleep(.2)
                current = snapshot()
                for pid, (parent, _) in current.items():
                    if parent in tracked:
                        tracked.add(pid)
                for pid, (_, value) in current.items():
                    if pid not in tracked and pid in before:
                        ticks += max(0, value-before[pid][1])
                before = current
            _, stderr = process.communicate()
        elapsed = time.monotonic()-start
        load = ticks/os.sysconf('SC_CLK_TCK')/elapsed
        assert process.returncode == 0, (command, process.returncode, stderr)
        frames = [json.loads(s) for s in (output/f'{asset}-ms{samples}.jsonl').read_text().splitlines()]
        assert len(frames) == args.frames and all(len(f['phaseMs']) == len(phases) for f in frames)
        for frame in frames:
            frame['outsideSceneMs'] = frame['totalMs']-sum(frame['phaseMs'])
            assert frame['outsideSceneMs'] >= -1e-5, frame
        baseline_command = [str(args.baseline.resolve()), str(pack)]
        baseline = subprocess.run(baseline_command, env=env,
                                  input=f'{samples} 0 1 160 {reference}\n',
                                  text=True, capture_output=True, check=True)
        exact = image.read_bytes() == reference.read_bytes()
        run = {'asset': asset, 'samples': samples, 'command': command, 'camera': models[asset]['camera'],
               'packSha256': pack_hash, 'foreignCpuCores': load, 'stderr': stderr,
               'finalAngle160RgbByteIdentical': exact, 'imageSha256': sha(image),
               'baselineImageSha256': sha(reference), 'baselineCommand': baseline_command,
               'baselineStdout': baseline.stdout, 'baselineStderr': baseline.stderr, 'frames': frames}
        receipt['runs'].append(run)
        (output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
        assert exact, (asset, samples, 'Instrumentation changes final rendering; do not use profile')
        total = statistics.mean(f['totalMs'] for f in frames)
        means = {phase: statistics.mean(f['phaseMs'][i] for f in frames)
                 for i, phase in enumerate(phases)}
        means['outsideScene'] = statistics.mean(f['outsideSceneMs'] for f in frames)
        row = {'asset': asset, 'samples': samples, 'frames': args.frames,
               'sceneCapturedFrames': sum(f['sceneCapture'] for f in frames),
               'meanCompleteFrameMs': total, 'meanPhaseMs': means,
               'meanPhaseFramePercent': {k: v/total*100 for k, v in means.items()},
               'foreignCpuCores': load, 'quietWholeProcessObservation': load <= .1,
               'finalAngle160RgbByteIdentical': exact}
        summary.append(row)
        (output/'summary.json').write_text(json.dumps(summary, indent=2)+'\n')
        print(json.dumps(row), flush=True)
print(f'{len(summary)} production phase scopes and original angle160 images PASS', flush=True)
