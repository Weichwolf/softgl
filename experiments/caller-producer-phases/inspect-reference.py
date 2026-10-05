"""Inspect one accepted WASM root, respecting wasm-dis import label offsets."""
from pathlib import Path
import hashlib
import json
import re
import subprocess

root = Path(__file__).resolve().parent
reference = Path.cwd()/'build/controls/post-depth-common-store-candidate/softgl.wasm'
sha = lambda content:hashlib.sha256(content).hexdigest()
assert sha(reference.read_bytes()) == json.loads((root/'validation.json').read_text())['referenceWasmSha256']
with (root/'disassembly.log').open('w') as log:
    subprocess.run(['wasm-dis',str(reference),'-o',str(root/'reference.wat')],stdout=log,stderr=subprocess.STDOUT,check=True)
text = (root/'reference.wat').read_text()
symbol_bytes = (root/'reference.symbols').read_bytes()
symbols = {name:int(index) for row in symbol_bytes.decode().splitlines() for index,name in [row.split(':',1)]}
imports = len(re.findall(r'^ \(import [^\n]*\(func',text,re.M))
match = re.search(r'\(export "softgl_create" \(func \$(\d+)\)\)',text)
assert match and int(match.group(1)) == symbols['softgl_create']-imports
name = '_sg_draw_elements_real'
label = symbols[name]-imports
grow = symbols['sg_bin_grow']-imports
start = text.index(' (func $'+str(label)+' ')
end = text.find('\n (func ',start+1)
body = text[start:end]
(root/'draw-elements.wat').write_text(body)
contexts = [body[max(0,m.start()-300):m.start()+180] for m in re.finditer(r'\(call \$'+str(grow)+r'\b',body)]
result = dict(status='corrected-function-map-static-inspection',referenceWasmSha256=sha(reference.read_bytes()),
    function=name,functionIndex=symbols[name],definedFunctionLabel=label,importFunctionCount=imports,
    growIndex=symbols['sg_bin_grow'],growDefinedLabel=grow,staticGrowCallSites=len(contexts),contexts=contexts,
    rootWatSha256=sha(body.encode()),symbolMapSha256=sha(symbol_bytes),
    exportMappingCheck=dict(name='softgl_create',absoluteIndex=symbols['softgl_create'],definedLabel=int(match.group(1))),
    unsignedSimdExtremaOpcodes={op:body.count('('+op) for op in [
        'i8x16.min_u','i8x16.max_u','i16x8.min_u','i16x8.max_u','i32x4.min_u','i32x4.max_u']},
    initialInspectionInvalidReason='Initial inspection used absolute symbol-map indices as wasm-dis defined-function labels, which omit imported functions. The initial zero-call result refers to an unrelated test function and is invalid; no performance interpretation used. Corrected mapping subtracts the imported function count and checks an actual named export.',
    scope='Only the actual accepted draw_elements root. No claim about native JIT instructions, other functions, other compiler builds, cache misses, register pressure or resulting speedup.')
(root/'draw-elements-grow-context.json').write_text(json.dumps(result,indent=2)+'\n')
print('Accepted root',symbols[name],'/ defined label',label,'mapped export verified;',len(contexts),'static bin-grow calls;',result['unsignedSimdExtremaOpcodes'])
