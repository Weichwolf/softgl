"""Compare actual combined and prior split MSAA bodies; no machine-code claim."""
from pathlib import Path
import hashlib,json,re,sys
r=Path(__file__).resolve().parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v=load(r/'validation.json');previous=load(r/'mode-isolation/validation.json')
records=[load(r/'sampler-opcodes.json')['records'],load(r/'mode-isolation/sampler-opcodes.json')['records']]
rows=[]
for name in ['sg_raster_triangle_samples2_prepared','sg_raster_triangle_samples4_prepared','sg_raster_triangle_msaa2','sg_raster_triangle_msaa2_capture','sg_raster_triangle_msaa4','sg_raster_triangle_msaa4_capture']:
 hashes=[]
 for directory,data,validation in [(r,records[0],v),(r/'mode-isolation',records[1],previous)]:
  row=next(x for x in data if x['label']=='candidate' and x['function']==name)
  assert row['wasmSha256']==validation['candidateWasmSha256']
  assert sha(directory/'candidate.symbols')==row['symbolMapSha256']
  names={int(index):symbol for line in (directory/'candidate.symbols').read_text().splitlines() for index,symbol in [line.split(':',1)]}
  assert names[row['absoluteFunctionIndex']]==name
  path=directory/row['rootFile'];assert sha(path)==row['rootSha256']
  text=path.read_text()
  text=re.sub(r'^ \(func \$\d+',' (func $'+name,text,count=1)
  def logical(match):return '('+match.group(1)+' $'+names[int(match.group(2))+row['importFunctionCount']]
  text=re.sub(r'\((call|ref\.func) \$(\d+)(?=\s|\))',logical,text)
  hashes.append(hashlib.sha256(text.encode()).hexdigest())
 assert hashes[0]==hashes[1],name
 rows.append(dict(name=name,normalizedBodySha256=hashes[0],equal=True))
result=dict(candidateWasmSha256=v['candidateWasmSha256'],priorSplitWasmSha256=previous['candidateWasmSha256'],rows=rows,scope='Function declaration/direct call/ref.func labels only normalized. All other WAT text equal. Static module observation; not native V8 code, registers, spills, cache costs or timings.')
if '--check' in sys.argv:assert load(r/'mode-isolation.json')==result
else:(r/'mode-isolation.json').write_text(json.dumps(result,indent=2)+'\n')
print('PASS: both MSAA outer entries and all four inner loops equal to prior split after label normalization')
