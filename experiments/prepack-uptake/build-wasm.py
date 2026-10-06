"""One caller unit instrumented, nineteen bound rejected-candidate objects reused."""
from pathlib import Path
import hashlib,json,os,shlex,shutil,subprocess
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;parent=repo/'build/diagnostics/slice-vertex-packing';reference=repo/'build/controls/slice-vertex-packing-candidate';canonical=repo/'build/checks/msaa-wasm'
v=json.loads((r/'validation.json').read_text());pv=json.loads((parent/'validation.json').read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
assert sha(reference/'softgl.wasm')==v['parentCandidateWasmSha256']
env=dict(os.environ,TMPDIR=str(repo/'build/tmp'),EM_CACHE=str(repo/'build/emscripten-cache'),EM_FROZEN_CACHE='0')
objects=r/'objects';objects.mkdir(exist_ok=False)
for p in sorted((parent/'objects').glob('*.c.o')):
 assert sha(p)==pv['objects'][str(p.relative_to(repo))];shutil.copy2(p,objects/p.name)
assert len(list(objects.glob('*.c.o')))==20
commands=[]
with (r/'wasm-build.log').open('w') as log:
 for diagnostic in (False,True):
  label='instrumented' if diagnostic else 'disabled';work=r/label;work.mkdir(exist_ok=False)
  cmd=['emcc','-std=gnu11','-O2','-msimd128','-msse4.1','-pthread','-I'+str(r/'source-root/libsoftgl/include'),'-I'+str(r/'source-root/libsoftgl/src'),'-Wno-unused-parameter']
  if diagnostic:cmd+=['-DSG_PREPACK_DIAG=1']
  cmd+=['-c',str(r/'source-root/libsoftgl/src/workers.c'),'-o',str(work/'workers.c.o')]
  subprocess.run(cmd,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
  commands.append(dict(label=label,compile=cmd))
  command=shlex.split((canonical/'CMakeFiles/softgl.dir/link.txt').read_text());index=next(i for i,arg in enumerate(command) if arg.startswith('@'))
  linked=[]
  for name in shlex.split((canonical/command[index][1:]).read_text()):
   p=(work/'workers.c.o' if Path(name).name=='workers.c.o' else objects/Path(name).name) if 'softgl_objs.dir' in name else (canonical/name).resolve()
   assert p.exists(),p;linked.append(str(p))
  (work/'link.rsp').write_text('\n'.join(linked)+'\n');command[index]='@'+str(work/'link.rsp')
  if diagnostic:
   ix=next(i for i,arg in enumerate(command) if arg.startswith('-sEXPORTED_FUNCTIONS='));command[ix]+=',_sg_prepack_diag_reset,_sg_prepack_diag_read'
  command[-1]=str(work/'softgl.js');command.insert(1,'--emit-symbol-map');commands[-1]['link']=command
  subprocess.run(command,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
  frozen=repo/'build/controls'/('prepack-uptake-'+('diagnostic' if diagnostic else 'disabled'));frozen.mkdir(exist_ok=False)
  for name in ['softgl.js','softgl.wasm']:shutil.copy2(work/name,frozen/name)
  for name in ['main.js','index.html','bmw.pack','tank.pack']:shutil.copy2(reference/name,frozen/name)
  if not diagnostic:
   assert (work/'workers.c.o').read_bytes()==(parent/'objects/workers.c.o').read_bytes(),'disabled workers object differs'
   for name in ['softgl.js','softgl.wasm']:assert (work/name).read_bytes()==(reference/name).read_bytes(),name
   v['disabledBuildByteExact']=True;v['disabledWorkerSha256']=sha(work/'workers.c.o')
  else:
   shutil.copy2(work/'workers.c.o',objects/'workers.c.o')
   v.update(diagnosticWasmSha256=sha(work/'softgl.wasm'),diagnosticJsSha256=sha(work/'softgl.js'),candidateWasmSha256=sha(work/'softgl.wasm'),candidateJsSha256=sha(work/'softgl.js'),objects={str(p.relative_to(repo)):sha(p) for p in sorted(objects.glob('*.c.o'))},linkedObjects={str(p):sha(Path(p)) for p in linked},productionSources={str(p.relative_to(r/'source-root')):sha(p) for p in (r/'source-root/libsoftgl').rglob('*') if p.is_file() and p.suffix in ['.c','.h','.inc']})
(r/'producer-commands.json').write_text(json.dumps(commands,indent=2)+'\n');v['status']='diagnostic-built-disabled-candidate-byte-exact-fidelity-pending';(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n');print('Instrumented diagnostic built; disabled object/JS/WASM byte exact to rejected candidate',flush=True)
