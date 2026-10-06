from pathlib import Path
import hashlib,json,subprocess
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve();old=repo/'build/diagnostics/simd-index-range';sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
records=[]
for p in sorted((r/'objects').glob('*.c.o')):
 ref=old/'objects'/p.name;records.append(dict(name=p.name,referenceSha256=sha(ref),candidateSha256=sha(p),byteEqual=ref.read_bytes()==p.read_bytes()))
assert len(records)==20
(r/'object-comparison.json').write_text(json.dumps(dict(rebuiltAll20=True,records=records),indent=2)+'\n')
s=(repo/'build/diagnostics/visibility-byte-select/inspect-codegen.py').read_text();(r/'inspect-codegen.py').write_text(s)
subprocess.run(['python3',str(r/'inspect-codegen.py')],check=True)
reference=json.loads((r/'reference-codegen.json').read_text());candidate=json.loads((r/'candidate-codegen.json').read_text())
rows=[]
for a,b in zip(reference['roots'],candidate['roots']):
 assert a['name']==b['name'];rows.append(dict(name=a['name'],reference=a,candidate=b,bodyBytesExact=a['bodySha256']==b['bodySha256']))
(r/'codegen-comparison.json').write_text(json.dumps(dict(referenceWasmSha256=reference['wasmSha256'],candidateWasmSha256=candidate['wasmSha256'],roots=rows,note='Bound static WASM bytes/locals only; indices may shift. No JIT/hardware performance conclusions.'),indent=2)+'\n')
print('Objects equal:',sum(x['byteEqual'] for x in records),'of20; roots byte equal:',sum(x['bodyBytesExact'] for x in rows),'of',len(rows))
