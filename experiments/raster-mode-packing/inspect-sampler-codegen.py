"""Inspect actual linked raster roots; static opcode sites are not runtime costs."""
from pathlib import Path
import hashlib
import json
import re
import shutil
import subprocess
r=Path(__file__).resolve().parent
v=json.loads((r/'validation.json').read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
records=[]
for label,directory in [('reference',Path('build/diagnostics/simd-index-range')),('candidate',r)]:
    module=directory/'softgl.wasm';symbols_file=directory/'softgl.js.symbols'
    assert sha(module)==v['referenceWasmSha256' if label=='reference' else 'candidateWasmSha256']
    symbol=r/(label+'.symbols');shutil.copy2(symbols_file,symbol)
    command=['wasm-dis',str(module),'-o',str(r/(label+'.wat'))]
    with (r/(label+'-disassembly.log')).open('w') as log:
        subprocess.run(command,stdout=log,stderr=subprocess.STDOUT,check=True)
    text=(r/(label+'.wat')).read_text()
    symbols={name:int(index) for line in symbol.read_text().splitlines() for index,name in [line.split(':',1)]}
    imports=len(re.findall(r'^ \(import [^\n]*\(func',text,re.M))
    export=re.search(r'\(export "softgl_create" \(func \$(\d+)\)\)',text)
    assert export and int(export.group(1))==symbols['softgl_create']-imports
    wanted=['sg_raster_triangle_tile_prepared','sg_raster_triangle_depth_capture',
                 'sg_raster_triangle_msaa2','sg_raster_triangle_msaa2_capture',
                 'sg_raster_triangle_msaa4','sg_raster_triangle_msaa4_capture']
    if label=='candidate':wanted+=['sg_raster_triangle_off_prepared','sg_raster_triangle_samples2_prepared','sg_raster_triangle_samples4_prepared']
    for name in wanted:
        index=symbols[name]-imports
        start=text.index(' (func $'+str(index)+' ')
        end=text.find('\n (func ',start+1)
        assert end>start
        body=text[start:end]
        path=r/(label+'-'+name+'.wat');path.write_text(body)
        selectors=re.findall(r'\(i8x16.shuffle ([0-9 ]+)\n',body)
        channel_patterns=[]
        for k in range(4):
            pattern=' '.join(str(z) for lane in range(4) for z in [k+lane*4,16,16,16])
            channel_patterns.append(dict(channel=k,pattern=pattern,sites=selectors.count(pattern)))
        opcodes={op:len(re.findall(r'\('+re.escape(op)+r'(?=\s|\))',body)) for op in ['i8x16.shuffle','i32x4.shr_u','v128.and','f32x4.convert_i32x4_s','f32x4.convert_i32x4_u','f32x4.mul','f32x4.add']}
        records.append(dict(label=label,function=name,wasmSha256=sha(module),symbolMapSha256=sha(symbol),
                            absoluteFunctionIndex=symbols[name],definedFunctionLabel=index,importFunctionCount=imports,
                            mappingExport=dict(name='softgl_create',absoluteFunctionIndex=symbols['softgl_create'],definedFunctionLabel=int(export.group(1))),
                            rootFile=path.name,rootSha256=sha(path),channelShufflePatterns=channel_patterns,staticOpcodeSites=opcodes))
(r/'sampler-opcodes.json').write_text(json.dumps(dict(records=records,scope='Actual bound WASM raster-root static opcode sites. Not native JIT instructions, dynamic counts, register spills, cache traffic or saved cycles.'),indent=2)+'\n')
for row in records:
    print(row['label'],row['function'],row['staticOpcodeSites'],[x['sites'] for x in row['channelShufflePatterns']])
