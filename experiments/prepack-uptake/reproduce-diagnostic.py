"""Fresh full source build of the diagnostic and its native regressions."""
from pathlib import Path
import argparse,hashlib,io,json,os,shutil,subprocess,tarfile
parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('--work',default='build/diagnostics/prepack-uptake-reproduction');parser.add_argument('--bmw-pack',default='build/assets/bmw.pack');args=parser.parse_args()
repo=Path.cwd().resolve();archive=Path(__file__).resolve().parent;work=(repo/args.work).resolve();assert work.is_relative_to(repo/'build') and not work.exists();work.mkdir(parents=True)
v=json.loads((archive/'validation.json').read_text());source=work/'source';source.mkdir()
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(['git','archive',v['researchBaselineCommit']]))) as ar:ar.extractall(source,filter='data')
subprocess.run(['git','apply',str(archive/'source.patch')],cwd=source,check=True)
pack=(repo/args.bmw_pack).resolve();assert hashlib.sha256(pack.read_bytes()).hexdigest()=='fae69ce423ca29ab099bde21664056456b44a2eb4250d51df3980564819e4fc8'
(source/'build/assets').mkdir(parents=True);shutil.copy2(pack,source/'build/assets/bmw.pack')
env=dict(os.environ,TMPDIR=str(repo/'build/tmp'),EM_CACHE=str(repo/'build/emscripten-cache'),EM_FROZEN_CACHE='0')
commands=[['emcmake','cmake','-S',str(source/'wasm'),'-B',str(work/'wasm'),'-DCMAKE_C_FLAGS=-DSG_PREPACK_DIAG=1'],['cmake','--build',str(work/'wasm'),'-j4'],['cmake','-S',str(source),'-B',str(work/'native'),'-DCMAKE_BUILD_TYPE=Release','-DCMAKE_C_FLAGS=-DSG_PREPACK_DIAG=1','-DSG_MODEL_PACK='+str(pack)],['cmake','--build',str(work/'native'),'-j4'],['ctest','--test-dir',str(work/'native'),'--output-on-failure','-j1'],['ctest','--test-dir',str(work/'native'),'-C','Bench','-R','^benchmark_fp6$','--output-on-failure','-j1']]
for i,cmd in enumerate(commands):
 with (work/f'rebuild-{i}.log').open('w') as log:subprocess.run(cmd,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
print('Fresh diagnostic/native source build complete. Original exported observer producer is separately bound; adapt all-mode WASM fidelity/observation scripts before making new observations. Paths/toolchains may change module bytes.')
