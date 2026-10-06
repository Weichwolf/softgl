"""Bind actual typed extrema opcodes in the accepted/candidate draw root."""
from pathlib import Path
import hashlib
import json
import re
import shutil
import subprocess

root = Path(__file__).resolve().parent
validation = json.loads((root/'validation.json').read_text())
records = []
for label, directory in [('reference',Path('build/diagnostics/post-depth-common-store')),('candidate',root)]:
    module = directory/'softgl.wasm'
    symbol = directory/'softgl.js.symbols'
    if label == 'reference': shutil.copy2(symbol,root/'reference.symbols')
    digest = hashlib.sha256(module.read_bytes()).hexdigest()
    assert digest == validation['referenceWasmSha256' if label == 'reference' else 'candidateWasmSha256']
    with (root/(label+'-disassembly.log')).open('w') as log:
        subprocess.run(['wasm-dis',str(module),'-o',str(root/(label+'.wat'))],stdout=log,stderr=subprocess.STDOUT,check=True)
    text = (root/(label+'.wat')).read_text()
    symbols = {name:int(index) for row in symbol.read_text().splitlines() for index,name in [row.split(':',1)]}
    imports = len(re.findall(r'^ \(import [^\n]*\(func',text,re.M))
    export = re.search(r'\(export "softgl_create" \(func \$(\d+)\)\)',text)
    assert export and int(export.group(1)) == symbols['softgl_create']-imports
    name = '_sg_draw_elements_real'
    index = symbols[name]-imports
    start = text.index(' (func $'+str(index)+' ')
    end = text.find('\n (func ',start+1)
    body = text[start:end]
    destination = root/(label+'-draw-elements.wat')
    destination.write_text(body)
    ops = {op:body.count('('+op) for op in [
        'i8x16.min_u','i8x16.max_u','i16x8.min_u','i16x8.max_u','i32x4.min_u','i32x4.max_u']}
    if label == 'reference': assert not any(ops.values())
    else: assert all(ops.values())
    records.append(dict(label=label,wasmSha256=digest,symbolMapSha256=hashlib.sha256(symbol.read_bytes()).hexdigest(),
        function=name,absoluteFunctionIndex=symbols[name],definedFunctionLabel=index,importFunctionCount=imports,
        mappingExport=dict(name='softgl_create',absoluteFunctionIndex=symbols['softgl_create'],definedFunctionLabel=int(export.group(1))),
        rootFile=destination.name,rootSha256=hashlib.sha256(destination.read_bytes()).hexdigest(),unsignedSimdExtremaOpcodes=ops))
(root/'simd-opcodes.json').write_text(json.dumps(dict(records=records,
    scope='Actual WASM opcodes in the bound draw_elements root; no native JIT instruction/register/machine-cycle/cache-miss or performance claim.'),indent=2)+'\n')
for record in records: print(record['label'],record['unsignedSimdExtremaOpcodes'])
