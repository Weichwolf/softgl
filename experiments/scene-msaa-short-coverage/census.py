#!/usr/bin/env python3
"""Count actual short/fallback execution on original assets; never time adoption."""
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
parser.add_argument('--control', type=Path, required=True)
parser.add_argument('--audit-library', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
args = parser.parse_args()
root, control, out = args.root.resolve(), args.control.resolve(), args.output.resolve()
out.mkdir(parents=True, exist_ok=False)
recipe = out / 'recipe'
recipe.mkdir()
shutil.copyfile(Path(__file__), recipe / 'census.py')
original = (root / 'recipe/resident_trial.c').read_text()
needle = 'sg_model_render((j%frames)*360.f/frames,w,h);'
assert original.count(needle) == 1
plain = original.replace(needle, 'sg_model_render(angle,w,h);', 1)
(recipe / 'control.c').write_text(plain)
needle = '        if(glGetError()!=GL_NO_ERROR) return 9;'
assert plain.count(needle) == 1
counted = plain.replace('int main(int argc, char **argv) {',
    'extern unsigned long long softgl_scene_short_audit(unsigned index);\nint main(int argc, char **argv) {', 1)
counted = counted.replace(needle, '''        unsigned long long counts[5];
        for (unsigned i = 0; i < 5; i++) counts[i] = softgl_scene_short_audit(i);
        printf("{\\"census\\":[%llu,%llu,%llu,%llu,%llu]}\\n",counts[0],counts[1],counts[2],counts[3],counts[4]);
''' + needle, 1)
(recipe / 'counted.c').write_text(counted)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
receipt = dict(passed=False, diagnosticOnly=True, performanceAcceptance=False,
    width=640, height=360, threads=4, samples=4, angles=list(range(0,360,40)),
    framesPerAngle=2, sourceManifestSha256=digest(root / 'source.json'),
    controlSourceManifestSha256=digest(control / 'source.json'),
    librarySha256=digest(root / 'native/library/libsoftgl.a'),
    auditLibrarySha256=digest(args.audit_library),
    controlLibrarySha256=digest(control / 'native/library/libsoftgl.a'),
    programs={}, records=[], counts={})
flags = ['-std=c11', '-O3', '-g', '-DNDEBUG', '-fno-strict-aliasing', '-ffast-math',
         '-fno-associative-math', '-fsigned-zeros', '-fno-finite-math-only',
         '-msse4.1', '-mno-avx', '-mno-avx2', '-mno-avx512f']
defines = ['SOFTGL_MODEL_VERTEX_ATTRIBUTES', 'SOFTGL_MODEL_SCENE_VISIBILITY',
           'SOFTGL_MODEL_SCENE_POSITIONS', 'SOFTGL_MODEL_TRANSPARENT_FUSION',
           'SOFTGL_MODEL_QUANTIZED_VISIBILITY']
for name, frozen, library in [('control', control, control / 'native/library/libsoftgl.a'),
                              ('counted', root, args.audit_library.resolve())]:
    source = frozen / 'source/libsoftgl'
    binary = out / name
    command = [str(Path.home() / '.local/bin/clang-22'), *flags,
               *['-D' + value for value in defines],
               '-I' + str(source / 'src'), '-I' + str(source / 'include'),
               str(recipe / (name + '.c')), str(frozen / 'source/model_wrap.c'),
               str(library), '-lm', '-pthread', '-o', str(binary)]
    build = subprocess.run(command, capture_output=True, text=True)
    (out / (name + '-build.log')).write_text(build.stdout + build.stderr)
    assert build.returncode == 0, build.stderr
    receipt['programs'][name] = dict(command=command, binarySha256=digest(binary))
models = json.loads((repo / 'assets/models.json').read_text())
requests = ''.join('4 0 1 ' + str(a) + ' -\n' for a in receipt['angles'])
for asset in ('bistro', 'sponza', 'bmw', 't80'):
    pack = repo / 'build/assets' / (asset + '.pack')
    env = os.environ.copy()
    env.pop('SOFTGL_CAMERA', None)
    if 'camera' in models[asset]:
        env['SOFTGL_CAMERA'] = ','.join(map(str, models[asset]['camera']))
    rows = {}
    for name in ('control', 'counted'):
        run = subprocess.run([str(out / name), str(pack)], input=requests,
                             capture_output=True, text=True, env=env, timeout=240)
        (out / (asset + '-' + name + '-run.log')).write_text(run.stdout + run.stderr)
        assert run.returncode == 0, (asset, name, run.stderr)
        values = [json.loads(line) for line in run.stdout.splitlines()]
        rows[name] = [r for r in values if 'renderer' in r]
        assert len(rows[name]) == 9
        if name == 'counted':
            counts = [r['census'] for r in values if 'census' in r]
            assert len(counts) == 9
    for baseline, candidate, counts_row in zip(rows['control'], rows['counted'], counts):
        for key in ('rgba', 'depth', 'stencil', 'sampleDepth', 'sampleStencil'):
            assert baseline[key] == candidate[key], (asset, baseline['angle'], key)
        assert baseline['threads'] == candidate['threads'] == 4
        receipt['records'].append(dict(asset=asset, camera=models[asset].get('camera'),
            packSha256=digest(pack), baseline=baseline, candidate=candidate, cumulativeCounts=counts_row))
    receipt['counts'][asset] = dict(zip(
        ('attempts', 'admissions', 'rangeFallbacks', 'realPixels', 'passingSamples'), counts[-1]))
    print(asset, receipt['counts'][asset], flush=True)
receipt['passed'] = True
receipt['allEndpointPlanesExact'] = True
receipt['recipeSha256'] = {p.name: digest(p) for p in sorted(recipe.iterdir())}
(out / 'receipt.json').write_text(json.dumps(receipt, indent=2) + '\n')
print('36 original-asset angles, exact physical planes and actual execution census PASS', flush=True)
