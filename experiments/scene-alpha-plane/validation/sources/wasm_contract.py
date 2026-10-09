#!/usr/bin/env python3
"""Check the exact alpha sampler/mutations/budget in actual SIMD128 WASM."""
import argparse
import hashlib
import json
import os
import re
from pathlib import Path
import subprocess

repo = Path(__file__).resolve().parents[2]
experiment = Path(__file__).parent
parser = argparse.ArgumentParser()
parser.add_argument('--root', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
parser.add_argument('--verify-existing', action='store_true',
                    help='Rerun the built fixture and module audit after a verifier-only fix')
args = parser.parse_args()
root, output = args.root.resolve(), args.output.resolve()
if args.verify_existing:
    assert output.is_dir() and (output/'alpha_contract.wasm').is_file()
else:
    output.mkdir(parents=True, exist_ok=False)
engine = output/'engine'
engine.mkdir(exist_ok=args.verify_existing)
source = root/'source/libsoftgl'
env = os.environ.copy()
env['EM_CACHE'] = str(repo/'build/emscripten-cache')
flags = ['-std=gnu11', '-O2', '-pthread', '-msimd128', '-msse', '-msse2',
         '-msse3', '-mssse3', '-msse4.1', '-I'+str(source/'include'), '-I'+str(source/'src')]
runtime = ['-sENVIRONMENT=node', '-sWASM_ASYNC_COMPILATION=0', '-sEXIT_RUNTIME=1',
           '-sPTHREAD_POOL_SIZE=8', '-sALLOW_MEMORY_GROWTH=1',
           '-sINITIAL_MEMORY=268435456', '-sMAXIMUM_MEMORY=4294967296',
           '-sSTACK_SIZE=8388608', '-sDEFAULT_PTHREAD_STACK_SIZE=2097152']


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


sources = sorted((source/'src').glob('*.c'))
compile_command = ['emcc', *flags, '-c', *map(str, sources)]
archive_command = ['emar', 'rcs', str(engine/'libsoftgl.a')]
if not args.verify_existing:
    with (output/'engine-build.txt').open('w') as log:
        subprocess.run(compile_command, cwd=engine, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
        archive_command.extend(map(str, sorted(engine.glob('*.o'))))
        subprocess.run(archive_command, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
else:
    archive_command.extend(map(str, sorted(engine.glob('*.o'))))
target = output/'alpha_contract.js'
link_command = ['emcc', *flags, str(experiment/'wasm_alpha_contract.c'),
                str(engine/'libsoftgl.a'), '-lm', *runtime, '-o', str(target)]
if not args.verify_existing:
    with (output/'fixture-build.txt').open('w') as log:
        subprocess.run(link_command, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
result = subprocess.run(['node', str(target)], capture_output=True, text=True)
(output/'stdout.txt').write_text(result.stdout)
(output/'stderr.txt').write_text(result.stderr)
assert result.returncode == 0, result.stderr
native = (root/'checks/alpha_contract.txt').read_text()
assert result.stdout.splitlines()[0] == native.strip()
heap = int(next(x.split()[1] for x in result.stdout.splitlines() if x.startswith('WASM_HEAP ')))
assert heap <= 4294967296
wasm = target.with_suffix('.wasm')
disassembly = subprocess.check_output(['wasm-dis', str(wasm)], text=True)
memory_line = next(x.strip() for x in disassembly.splitlines() if '(memory ' in x)
memory = re.search(r'\(memory\s+\S+\s+(\d+)\s+(\d+)\s+shared\)', memory_line)
assert memory and int(memory[2]) == 65536 and 'v128' in disassembly
receipt = dict(passed=True, nativePacketOutputExact=True, actualSimd128Wasm=True,
    sharedMemory=True, maximumMemoryBytes=4294967296, heapAfterBudgetTestBytes=heap,
    actualMemoryDeclaration=memory_line, reusedBuiltModuleForVerifier=args.verify_existing,
    compileCommand=compile_command, archiveCommand=archive_command, linkCommand=link_command,
    exitCode=result.returncode, archiveSha256=digest(engine/'libsoftgl.a'),
    wasmSha256=digest(wasm), runnerSha256=digest(Path(__file__)),
    fixtureSha256=digest(experiment/'alpha_contract.c'),
    wrapperSha256=digest(experiment/'wasm_alpha_contract.c'),
    sourcesSha256={str(p.relative_to(source)): digest(p) for p in sorted(source.rglob('*')) if p.is_file()},
    scope='Sampler, texture mutation and real 64 MiB alpha cache budget; no model/browser or FPS gate')
(output/'receipt.json').write_text(json.dumps(receipt, indent=2)+'\n')
print(json.dumps({k: receipt[k] for k in ('passed', 'nativePacketOutputExact',
    'actualSimd128Wasm', 'sharedMemory', 'maximumMemoryBytes', 'heapAfterBudgetTestBytes')}), flush=True)
