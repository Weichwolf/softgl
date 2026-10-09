#!/usr/bin/env python3
"""Build each actual SIMD128 WASM engine once and run independent fixtures."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser()
parser.add_argument('--root', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
args = parser.parse_args()
root = args.root.resolve()
output = args.output.resolve()
output.mkdir(parents=True)
env = os.environ.copy()
env['EM_CACHE'] = str(repo/'build/emscripten-cache')
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
flags = ['-std=gnu11', '-O2', '-pthread', '-msimd128', '-msse', '-msse2',
         '-msse3', '-mssse3', '-msse4.1']
runtime = ['-sENVIRONMENT=node', '-sWASM_ASYNC_COMPILATION=0', '-sEXIT_RUNTIME=1',
           '-sPTHREAD_POOL_SIZE=16', '-sALLOW_MEMORY_GROWTH=1',
           '-sINITIAL_MEMORY=268435456', '-sMAXIMUM_MEMORY=4294967296',
           '-sSTACK_SIZE=8388608', '-sDEFAULT_PTHREAD_STACK_SIZE=2097152']
receipt = {'simdBits': 128, 'width': 640, 'height': 360, 'runs': [], 'engines': [],
           'initialMemoryBytes': 268435456, 'maximumMemoryBytes': 4294967296,
           'runnerSha256': sha(Path(__file__))}
records = {}
common_kinds = ('quantized', 'small', 'positions', 'hz', 'order', 'hint')
for variant, directory in [('baseline', 'baseline-source'), ('candidate', 'source')]:
    source = root/directory/'libsoftgl'
    engine = output/f'engine-{variant}'
    engine.mkdir()
    includes = ['-I'+str(source/'include'), '-I'+str(source/'src'), '-I'+str(repo/'tests')]
    sources = sorted((source/'src').glob('*.c'))
    command = ['emcc', *flags, *includes, '-c', *map(str, sources)]
    with (output/f'{variant}-engine-build.txt').open('w') as log:
        subprocess.run(command, cwd=engine, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
        subprocess.run(['emar', 'rcs', str(engine/'libsoftgl.a'), *map(str, sorted(engine.glob('*.o')))],
                       env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
    receipt['engines'].append({'variant': variant, 'command': command,
        'archiveSha256': sha(engine/'libsoftgl.a'), 'sourcesSha256':
        {str(p.relative_to(source)): sha(p) for p in sorted(source.rglob('*')) if p.is_file()}})
    fixtures = {
        'quantized': repo/'tests/scene_quantized.c',
        'small': repo/'experiments/scene-msaa-small-triangles/small_contract.c',
        'positions': repo/'tests/scene_positions.c',
        'hz': root/f'fixtures/scene_msaa_{variant}.c',
        'order': repo/'tests/scene_depth_order.c',
        'hint': repo/'experiments/scene-depth-order-cached-keys/hint_contract.c'}
    if variant == 'candidate' and (source/'src/scene_density_hint.c').exists():
        fixtures['adaptive'] = repo/'experiments/scene-msaa-density-hint/adaptive_contract.c'
    for kind, fixture in fixtures.items():
        target = output/f'{kind}-{variant}.js'
        command = ['emcc', *flags, *includes, str(fixture), str(engine/'libsoftgl.a'),
                   '-lm', *runtime, '-o', str(target)]
        with (output/f'{kind}-{variant}-build.txt').open('w') as log:
            subprocess.run(command, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
        result = subprocess.run(['node', str(target)], text=True, capture_output=True)
        (output/f'{kind}-{variant}-stdout.txt').write_text(result.stdout)
        (output/f'{kind}-{variant}-stderr.txt').write_text(result.stderr)
        receipt['runs'].append({'kind': kind, 'variant': variant, 'compileCommand': command,
            'exitCode': result.returncode, 'fixtureSha256': sha(fixture),
            'wasmSha256': sha(target.with_suffix('.wasm'))})
        (output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
        assert result.returncode == 0, (kind, variant, result.stderr)
        records[kind, variant] = result.stdout
        print(kind, variant, 'actual SIMD128 WASM PASS', flush=True)
for kind in common_kinds:
    assert records[kind, 'baseline'] == records[kind, 'candidate'], kind
receipt['independentPlatformOutputsExact'] = True
(output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
print('All six actual WASM baseline/candidate fixtures exact; optional adaptive contract PASS', flush=True)
