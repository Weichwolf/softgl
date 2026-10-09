#!/usr/bin/env python3
"""Build CLI drivers against the measured engine and current Mesa wrapper."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
parser = argparse.ArgumentParser()
parser.add_argument('--root',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
args = parser.parse_args()
root, output = args.root.resolve(), args.output.resolve()
output.mkdir(parents=True,exist_ok=False)
recipe = output/'recipe'; recipe.mkdir()
for folder,name in [('glimpsw-mesa-comparison','softgl_bmw.c'),
                    ('glimpsw-mesa-comparison','mesa_scene.c'),
                    ('renderer-msaa4-comparison','mesa_multisample.h'),
                    ('renderer-msaa4-comparison','mesa_probe.c')]:
    text = (repo/'experiments'/folder/name).read_text()
    if name == 'mesa_scene.c':
        text = text.replace('../renderer-msaa4-comparison/mesa_multisample.h','mesa_multisample.h')
    (recipe/name).write_text(text)
flags = ['-std=gnu11','-O3','-g','-DNDEBUG','-fno-strict-aliasing','-ffast-math',
    '-fno-associative-math','-fsigned-zeros','-fno-finite-math-only',
    '-msse4.1','-mno-avx','-mno-avx2','-mno-avx512f']
source = root/'source'
compiler = '/home/cosmo/.local/bin/clang-22'
includes = ['-I'+str(source/'libsoftgl/include'),'-I'+str(source/'libsoftgl/src')]
definitions = ['-D'+name for name in ('SOFTGL_MODEL_VERTEX_ATTRIBUTES',
    'SOFTGL_MODEL_SCENE_VISIBILITY','SOFTGL_MODEL_SCENE_POSITIONS',
    'SOFTGL_MODEL_TRANSPARENT_FUSION','SOFTGL_MODEL_QUANTIZED_VISIBILITY')]
commands = {
    'softgl':[compiler,*flags,*includes,*definitions,str(recipe/'softgl_bmw.c'),
        str(source/'model_wrap.c'),str(root/'native/library/libsoftgl.a'),
        '-pthread','-lm','-o',str(output/'softgl')],
    'mesa':[compiler,*flags,*includes,str(recipe/'mesa_scene.c'),str(source/'model_wrap.c'),
        '-lOSMesa','-lm','-o',str(output/'mesa')],
    'mesa_probe':[compiler,*flags,str(recipe/'mesa_probe.c'),'-lOSMesa','-lm',
        '-o',str(output/'mesa_probe')]
}
for name,command in commands.items():
    with (output/(name+'-build.log')).open('w') as stream:
        subprocess.run(command,stdout=stream,stderr=subprocess.STDOUT,check=True)
probe = subprocess.run([str(output/'mesa_probe')],text=True,capture_output=True,check=True)
(output/'mesa-probe-stdout.txt').write_text(probe.stdout)
(output/'mesa-probe-stderr.txt').write_text(probe.stderr)
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
(output/'receipt.json').write_text(json.dumps(dict(commands=commands,
    sourceManifestSha256=digest(root/'source.json'),
    librarySha256=digest(root/'native/library/libsoftgl.a'),
    binarySha256={name:digest(output/name) for name in commands},
    recipeSha256={p.name:digest(p) for p in sorted(recipe.iterdir())},
    runnerSha256=digest(Path(__file__)),probe=probe.stdout),indent=2)+'\n')
print('Comparison drivers built; genuine four-sample Mesa framebuffer verified')
