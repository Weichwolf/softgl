"""Reuse nineteen accepted objects; build only the diagnostic worker unit."""
from pathlib import Path
import hashlib
import json
import os
import shlex
import shutil
import subprocess

repo=Path.cwd().resolve()
r=Path(__file__).resolve().parent
canonical=repo/'build/checks/msaa-wasm'
reference=repo/'build/diagnostics/post-depth-common-store'
accepted=repo/'build/controls/post-depth-common-store-candidate'
v=json.loads((r/'validation.json').read_text())
rv=json.loads((reference/'validation.json').read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
env=dict(os.environ,TMPDIR=str(repo/'build/tmp'),EM_CACHE=str(repo/'build/emscripten-cache'),EM_FROZEN_CACHE='0')
assert sha(accepted/'softgl.wasm')==v['referenceWasmSha256']
objects=r/'objects';objects.mkdir(exist_ok=True)
for p in sorted((reference/'objects').glob('*.c.o')):
    assert sha(p)==rv['objects'][str(p.relative_to(repo))]
    shutil.copy2(p,objects/p.name)
assert len(list(objects.glob('*.c.o')))==20
with (r/'wasm-build.log').open('w') as log:
    for diagnostic in (False,True):
        label='instrumented' if diagnostic else 'disabled'
        work=r/label;work.mkdir(exist_ok=True)
        worker=work/'workers.c.o'
        cmd=['emcc','-std=gnu11','-O2','-msimd128','-msse4.1','-pthread',
            '-I'+str(repo/'libsoftgl/include'),'-I'+str(r/'source-root/libsoftgl/src'),
            '-Wno-unused-parameter']
        if diagnostic:cmd.append('-DSG_CALLER_WAIT_DIAG=1')
        subprocess.run(cmd+['-c',str(r/'source-root/libsoftgl/src/workers.c'),'-o',str(worker)],env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
        command=shlex.split((canonical/'CMakeFiles/softgl.dir/link.txt').read_text())
        i=next(i for i,a in enumerate(command) if a.startswith('@'))
        linked=[]
        for p in shlex.split((canonical/command[i][1:]).read_text()):
            path=Path(p)
            if 'softgl_objs.dir' in p:path=worker if path.name=='workers.c.o' else objects/path.name
            else:path=(canonical/path).resolve()
            assert path.exists(),path
            linked.append(str(path))
        (work/'link.rsp').write_text('\n'.join(linked)+'\n')
        command[i]='@'+str(work/'link.rsp')
        if diagnostic:
            index=next(i for i,a in enumerate(command) if a.startswith('-sEXPORTED_FUNCTIONS='))
            command[index]+=',_sg_caller_wait_reset,_sg_caller_wait_read'
        command[-1]=str(work/'softgl.js');command.insert(1,'--emit-symbol-map')
        subprocess.run(command,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
        frozen=repo/'build/controls'/('caller-wait-intervals-'+('diagnostic' if diagnostic else 'disabled'))
        frozen.mkdir(exist_ok=False)
        for name in ['softgl.js','softgl.wasm']:shutil.copy2(work/name,frozen/name)
        for name in ['main.js','index.html','bmw.pack','tank.pack']:shutil.copy2(accepted/name,frozen/name)
        if not diagnostic:
            assert (work/'softgl.wasm').read_bytes()==(accepted/'softgl.wasm').read_bytes()
            assert (work/'softgl.js').read_bytes()==(accepted/'softgl.js').read_bytes()
            v['disabledBuildByteExact']=True
        else:
            shutil.copy2(worker,objects/'workers.c.o')
            v.update(diagnosticWasmSha256=sha(work/'softgl.wasm'),diagnosticJsSha256=sha(work/'softgl.js'),
                objects={str(p.relative_to(repo)):sha(p) for p in sorted(objects.glob('*.c.o'))},
                linkedObjects={p:sha(Path(p)) for p in linked},
                productionSources={str(p.relative_to(r/'source-root')):sha(p)
                    for p in (r/'source-root/libsoftgl').rglob('*') if p.is_file() and p.suffix in ('.c','.h','.inc')})
v['status']='diagnostic-built-disabled-producer-byte-exact-fidelity-gates-pending'
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
print('Diagnostic built with one modified object; disabled JS/WASM byte-identical to accepted7cc')
