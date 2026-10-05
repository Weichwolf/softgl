"""Verify actual committed archive bytes and unchanged production/live assets."""
from pathlib import Path
import hashlib
import json
import subprocess
import urllib.request

repo = Path.cwd().resolve()
root = Path(__file__).resolve().parent
public = repo/'experiments/caller-wait-intervals'
sha = lambda content: hashlib.sha256(content).hexdigest()
head = subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()
assert head == subprocess.check_output(['git','rev-parse','origin/master'],text=True).strip()
assert not subprocess.check_output(['git','status','--porcelain'],text=True).strip()
manifest = json.loads((public/'results.json').read_text())
for filename,digest in manifest['artifacts'].items():
    path = 'experiments/caller-wait-intervals/'+filename
    content = subprocess.check_output(['git','show',head+':'+path])
    assert sha(content) == digest and content == (repo/path).read_bytes(), path
committed = subprocess.check_output(['git','show',head+':experiments/caller-wait-intervals/results.json'])
assert committed == (public/'results.json').read_bytes()
baseline = manifest['researchBaselineCommit']
for path in (repo/'libsoftgl').rglob('*'):
    if path.is_file() and path.suffix in ('.c','.h','.inc'):
        relative = str(path.relative_to(repo))
        assert path.read_bytes() == subprocess.check_output(['git','show',baseline+':'+relative]),relative
assert (repo/'bench_report.md').read_bytes() == subprocess.check_output(['git','show',baseline+':bench_report.md'])
assets = {}
reference = repo/'build/controls/post-depth-common-store-candidate'
for filename in ['softgl.js','softgl.wasm','main.js','index.html','bmw.pack','tank.pack']:
    with urllib.request.urlopen('http://127.0.0.1:8000/'+filename) as response:
        content = response.read()
        assert response.headers['Cross-Origin-Opener-Policy'] == 'same-origin'
        assert response.headers['Cross-Origin-Embedder-Policy'] == 'require-corp'
    assert content == (reference/filename).read_bytes() == (repo/'build/wasm'/filename).read_bytes(),filename
    assets[filename] = sha(content)
assert assets['softgl.wasm'] == manifest['referenceWasmSha256']
push = json.loads((root/'push-completion.json').read_text())
assert push['exitCode'] == 0
proof = dict(status='diagnostic-published-pushed-production-and-report-unchanged',commit=head,
    artifactCount=len(manifest['artifacts']),allManifestFilesCommitted=True,manifestSha256=sha(committed),
    allProductionSourcesUnchanged=True,benchReportUnchanged=True,allSixAssetsHttpByteExact=True,
    liveIsolationHeaders=True,liveAssets=assets,pushSession=push['session'],pushExitCode=push['exitCode'])
(root/'publication-proof.json').write_text(json.dumps(proof,indent=2)+'\n')
print(head,len(manifest['artifacts']),'committed artifact hashes verified; production/report/live6assets unchanged')
