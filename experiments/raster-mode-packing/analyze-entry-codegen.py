"""Check actual retained mode entries and normalize direct-call label renumbering."""
from pathlib import Path
import hashlib
import json
import re
import sys

r = Path(__file__).resolve().parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
v = load(r/'validation.json')
records = load(r/'sampler-opcodes.json')['records']
before, after = [load(r/(label+'-codegen.json')) for label in ['reference','candidate']]
assert before['wasmSha256'] == v['referenceWasmSha256'] and after['wasmSha256'] == v['candidateWasmSha256']
normalized, calls, roots = {}, {}, []
for row in records:
    label, name = row['label'], row['function']
    assert row['wasmSha256'] == v['referenceWasmSha256' if label=='reference' else 'candidateWasmSha256']
    assert sha(r/(label+'.symbols')) == row['symbolMapSha256']
    text = (r/row['rootFile']).read_text()
    assert sha(r/row['rootFile']) == row['rootSha256']
    names = {int(index):name for line in (r/(label+'.symbols')).read_text().splitlines() for index,name in [line.split(':',1)]}
    assert names[row['absoluteFunctionIndex']] == name
    assert row['definedFunctionLabel'] + row['importFunctionCount'] == row['absoluteFunctionIndex']
    assert text.startswith(' (func $'+str(row['definedFunctionLabel'])+' ')
    def logical(match):
        index = int(match.group(2)) + row['importFunctionCount']
        return '('+match.group(1)+' $'+names[index]
    body = re.sub(r'^ \(func \$\d+', ' (func $'+name, text, count=1)
    body = re.sub(r'\((call|ref\.func) \$(\d+)(?=\s|\))',logical,body)
    normalized[label,name] = hashlib.sha256(body.encode()).hexdigest()
    direct = sorted({names[int(index)+row['importFunctionCount']] for index in re.findall(r'\(call \$(\d+)(?=\s|\))',text)})
    calls[label,name] = direct
    metadata = next(x for x in (before if label=='reference' else after)['roots'] if x['name']==name)
    roots.append(dict(label=label,name=name,bodyBytes=metadata['bodyBytes'],localDeclarations=metadata['localDeclarations'],
        rawBodySha256=metadata['bodySha256'],normalizedDirectCallLabelBodySha256=normalized[label,name],directCalls=direct))
entries = ['sg_raster_triangle_off_prepared','sg_raster_triangle_samples2_prepared','sg_raster_triangle_samples4_prepared']
assert calls['candidate','sg_raster_triangle_tile_prepared'] == sorted(entries)
assert calls['candidate',entries[1]] == ['sg_raster_triangle_msaa2','sg_raster_triangle_msaa2_capture']
assert calls['candidate',entries[2]] == ['sg_raster_triangle_msaa4','sg_raster_triangle_msaa4_capture']
assert not any(name.startswith('sg_raster_triangle_msaa') for name in calls['candidate',entries[0]])
repeat = []
for name in ['sg_raster_triangle_msaa2','sg_raster_triangle_msaa2_capture','sg_raster_triangle_msaa4','sg_raster_triangle_msaa4_capture']:
    equal = normalized['reference',name] == normalized['candidate',name]
    repeat.append(dict(name=name,normalizedDirectCallLabelBodyEqual=equal))
    assert equal,name
result = dict(candidateWasmSha256=v['candidateWasmSha256'],referenceWasmSha256=v['referenceWasmSha256'],
    actualModeDispatchVerified=True,roots=roots,unchangedInnerBodies=repeat,
    scope='Static WASM function bodies, declared locals, opcode sites and direct calls. Normalization replaces function declaration/direct call/ref.func numeric labels with symbol-map names; all other WAT text must match. This is not V8 machine-code, spill, cache, CPU cost or a performance ceiling evidence.')
if '--check' in sys.argv: assert load(r/'entry-codegen.json') == result
else: (r/'entry-codegen.json').write_text(json.dumps(result,indent=2)+'\n')
for row in roots:
    if row['label']=='candidate': print(row['name'],row['bodyBytes'],row['localDeclarations'])
print('PASS: actual dispatcher/0/2/4 entries; all four inner MSAA bodies equal after direct-call label normalization')
