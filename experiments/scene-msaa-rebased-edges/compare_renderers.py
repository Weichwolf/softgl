#!/usr/bin/env python3
"""Balanced complete-frame OFF/4x comparison; GLimpSW genuinely supports OFF only."""
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
parser.add_argument('--softgl-root',type=Path,required=True)
parser.add_argument('--softgl', type=Path, default=repo/'build/scene-triangle-packets/native/candidate')
parser.add_argument('--mesa', type=Path, default=repo/'build/renderer-msaa4-comparison/mesa')
parser.add_argument('--reference-root', type=Path, default=repo/'tmp/glimpsw-original')
parser.add_argument('--output', type=Path, default=repo/'tmp/renderer-msaa4-comparison')
parser.add_argument('--pairs', type=int, default=3)
parser.add_argument('--warmup', type=int, default=60)
parser.add_argument('--frames', type=int, default=30)
args = parser.parse_args()
args.output.mkdir(parents=True, exist_ok=True)
models = json.loads((repo/'assets/models.json').read_text())
binaries = {'softgl':args.softgl, 'mesa':args.mesa,
            'glimpsw':args.reference_root/'build-clang22/glimpsw_bmw'}
profiles = [('glimpsw', 0), ('mesa', 0), ('softgl', 0), ('mesa', 4), ('softgl', 4)]
records, summary = [], []

def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()

def tree(root):
    return {str(p.relative_to(root)):digest(p) for p in sorted(root.rglob('*')) if p.is_file()}

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

production = tree(repo/'libsoftgl')
frozen = tree(args.softgl_root/'source/libsoftgl')
assert production == frozen, 'Comparison softgl executable must match current library sources'
assert digest(repo/'wasm/model_wrap.c') == digest(args.softgl_root/'source/model_wrap.c')
receipt = {
    'width':640, 'height':360, 'threads':4, 'warmup':args.warmup,
    'frames':args.frames, 'pairs':args.pairs, 'profiles':profiles, 'records':records,
    'gitHead':subprocess.check_output(['git', 'rev-parse', 'HEAD'], cwd=repo, text=True).strip(),
    'binarySha256':{k:digest(p) for k,p in binaries.items()},
    'sourceSha256':{'libsoftgl':production, 'wrapper':digest(repo/'wasm/model_wrap.c'),
                    'mesaDriver':digest(repo/'experiments/glimpsw-mesa-comparison/mesa_scene.c'),
                    'mesaMultisample':digest(args.mesa.parent/'recipe/mesa_multisample.h'),
                    'runner':digest(Path(__file__))},
    'packsSha256':{a:digest(repo/'build/assets'/f'{a}.pack') for a in ('bmw', 't80', 'sponza', 'bistro')},
    'exportSha256':{a:tree(args.reference_root/a) for a in ('bmw', 't80', 'sponza', 'bistro')},
    'glimpswRevision':subprocess.check_output(['git', '-C', str(args.reference_root/'GLimpSW'),
                                             'rev-parse', 'HEAD'], text=True).strip(),
    'glimpsw4xSupported':False,
    'comparisonBuild':json.loads((args.mesa.parent/'receipt.json').read_text()),
    'softglManifestSha256':digest(args.softgl_root/'source.json'),
    'note':'Same prepared assets, camera, dimensions and configured four-thread budget. '
           'Whole frame includes clear, transform, raster, shading, completion, MSAA resolve and observable RGBA copy. '
           'Mesa uses verified 4x RGBA8/depth24-stencil8 FBO resolved into single-sample OSMesa buffer. '
           'GLimpSW OFF has a different PBR/cutout/quantized pipeline and is explicitly not a 4x result. '
           'Softgl uses SIMD128 only, fresh scene-wide 4x visibility and the accepted intrapixel material shading; this driver links the measured engine. '
           'Imports/JIT warmup outside timing; foreign process gate does not catch hypervisor/frequency changes.'
}

def save():
    (args.output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
    (args.output/'summary.json').write_text(json.dumps(summary, indent=2)+'\n')

def run(asset, profile, pair, order, attempt):
    backend, samples = profile
    env = os.environ.copy()
    env.pop('SOFTGL_CAMERA', None)
    if 'camera' in models[asset]:
        env['SOFTGL_CAMERA'] = ','.join(map(str, models[asset]['camera']))
    source = args.reference_root/asset/'scene.gltf' if backend == 'glimpsw' else repo/'build/assets'/f'{asset}.pack'
    image = args.output/f'{asset}-{backend}-{samples}.{"png" if backend == "glimpsw" else "ppm"}'
    command = [str(binaries[backend].resolve()), str(source.resolve()), '640', '360', '4',
               str(samples), str(args.warmup), str(args.frames), str(image.resolve())]
    before = snapshot()
    start = time.monotonic()
    p = subprocess.Popen(command, env=env, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    tracked, ticks = {os.getpid(), p.pid}, 0
    while p.poll() is None:
        time.sleep(.2)
        now = snapshot()
        for pid, (parent, _) in now.items():
            if parent in tracked:
                tracked.add(pid)
        for pid, (_, value) in now.items():
            if pid not in tracked and pid in before:
                ticks += max(0, value-before[pid][1])
        before = now
    stdout, stderr = p.communicate()
    elapsed = time.monotonic()-start
    if p.returncode:
        raise RuntimeError((command, p.returncode, stderr))
    result = json.loads(next(line for line in stdout.splitlines() if line.startswith('{')))
    metadata = json.loads((repo/'build/assets'/f'{asset}.json').read_text())
    assert result['triangles'] == metadata['triangles']
    assert (result['width'], result['height'], result['threads'], result['samples']) == (640, 360, 4, samples)
    if backend == 'mesa':
        assert result['verifiedSamples'] == samples and result['sampleBuffers'] == (samples != 0)
    result.update(asset=asset, backend=backend, pair=pair, order=order, attempt=attempt,
                  command=command, stderr=stderr, camera=models[asset].get('camera'),
                  processWallSeconds=elapsed, foreignCpuCores=ticks/os.sysconf('SC_CLK_TCK')/elapsed,
                  imageSha256=digest(image))
    records.append(result)
    save()
    print(json.dumps({k:result[k] for k in ('asset', 'backend', 'samples', 'pair', 'order',
                                          'attempt', 'ms', 'foreignCpuCores')}), flush=True)
    return result

for asset in ('bmw', 't80', 'sponza', 'bistro'):
    accepted = []
    for pair in range(args.pairs):
        sequence = profiles[pair%len(profiles):]+profiles[:pair%len(profiles)]
        for attempt in range(6):
            block = []
            for order, seq in (('forward', sequence), ('reverse', sequence[::-1])):
                for profile in seq:
                    block.append(run(asset, profile, pair, order, attempt))
            quiet = max(r['foreignCpuCores'] for r in block) <= .1
            for r in block:
                r['accepted'] = quiet
            save()
            if quiet:
                accepted.extend(block)
                break
        else:
            raise RuntimeError('No quiet balanced block')
    raw = {f'{b}-{s}':[r['ms'] for r in accepted if (r['backend'], r['samples']) == (b, s)]
           for b, s in profiles}
    medians = {key:statistics.median(values) for key, values in raw.items()}
    summary.append({'asset':asset, 'width':640, 'height':360, 'threads':4,
                    'mediansMs':medians, 'rawMs':raw, 'glimpsw4xSupported':False,
                    'softgl4xTimeVsMesa4xPercent':(medians['softgl-4']/medians['mesa-4']-1)*100,
                    'softgl4xToOffRatio':medians['softgl-4']/medians['softgl-0'],
                    'mesa4xToOffRatio':medians['mesa-4']/medians['mesa-0'],
                    'softgl4xToGlimpswOffRatio':medians['softgl-4']/medians['glimpsw-0']})
    save()
    print(json.dumps(summary[-1]), flush=True)
