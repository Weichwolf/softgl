"""Compile the no-compaction rasterizer and link a source-bound disabled control."""
from pathlib import Path
import hashlib
import json
import os
import shlex
import subprocess

repo = Path.cwd().resolve()
r = Path(__file__).resolve().parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
v = load(r/'validation.json')
commands = load(r/'producer-commands.json')
directory = r/'disabled-control'
directory.mkdir(exist_ok=False)
cmd = next(c[:] for c in commands['compile'] if c[-1].endswith('rasterizer.c.o'))
cmd.insert(1,'-DSG_OFF_PACKET_REFERENCE=1')
cmd[-1] = str(directory/'rasterizer.c.o')
env = dict(os.environ,TMPDIR=str(repo/'build/tmp'),EM_CACHE=str(repo/'build/emscripten-cache'),EM_FROZEN_CACHE='0')
with (directory/'build.log').open('w') as log:
    subprocess.run(cmd,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
    linked = [str(directory/'rasterizer.c.o') if p.endswith('/objects/rasterizer.c.o') else p for p in (r/'link.rsp').read_text().splitlines()]
    assert len(linked) == 259
    (directory/'link.rsp').write_text('\n'.join(linked)+'\n')
    link = commands['link'][:]
    ix = next(i for i,p in enumerate(link) if p.startswith('@'))
    link[ix] = '@'+str(directory/'link.rsp')
    link[-1] = str(directory/'softgl.js')
    subprocess.run(link,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
baseline = load(repo/'experiments/simd-index-range/validation.json')
result = dict(compile=cmd,link=link,referenceWasmSha256=v['referenceWasmSha256'],
    rasterObjectSha256=sha(directory/'rasterizer.c.o'),
    rasterObjectByteExactD4=sha(directory/'rasterizer.c.o')==baseline['objects']['build/diagnostics/simd-index-range/objects/rasterizer.c.o'],
    wasmSha256=sha(directory/'softgl.wasm'),jsSha256=sha(directory/'softgl.js'),
    wasmByteExactD4=(directory/'softgl.wasm').read_bytes()==(repo/'build/controls/simd-index-range-candidate/softgl.wasm').read_bytes(),
    jsByteExactD4=(directory/'softgl.js').read_bytes()==(repo/'build/controls/simd-index-range-candidate/softgl.js').read_bytes(),
    linkedObjects={p:sha(Path(p)) for p in linked})
(directory/'result.json').write_text(json.dumps(result,indent=2)+'\n')
print('Disabled raster object/JS/WASM byte-exact D4:',result['rasterObjectByteExactD4'],result['jsByteExactD4'],result['wasmByteExactD4'])
