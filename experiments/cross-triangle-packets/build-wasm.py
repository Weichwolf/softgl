"""Freshly rebuild disabled and enabled library objects, binding every link input."""
from pathlib import Path
import hashlib,json,os,shlex,shutil,subprocess
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;src=r/'source-root'
canonical=repo/'build/checks/msaa-wasm';ref=repo/'experiments/simd-index-range';accepted=repo/'build/controls/simd-index-range-candidate'
v=json.loads((r/'validation.json').read_text());rv=json.loads((ref/'validation.json').read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
assert sha(accepted/'softgl.wasm')==v['referenceWasmSha256']
env=dict(os.environ,TMPDIR=str(repo/'build/tmp'),EM_CACHE=str(repo/'build/emscripten-cache'),EM_FROZEN_CACHE='0')
commands=[]
with (r/'wasm-build.log').open('w') as log:
 for enabled in [False,True]:
  directory=r if enabled else r/'disabled';directory.mkdir(exist_ok=True)
  objects=directory/'objects';objects.mkdir(exist_ok=False)
  actual_src=src if enabled else r/'baseline-source'
  compiled=[]
  for filename in sorted(p.name for p in (src/'libsoftgl/src').glob('*.c')):
   cmd=['emcc','-std=gnu11','-O2','-msimd128','-msse4.1','-pthread','-I'+str(actual_src/'libsoftgl/include'),'-I'+str(actual_src/'libsoftgl/src'),'-Wno-unused-parameter']

   if enabled: cmd+=['-DSG_CROSS_FRAGMENT_PACKETS=1']
   cmd+=['-c',str(actual_src/'libsoftgl/src'/filename),'-o',str(objects/(filename+'.o'))]
   subprocess.run(cmd,env=env,stdout=log,stderr=subprocess.STDOUT,check=True);compiled.append(cmd)
  command=shlex.split((canonical/'CMakeFiles/softgl.dir/link.txt').read_text());index=next(i for i,a in enumerate(command) if a.startswith('@'));linked=[]
  for name in shlex.split((canonical/command[index][1:]).read_text()):
   path=objects/Path(name).name if 'softgl_objs.dir' in name else (canonical/name).resolve()
   assert path.exists();linked.append(str(path))
  (directory/'link.rsp').write_text('\n'.join(linked)+'\n');command[index]='@'+str(directory/'link.rsp');command[-1]=str(directory/'softgl.js');command.insert(1,'--emit-symbol-map')
  commands.append(dict(enabled=enabled,compile=compiled,link=command))
  (r/'producer-commands.json').write_text(json.dumps(commands,indent=2)+'\n')
  subprocess.run(command,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
  compared={p.name:sha(p)==rv['objects']['build/diagnostics/simd-index-range/objects/'+p.name] for p in sorted(objects.glob('*.c.o'))}
  assert len(compared)==20
  if not enabled:
   assert all(compared.values()),compared
   for name in ['softgl.js','softgl.wasm']:assert (directory/name).read_bytes()==(accepted/name).read_bytes(),name
   v.update(disabledBuildByteExact=True,disabledObjects={str(p.relative_to(repo)):sha(p) for p in sorted(objects.glob('*.c.o'))},disabledJsSha256=sha(directory/'softgl.js'),disabledWasmSha256=sha(directory/'softgl.wasm'))
  else:
   assert all(equal for name,equal in compared.items() if name not in ['workers.c.o','rasterizer.c.o']),compared
   (r/'object-comparison.json').write_text(json.dumps(compared,indent=2)+'\n')
   v.update(candidateWasmSha256=sha(directory/'softgl.wasm'),candidateJsSha256=sha(directory/'softgl.js'),diagnosticWasmSha256=sha(directory/'softgl.wasm'),diagnosticJsSha256=sha(directory/'softgl.js'),objects={str(p.relative_to(repo)):sha(p) for p in sorted(objects.glob('*.c.o'))},linkedObjects={p:sha(Path(p)) for p in linked},rebuiltLibraryObjects=sorted(compared),linkInputCount=len(linked),productionSources={str(p.relative_to(src)):sha(p) for p in (src/'libsoftgl').rglob('*') if p.is_file() and p.suffix in ['.c','.h','.inc']})
  frozen=repo/'build/controls'/('cross-triangle-packets-enabled-candidate' if enabled else 'cross-triangle-packets-enabled-disabled');frozen.mkdir(exist_ok=False)
  for name in ['softgl.js','softgl.wasm']:shutil.copy2(directory/name,frozen/name)
  for name in ['main.js','index.html','bmw.pack','tank.pack']:shutil.copy2(accepted/name,frozen/name)
  (r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
v['status']='candidate-built-codegen-and-fidelity-pending'
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
print('Cross-triangle packet candidate built:',v['diagnosticWasmSha256'],'; all20 disabled objects and JS/WASM match D4',flush=True)
