from pathlib import Path
import os,subprocess,json,hashlib
r=Path('build/diagnostics/cube-cold-fallback').resolve();src=r/'source-root';lib=src/'libsoftgl/src';inc=src/'libsoftgl/include';out=r/'wasm-contracts';out.mkdir(exist_ok=False)
env=os.environ.copy();env.update(TMPDIR=str(Path('build/tmp').resolve()),EM_CACHE=str(Path('build/emscripten-cache').resolve()),EM_FROZEN_CACHE='0')
names=['index_range','worker_pool','multisample','msaa_store','hierarchical_depth','dot3_chain','constant_texture','pixel_packet','cube_packet','geometry_cache','async_raster','raster_vertex_pack','packed_stream','simd_clamp','ordered_draw_queue','msaa_additive','triangle_stage','msaa_scanline','cube_filter','cache_coverage','depth_replay','position_cache','vertex_inputs']
objects={p.name:str(p) for p in sorted((r/'objects').glob('*.c.o'))};assert len(objects)==20
strict=[]
with (out/'strict-build.log').open('w') as f:
 for name in ['rasterizer.c','fragment.c','fragment_combine.c']:
  p=out/(name+'.o');subprocess.run(['emcc','-std=gnu11','-O2','-fno-fast-math','-ffp-contract=off','-msimd128','-msse4.1','-pthread','-I'+str(inc),'-I'+str(lib),'-c',str(lib/name),'-o',str(p)],env=env,stdout=f,stderr=subprocess.STDOUT,check=True);strict.append((name,str(p)))
records=[]
for name in names:
 fixture=src/'tests'/(name+'.c');obj=out/(name+'-test.o')
 with (out/(name+'-build.log')).open('w') as f:
  subprocess.run(['emcc','-std=gnu11','-O2','-fno-fast-math','-ffp-contract=off','-msimd128','-msse4.1','-pthread','-I'+str(inc),'-I'+str(lib),'-Dmain=sg_contract_main','-c',str(fixture),'-o',str(obj)],env=env,stdout=f,stderr=subprocess.STDOUT,check=True)
  linked=objects.copy()
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
 (out/'results.json').write_text(json.dumps({'completed':len(records),'planned':len(names),'results':records},indent=2)+'\n');print(name,'passed',flush=True)
