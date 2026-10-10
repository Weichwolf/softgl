#!/usr/bin/env python3
"""Count actual micro-kernel work outside performance-acceptance measurements."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--root', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
args = parser.parse_args()
root, output = args.root.resolve(), args.output.resolve()
output.mkdir(parents=True, exist_ok=False)
recipe = output / 'recipe'
recipe.mkdir()
driver = (root / 'recipe/resident_trial.c').read_text()
driver = driver.replace('int main(int argc, char **argv) {', '''
unsigned long long softgl_scene_micro_audit(unsigned);
unsigned long long softgl_scene_triangle_packet_audit(unsigned);
int main(int argc, char **argv) {''')
driver = driver.replace('        fflush(stdout);', '''
        fprintf(stderr,"MICRO %llu %llu %llu %llu ALL_PACKET_CALLS %llu\\n",
            softgl_scene_micro_audit(0),softgl_scene_micro_audit(1),
            softgl_scene_micro_audit(2),softgl_scene_micro_audit(3),
            softgl_scene_triangle_packet_audit(2));
        fflush(stdout);''')
(recipe / 'resident_trial.c').write_text(driver)
shutil.copyfile(experiment / 'micro_contract.c', recipe / 'micro_contract.c')
shutil.copyfile(repo / 'tests/scene_positions.c', recipe / 'scene_positions.c')
shutil.copyfile(Path(__file__), recipe / 'census.py')
(recipe / 'CMakeLists.txt').write_text('''cmake_minimum_required(VERSION 3.20)
project(MicroPacketCensus C)
set(CMAKE_C_STANDARD 11)
add_compile_options(-O3 -g -fno-strict-aliasing -ffast-math -fno-associative-math
    -fsigned-zeros -fno-finite-math-only -msse4.1 -mno-avx -mno-avx2 -mno-avx512f)
add_compile_definitions(SOFTGL_MICRO_MSAA_AUDIT SOFTGL_TRIANGLE_PACKET_AUDIT)
add_subdirectory(${ENGINE_SOURCE} library)
add_executable(census resident_trial.c ${MODEL_WRAPPER})
target_include_directories(census PRIVATE ${ENGINE_SOURCE}/src)
target_compile_definitions(census PRIVATE SOFTGL_MODEL_VERTEX_ATTRIBUTES
    SOFTGL_MODEL_SCENE_VISIBILITY SOFTGL_MODEL_SCENE_POSITIONS
    SOFTGL_MODEL_TRANSPARENT_FUSION SOFTGL_MODEL_QUANTIZED_VISIBILITY)
target_link_libraries(census PRIVATE softgl m)
add_executable(micro_contract micro_contract.c)
target_include_directories(micro_contract PRIVATE ${ENGINE_SOURCE}/src)
target_link_libraries(micro_contract PRIVATE softgl m)
''')
configure = ['cmake','-S',str(recipe),'-B',str(output / 'native'),
    '-DCMAKE_C_COMPILER=/home/cosmo/.local/bin/clang-22',
    '-DENGINE_SOURCE='+str(root / 'source/libsoftgl'),
    '-DMODEL_WRAPPER='+str(root / 'source/model_wrap.c')]
build = ['cmake','--build',str(output / 'native'),'-j4']
for command, name in [(configure,'configure.log'), (build,'build.log')]:
    with (output / name).open('w') as stream:
        subprocess.run(command, stdout=stream, stderr=subprocess.STDOUT, check=True)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
binary = output / 'native/census'
models = json.loads((repo / 'assets/models.json').read_text())
receipt = dict(performanceAcceptance=False, sourceManifestSha256=digest(root / 'source.json'),
    runnerSha256=digest(Path(__file__)),binarySha256=digest(binary),
    recipeSha256={p.name:digest(p) for p in sorted(recipe.iterdir())},
    configureCommand=configure,buildCommand=build,records=[])
for asset in ('bmw','bistro','sponza','t80'):
    environment = os.environ.copy()
    environment.pop('SOFTGL_CAMERA',None)
    if 'camera' in models[asset]:
        environment['SOFTGL_CAMERA'] = ','.join(map(str,models[asset]['camera']))
    pack = repo / 'build/assets' / (asset+'.pack')
    command = [str(binary),str(pack)]
    result = subprocess.run(command,input='4 0 1 160 -\n',env=environment,
        capture_output=True,text=True,check=True)
    counts = next(line for line in result.stderr.splitlines() if line.startswith('MICRO ')).split()
    group_count, triangle_count, sample_count, pixel_count, calls = map(int,
        [counts[1],counts[2],counts[3],counts[4],counts[6]])
    row = dict(asset=asset,packSha256=digest(pack),command=command,stdout=result.stdout,
        stderr=result.stderr,groups=group_count,triangles=triangle_count,
        samples=sample_count,pixels=pixel_count,packetCalls=calls,
        groupFraction=group_count/calls if calls else 0)
    receipt['records'].append(row)
    (output / 'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(asset, 'micro packet fraction', row['groupFraction'], flush=True)
contract = output / 'native/micro_contract'
result = subprocess.run([str(contract)],capture_output=True,text=True)
receipt['contract'] = dict(binarySha256=digest(contract),exitCode=result.returncode,
    stdout=result.stdout,stderr=result.stderr)
(output / 'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
assert result.returncode == 0,(result.stdout,result.stderr)
print(result.stdout.strip(),flush=True)
