"""Reuse nineteen accepted objects; build the diagnostic worker unit."""
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
reference=repo/'build/diagnostics/simd-index-range'
accepted=repo/'build/controls/simd-index-range-candidate'
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
    compile_commands = []
    link_commands = []
    for diagnostic in (False,True):
        label='instrumented' if diagnostic else 'disabled'
        work=r/label;work.mkdir(exist_ok=True)
        worker=work/'workers.c.o'
        cmd=['emcc','-std=gnu11','-O2','-msimd128','-msse4.1','-pthread',
            '-I'+str(repo/'libsoftgl/include'),'-I'+str(r/'source-root/libsoftgl/src'),
            '-Wno-unused-parameter']
        if diagnostic:cmd.append('-DSG_REPLAY_DIAG=1')
        for unit in ['workers.c']:
            actual_command=cmd+['-c',str(r/'source-root/libsoftgl/src'/unit),'-o',str(work/(unit+'.o'))]
            compile_commands.append(dict(label=label,command=actual_command))
            subprocess.run(actual_command,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
        command=shlex.split((canonical/'CMakeFiles/softgl.dir/link.txt').read_text())
        i=next(i for i,a in enumerate(command) if a.startswith('@'))
        linked=[]
        for p in shlex.split((canonical/command[i][1:]).read_text()):
            path=Path(p)
            if 'softgl_objs.dir' in p:path=work/path.name if path.name in ['workers.c.o','pipeline.c.o'] else objects/path.name
            else:path=(canonical/path).resolve()
            assert path.exists(),path
            linked.append(str(path))
        (work/'link.rsp').write_text('\n'.join(linked)+'\n')
        command[i]='@'+str(work/'link.rsp')
        if diagnostic:
            index=next(i for i,a in enumerate(command) if a.startswith('-sEXPORTED_FUNCTIONS='))
            command[index]+=',_sg_replay_diag_reset,_sg_replay_diag_read'
        command[-1]=str(work/'softgl.js');command.insert(1,'--emit-symbol-map')
        link_commands.append(dict(label=label,command=command))
        subprocess.run(command,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
        frozen=repo/'build/controls'/('replay-path-census-'+('diagnostic' if diagnostic else 'disabled'))
        frozen.mkdir(exist_ok=False)
        for name in ['softgl.js','softgl.wasm']:shutil.copy2(work/name,frozen/name)
        for name in ['main.js','index.html','bmw.pack','tank.pack']:shutil.copy2(accepted/name,frozen/name)
        if not diagnostic:
            assert (work/'softgl.wasm').read_bytes()==(accepted/'softgl.wasm').read_bytes()
            assert (work/'softgl.js').read_bytes()==(accepted/'softgl.js').read_bytes()
            v['disabledBuildByteExact']=True
        else:
            for unit in ['workers.c']:
                shutil.copy2(work/(unit+'.o'),objects/(unit+'.o'))
            v.update(diagnosticWasmSha256=sha(work/'softgl.wasm'),diagnosticJsSha256=sha(work/'softgl.js'),
                objects={str(p.relative_to(repo)):sha(p) for p in sorted(objects.glob('*.c.o'))},
                linkedObjects={p:sha(Path(p)) for p in linked},
                productionSources={str(p.relative_to(r/'source-root')):sha(p)
                    for p in (r/'source-root/libsoftgl').rglob('*') if p.is_file() and p.suffix in ('.c','.h','.inc')})
(r/'producer-commands.json').write_text(json.dumps(dict(compile=compile_commands,link=link_commands),indent=2)+'\n')
v['changedLibraryObjects']=['workers.c.o']
v['status']='diagnostic-built-disabled-producer-byte-exact-fidelity-gates-pending'
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
print('Replay census built with one modified object; disabled JS/WASM byte-identical to acceptedD4')
