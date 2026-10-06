"""Verify committed archive and unchanged accepted source/runtime after push."""
from pathlib import Path
import hashlib,json,subprocess,urllib.request
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;public=repo/'experiments/current-producer-phases'
sha=lambda b:hashlib.sha256(b).hexdigest();git=lambda *args:subprocess.check_output(['git',*args],text=True).strip()
head=git('rev-parse','HEAD');assert head==git('rev-parse','origin/master') and not git('status','--porcelain')
v=json.loads((public/'validation.json').read_text());m=json.loads((public/'results.json').read_text())
for fn,digest in m['artifacts'].items():
 p='experiments/current-producer-phases/'+fn;b=subprocess.check_output(['git','show',head+':'+p]);assert sha(b)==digest and b==(repo/p).read_bytes(),p
assert subprocess.check_output(['git','show',head+':experiments/current-producer-phases/results.json'])==(public/'results.json').read_bytes()
for directory in ['libsoftgl','tests','wasm']:assert not git('diff',v['researchBaselineCommit'],head,'--',directory)
frozen=repo/'build/controls/simd-index-range-candidate'
for fn in ['softgl.js','softgl.wasm']:assert (repo/'build/checks/msaa-wasm'/fn).read_bytes()==(frozen/fn).read_bytes()
assets={}
for fn in ['softgl.js','softgl.wasm','main.js','index.html','bmw.pack','tank.pack']:
 with urllib.request.urlopen('http://127.0.0.1:8000/'+fn) as res:
  b=res.read();assert res.headers['Cross-Origin-Opener-Policy']=='same-origin';assert res.headers['Cross-Origin-Embedder-Policy']=='require-corp'
 assert b==(frozen/fn).read_bytes()==(repo/'build/wasm'/fn).read_bytes(),fn
 assets[fn]=dict(sha256=sha(b),bytes=len(b))
assert assets['softgl.wasm']['sha256']==v['referenceWasmSha256']
old=subprocess.check_output(['git','show',v['researchBaselineCommit']+':bench_report.md'],text=True);new=(repo/'bench_report.md').read_text()
get_fps=lambda s:s[s.index('| Render+Resolve/Readback'):s.index('\n| BMW Replay')]
assert get_fps(old)==get_fps(new)
assert 'BMW Caller-Diagnose `d4dd244c`' in new
push=json.loads((r/'push-completion.json').read_text());assert push['exitCode']==0
proof=dict(status='diagnostic-committed-pushed-verified-no-runtime-adoption',head=head,originMaster=head,clean=True,committedArtifacts=len(m['artifacts']),everyCommittedArtifactHashExact=True,actualPushSessionId=push['session'],actualPushExitCode=0,rendererTestsViewerSourceUnchanged=True,canonicalLiveAndAcceptedByteExact=True,liveIsolationHeaders=True,liveAssets=assets,acceptedFpsReportUnchanged=True,goalRemainsActive=True)
(r/'publication-proof.json').write_text(json.dumps(proof,indent=2)+'\n');print(head,len(m['artifacts']),'committed diagnostic artifacts; accepted D4 source/runtime/FPS verified')
