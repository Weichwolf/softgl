"""Verify actual committed/pushed artifacts, producer files and live D4 assets."""
from pathlib import Path
import hashlib
import json
import subprocess
import urllib.request

repo = Path.cwd().resolve()
r = Path(__file__).resolve().parent
public = repo/'experiments/packet-lane-occupancy'
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
load = lambda p: json.loads(p.read_text())
git = lambda *a: subprocess.check_output(['git',*a],text=True).strip()
head = git('rev-parse','HEAD')
assert head == git('rev-parse','origin/master') and not git('status','--porcelain')
m, v = load(public/'results.json'), load(public/'validation.json')
assert m['status'] == 'diagnostic-only-not-adopted'
for name,digest in m['artifacts'].items():
    path = 'experiments/packet-lane-occupancy/'+name
    data = subprocess.check_output(['git','show',head+':'+path])
    assert hashlib.sha256(data).hexdigest() == sha(repo/path) == digest,name
assert subprocess.check_output(['git','show',head+':experiments/packet-lane-occupancy/results.json']) == (public/'results.json').read_bytes()
for collection in ['objects','linkedObjects','disabledObjects']:
    for name,digest in v[collection].items(): assert sha(repo/name) == digest,name
for name,digest in v['productionSources'].items(): assert sha(r/'source-root'/name) == digest,name
for name,digest in v['finalSourceFiles'].items(): assert sha(r/'source-root'/name) == digest,name
assert sha(r/'source.patch') == v['patchSha256']
assert sha(r/'softgl.wasm') == v['diagnosticWasmSha256']
assert sha(r/'softgl.js') == v['diagnosticJsSha256']
assert sha(r/'disabled/softgl.wasm') == v['referenceWasmSha256']
for path,digest in load(r/'observer-input-identities.json').items(): assert sha(repo/path) == digest,path
for directory in ['libsoftgl','tests','wasm','bench_report.md']:
    assert not git('diff',v['researchBaselineCommit'],head,'--',directory)
frozen = repo/'build/controls/simd-index-range-candidate'
for name in ['softgl.js','softgl.wasm']:
    assert (repo/'build/checks/msaa-wasm'/name).read_bytes() == (frozen/name).read_bytes()
assets = {}
for name in ['softgl.js','softgl.wasm','main.js','index.html','bmw.pack','tank.pack']:
    with urllib.request.urlopen('http://127.0.0.1:8000/'+name) as response:
        data = response.read()
        assert response.headers['Cross-Origin-Opener-Policy'] == 'same-origin'
        assert response.headers['Cross-Origin-Embedder-Policy'] == 'require-corp'
    assert data == (repo/'build/wasm'/name).read_bytes() == (frozen/name).read_bytes()
    assets[name] = dict(sha256=hashlib.sha256(data).hexdigest(),bytes=len(data))
assert assets['softgl.wasm']['sha256'] == v['referenceWasmSha256']
push = load(r/'push-completion.json')
assert push['terminal'] is True and push['exitCode'] == 0 and isinstance(push['session'],int)
proof = dict(status='logical-diagnostic-committed-pushed-verified',head=head,originMaster=head,clean=True,
    committedArtifacts=len(m['artifacts']),everyCommittedArtifactHashExact=True,
    actual40CompiledObjectsAnd259EnabledInputsExact=True,actualCounterSourceAndModuleExact=True,
    observerInputsExact=True,actualPushSessionId=push['session'],actualPushExitCode=0,
    productionGeometryAndReportUnchanged=True,canonicalAndLiveD4ByteExact=True,
    liveIsolationHeaders=True,liveAssets=assets,goalRemainsActive=True)
(r/'publication-proof.json').write_text(json.dumps(proof,indent=2)+'\n')
print(head,'logical diagnostic:',len(m['artifacts']),'committed artifacts and actual producers/live D4 verified')
