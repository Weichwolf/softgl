from pathlib import Path
import os,subprocess,json,hashlib
r=Path('build/diagnostics/ordered-packed-capacity').resolve();src=r/'source-root';lib=src/'libsoftgl/src';inc=src/'libsoftgl/include';out=r/'wasm-contracts';assert out.is_dir()
env=os.environ.copy();env.update(TMPDIR=str(Path('build/tmp').resolve()),EM_CACHE=str(Path('build/emscripten-cache').resolve()),EM_FROZEN_CACHE='0')
names=['ordered_capacity']
objects={p.name:str(p) for p in sorted((r/'objects').glob('*.c.o'))};assert len(objects)==20
old_records=json.loads((out/'results.json').read_text())['results'];records=[]
for name in names:
 fixture=src/'tests'/(name+'.c');obj=out/(name+'-test.o')
 with (out/(name+'-build.log')).open('w') as f:
  subprocess.run(['emcc','-std=gnu11','-O2','-fno-fast-math','-ffp-contract=off','-msimd128','-msse4.1','-pthread','-I'+str(inc),'-I'+str(lib),'-Dmain=sg_contract_main','-c',str(fixture),'-o',str(obj)],env=env,stdout=f,stderr=subprocess.STDOUT,check=True)
  linked=objects.copy()
  if name=='ordered_capacity': del linked['workers.c.o']
  if name in ['pixel_packet','cube_packet']:
   for key,value in strict:linked[key+'.o']=value
  elif name=='cube_filter':
   for key,value in strict:
    if key!='rasterizer.c':linked[key+'.o']=value
  cmd=['emcc','-O2','-msimd128','-msse4.1','-pthread',str(obj),*linked.values(),'-sMODULARIZE=1','-sEXPORT_NAME=createContract','-sPTHREAD_POOL_SIZE=8','-sALLOW_MEMORY_GROWTH=1','-sINITIAL_MEMORY=67108864','-sSTACK_SIZE=8388608','-sINVOKE_RUN=0','-sEXPORTED_FUNCTIONS='+json.dumps(['_sg_contract_main']),'-o',str(out/(name+'.js'))]
  subprocess.run(cmd,env=env,stdout=f,stderr=subprocess.STDOUT,check=True)
 runner=out/('run-'+name+'.cjs');runner.write_text("(async()=>{const m=await require('./"+name+".js')();process.exit(m._sg_contract_main());})().catch(e=>{console.error(e);process.exit(1);});\n")
 log=out/(name+'-run.log')
 with log.open('w') as f:subprocess.run(['node',str(runner)],env=env,stdout=f,stderr=subprocess.STDOUT,check=True,timeout=120)
 records.append({'name':name,'fixtureSha256':hashlib.sha256(fixture.read_bytes()).hexdigest(),'wasmSha256':hashlib.sha256((out/(name+'.wasm')).read_bytes()).hexdigest(),'log':str(log.relative_to(r)),'logSha256':hashlib.sha256(log.read_bytes()).hexdigest(),'passed':True})
 merged=records+[x for x in old_records if x['name']!='ordered_capacity'];assert len(merged)==24
 (out/'results.json').write_text(json.dumps({'completed':24,'planned':24,'results':merged},indent=2)+'\n');print(name,'corrected fixture passed',flush=True)
