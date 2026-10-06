"""Fresh full-source diagnostic/native rebuild; original incremental commands are archived."""
from pathlib import Path
import argparse,hashlib,io,json,os,shutil,subprocess,tarfile
p=argparse.ArgumentParser(description=__doc__);p.add_argument('--work',default='build/diagnostics/replay-path-census-reproduction');p.add_argument('--bmw-pack',default='build/assets/bmw.pack');args=p.parse_args()
repo=Path.cwd().resolve();archive=Path(__file__).resolve().parent;v=json.loads((archive/'validation.json').read_text());work=(repo/args.work).resolve();assert work.is_relative_to(repo/'build') and not work.exists();work.mkdir(parents=True);source=work/'source';source.mkdir()
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(['git','archive',v['researchBaselineCommit']]))) as a:a.extractall(source,filter='data')
subprocess.run(['git','apply',str(archive/'source.patch')],cwd=source,check=True)
# Add only the two diagnostic readers to the original executable export list.
f=source/'wasm/CMakeLists.txt';t=f.read_text();needle='-sEXPORTED_FUNCTIONS=';assert t.count(needle)==1;t=t.replace(needle,needle+'_sg_replay_diag_reset,_sg_replay_diag_read,');f.write_text(t)
pack=(repo/args.bmw_pack).resolve();assert hashlib.sha256(pack.read_bytes()).hexdigest()=='fae69ce423ca29ab099bde21664056456b44a2eb4250d51df3980564819e4fc8'
(source/'build/assets').mkdir(parents=True);shutil.copy2(pack,source/'build/assets/bmw.pack')
for name in ['build/tmp','build/browser-cache','build/emscripten-cache']:(repo/name).mkdir(parents=True,exist_ok=True)
env=dict(os.environ,TMPDIR=str(repo/'build/tmp'),EM_CACHE=str(repo/'build/emscripten-cache'),EM_FROZEN_CACHE='0',NODE_PATH=str(repo/'build/node/node_modules'),XDG_CACHE_HOME=str(repo/'build/browser-cache'))
commands=[['emcmake','cmake','-S',str(source/'wasm'),'-B',str(work/'wasm'),'-DCMAKE_C_FLAGS=-DSG_REPLAY_DIAG=1'],['cmake','--build',str(work/'wasm'),'-j4'],['cmake','-S',str(source),'-B',str(work/'native'),'-DCMAKE_BUILD_TYPE=Release','-DCMAKE_C_FLAGS=-DSG_REPLAY_DIAG=1','-DSG_MODEL_PACK='+str(pack)],['cmake','--build',str(work/'native'),'-j4'],['ctest','--test-dir',str(work/'native'),'--output-on-failure','-j1'],['ctest','--test-dir',str(work/'native'),'-C','Bench','-R','^benchmark_fp6$','--output-on-failure','-j1']]
for index,cmd in enumerate(commands):
 with (work/f'rebuild-{index}.log').open('w') as log:subprocess.run(cmd,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
print('Fresh diagnostic/native build complete. Repeat all-mode WASM fidelity and guarded observations with adapted archived observer paths before using new results. Paths/toolchains may change binary bytes.')
