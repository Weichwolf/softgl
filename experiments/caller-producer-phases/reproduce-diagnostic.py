"""Fresh source rebuild and guarded interval observations (not a bitwise producer claim)."""
from pathlib import Path
import argparse
import hashlib
import io
import os
import shutil
import subprocess
import tarfile

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--work', default='build/diagnostics/caller-producer-reproduction')
parser.add_argument('--bmw-pack', default='build/assets/bmw.pack')
parser.add_argument('--observe', action='store_true')
args = parser.parse_args()
repo = Path.cwd().resolve()
archive = Path(__file__).resolve().parent
work = (repo/args.work).resolve()
assert work.is_relative_to(repo/'build') and not work.exists()
work.mkdir(parents=True)
source = work/'source'
source.mkdir()
baseline = '918518b37bee9f29128979d58dfd146299679b36'
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(['git','archive',baseline],cwd=repo))) as snapshot:
    snapshot.extractall(source,filter='data')
subprocess.run(['git','apply',str(archive/'source.patch')],cwd=source,check=True)
pack = (repo/args.bmw_pack).resolve()
assert hashlib.sha256(pack.read_bytes()).hexdigest() == 'fae69ce423ca29ab099bde21664056456b44a2eb4250d51df3980564819e4fc8'
(source/'build/assets').mkdir(parents=True)
shutil.copy2(pack,source/'build/assets/bmw.pack')
cmake = source/'wasm/CMakeLists.txt'
text = cmake.read_text()
assert text.count('_malloc,_free ') == 1
text = text.replace('_malloc,_free ','_malloc,_free,_sg_caller_producer_reset,_sg_caller_producer_read ')
text += '\ntarget_compile_definitions(softgl_objs PRIVATE SG_CALLER_PRODUCER_DIAG=1)\n'
cmake.write_text(text)
env = dict(os.environ, NODE_PATH=str(repo/'build/node/node_modules'),
    TMPDIR=str(repo/'build/tmp'), XDG_CACHE_HOME=str(repo/'build/browser-cache'),
    EM_CACHE=str(repo/'build/emscripten-cache'), EM_FROZEN_CACHE='0')
for directory in ['build/tmp','build/browser-cache','build/emscripten-cache']:
    (repo/directory).mkdir(parents=True,exist_ok=True)
wasm = work/'wasm'
native = work/'native'
commands = [
    ['emcmake','cmake','-S',str(source/'wasm'),'-B',str(wasm)],
    ['cmake','--build',str(wasm),'-j4'],
    ['cmake','-S',str(source),'-B',str(native),'-DCMAKE_BUILD_TYPE=Release',
        '-DCMAKE_C_FLAGS=-DSG_CALLER_PRODUCER_DIAG=1','-DSG_MODEL_PACK='+str(pack)],
    ['cmake','--build',str(native),'-j4'],
    ['ctest','--test-dir',str(native),'--output-on-failure','-j1'],
    ['ctest','--test-dir',str(native),'-C','Bench','-R','^benchmark_fp6$','--output-on-failure','-j1'],
]
for index, command in enumerate(commands):
    with (work/f'rebuild-{index}.log').open('w') as log:
        subprocess.run(command,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
if args.observe:
    for audit in (1,2):
        for samples in ((0,2,4) if audit == 1 else (4,2,0)):
            output = work/f'producer-ms{samples}-audit-{audit}.json'
            subprocess.run(['python3',str(archive/'wasm_quiet_audit.py'),str(output),
                'node',str(archive/'wasm_perf_producer.cjs'),'--bench-only','--wasm-build',str(wasm),
                '--native-build',str(native),'--scenes','bmw,tank','--samples',str(samples),
                '--rounds','1','--warmup','80','--frames','100','--output',str(output)],env=env,check=True)
print('Fresh diagnostic source rebuild complete. Paths/toolchain can change module bytes; compare fidelity before comparing observations.')
