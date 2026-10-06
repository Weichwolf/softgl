"""Record actual WASM opcodes in the bound draw root; no JIT claims."""
from pathlib import Path
import hashlib, json, re, subprocess
root=Path(__file__).resolve().parent
v=json.loads((root/'validation.json').read_text())
records=[]
for label,directory in [('reference',Path('build/diagnostics/simd-index-range')),('candidate',root)]:
 module=directory/'softgl.wasm';symbol=directory/'softgl.js.symbols'
 sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
 assert sha(module)==v[label+'WasmSha256']
 with (root/(label+'-disassembly.log')).open('w') as log:
  subprocess.run(['wasm-dis',str(module),'-o',str(root/(label+'.wat'))],stdout=log,stderr=subprocess.STDOUT,check=True)
 text=(root/(label+'.wat')).read_text()
 symbols={name:int(index) for row in symbol.read_text().splitlines() for index,name in [row.split(':',1)]}
 imports=len(re.findall(r'^ \(import [^\n]*\(func',text,re.M))
 export=re.search(r'\(export "softgl_create" \(func \$(\d+)\)\)',text)
 assert export and int(export.group(1))==symbols['softgl_create']-imports
 name='_sg_draw_elements_real';index=symbols[name]-imports
 start=text.index(' (func $'+str(index)+' ');end=text.find('\n (func ',start+1)
 assert end>start
 body=text[start:end];destination=root/(label+'-draw-elements.wat');destination.write_text(body)
 ops={op:len(re.findall(r'\('+re.escape(op)+r'(?:\s|\))',body)) for op in ['i32.ctz','v128.load','v128.store','memory.copy','i32.load8_u']}
 records.append(dict(label=label,wasmSha256=sha(module),symbolMapSha256=sha(symbol),function=name,absoluteFunctionIndex=symbols[name],definedFunctionLabel=index,importFunctionCount=imports,mappingExport=dict(name='softgl_create',absoluteFunctionIndex=symbols['softgl_create'],definedFunctionLabel=int(export.group(1))),rootFile=destination.name,rootSha256=sha(destination),opcodes=ops))
(root/'opcodes.json').write_text(json.dumps(dict(records=records,scope='Static actual WASM draw-root opcode counts, including other existing code in that root; not dynamic operation counts, native/JIT instructions, register pressure, hardware events or a performance ceiling.'),indent=2)+'\n')
for record in records:print(record['label'],record['opcodes'])
