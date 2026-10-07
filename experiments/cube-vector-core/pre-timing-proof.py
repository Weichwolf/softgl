from pathlib import Path
import hashlib,json,subprocess,urllib.request
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;v=json.loads((r/'validation.json').read_text());sha=lambda b:hashlib.sha256(b).hexdigest()
assert subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()==v['researchBaselineCommit']
assert not subprocess.check_output(['git','status','--porcelain'],text=True).strip()
for name,digest in v['finalSourceFiles'].items():assert sha((r/'source-root'/name).read_bytes())==digest
for name,digest in v['productionSources'].items():assert sha((r/'source-root'/name).read_bytes())==digest
assert sha((r/'source.patch').read_bytes())==v['patchSha256']
reference=repo/'build/controls/simd-index-range-candidate';frozen=repo/'build/controls/cube-vector-core-candidate'
assert sha((frozen/'softgl.wasm').read_bytes())==v['candidateWasmSha256']
assert sha((reference/'softgl.wasm').read_bytes())==v['referenceWasmSha256']
assets={}
for name in ['softgl.js','softgl.wasm','index.html','main.js','bmw.pack','tank.pack']:
 with urllib.request.urlopen('http://127.0.0.1:8000/'+name) as response:
  data=response.read();assert response.headers['Cross-Origin-Opener-Policy']=='same-origin' and response.headers['Cross-Origin-Embedder-Policy']=='require-corp'
 assert data==(reference/name).read_bytes()==(repo/'build/wasm'/name).read_bytes(),name
 assets[name]=dict(bytes=len(data),sha256=sha(data))
(r/'pre-timing-proof.json').write_text(json.dumps(dict(status='source-and-private-producer-bound-live-reference-preserved',head=v['researchBaselineCommit'],liveAssets=assets,candidateWasmSha256=v['candidateWasmSha256'],referenceWasmSha256=v['referenceWasmSha256'],goalRemainsActive=True),indent=2)+'\n')
print('Private candidate bound; accepted D4/live six assets byte exact with isolation headers')
