"""Replace only the workers object in the accepted production WASM link."""
import hashlib
import json
import os
from pathlib import Path
import shlex
import subprocess

repo = Path.cwd().resolve()
root = repo / 'build/diagnostics/depth-replay-off-bound-consumption'
source = root / 'source-root/libsoftgl/src'
canonical = repo / 'build/checks/msaa-wasm'
production = repo / 'build/diagnostics/depth-replay-off-bound/objects'
env = os.environ.copy()
env.update(TMPDIR=str(repo / 'build/tmp'), EM_CACHE=str(repo / 'build/emscripten-cache'),
           EM_FROZEN_CACHE='0')
obj = root / 'workers.c.o'
compile_command = ['emcc', '-std=gnu11', '-O2', '-msimd128', '-msse4.1', '-pthread',
                   '-I' + str(repo / 'libsoftgl/include'), '-I' + str(source),
                   '-Wno-unused-parameter', '-c', str(source / 'workers.c'), '-o', str(obj)]
with (root / 'wasm-build.log').open('w') as log:
    subprocess.run(compile_command, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
    command = shlex.split((canonical / 'CMakeFiles/softgl.dir/link.txt').read_text())
    response = next(i for i, item in enumerate(command) if item.startswith('@'))
    objects = []
    for item in shlex.split((canonical / command[response][1:]).read_text()):
        path = (canonical / item).resolve()
        if 'softgl_objs.dir' in item:
            path = obj if path.name == 'workers.c.o' else production / path.name
        assert path.exists(), path
        objects.append(str(path))
    (root / 'link.rsp').write_text('\n'.join(objects) + '\n')
    command[response] = '@' + str(root / 'link.rsp')
    exports = next(i for i, item in enumerate(command) if item.startswith('-sEXPORTED_FUNCTIONS='))
    command[exports] += ',_sg_depth_replay_diag_counter'
    command[-1] = str(root / 'softgl.js')
    command.insert(1, '--emit-symbol-map')
    subprocess.run(command, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
digest = lambda path: hashlib.sha256(Path(path).read_bytes()).hexdigest()
(root / 'build.json').write_text(json.dumps({
    'compile': compile_command, 'link': command, 'wasmSha256': digest(root / 'softgl.wasm'),
    'source': {str(path.relative_to(repo)): digest(path) for path in source.glob('*') if path.is_file()},
    'objects': {path: digest(path) for path in objects}}, indent=2) + '\n')
print('Built isolated off-bound replay consumption counters; not timing evidence', flush=True)
