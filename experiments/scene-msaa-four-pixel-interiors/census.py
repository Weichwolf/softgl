#!/usr/bin/env python3
"""Count actual batch pixels in an explicitly instrumented, untimed copy."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

repo = Path(__file__).resolve().parents[2]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--root', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
args = parser.parse_args()
root, output = args.root.resolve(), args.output.resolve()
output.mkdir(parents=True, exist_ok=False)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
shutil.copytree(root/'source', output/'source')
shutil.copytree(root/'recipe', output/'recipe')
shutil.copyfile(Path(__file__), output/'recipe/census.py')
source = output/'source/libsoftgl/src/scene_visibility.c'
text = source.read_text()
marker = 'static __attribute__((noinline)) void scene_interior4_batch('
assert text.count(marker) == 1
text = text.replace(marker, '''static atomic_ullong scene_batch_census;
unsigned long long softgl_scene_interior4_audit(void) {
    return atomic_load_explicit(&scene_batch_census,memory_order_relaxed);
}

'''+marker)
marker = '    sg_i32x4 edge0, sg_i32x4 edge1, int x, int y) {\n'
assert text.count(marker) == 1
source.write_text(text.replace(marker, marker+
    '    atomic_fetch_add_explicit(&scene_batch_census,1,memory_order_relaxed);\n'))
driver = output/'recipe/resident_trial.c'
text = driver.read_text()
text = text.replace('int sg_model_tri_count(void);',
    'int sg_model_tri_count(void);\nunsigned long long softgl_scene_interior4_audit(void);\nunsigned long long softgl_scene_small_msaa_audit(unsigned);')
marker = '            double t0=now();sg_model_render((j%frames)*360.f/frames,w,h);double t1=now();'
assert text.count(marker) == 1
text = text.replace(marker, '            unsigned long long before_batch = softgl_scene_interior4_audit();\n            unsigned long long before_candidates = softgl_scene_small_msaa_audit(1);\n'+marker+r'''
            fprintf(stderr,"BATCH {\"angle\":%d,\"pixels\":%llu,\"specializedCandidatePixels\":%llu}\n",(j%frames)*360/frames,
                (softgl_scene_interior4_audit()-before_batch)*4,
                softgl_scene_small_msaa_audit(1)-before_candidates);
''')
marker = '        sg_model_render(angle,w,h);memcpy(pixels,softgl_read_rgba8(c),(size_t)w*h*4);'
assert text.count(marker) == 1
text = text.replace(marker, '        unsigned long long before_final = softgl_scene_interior4_audit();\n        unsigned long long before_final_candidates = softgl_scene_small_msaa_audit(1);\n'+marker+r'''
        fprintf(stderr,"BATCH {\"angle\":%.0f,\"pixels\":%llu,\"specializedCandidatePixels\":%llu}\n",angle,
            (softgl_scene_interior4_audit()-before_final)*4,
            softgl_scene_small_msaa_audit(1)-before_final_candidates);
''')
driver.write_text(text)
receipt = dict(diagnosticOnly=True, performanceAcceptance=False, instrumentation=True,
    parentMeasuredSourceManifestSha256=digest(root/'source.json'),
    parentMeasuredBinarySha256=digest(root/'native/resident_candidate'),
    runnerSha256=digest(Path(__file__)), records=[])
for kind, command in [('configure', ['cmake','-S',str(output/'recipe'),'-B',str(output/'native'),
        '-DCMAKE_BUILD_TYPE=Release','-DCMAKE_C_COMPILER=/home/cosmo/.local/bin/clang-22',
        '-DCMAKE_C_FLAGS=-DSOFTGL_MSAA_VISIBILITY_AUDIT',
        '-DSCENE_TRIAL_ROOT='+str(output)]),
        ('build', ['cmake','--build',str(output/'native'),'-j4'])]:
    with (output/(kind+'.log')).open('w') as log:
        subprocess.run(command, stdout=log, stderr=subprocess.STDOUT, check=True)
    receipt[kind+'Command'] = command
receipt['instrumentedSourceSha256'] = {str(p.relative_to(output/'source')):digest(p)
    for p in sorted((output/'source').rglob('*')) if p.is_file()}
receipt['recipeSha256'] = {p.name:digest(p) for p in (output/'recipe').iterdir()}
receipt['binarySha256'] = digest(output/'native/resident_candidate')
models = json.loads((repo/'assets/models.json').read_text())
for asset in ('bmw','t80','sponza','bistro'):
    env = os.environ.copy(); env.pop('SOFTGL_CAMERA',None)
    env['SOFTGL_SCENE_STATS'] = '1'
    if 'camera' in models[asset]: env['SOFTGL_CAMERA'] = ','.join(map(str,models[asset]['camera']))
    command = [str(output/'native/resident_candidate'),str(repo/'build/assets'/(asset+'.pack'))]
    result = subprocess.run(command,input='4 0 1 160 -\n',env=env,capture_output=True,text=True,check=True,timeout=120)
    (output/(asset+'-stdout.txt')).write_text(result.stdout)
    (output/(asset+'-stderr.txt')).write_text(result.stderr)
    counts = [json.loads(line.removeprefix('BATCH ')) for line in result.stderr.splitlines() if line.startswith('BATCH ')]
    assert len(counts) == 2 and [r['angle'] for r in counts] == [0,160]
    receipt['records'].append(dict(asset=asset,command=command,request='4 0 1 160 -',
        packSha256=digest(repo/'build/assets'/(asset+'.pack')),counts=counts,
        stdout=result.stdout,stderr=result.stderr))
    print(asset,counts,flush=True)
(output/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
