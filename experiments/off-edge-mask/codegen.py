"""Record optimized IR at actual producer flags; static counts are not timings."""
from pathlib import Path
import hashlib
import json
import os
import re
import subprocess

r = Path(__file__).resolve().parent
repo = Path.cwd().resolve()
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
env = dict(os.environ, TMPDIR=str(repo/'build/tmp'),
           EM_CACHE=str(repo/'build/emscripten-cache'), EM_FROZEN_CACHE='0')
roots = ['sg_raster_triangle_depth_capture', 'sg_raster_triangle_tile_prepared',
         'sg_raster_triangle_msaa2', 'sg_raster_triangle_msaa2_capture',
         'sg_raster_triangle_msaa4', 'sg_raster_triangle_msaa4_capture']
records = []
for label, source in [('baseline', r/'baseline-source'), ('candidate', r/'source-root')]:
    output = r/(label+'-rasterizer.ll')
    command = ['emcc', '-std=gnu11', '-O2', '-msimd128', '-msse4.1', '-pthread',
               '-I'+str(source/'libsoftgl/include'), '-I'+str(source/'libsoftgl/src'),
               '-Wno-unused-parameter', '-S', '-emit-llvm',
               str(source/'libsoftgl/src/rasterizer.c'), '-o', str(output)]
    with (r/(label+'-codegen.log')).open('w') as log:
        subprocess.run(command, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
    text = output.read_text()
    functions = {}
    for match in re.finditer(r'^define[^\n]*@([^ (]+)[^\n]*\{\n[\s\S]*?^}', text, re.M):
        functions[match.group(1)] = match.group()
    selected = {}
    for name in roots:
        body = functions[name]
        signature = body.splitlines()[0]
        selected[name] = dict(signature=signature,
                              wasmBitmaskCalls=len(re.findall(r'call[^\n]*@llvm.wasm.bitmask', body)),
                              vectorOrs=len(re.findall(r'\bor <[0-9]+ x i[0-9]+>', body)),
                              staticLoads=len(re.findall(r'\bload\b', body)),
                              staticStores=len(re.findall(r'\bstore\b', body)),
                              staticLines=len(body.splitlines()),
                              bodySha256=hashlib.sha256(body.encode()).hexdigest())
    records.append(dict(label=label, command=command, file=output.name,
                        sha256=sha(output), roots=selected))
result = dict(kind='optimized LLVM IR diagnostic at producer flags; static counts are not executed instructions or timings', records=records)
(r/'codegen.json').write_text(json.dumps(result, indent=2)+'\n')
for name in roots:
    a,b = [x['roots'][name] for x in records]
    print(name, 'static loads', a['staticLoads'], '->', b['staticLoads'],
          'stores', a['staticStores'], '->', b['staticStores'], 'bitmask', a['wasmBitmaskCalls'], '->', b['wasmBitmaskCalls'], 'vector OR', a['vectorOrs'], '->', b['vectorOrs'])
