import os,subprocess,shlex
from pathlib import Path
r=Path('build/diagnostics/depth-replay-off-bound').resolve();src=r/'source-root/libsoftgl/src';b=Path('build/checks/msaa-wasm').resolve();objs=r/'objects';objs.mkdir(exist_ok=True)
env=os.environ.copy();env.update(TMPDIR=str(Path('build/tmp').resolve()),EM_CACHE=str(Path('build/emscripten-cache').resolve()),EM_FROZEN_CACHE='0')
with (r/'wasm-build.log').open('w') as log:
 for p in sorted(src.glob('*.c')):
  if os.environ.get('SG_REBUILD_FILE') and p.name not in os.environ['SG_REBUILD_FILE'].split(','): continue
  cmd=['emcc','-std=gnu11','-O2','-msimd128','-msse4.1','-pthread','-I'+str(Path('libsoftgl/include').resolve()),'-I'+str(src),'-Wno-unused-parameter','-c',str(p),'-o',str(objs/(p.name+'.o'))]
  subprocess.run(cmd,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
 command=shlex.split((b/'CMakeFiles/softgl.dir/link.txt').read_text());i=next(i for i,v in enumerate(command) if v.startswith('@'));old=shlex.split((b/command[i][1:]).read_text());objects=[]
 for o in old:
  p=Path(o)
  if 'softgl_objs.dir' in o:p=objs/p.name
  else:p=(b/p).resolve()
  assert p.exists(),p;objects.append(str(p))
 (r/'link.rsp').write_text('\n'.join(objects)+'\n');command[i]='@'+str(r/'link.rsp');command[-1]=str(r/'softgl.js');command.insert(1,'--emit-symbol-map')
 subprocess.run(command,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
print('Built prepared vertex-attribute WASM renderer')
