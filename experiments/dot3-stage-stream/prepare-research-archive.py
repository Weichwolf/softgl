"""Prepare this fully tested, measured rejected stage-scheduling trial."""
from pathlib import Path
import hashlib,json,shutil
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve();old=repo/'build/diagnostics/dot3-sampler-alpha'
load=lambda p:json.loads(p.read_text());write=lambda p,d:p.write_text(json.dumps(d,indent=2)+'\n')
a=load(r/'analysis.json');v=load(r/'validation.json')
assert len(a['records'])==18
assert load(r/'process-completion.json')==dict(gateStatus='terminal',gateExitCode=0,timingExitCode=0,timingStatus='terminal')
monitors=list((r/'timings').glob('*.monitor.json'))
assert len(monitors)==18 and all(not load(p)['unexpectedActivity'] and load(p)['exitCode']==0 for p in monitors)
bmw={x['samples']:x for x in a['summary'] if x['scene']=='bmw'}
assert bmw[4]['slower']==6 and all(x>0 for x in bmw[4]['auditChangesPercent'])
write(r/'decision.json',dict(status='rejected',candidateAdopted=False,all18ComparisonsComplete=True,allFullGatesPassed=True,
 analysisFile='analysis.json',analysisSha256=hashlib.sha256((r/'analysis.json').read_bytes()).hexdigest(),
 summary='Streaming DOT3 stages improves BMW off -0.903665%/-0.259871% and 2x -0.618990%/-0.513350%, but 4x regresses +0.851905%/+1.357588%, all six pairs slower. T-80 off -0.077138%/-0.800092%, 2x +2.149503%/-1.960685%, 4x +0.614403%/+1.446300%. Reject the common all-mode implementation; retain D4. No mode-restricted derivative or parameter sweep is built. Increased code/locals are static observations, not a measured causal diagnosis.'))
s=(old/'verify_artifacts.py').read_text().replace('dot3-sampler-alpha','dot3-stage-stream')
s=s.replace("    assert '1325788 exact consumed-alpha component comparisons passed' in (r/name).read_text()\n",'')
start=s.index("for name in {x['function'] for x in records}:")
end=s.index("identities=load(r/'timing-input-identities.json')",start)
s=s[:start]+s[end:]
start=s.index("failure=load(r/'failed-generator-anchor/failure.json')")
end=s.index("cg=load(r/'codegen-comparison.json')",start)
s=s[:start]+s[end:]
s=s.replace("assert x['candidateLocals']['0x7b']==x['referenceLocals']['0x7b']", "assert x['candidateLocals']['0x7b']>x['referenceLocals']['0x7b']")
s=s.replace("    assert x['candidateLocals']['0x7f']==x['referenceLocals']['0x7f']+1\n",'')
needle="assert load(r/'decision.json')['analysisSha256']==sha(r/'analysis.json')"
extra="""review=load(r/'prior-review/review.json')
original=(r/'original/libsoftgl/src/frag_packet.h').read_bytes()
candidate=(r/'candidate-source/libsoftgl/src/frag_packet.h').read_bytes()
count=review['unchangedSamplerPrefixBytes']
assert original[:count]==candidate[:count]
assert hashlib.sha256(original[:count]).hexdigest()==review['unchangedSamplerPrefixSha256']
for search in review['searches']:assert sha(r/'prior-review'/search['log'])==search['logSha256']
assert load(r/'native-warnings-comparison.json')['candidateLogSha256']==sha(r/'native-full-build.log')
"""
assert needle in s;s=s.replace(needle,extra+needle)
(r/'verify_artifacts.py').write_text(s)
shutil.copy2(repo/'build/diagnostics/simd-index-range/range-oracle.json',r/'range-oracle.json')
s=(old/'prove-publication.py').read_text().replace('dot3-sampler-alpha','dot3-stage-stream');(r/'prove-publication.py').write_text(s)
s=(old/'prepare-publication.py').read_text().replace('dot3-sampler-alpha','dot3-stage-stream')
s=s.replace("['timings','wasm-contracts','recipe-check','failed-generator-anchor','source-review']", "['timings','wasm-contracts','recipe-check','prior-review']")
(r/'prepare-publication.py').write_text(s)
recipe=r/'recipe-check';recipe.mkdir(exist_ok=False)
for name in ['reproduction-receipt.json','validation.json']:
 shutil.copy2(repo/'build/diagnostics/dot3-stage-stream-recipe-source'/name,recipe/name)
print('Prepared rejected trial, sampler-prefix proof, recorded-gate verifier and recipe receipts')
