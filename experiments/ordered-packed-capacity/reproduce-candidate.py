"""Fresh full source rebuild; original producer object identities are separately archived."""
from pathlib import Path
import argparse
import hashlib
import io
import json
import os
import shutil
import subprocess
import tarfile

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--work',default='build/diagnostics/ordered-packed-capacity-reproduction')
parser.add_argument('--bmw-pack',default='build/assets/bmw.pack')
args = parser.parse_args()
repo = Path.cwd().resolve()
archive = Path(__file__).resolve().parent
work = (repo/args.work).resolve()
assert work.is_relative_to(repo/'build') and not work.exists()
work.mkdir(parents=True)
source = work/'source';source.mkdir()
baseline = json.loads((archive/'validation.json').read_text())['researchBaselineCommit']
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(['git','archive',baseline],cwd=repo))) as snapshot:
    snapshot.extractall(source,filter='data')
subprocess.run(['git','apply',str(archive/'source.patch')],cwd=source,check=True)
pack = (repo/args.bmw_pack).resolve()
assert hashlib.sha256(pack.read_bytes()).hexdigest() == 'fae69ce423ca29ab099bde21664056456b44a2eb4250d51df3980564819e4fc8'
(source/'build/assets').mkdir(parents=True);shutil.copy2(pack,source/'build/assets/bmw.pack')
env = dict(os.environ,NODE_PATH=str(repo/'build/node/node_modules'),TMPDIR=str(repo/'build/tmp'),
    XDG_CACHE_HOME=str(repo/'build/browser-cache'),EM_CACHE=str(repo/'build/emscripten-cache'),EM_FROZEN_CACHE='0')
for name in ['build/tmp','build/browser-cache','build/emscripten-cache']:
    (repo/name).mkdir(parents=True,exist_ok=True)
wasm = work/'wasm';native = work/'native'
commands = [
    ['emcmake','cmake','-S',str(source/'wasm'),'-B',str(wasm)],
    ['cmake','--build',str(wasm),'-j4'],
    ['cmake','-S',str(source),'-B',str(native),'-DCMAKE_BUILD_TYPE=Release','-DSG_MODEL_PACK='+str(pack)],
    ['cmake','--build',str(native),'-j4'],
    ['ctest','--test-dir',str(native),'--output-on-failure','-j1'],
    ['ctest','--test-dir',str(native),'-C','Bench','-R','^benchmark_fp6$','--output-on-failure','-j1'],
]
for index,command in enumerate(commands):
    with (work/f'rebuild-{index}.log').open('w') as log:
        subprocess.run(command,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
print('Fresh source rebuild/native tests complete. Rerun all-mode WASM fidelity before comparisons; different paths/toolchains may change binary identities.')
