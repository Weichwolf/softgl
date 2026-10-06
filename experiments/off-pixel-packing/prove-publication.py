"""Check actual pushed bytes, adoption/rejection and live HTTP assets."""
from pathlib import Path
import hashlib, json, subprocess, urllib.request
repo=Path.cwd().resolve();root=Path(__file__).resolve().parent;public=repo/'experiments/off-pixel-packing'
sha=lambda b:hashlib.sha256(b).hexdigest()
git=lambda *a:subprocess.check_output(['git',*a],text=True).strip()
head=git('rev-parse','HEAD');assert head==git('rev-parse','origin/master')
assert not git('status','--porcelain')
v=json.loads((public/'validation.json').read_text());m=json.loads((public/'results.json').read_text())
for fn,digest in m['artifacts'].items():
 path='experiments/off-pixel-packing/'+fn
 data=subprocess.check_output(['git','show',head+':'+path])
 assert sha(data)==digest and data==(repo/path).read_bytes(),fn
assert subprocess.check_output(['git','show',head+':experiments/off-pixel-packing/results.json'])==(public/'results.json').read_bytes()
for name,digest in v['objects'].items():assert sha((repo/name).read_bytes())==digest,name
for name,digest in v['linkedObjects'].items():assert sha((repo/name).read_bytes())==digest,name
assert len(v['objects'])==20 and len(v['linkedObjects'])==259
for name,digest in v['finalSourceFiles'].items():assert sha((root/'source-root'/name).read_bytes())==digest,name
for name,digest in v['productionSources'].items():assert sha((root/'source-root'/name).read_bytes())==digest,name
assert sha((root/'softgl.wasm').read_bytes())==v['candidateWasmSha256']
assert sha((root/'source.patch').read_bytes())==v['patchSha256']
accepted=m['status']=='accepted';assert m['status'] in ('accepted','rejected')
frozen=repo/'build/controls'/('off-pixel-packing-candidate' if accepted else 'simd-index-range-candidate')
if accepted:
 for fn in v['changedFiles']:
  assert sha((repo/fn).read_bytes())==v['finalSourceFiles'][fn]
 for fn,digest in v['productionSources'].items():assert sha((repo/fn).read_bytes())==digest,fn
else:
 for directory in ['libsoftgl','tests','wasm']:
  assert not git('diff',v['researchBaselineCommit'],head,'--',directory)
 assert not git('diff',v['researchBaselineCommit'],head,'--','bench_report.md')
for fn in ['softgl.js','softgl.wasm']:
 assert (repo/'build/checks/msaa-wasm'/fn).read_bytes()==(frozen/fn).read_bytes()
assets={}
for fn in ['softgl.js','softgl.wasm','main.js','index.html','bmw.pack','tank.pack']:
 with urllib.request.urlopen('http://127.0.0.1:8000/'+fn) as response:
  b=response.read();assert response.headers['Cross-Origin-Opener-Policy']=='same-origin';assert response.headers['Cross-Origin-Embedder-Policy']=='require-corp'
 assert b==(frozen/fn).read_bytes()==(repo/'build/wasm'/fn).read_bytes(),fn
 assets[fn]=dict(sha256=sha(b),bytes=len(b))
assert assets['softgl.wasm']['sha256']==v['candidateWasmSha256' if accepted else 'referenceWasmSha256']
push=json.loads((root/'push-completion.json').read_text());assert push['exitCode']==0 and push['terminal'] is True and isinstance(push['session'],int)
proof=dict(status=m['status']+'-trial-committed-pushed-verified',head=head,originMaster=head,clean=True,committedArtifacts=len(m['artifacts']),everyCommittedArtifactHashExact=True,actualProducerObjectsAnd259InputsExact=True,privateCandidateSourcesAndModuleExact=True,actualPushSessionId=push['session'],actualPushExitCode=0,sourceDecisionVerified=True,canonicalAndLiveByteExact=True,liveIsolationHeaders=True,liveAssets=assets,goalRemainsActive=True)
(root/'publication-proof.json').write_text(json.dumps(proof,indent=2)+'\n')
print(head,m['status'],len(m['artifacts']),'artifacts; committed source and live/canonical module verified')
