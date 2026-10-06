from pathlib import Path
import json
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;template=repo/'experiments/visibility-byte-select'
s=(template/'reproduce-candidate.py').read_text().replace('visibility-byte-select','slice-vertex-packing');(r/'reproduce-candidate.py').write_text(s)
s=(template/'verify_artifacts.py').read_text().replace('visibility-byte-select','slice-vertex-packing').replace("assert v['changedLibraryObjects']==['workers.c.o']","assert len(v['rebuiltLibraryObjects'])==20")
a=s.index("for fn in ['native-visibility_copy-run.log'");b=s.index("for fn in ['native-index-range-run.log'",a)
s=s[:a]+"for fn in ['native-slice_prepack-run.log','wasm-contracts/slice_prepack-run.log']:\n assert 'actual allocation failure, pending/idle budget ownership' in (r/fn).read_text()\n"+s[b:]
a=s.index('# Retain and check the successful pre-correction gates');b=s.index('# Recompute every pair directly',a)
s=s[:a]+'''# Static body identities include function indices and imply no JIT/cycle facts.
codegen=json.loads((r/'codegen-comparison.json').read_text())
assert codegen['referenceWasmSha256']==v['referenceWasmSha256'] and codegen['candidateWasmSha256']==v['candidateWasmSha256']
assert len(codegen['roots'])==18
for x in codegen['roots']:
 assert x['reference']['name']==x['candidate']['name']==x['name']
 assert x['bodyBytesExact']==(x['reference']['bodySha256']==x['candidate']['bodySha256'])
objects=json.loads((r/'object-comparison.json').read_text());assert objects['rebuiltAll20'] and len(objects['records'])==20
for x in objects['records']:assert x['byteEqual']==(x['referenceSha256']==x['candidateSha256'])
commands=json.loads((r/'producer-commands.json').read_text());assert len(commands['compile'])==20
assert {Path(x[x.index('-c')+1]).name for x in commands['compile']}=={x['name'][:-2] for x in objects['records']}

'''+s[b:]
(r/'verify_artifacts.py').write_text(s)
