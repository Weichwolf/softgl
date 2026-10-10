#!/usr/bin/env python3
"""Freeze extra correctness drivers linked to the actual measured libraries."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--control',type=Path,required=True)
parser.add_argument('--candidate',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
args = parser.parse_args()
output = args.output.resolve(); output.mkdir(parents=True,exist_ok=False)
recipe = output/'recipe'; recipe.mkdir()
for name in ('native_gates.py','dot3_contract.c','scene_alpha_contract.c'):
    shutil.copyfile(experiment/name,recipe/name)
shutil.copyfile(repo/'tests/scene_positions.c',recipe/'scene_positions.c')
shutil.copyfile(repo/'experiments/scene-msaa-rgb-alpha-split/quality_frames.c',recipe/'quality_frames.c')
flags = '-O3 -g -fno-strict-aliasing -ffast-math -fno-associative-math -fsigned-zeros -fno-finite-math-only -msse4.1 -mno-avx -mno-avx2 -mno-avx512f'
(recipe/'CMakeLists.txt').write_text('''cmake_minimum_required(VERSION 3.20)
project(OpaqueAlphaGates C)
set(CMAKE_C_STANDARD 11)
find_package(Threads REQUIRED)
foreach(side control candidate)
    add_library(${side}_engine STATIC IMPORTED)
    set_target_properties(${side}_engine PROPERTIES IMPORTED_LOCATION "${${side}_ROOT}/native/library/libsoftgl.a")
    foreach(kind quality dot3 scene_alpha)
        if(kind STREQUAL "quality")
            add_executable(${side}_${kind} quality_frames.c "${${side}_ROOT}/source/model_wrap.c")
            target_compile_definitions(${side}_${kind} PRIVATE SOFTGL_MODEL_VERTEX_ATTRIBUTES SOFTGL_MODEL_SCENE_VISIBILITY SOFTGL_MODEL_SCENE_POSITIONS SOFTGL_MODEL_TRANSPARENT_FUSION SOFTGL_MODEL_QUANTIZED_VISIBILITY)
        else()
            add_executable(${side}_${kind} ${kind}_contract.c)
        endif()
        target_include_directories(${side}_${kind} PRIVATE "${${side}_ROOT}/source/libsoftgl/include" "${${side}_ROOT}/source/libsoftgl/src")
        target_link_libraries(${side}_${kind} PRIVATE ${side}_engine Threads::Threads m)
    endforeach()
endforeach()
''')
roots = dict(control=args.control.resolve(),candidate=args.candidate.resolve())
configure = ['cmake','-S',str(recipe),'-B',str(output/'native'),
    '-DCMAKE_C_COMPILER='+str(Path.home()/'.local/bin/clang-22'),'-DCMAKE_BUILD_TYPE=Release',
    '-DCMAKE_C_FLAGS='+flags,*['-D'+side+'_ROOT='+str(root) for side,root in roots.items()]]
build = ['cmake','--build',str(output/'native'),'-j4']
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
receipt = dict(passed=False,configureCommand=configure,buildCommand=build,simdBits=128,
    sources={side:json.loads((root/'source.json').read_text()) for side,root in roots.items()},
    librarySha256={side:digest(root/'native/library/libsoftgl.a') for side,root in roots.items()},runs=[])
for command, log in ((configure,'configure.log'),(build,'build.log')):
    with (output/log).open('w') as stream:
        subprocess.run(command,stdout=stream,stderr=subprocess.STDOUT,check=True)
for side in roots:
    for kind in ('dot3','scene_alpha'):
        binary = output/'native'/(side+'_'+kind)
        result = subprocess.run([str(binary)],capture_output=True,text=True,timeout=240)
        (output/(side+'-'+kind+'-stdout.txt')).write_text(result.stdout)
        (output/(side+'-'+kind+'-stderr.txt')).write_text(result.stderr)
        receipt['runs'].append(dict(side=side,kind=kind,exitCode=result.returncode,
            stdout=result.stdout,stderr=result.stderr,binarySha256=digest(binary)))
        (output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
        assert result.returncode == 0,(side,kind,result.stdout,result.stderr)
        print(side,kind,result.stdout.strip(),flush=True)
receipt['recipeSha256'] = {p.name:digest(p) for p in sorted(recipe.iterdir())}
receipt['qualityBinarySha256'] = {side:digest(output/'native'/(side+'_quality')) for side in roots}
receipt['passed'] = True
(output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
