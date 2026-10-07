"""Check actual SIMD parameter/call shape and unchanged raster body text."""
from pathlib import Path
import hashlib,json,re,sys
r=Path(__file__).resolve().parent;load=lambda p:json.loads(p.read_text());sha=lambda b:hashlib.sha256(b).hexdigest()
v=load(r/'validation.json');records=load(r/'sampler-opcodes.json')['records'];normalized={};calls={};rows=[]
for row in records:
 label,name=row['label'],row['function'];symbols={int(i):n for line in (r/(label+'.symbols')).read_text().splitlines() for i,n in [line.split(':',1)]}
 assert sha((r/(label+'.symbols')).read_bytes())==row['symbolMapSha256']
 text=(r/row['rootFile']).read_text();assert sha(text.encode())==row['rootSha256']
 assert row['wasmSha256']==v['referenceWasmSha256' if label=='reference' else 'candidateWasmSha256']
 assert symbols[row['absoluteFunctionIndex']]==name
 body=re.sub(r'^ \(func \$\d+', ' (func $'+name,text,count=1)
 def logical(m):return '('+m.group(1)+' $'+symbols[int(m.group(2))+row['importFunctionCount']]
 body=re.sub(r'\((call|ref\.func) \$(\d+)(?=\s|\))',logical,body)
 normalized[label,name]=sha(body.encode())
 calls[label,name]=sorted({symbols[int(i)+row['importFunctionCount']] for i in re.findall(r'\(call \$(\d+)(?=\s|\))',text)})
 rows.append(dict(label=label,name=name,normalizedBodySha256=normalized[label,name],calls=calls[label,name]))
unchanged=[]
for name in ['sg_raster_triangle_tile_prepared','sg_raster_triangle_depth_capture','sg_raster_triangle_msaa2','sg_raster_triangle_msaa2_capture','sg_raster_triangle_msaa4','sg_raster_triangle_msaa4_capture']:
 equal=normalized['reference',name]==normalized['candidate',name];assert equal,name;unchanged.append(dict(name=name,normalizedBodyEqual=equal))
assert calls['candidate','sg_packet_sample_cube_coherent']==['sg_packet_sample_cube_vectors']
assert calls['candidate','sg_packet_sample_cube_target']==['sg_packet_sample_cube_vectors','sg_sample_tex_cube']
core=(r/'candidate-sg_packet_sample_cube_vectors.wat').read_text()
assert re.findall(r'\(param \$\d+ (\w+)\)',core.splitlines()[0])==['i32','v128','v128','v128','i32','i32']
new=(r/'candidate-sg_packet_sample_cube_target.wat').read_text();old=(r/'reference-sg_packet_sample_cube_target.wat').read_text()
newcall=re.search(r'\(call \$\d+',new);oldcall=re.search(r'\(call \$\d+',old);assert newcall and oldcall
before_counts=lambda text,match:dict(v128Store=len(re.findall(r'\(v128\.store(?=\s|\))',text[:match.start()])),v128Load=len(re.findall(r'\(v128\.load(?=\s|\))',text[:match.start()])))
previous=before_counts(old,oldcall);current=before_counts(new,newcall)
assert previous['v128Store']==7 and current['v128Store']==0
result=dict(candidateWasmSha256=v['candidateWasmSha256'],referenceWasmSha256=v['referenceWasmSha256'],roots=rows,unchangedRasterBodies=unchanged,coreParameterTypes=['i32','v128','v128','v128','i32','i32'],targetPreFirstCallSites=dict(reference=previous,candidate=current),scope='Bound static WASM call/parameter sites and function-label-normalized body text; not native register allocation, physical traffic, dynamic frequency, cycles or a speedup.')
if '--check' in sys.argv:assert load(r/'cube-codegen.json')==result
else:(r/'cube-codegen.json').write_text(json.dumps(result,indent=2)+'\n')
print('PASS: actual three-v128 cube core, direct target/wrapper calls, seven pre-call vector stores removed, all six raster bodies unchanged after function-label normalization')
