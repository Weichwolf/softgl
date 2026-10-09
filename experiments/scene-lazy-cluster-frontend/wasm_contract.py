#!/usr/bin/env python3
"""Compile and execute the enabled lazy fixture in actual SIMD128 WASM."""
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
output = args.output.resolve()
output.mkdir(parents=True)
env = os.environ.copy()
env['EM_CACHE'] = str(repo/'build/emscripten-cache')
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
receipt = {'simdBits': 128, 'width': 640, 'height': 360,
           'initialMemoryBytes': 268435456, 'maximumMemoryBytes': 4294967296,
           'workerStackBytes': 2097152, 'runs': []}
records = []
for variant, directory in [('candidate', 'source'), ('unpruned', 'unpruned-source')]:
    source = args.root.resolve()/directory/'libsoftgl'
    sources = sorted(p for p in (source/'src').glob('*.c') if p.name != 'scene_visibility.c')
    fixture = repo/'experiments/scene-lazy-cluster-frontend/lazy_contract.c'
    target = output/f'{variant}.js'
    command = ['emcc', '-std=gnu11', '-O2', '-pthread', '-msimd128',
               '-msse', '-msse2', '-msse3', '-mssse3', '-msse4.1', '-DSOFTGL_LAZY_AUDIT',
               '-I'+str(source/'include'), '-I'+str(source/'src'), '-I'+str(repo/'tests')]
    if variant == 'unpruned':
        command += ['-DSOFTGL_LAZY_CENSUS_ONLY', '-DSOFTGL_LAZY_UNBOUNDED']
    command += [str(fixture), *map(str, sources), '-lm', '-sENVIRONMENT=node',
                '-sWASM_ASYNC_COMPILATION=0', '-sEXIT_RUNTIME=1', '-sPTHREAD_POOL_SIZE=16',
                '-sALLOW_MEMORY_GROWTH=1', '-sINITIAL_MEMORY=268435456',
                '-sMAXIMUM_MEMORY=4294967296', '-sSTACK_SIZE=8388608',
                '-sDEFAULT_PTHREAD_STACK_SIZE=2097152', '-o', str(target)]
    with (output/f'{variant}-build.txt').open('w') as log:
        subprocess.run(command, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
    result = subprocess.run(['node', str(target)], text=True, capture_output=True)
    (output/f'{variant}-stdout.txt').write_text(result.stdout)
    (output/f'{variant}-stderr.txt').write_text(result.stderr)
    run = {'variant': variant, 'compileCommand': command, 'command': ['node', str(target)],
           'exitCode': result.returncode, 'wasmSha256': sha(target.with_suffix('.wasm')),
           'fixtureSha256': sha(fixture), 'sourcesSha256':
           {str(p.relative_to(source)): sha(p) for p in sorted(source.rglob('*')) if p.is_file()}}
    receipt['runs'].append(run)
    (output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
    assert result.returncode == 0, result.stderr
    rows = [json.loads(s) for s in result.stdout.splitlines() if s.startswith('{')]
    assert len(rows) == 180
    records.append(rows)
    print(f'{variant}: actual SIMD128 WASM, 180 enabled frames PASS', flush=True)
assert records[0] == records[1]
receipt['enabledSamplePlanesExact'] = True
(output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
print('180 actual WASM full sample-color/depth/stencil planes exact vs all-bin oracle PASS', flush=True)
