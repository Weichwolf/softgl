#!/usr/bin/env python3
"""Compare current work and predictor hits in separately instrumented engines."""
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
parser.add_argument('--root',type=Path,required=True)
parser.add_argument('--baseline-root',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
parser.add_argument('--frames',type=int,default=30)
args = parser.parse_args()
root, baseline, output = args.root.resolve(),args.baseline_root.resolve(),args.output.resolve()
output.mkdir(parents=True,exist_ok=False)
recipe = output / 'recipe'; recipe.mkdir()
shutil.copyfile(Path(__file__),recipe / 'census.py')
shutil.copyfile(experiment / 'temporal_contract.c',recipe / 'temporal_contract.c')
shutil.copyfile(repo / 'tests/scene_positions.c',recipe / 'scene_positions.c')
driver = (root / 'recipe/resident_trial.c').read_text()
marker = 'int main(int argc, char **argv) {'
driver = driver.replace(marker,'''unsigned long long softgl_scene_msaa_packet_occlusion_audit(unsigned);
#ifdef TEMPORAL_CANDIDATE
unsigned long long softgl_scene_temporal_priority_audit(unsigned);
#endif
'''+marker)
marker = '        fflush(stdout);'
assert driver.count(marker) == 1
driver = driver.replace(marker,'''        fprintf(stderr,"PACKET %llu %llu %llu %llu\\n",
            softgl_scene_msaa_packet_occlusion_audit(0),softgl_scene_msaa_packet_occlusion_audit(1),
            softgl_scene_msaa_packet_occlusion_audit(2),softgl_scene_msaa_packet_occlusion_audit(3));
#ifdef TEMPORAL_CANDIDATE
        fprintf(stderr,"HISTORY %llu %llu %llu %llu %llu %llu\\n",
            softgl_scene_temporal_priority_audit(0),softgl_scene_temporal_priority_audit(1),
            softgl_scene_temporal_priority_audit(2),softgl_scene_temporal_priority_audit(3),
            softgl_scene_temporal_priority_audit(4),softgl_scene_temporal_priority_audit(5));
#endif
'''+marker)
(recipe / 'resident_trial.c').write_text(driver)
(recipe / 'CMakeLists.txt').write_text('''cmake_minimum_required(VERSION 3.20)
project(TemporalPriorityCensus C)
set(CMAKE_C_STANDARD 11)
add_compile_options(-O3 -g -fno-strict-aliasing -ffast-math -fno-associative-math
    -fsigned-zeros -fno-finite-math-only -msse4.1 -mno-avx -mno-avx2 -mno-avx512f)
add_compile_definitions(SOFTGL_MSAA_PACKET_OCCLUSION_AUDIT SOFTGL_TEMPORAL_PRIORITY_AUDIT)
add_subdirectory(${ENGINE_SOURCE} library)
add_executable(census resident_trial.c ${MODEL_WRAPPER})
target_include_directories(census PRIVATE ${ENGINE_SOURCE}/src)
target_compile_definitions(census PRIVATE SOFTGL_MODEL_VERTEX_ATTRIBUTES
    SOFTGL_MODEL_SCENE_VISIBILITY SOFTGL_MODEL_SCENE_POSITIONS
    SOFTGL_MODEL_TRANSPARENT_FUSION SOFTGL_MODEL_QUANTIZED_VISIBILITY)
target_link_libraries(census PRIVATE softgl m)
if(TEMPORAL_CANDIDATE)
    target_compile_definitions(census PRIVATE TEMPORAL_CANDIDATE)
    add_executable(temporal_contract temporal_contract.c)
    target_include_directories(temporal_contract PRIVATE ${ENGINE_SOURCE}/src)
    target_link_libraries(temporal_contract PRIVATE softgl m)
endif()
''')
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
receipt = dict(passed=False,performanceAcceptance=False,width=640,height=360,threads=4,
    runnerSha256=digest(Path(__file__)),recipeSha256={p.name:digest(p) for p in recipe.iterdir()},
    builds={},records=[])
for variant,source_root in [('baseline',baseline),('candidate',root)]:
    engine = output / ('native-'+variant)
    configure = ['cmake','-S',str(recipe),'-B',str(engine),
        '-DCMAKE_C_COMPILER=/home/cosmo/.local/bin/clang-22',
        '-DENGINE_SOURCE='+str(source_root / 'source/libsoftgl'),
        '-DMODEL_WRAPPER='+str(source_root / 'source/model_wrap.c'),
        '-DTEMPORAL_CANDIDATE='+('ON' if variant == 'candidate' else 'OFF')]
    build = ['cmake','--build',str(engine),'-j4']
    for command,name in [(configure,'configure'),(build,'build')]:
        with (output / (variant+'-'+name+'.log')).open('w') as stream:
            subprocess.run(command,stdout=stream,stderr=subprocess.STDOUT,check=True)
    receipt['builds'][variant] = dict(sourceManifestSha256=digest(source_root / 'source.json'),
        configureCommand=configure,buildCommand=build,binarySha256=digest(engine / 'census'),
        librarySha256=digest(engine / 'library/libsoftgl.a'))
models = json.loads((repo / 'assets/models.json').read_text())
for asset in ('bistro','sponza','bmw','t80'):
    for variant in ('baseline','candidate'):
        environment = os.environ.copy(); environment.pop('SOFTGL_CAMERA',None)
        environment['SOFTGL_SCENE_STATS'] = '1'
        if 'camera' in models[asset]: environment['SOFTGL_CAMERA'] = ','.join(map(str,models[asset]['camera']))
        pack = repo / 'build/assets' / (asset+'.pack')
        command = [str(output / ('native-'+variant) / 'census'),str(pack)]
        request = f'4 0 {args.frames} 160 -\n'
        result = subprocess.run(command,input=request,env=environment,capture_output=True,text=True,check=True)
        stats = [json.loads(line.removeprefix('SCENE ')) for line in result.stderr.splitlines() if line.startswith('SCENE ')]
        assert len(stats) == args.frames+1,(asset,variant,len(stats))
        packet = next(line for line in result.stderr.splitlines() if line.startswith('PACKET ')).split()[1:]
        rows = dict(asset=asset,variant=variant,packSha256=digest(pack),camera=models[asset].get('camera'),
            command=command,request=request,stdout=result.stdout,stderr=result.stderr,frameStats=stats,
            packet=dict(zip(('eligible','queries','rejected','rejectedTriangles'),map(int,packet))))
        if variant == 'candidate':
            history = next(line for line in result.stderr.splitlines() if line.startswith('HISTORY ')).split()[1:]
            rows['history'] = dict(zip(('referenceQueries','triangleProbes','referenceHits','visibleMarks','collections','bytesCleared'),map(int,history)))
        receipt['records'].append(rows)
        (output / 'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    before,after = receipt['records'][-2:]
    bp = sum(r['depthPasses'] for r in before['frameStats']); ap = sum(r['depthPasses'] for r in after['frameStats'])
    print(asset,'current depth writes',bp,'->',ap,'history reference hits',after['history']['referenceHits'],flush=True)
contract = output / 'native-candidate/temporal_contract'
result = subprocess.run([str(contract)],capture_output=True,text=True)
receipt['contract'] = dict(binarySha256=digest(contract),exitCode=result.returncode,stdout=result.stdout,stderr=result.stderr)
receipt['passed'] = result.returncode == 0
(output / 'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
assert receipt['passed'],(result.stdout,result.stderr)
print(result.stdout.strip(),flush=True)
