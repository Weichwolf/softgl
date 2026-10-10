#!/usr/bin/env python3
"""Link an isolated equal-semantics browser control from recorded SIMD128 inputs."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shlex
import shutil
import subprocess

experiment = Path(__file__).resolve().parent
repo = experiment.parents[1]
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--root',type=Path,required=True)
parser.add_argument('--contracts',type=Path,required=True)
parser.add_argument('--output',type=Path,required=True)
args = parser.parse_args()
root, contracts, output = args.root.resolve(),args.contracts.resolve(),args.output.resolve()
output.mkdir(parents=True,exist_ok=False)
recipe = output/'recipe'; recipe.mkdir()
shutil.copyfile(Path(__file__),recipe/'build_browser_control.py')
digest = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
scope = json.loads((root/'source.json').read_text())
proof = json.loads((contracts/'receipt.json').read_text())
assert proof['passed'] and proof['platform'] == 'wasm' and proof['simdBits'] == 128
engine_sources = {p.removeprefix('libsoftgl/'):v for p,v in scope['sourceSha256'].items() if p.startswith('libsoftgl/')}
assert proof['sourcesSha256'] == engine_sources
library = contracts/'engine/libsoftgl.a'
assert digest(library) == proof['librarySha256']
env = os.environ.copy(); env['EM_CACHE'] = str(repo/'build/emscripten-cache')
flags = ['-std=gnu11','-O2','-pthread','-msimd128','-msse','-msse2','-msse3','-mssse3','-msse4.1',
    '-DSOFTGL_MODEL_VERTEX_ATTRIBUTES','-DSOFTGL_MODEL_SCENE_VISIBILITY','-DSOFTGL_MODEL_SCENE_POSITIONS',
    '-DSOFTGL_MODEL_TRANSPARENT_FUSION','-DSOFTGL_MODEL_QUANTIZED_VISIBILITY',
    '-I'+str(root/'source/libsoftgl/include'),'-I'+str(root/'source/libsoftgl/src')]
wrapper = output/'model_wrap.o'
compile_command = ['emcc',*flags,'-c',str(root/'source/model_wrap.c'),'-o',str(wrapper)]
production = repo/'build/wasm'
original = shlex.split((production/'CMakeFiles/softgl.dir/link.txt').read_text())
responses = {}
expanded = []
for value in original:
    if value.startswith('@'):
        path = production/value[1:]
        responses[str(path.relative_to(repo))] = digest(path)
        expanded.extend(shlex.split(path.read_text()))
    else: expanded.append(value)
original = expanded
command, objects = [], {}
inserted = False
for i, value in enumerate(original):
    if i and original[i-1] == '-o': command.append(str(output/'softgl.js')); continue
    if value.endswith('.o'):
        path = (production/value).resolve()
        if 'softgl_objs.dir' in value:
            if not inserted: command.append(str(library)); inserted = True
        elif value.endswith('model_wrap.c.o'):
            command.append(str(wrapper))
        else:
            assert path.exists(),path
            objects[str(path.relative_to(repo))] = digest(path)
            command.append(str(path))
    else: command.append(value)
assert inserted
for cmd, log in ((compile_command,'compile.log'),(command,'link.log')):
    with (output/log).open('w') as stream:
        subprocess.run(cmd,cwd=production,env=env,stdout=stream,stderr=subprocess.STDOUT,check=True)
(output/'receipt.json').write_text(json.dumps(dict(passed=True,width=640,height=360,simdBits=128,
    sourceManifest=scope,contractsReceiptSha256=digest(contracts/'receipt.json'),
    librarySha256=digest(library),compileCommand=compile_command,linkCommand=command,
    productionLinkRecipeSha256=digest(production/'CMakeFiles/softgl.dir/link.txt'),
    productionResponseSha256=responses,
    commonObjectSha256=objects,wrapperObjectSha256=digest(wrapper),
    softglJsSha256=digest(output/'softgl.js'),softglWasmSha256=digest(output/'softgl.wasm'),
    runnerSha256=digest(Path(__file__))),indent=2)+'\n')
print('Isolated equal-state browser control linked; live preview was not changed',flush=True)
