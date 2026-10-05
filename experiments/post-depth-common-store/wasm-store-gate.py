from pathlib import Path
import os,subprocess,json
r=Path('build/diagnostics/post-depth-common-store').resolve();out=r/'wasm-store-focused';out.mkdir(exist_ok=True);lib=r/'source-root/libsoftgl/src';inc=r/'source-root/libsoftgl/include';obj=out/'fixture.o'
env=os.environ.copy();env.update(TMPDIR=str(Path('build/tmp').resolve()),EM_CACHE=str(Path('build/emscripten-cache').resolve()),EM_FROZEN_CACHE='0')
with (r/'wasm-store-build.log').open('w') as log:
 subprocess.run(['emcc','-std=gnu11','-O2','-fno-fast-math','-ffp-contract=off','-msimd128','-msse4.1','-pthread','-I'+str(inc),'-I'+str(lib),'-Dmain=sg_contract_main','-c',str(r/'source-root/tests/msaa_store.c'),'-o',str(obj)],env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
 subprocess.run(['emcc','-O2','-msimd128','-msse4.1','-pthread',str(obj),*[str(p) for p in sorted((r/'objects').glob('*.c.o'))],'-sMODULARIZE=1','-sEXPORT_NAME=createContract','-sPTHREAD_POOL_SIZE=8','-sALLOW_MEMORY_GROWTH=1','-sINITIAL_MEMORY=67108864','-sSTACK_SIZE=8388608','-sINVOKE_RUN=0','-sEXPORTED_FUNCTIONS='+json.dumps(['_sg_contract_main']),'-o',str(out/'capture.js')],env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
(out/'run-capture.cjs').write_text("(async()=>{const m=await require('./capture.js')();process.exit(m._sg_contract_main());})().catch(e=>{console.error(e);process.exit(1);});\n")
with (r/'wasm-store-run.log').open('w') as log:subprocess.run(['node',str(out/'run-capture.cjs')],env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
print((r/'wasm-store-run.log').read_text(),flush=True)
