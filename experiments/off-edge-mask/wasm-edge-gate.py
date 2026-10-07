from pathlib import Path
import subprocess,os,json
r=Path('build/diagnostics/off-edge-mask').resolve();src=r/'source-root/libsoftgl/src';inc=Path('libsoftgl/include').resolve();env=os.environ.copy();env.update(TMPDIR=str(Path('build/tmp').resolve()),EM_CACHE=str(Path('build/emscripten-cache').resolve()),EM_FROZEN_CACHE='0')
with (r/'wasm-edge-build.log').open('w') as f:
    subprocess.run(['emcc','-std=gnu11','-O2','-msimd128','-msse4.1','-pthread','-DSOFTGL_BUILD','-DSG_MSAA_EDGE_TEST','-I'+str(inc),'-I'+str(src),'-c',str(src/'rasterizer.c'),'-o',str(r/'rasterizer-edge-test.o')],env=env,stdout=f,stderr=subprocess.STDOUT,check=True)
    cmd=['emcc','-std=gnu11','-O2','-fno-fast-math','-ffp-contract=off','-msimd128','-msse4.1','-pthread','-I'+str(inc),'-I'+str(src),'-Dmain=sg_msaa_edge_main',str(r/'source-root/tests/msaa_edges.c'),str(r/'rasterizer-edge-test.o'),*[str(p) for p in sorted((r/'objects').glob('*.c.o')) if p.name!='rasterizer.c.o'],'-sMODULARIZE=1','-sEXPORT_NAME=createMSAAEdge','-sPTHREAD_POOL_SIZE=8','-sALLOW_MEMORY_GROWTH=1','-sINITIAL_MEMORY=67108864','-sSTACK_SIZE=8388608','-sINVOKE_RUN=0','-sEXPORTED_FUNCTIONS='+json.dumps(['_sg_msaa_edge_main']),'-o',str(r/'msaa-edge.js')]
    subprocess.run(cmd,env=env,stdout=f,stderr=subprocess.STDOUT,check=True)
(r/'run-msaa-edge.cjs').write_text("(async()=>{const m=await require('./msaa-edge.js')();process.exit(m._sg_msaa_edge_main());})().catch(e=>{console.error(e);process.exit(1);});\n")
with (r/'wasm-edge-run.log').open('w') as f:subprocess.run(['node',str(r/'run-msaa-edge.cjs')],env=env,stdout=f,stderr=subprocess.STDOUT,check=True)
print((r/'wasm-edge-run.log').read_text(),flush=True)
