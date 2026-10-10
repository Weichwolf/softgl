#!/usr/bin/env python3
"""Enabled partial-cell mask and sequence contracts on actual sanitizer/SIMD128 WASM engines."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
parser = argparse.ArgumentParser()
parser.add_argument('--root',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
parser.add_argument('--platform',choices=('sanitize','wasm'),required=True)
args = parser.parse_args()
root, output = args.root.resolve(), args.output.resolve()
output.mkdir(parents=True,exist_ok=False)
recipe = output/'recipe'; recipe.mkdir()
fixtures = {'mask':experiment/'mask_contract.c','sequence':experiment/'sequence_contract.c'}
for name, path in fixtures.items():
    shutil.copyfile(path,recipe/(name+'.c'))
# MSAA/coverage fixtures reuse the canonical positions fixture by its original name.
shutil.copyfile(repo/'tests/scene_positions.c',recipe/'scene_positions.c')
shutil.copyfile(Path(__file__),recipe/'platform_gates.py')
source = root/'source/libsoftgl'
query_local = json.loads((root/'source.json').read_text()).get('queryLocalBound',False)

digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
receipt = dict(platform=args.platform,simdBits=128,width=640,height=360,passed=False,
    sourceManifestSha256=digest(root/'source.json'),
    sourcesSha256={str(p.relative_to(source)):digest(p) for p in sorted(source.rglob('*')) if p.is_file()},
    runnerSha256=digest(Path(__file__)),recipeSha256={},runs=[],
    measuredKernelSha256=digest(source/'src/scene_visibility.c'))
env = os.environ.copy()
env['EM_CACHE'] = str(repo/'build/emscripten-cache')

def run(command, log, cwd=None):
    with (output/log).open('w') as stream:
        subprocess.run(command,cwd=cwd,env=env,stdout=stream,stderr=subprocess.STDOUT,check=True)

if args.platform == 'sanitize':
    cmake = '''cmake_minimum_required(VERSION 3.20)
project(MaterialMergeContracts C)
set(CMAKE_C_STANDARD 11)
add_compile_options(-O1 -g -fno-omit-frame-pointer -fno-strict-aliasing
    -fsanitize=address,undefined -fno-fast-math -ffp-contract=off
    -msse4.1 -mno-avx -mno-avx2 -mno-avx512f)
add_link_options(-fsanitize=address,undefined)
add_subdirectory(${ENGINE_SOURCE} library)
foreach(kind mask sequence)
    add_executable(${kind}_contract ${kind}.c)
    target_include_directories(${kind}_contract PRIVATE ${ENGINE_SOURCE}/src)
    target_link_libraries(${kind}_contract PRIVATE softgl m)
endforeach()
'''
    if query_local:
        cmake = cmake.replace('add_subdirectory(${ENGINE_SOURCE} library)','add_compile_definitions(SOFTGL_PARTIAL_QUERY_LOCAL)\nadd_subdirectory(${ENGINE_SOURCE} library)')
    (recipe/'CMakeLists.txt').write_text(cmake)
    engine = output/'build'
    configure = ['cmake','-S',str(recipe),'-B',str(engine),'-DCMAKE_C_COMPILER=/usr/bin/clang-19',
                 '-DENGINE_SOURCE='+str(source)]
    build = ['cmake','--build',str(engine),'-j4']
    receipt['configureCommand'], receipt['buildCommand'] = configure, build
    run(configure,'configure.log'); run(build,'build.log')
    env['ASAN_OPTIONS'] = 'detect_leaks=1:halt_on_error=1'
    env['UBSAN_OPTIONS'] = 'halt_on_error=1:print_stacktrace=1'
    receipt['sanitizerEnvironment'] = {k:env[k] for k in ('ASAN_OPTIONS','UBSAN_OPTIONS')}
    receipt['librarySha256'] = digest(engine/'library/libsoftgl.a')
    commands = {kind:[str(engine/(kind+'_contract'))] for kind in fixtures}
else:
    engine = output/'engine'; engine.mkdir()
    # Match the actual preview's arithmetic flags; its CMake does not enable fast-math.
    flags = ['-std=gnu11','-O2','-pthread','-msimd128',
             '-msse','-msse2','-msse3','-mssse3','-msse4.1']
    if query_local: flags.append('-DSOFTGL_PARTIAL_QUERY_LOCAL')
    includes = ['-I'+str(source/'include'),'-I'+str(source/'src')]
    compile_command = ['emcc',*flags,*includes,'-c',*map(str,sorted((source/'src').glob('*.c')))]
    receipt['engineCompileCommand'] = compile_command
    run(compile_command,'build.log',engine)
    archive = ['emar','rcs',str(engine/'libsoftgl.a'),*map(str,sorted(engine.glob('*.o')))]
    run(archive,'archive.log')
    receipt['librarySha256'] = digest(engine/'libsoftgl.a')
    runtime = ['-sENVIRONMENT=node','-sWASM_ASYNC_COMPILATION=0','-sEXIT_RUNTIME=1',
               '-sPTHREAD_POOL_SIZE=16','-sALLOW_MEMORY_GROWTH=1','-sINITIAL_MEMORY=268435456',
               '-sMAXIMUM_MEMORY=4294967296','-sSTACK_SIZE=8388608','-sDEFAULT_PTHREAD_STACK_SIZE=2097152']
    commands = {}
    receipt['linkCommands'] = {}
    receipt['wasmSha256'] = {}
    for kind in fixtures:
        target = output/(kind+'.js')
        command = ['emcc',*flags,*includes,str(recipe/(kind+'.c')),str(engine/'libsoftgl.a'),
                   '-lm',*runtime,'-o',str(target)]
        run(command,kind+'-build.log')
        receipt['linkCommands'][kind] = command
        receipt['wasmSha256'][kind] = digest(target.with_suffix('.wasm'))
        commands[kind] = ['node',str(target)]
for kind, command in commands.items():
    result = subprocess.run(command,env=env,text=True,capture_output=True,timeout=240)
    (output/(kind+'-stdout.txt')).write_text(result.stdout)
    (output/(kind+'-stderr.txt')).write_text(result.stderr)
    receipt['runs'].append(dict(kind=kind,command=command,exitCode=result.returncode,
        fixtureSha256=digest(recipe/(kind+'.c')),stdout=result.stdout,stderr=result.stderr))
    (output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    assert result.returncode == 0,(kind,result.stdout,result.stderr)
    print(args.platform,kind,result.stdout.strip(),flush=True)
receipt['passed'] = True
receipt['recipeSha256'] = {p.name:digest(p) for p in sorted(recipe.iterdir())}
(output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
print('Independent partial-cell contracts PASS',flush=True)
