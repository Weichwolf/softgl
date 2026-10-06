"""Build the actual candidate with eighteen immutable accepted library objects."""
from pathlib import Path
import hashlib
import json
import os
import shlex
import shutil
import subprocess

repo = Path.cwd().resolve()
root = Path(__file__).resolve().parent
canonical = repo/'build/checks/msaa-wasm'
reference = repo/'build/diagnostics/simd-index-range'
accepted = repo/'build/controls/simd-index-range-candidate'
validation = json.loads((root/'validation.json').read_text())
accepted_validation = json.loads((reference/'validation.json').read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
env = dict(os.environ,TMPDIR=str(repo/'build/tmp'),EM_CACHE=str(repo/'build/emscripten-cache'),EM_FROZEN_CACHE='0')
assert sha(accepted/'softgl.wasm') == validation['referenceWasmSha256']
objects = root/'objects'; objects.mkdir(exist_ok=False)
for path in sorted((reference/'objects').glob('*.c.o')):
    assert sha(path) == accepted_validation['objects'][str(path.relative_to(repo))]
    shutil.copy2(path,objects/path.name)
assert len(list(objects.glob('*.c.o'))) == 20
compile_commands = []
with (root/'wasm-build.log').open('w') as log:
    for filename in ['workers.c', 'pipeline.c']:
        compile_command = ['emcc','-std=gnu11','-O2','-msimd128','-msse4.1','-pthread',
            '-I'+str(repo/'libsoftgl/include'),'-I'+str(root/'source-root/libsoftgl/src'),
            '-Wno-unused-parameter','-c',str(root/'source-root/libsoftgl/src'/filename),
            '-o',str(objects/(filename+'.o'))]
        subprocess.run(compile_command,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
        compile_commands.append(compile_command)
    command = shlex.split((canonical/'CMakeFiles/softgl.dir/link.txt').read_text())
    index = next(i for i,arg in enumerate(command) if arg.startswith('@'))
    linked = []
    for name in shlex.split((canonical/command[index][1:]).read_text()):
        path = objects/Path(name).name if 'softgl_objs.dir' in name else (canonical/name).resolve()
        assert path.exists(), path
        linked.append(str(path))
    (root/'link.rsp').write_text('\n'.join(linked)+'\n')
    command[index] = '@'+str(root/'link.rsp')
    command[-1] = str(root/'softgl.js')
    command.insert(1,'--emit-symbol-map')
    (root/'producer-commands.json').write_text(json.dumps(dict(compile=compile_commands,link=command),indent=2)+'\n')
    subprocess.run(command,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
frozen = repo/'build/controls/bulk-prepared-bins-candidate'; frozen.mkdir(exist_ok=False)
for filename in ['softgl.js','softgl.wasm']:
    shutil.copy2(root/filename,frozen/filename)
for filename in ['main.js','index.html','bmw.pack','tank.pack']:
    shutil.copy2(accepted/filename,frozen/filename)
validation.update(status='candidate-built-fidelity-gates-pending',candidateWasmSha256=sha(root/'softgl.wasm'),
    candidateJsSha256=sha(root/'softgl.js'),objects={str(p.relative_to(repo)):sha(p) for p in sorted(objects.glob('*.c.o'))},
    linkedObjects={p:sha(Path(p)) for p in linked},productionSources={str(p.relative_to(root/'source-root')):sha(p)
        for p in (root/'source-root/libsoftgl').rglob('*') if p.is_file() and p.suffix in ('.c','.h','.inc')},
    observerFixtures={'tests/prepared_bins.c':sha(root/'source-root/tests/prepared_bins.c')},
    changedLibraryObjects=['workers.c.o','pipeline.c.o'],linkInputCount=len(linked))
(root/'validation.json').write_text(json.dumps(validation,indent=2)+'\n')
print('Actual stable bulk prepared-bin producer built:',validation['candidateWasmSha256'])
