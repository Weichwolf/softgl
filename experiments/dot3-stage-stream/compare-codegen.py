"""Compare actual module body declarations and unchanged producer samplers."""
from pathlib import Path
import hashlib,json
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve()
load=lambda p:json.loads(p.read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
before=load(r/'reference-codegen.json');after=load(r/'candidate-codegen.json');v=load(r/'validation.json')
assert before['wasmSha256']==v['referenceWasmSha256'] and after['wasmSha256']==v['candidateWasmSha256']
rows=[]
for ref in before['roots']:
 cand=next(x for x in after['roots'] if x['name']==ref['name'])
 row=dict(name=ref['name'],referenceBodyBytes=ref['bodyBytes'],candidateBodyBytes=cand['bodyBytes'],
          referenceLocals=ref['localDeclarations'],candidateLocals=cand['localDeclarations'],bodyByteExact=ref['bodySha256']==cand['bodySha256'])
 rows.append(row)
 if not row['bodyByteExact']:print(row['name'],row['referenceBodyBytes'],row['candidateBodyBytes'],'SIMD',row['referenceLocals'].get('0x7b',0),row['candidateLocals'].get('0x7b',0))
assert len(rows)==18 and sum(not x['bodyByteExact'] for x in rows)==6
(r/'codegen-comparison.json').write_text(json.dumps(dict(rows=rows,scope='Static WASM bodies and declared locals only. No native-code, spill, dynamic-instruction or ceiling inference.'),indent=2)+'\n')
# The new helper begins after the last original unit sampler.
original=(repo/'libsoftgl/src/frag_packet.h').read_text();candidate=(r/'source-root/libsoftgl/src/frag_packet.h').read_text()
cut=original.index('SG_INLINE int sg_packet_supported(')
assert original[:cut]==candidate[:cut]
review=r/'prior-review';review.mkdir(exist_ok=False)
import subprocess
commands=[['git','log','-12','--oneline','--','libsoftgl/src/frag_packet.h'],
          ['rg','-n','-i','stream.*(dot3|sampl|combin)|immediate.*(consum|sampl)|stage scheduling|constant unit indic','experiments','--glob','*.md','--glob','*prepare*.py','--glob','*create*.py']]
receipts=[]
for i,command in enumerate(commands):
 result=subprocess.run(command,text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
 assert result.returncode in (0,1)
 p=review/f'search-{i}.log';p.write_text(result.stdout)
 receipts.append(dict(command=command,exitCode=result.returncode,log=p.name,logSha256=sha(p)))
(review/'review.json').write_text(json.dumps(dict(status='source-samplers-byte-exact-current-history-and-metadata-inspected',
 baselineCommit=v['researchBaselineCommit'],unchangedSamplerPrefixBytes=len(original[:cut].encode()),
 unchangedSamplerPrefixSha256=hashlib.sha256(original[:cut].encode()).hexdigest(),searches=receipts,
 scope='Last twelve accepted header changes and selected experiment Markdown/generator metadata. No exhaustive algorithm novelty claim, native JIT/spill diagnosis or timing claim.'),indent=2)+'\n')
print('All original sampler bodies unchanged; scoped historical review recorded')
