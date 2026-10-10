#!/usr/bin/env python3
"""Diagnose paired-resident results using fresh serial driver processes."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import select
import statistics
import subprocess
import time

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--control', type=Path, required=True)
parser.add_argument('--candidate', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
parser.add_argument('--asset', default='sponza')
parser.add_argument('--samples', type=int, default=4, choices=(0, 2, 4))
parser.add_argument('--pairs', type=int, default=3)
parser.add_argument('--warmup', type=int, default=60)
parser.add_argument('--frames', type=int, default=30)
args = parser.parse_args()
assert args.pairs >= 1 and args.frames >= 1 and args.warmup >= 0
roots = {'baseline':args.control.resolve(), 'candidate':args.candidate.resolve()}
output = args.output.resolve(); output.mkdir(parents=True, exist_ok=False)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
pack = repo/'build/assets'/(args.asset+'.pack')
models = json.loads((repo/'assets/models.json').read_text())
model = models[args.asset]
metadata = json.loads((repo/'build/assets'/(args.asset+'.json')).read_text())
receipt = dict(diagnosticOnly=True, performanceAcceptance=False,
    processPerRequest=True, residentAssets=False, width=640, height=360, threads=4,
    runnerSha256=digest(Path(__file__)), arguments=vars(args).copy(),
    packSha256=digest(pack), camera=model.get('camera'), records=[],
    binarySha256={v:digest(p/'native/resident_candidate') for v,p in roots.items()},
    sourceManifestSha256={v:digest(p/'source.json') for v,p in roots.items()},
    scope='Same resident driver and requests; one fresh process per observation. Import is recorded separately; timed driver frames exclude import, worker restart and warmup. Additional diagnostic, not replacement acceptance.')
receipt['arguments'] = {k:str(v) if isinstance(v, Path) else v
    for k,v in receipt['arguments'].items()}


def save():
    (output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')


def snapshot():
    result = {}
    for entry in Path('/proc').iterdir():
        if not entry.name.isdigit():
            continue
        try:
            raw = (entry/'stat').read_text()
            fields = raw[raw.rfind(')')+2:].split()
            result[int(entry.name)] = (int(fields[1]), int(fields[11])+int(fields[12]))
        except (FileNotFoundError, ProcessLookupError, PermissionError):
            pass
    return result


def run(variant, pair, order, attempt):
    binary = roots[variant]/'native/resident_candidate'
    env = os.environ.copy(); env.pop('SOFTGL_CAMERA', None)
    if 'camera' in model:
        env['SOFTGL_CAMERA'] = ','.join(map(str, model['camera']))
    image = output/f'{variant}-{pair}-{order}-{attempt}.ppm'
    request = f'{args.samples} {args.warmup} {args.frames} 160 {image}\n'
    command = [str(binary), str(pack)]
    start_load = time.monotonic()
    with (output/f'{variant}-{pair}-{order}-{attempt}-stderr.txt').open('w') as stderr:
        process = subprocess.Popen(command, env=env, text=True, stdin=subprocess.PIPE,
            stdout=subprocess.PIPE, stderr=stderr, bufsize=1)
        try:
            assert json.loads(process.stdout.readline())['ready']
            load_seconds = time.monotonic()-start_load
            last = snapshot(); tracked = {os.getpid(), process.pid}; foreign_ticks = 0
            start = time.monotonic()
            process.stdin.write(request); process.stdin.flush()
            result = ''
            while not result:
                ready, _, _ = select.select([process.stdout], [], [], .2)
                current = snapshot()
                for pid, (parent, _) in current.items():
                    if parent in tracked:
                        tracked.add(pid)
                for pid, (_, ticks) in current.items():
                    if pid not in tracked and pid in last:
                        foreign_ticks += max(0, ticks-last[pid][1])
                last = current
                if ready:
                    result = process.stdout.readline()
                assert time.monotonic()-start < 300, 'Driver response timeout'
                if process.poll() is not None:
                    raise RuntimeError((command, process.returncode))
            elapsed = time.monotonic()-start
            process.stdin.close(); process.wait(timeout=60)
            assert process.returncode == 0
        finally:
            if process.poll() is None:
                process.kill(); process.wait()
    row = json.loads(result)
    assert row['width'] == 640 and row['height'] == 360 and row['threads'] == 4
    assert row['samples'] == args.samples and row['triangles'] == metadata['triangles']
    row.update(variant=variant, pair=pair, order=order, attempt=attempt,
        command=command, request=request.strip(), importSeconds=load_seconds,
        requestSeconds=elapsed, foreignCpuTicks=foreign_ticks,
        foreignCpuCores=foreign_ticks/os.sysconf('SC_CLK_TCK')/elapsed,
        imageSha256=digest(image))
    receipt['records'].append(row); save()
    print(json.dumps({k:row[k] for k in ('variant', 'pair', 'order', 'ms', 'foreignCpuCores')}), flush=True)
    return row


for pair in range(args.pairs):
    for attempt in range(5):
        sequence = ['baseline', 'candidate'] if pair % 2 == 0 else ['candidate', 'baseline']
        block = [run(v, pair, order, attempt)
            for order, variants in (('forward', sequence), ('reverse', sequence[::-1]))
            for v in variants]
        quiet = max(r['foreignCpuCores'] for r in block) <= .1
        for row in block:
            row['accepted'] = quiet
        save()
        if quiet:
            break
    else:
        raise RuntimeError('No quiet whole AB/BA block after five attempts')
rows = [r for r in receipt['records'] if r['accepted']]
medians = {v:statistics.median(r['ms'] for r in rows if r['variant'] == v)
    for v in roots}
receipt['summary'] = dict(mediansMs=medians,
    frameTimeChangePercent=(medians['candidate']/medians['baseline']-1)*100,
    finalAllPlanesIdentical=all(len({r[field] for r in rows}) == 1
        for field in ('rgba', 'depth', 'stencil', 'sampleDepth', 'sampleStencil')))
receipt['passed'] = True; save()
print(json.dumps(receipt['summary']), flush=True)
