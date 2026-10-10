#!/usr/bin/env python3
"""Count actual partial-cell dispatch in a separately instrumented full engine."""
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
parser.add_argument('--output',type=Path,required=True)
parser.add_argument('--frames',type=int,default=30)
args = parser.parse_args()
root, output = args.root.resolve(), args.output.resolve()
output.mkdir(parents=True,exist_ok=False)
recipe = output / 'recipe'; recipe.mkdir()
shutil.copyfile(Path(__file__),recipe / 'census.py')
driver = (root / 'recipe/resident_trial.c').read_text()
marker = 'int main(int argc, char **argv) {'
assert driver.count(marker) == 1
driver = driver.replace(marker,
    'unsigned long long softgl_scene_partial_hiz_audit(unsigned);\n'
    'unsigned long long softgl_scene_msaa_packet_occlusion_audit(unsigned);\n'+marker)
marker = '        fflush(stdout);'
assert driver.count(marker) == 1
driver = driver.replace(marker,'''        fprintf(stderr,"PARTIAL %llu %llu %llu %llu\\n",
            softgl_scene_partial_hiz_audit(0),softgl_scene_partial_hiz_audit(1),
            softgl_scene_partial_hiz_audit(2),softgl_scene_partial_hiz_audit(3));
        fprintf(stderr,"PACKET %llu %llu %llu %llu\\n",
            softgl_scene_msaa_packet_occlusion_audit(0),softgl_scene_msaa_packet_occlusion_audit(1),
            softgl_scene_msaa_packet_occlusion_audit(2),softgl_scene_msaa_packet_occlusion_audit(3));
'''+marker)
(recipe / 'resident_trial.c').write_text(driver)
cmake = (root / 'recipe/CMakeLists.txt').read_text()
cmake = cmake.replace('add_subdirectory(',
    'add_compile_definitions(SOFTGL_PARTIAL_HIZ_AUDIT SOFTGL_MSAA_PACKET_OCCLUSION_AUDIT)\nadd_subdirectory(',1)
(recipe / 'CMakeLists.txt').write_text(cmake)
shutil.copyfile(root / 'recipe/quality_frames.c',recipe / 'quality_frames.c')
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
engine = output / 'native'
configure = ['cmake','-S',str(recipe),'-B',str(engine),'-DCMAKE_BUILD_TYPE=Release',
    '-DCMAKE_C_COMPILER=/home/cosmo/.local/bin/clang-22','-DSCENE_TRIAL_ROOT='+str(root)]
build = ['cmake','--build',str(engine),'--target','resident_candidate','-j4']
for command,name in [(configure,'configure'),(build,'build')]:
    with (output / (name+'.log')).open('w') as stream:
        subprocess.run(command,stdout=stream,stderr=subprocess.STDOUT,check=True)
receipt = dict(passed=False,performanceAcceptance=False,width=640,height=360,threads=4,
    sourceManifestSha256=digest(root / 'source.json'),
    runnerSha256=digest(Path(__file__)),recipeSha256={p.name:digest(p) for p in recipe.iterdir()},
    configureCommand=configure,buildCommand=build,
    librarySha256=digest(engine / 'library/libsoftgl.a'),
    binarySha256=digest(engine / 'resident_candidate'),records=[])
models = json.loads((repo / 'assets/models.json').read_text())
for asset in ('bistro','sponza','bmw','t80'):
    env = os.environ.copy(); env.pop('SOFTGL_CAMERA',None)
    env['SOFTGL_SCENE_STATS'] = '1'
    if 'camera' in models[asset]: env['SOFTGL_CAMERA'] = ','.join(map(str,models[asset]['camera']))
    pack = repo / 'build/assets' / (asset+'.pack')
    command = [str(engine / 'resident_candidate'),str(pack)]
    request = f'4 0 {args.frames} 160 -\n'
    result = subprocess.run(command,input=request,env=env,text=True,capture_output=True,check=True)
    counts = next(line for line in result.stderr.splitlines() if line.startswith('PARTIAL ')).split()[1:]
    packet = next(line for line in result.stderr.splitlines() if line.startswith('PACKET ')).split()[1:]
    frames = [json.loads(line.removeprefix('SCENE ')) for line in result.stderr.splitlines() if line.startswith('SCENE ')]
    assert len(frames) == args.frames+1
    row = dict(asset=asset,packSha256=digest(pack),camera=models[asset].get('camera'),command=command,
        request=request,stdout=result.stdout,stderr=result.stderr,frameStats=frames,
        partial=dict(zip(('cellQueries','rectangleWritten','cellDepthPass','wholeQueryRejects'),map(int,counts))),
        packet=dict(zip(('eligible','queries','rejected','rejectedTriangles'),map(int,packet))))
    receipt['records'].append(row)
    (output / 'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    assert row['partial']['cellQueries'] > 0
    print(asset,json.dumps(row['partial']),flush=True)
receipt['passed'] = True
(output / 'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
print('Actual instrumented partial-cell dispatch captured; excluded from FPS acceptance',flush=True)
