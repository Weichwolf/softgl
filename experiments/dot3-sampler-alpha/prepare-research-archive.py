"""Prepare an auditable rejection, verifier, and fresh-source recipe."""
from pathlib import Path
import hashlib
import json
import shutil

repo=Path.cwd().resolve();r=Path(__file__).resolve().parent
old=repo/'build/diagnostics/packet-channel-shuffle'
load=lambda p:json.loads(p.read_text())
write=lambda p,d:p.write_text(json.dumps(d,indent=2)+'\n')
a=load(r/'analysis.json');v=load(r/'validation.json')
assert len(a['records'])==18
assert load(r/'process-completion.json')==dict(gateStatus='terminal',gateExitCode=0,timingExitCode=0,timingStatus='terminal')
monitors=list((r/'timings').glob('*.monitor.json'))
assert len(monitors)==18 and all(not load(p)['unexpectedActivity'] and load(p)['exitCode']==0 for p in monitors)
bmw={x['samples']:x for x in a['summary'] if x['scene']=='bmw'}
assert bmw[0]['slower']==6 and all(x>0 for x in bmw[0]['auditChangesPercent'])
assert all(x>0 for x in bmw[4]['auditChangesPercent'])
write(r/'decision.json',dict(status='rejected',candidateAdopted=False,all18ComparisonsComplete=True,
 allFullGatesPassed=True,analysisFile='analysis.json',analysisSha256=hashlib.sha256((r/'analysis.json').read_bytes()).hexdigest(),
 summary='Unused-alpha elision fails BMW priority: off +1.504764%/+1.410565%, all six pairs slower; 2x +0.774500%/-0.397791%, 4x +0.396812%/+0.959420%. T-80 2x/4x audit means improve but do not justify BMW regressions. Keep D4 source/module/report/live. Static code growth and branches are observed; causes of frame-time changes remain unproven.'))
# Use the existing generic complete verifier, replacing mechanism-specific assertions.
s=(old/'verify_artifacts.py').read_text().replace('packet-channel-shuffle','dot3-sampler-alpha').replace('shuffle-opcodes.json','sampler-opcodes.json')
s=s.replace("assert '1048576 exact byte-channel encodings passed' in (r/name).read_text()", "assert '1325788 exact consumed-alpha component comparisons passed' in (r/name).read_text()\n    assert '331447 exact four-pixel sampler comparisons passed' in (r/name).read_text()\n    assert '128054 exact four-pixel shader comparisons passed' in (r/name).read_text()")
s=s.replace("assert [x['sites'] for x in row['channelShufflePatterns']]==([4]*4 if row['label']=='candidate' else [0]*4)","assert [x['sites'] for x in row['channelShufflePatterns']]==[0]*4")
s=s.replace("[16,-12,-12,16,-16,0,0]", "[0,0,0,0,0,1,0]")
s=s.replace("assert sha(r/'prior-art/rgba-sampler-prepare.py')==load(r/'prior-art/review.json')['olderRgbaSamplerSourceSha256']", "failure=load(r/'failed-generator-anchor/failure.json')\nassert failure['exitCode']==1 and 'no compilation or rendering occurred' in failure['reason']")
needle="assert m['status']==load(r/'decision.json')['status']=='rejected'"
extra="""cg=load(r/'codegen-comparison.json')
assert len(cg['rows'])==18
changed=[x for x in cg['rows'] if not x['bodyByteExact']]
assert len(changed)==6 and {x['name'] for x in changed}=={x['function'] for x in records}
for x in changed:
    assert x['candidateBodyBytes']>x['referenceBodyBytes']
    assert x['candidateLocals']['0x7b']==x['referenceLocals']['0x7b']
    assert x['candidateLocals']['0x7f']==x['referenceLocals']['0x7f']+1
assert load(r/'decision.json')['analysisSha256']==sha(r/'analysis.json')
"""
assert needle in s;s=s.replace(needle,extra+needle)
(r/'verify_artifacts.py').write_text(s)
s=(old/'reproduce-candidate.py').read_text().replace('packet-channel-shuffle','dot3-sampler-alpha').replace('all three changed-source hashes','both changed-source hashes')
(r/'reproduce-candidate.py').write_text(s)
shutil.copy2(repo/'build/diagnostics/simd-index-range/range-oracle.json',r/'range-oracle.json')
s=(old/'prove-publication.py').read_text().replace('packet-channel-shuffle','dot3-sampler-alpha')
s=s.replace("assert push==dict(session=74255,exitCode=0,terminal=True)","assert push['exitCode']==0 and push['terminal'] is True and isinstance(push['session'],int)")
(r/'prove-publication.py').write_text(s)
s=(old/'prepare-publication.py').read_text().replace('packet-channel-shuffle','dot3-sampler-alpha')
s=s.replace("['timings','wasm-contracts','prior-art','recipe-check','opcode-count-first-pass']", "['timings','wasm-contracts','recipe-check','failed-generator-anchor']")
start=s.index("text='''# Constant byte-channel")
end=s.index("manifest=dict(status='rejected'",start)
s=s[:start]+"shutil.copy2(r/'research-readme.md',public/'README.md')\n"+s[end:]
(r/'prepare-publication.py').write_text(s)
print('Prepared rejection, mechanism-specific archive verifier, source recipe and publication proof')
