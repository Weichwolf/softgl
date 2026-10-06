"""Verify actual committed/pushed bytes, private JIT records and live D4."""
from pathlib import Path
import hashlib,json,subprocess,urllib.request
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve();public=repo/'experiments/current-v8-raster-code';load=lambda p:json.loads(p.read_text());sha=lambda b:hashlib.sha256(b).hexdigest();git=lambda *a:subprocess.check_output(['git',*a],text=True).strip()
head=git('rev-parse','HEAD');assert head==git('rev-parse','origin/master') and not git('status','--porcelain')
m=load(public/'results.json');plan=load(r/'plan.json')
for name,digest in m['artifacts'].items():
 data=subprocess.check_output(['git','show',head+':experiments/current-v8-raster-code/'+name]);assert sha(data)==digest and data==(public/name).read_bytes()
assert subprocess.check_output(['git','show',head+':experiments/current-v8-raster-code/results.json'])==(public/'results.json').read_bytes()
assert not git('diff',plan['baselineCommit'],head,'--','libsoftgl','tests','wasm','bench_report.md')
v=load(r/'baseline-fidelity.json')
for name,digest in v['productionSources'].items():assert sha((repo/name).read_bytes())==digest
for coll in ['objects','linkedObjects']:
 for name,digest in v[coll].items():assert sha((repo/name).read_bytes())==digest
assert len(v['objects'])==20 and len(v['linkedObjects'])==259
native_records=0;file_hashes=0
for audit in (1,2):
 for mode in (0,2,4):
  run=r/'runs'/f'guarded-audit{audit}-ms{mode}';native=load(run/'native-code.json');actual={}
  for f in native['files']:
   data=(r/f['file']).read_bytes();assert sha(data)==f['sha256'];actual[f['file']]=data;file_hashes+=1
  for row in native['representatives']:
   receipt=load(run/'selected'/(row['function']+'-'+row['tier']+'.json'));raw=bytes.fromhex(receipt['rawRecordHex'])
   data=actual[row['file']];assert data[row['recordOffset']:row['recordOffset']+row['recordBytes']]==raw
   native_records+=1
 for mode in (0,2,4):
  assert load(r/'runs'/f'guarded-audit{audit}-ms{mode}'/'result.json')['wasmSha256']==plan['referenceWasmSha256']
frozen=repo/'build/controls/simd-index-range-candidate'
for name in ['softgl.js','softgl.wasm']:assert (repo/'build/checks/msaa-wasm'/name).read_bytes()==(frozen/name).read_bytes()
assets={}
for name in ['softgl.js','softgl.wasm','main.js','index.html','bmw.pack','tank.pack']:
 with urllib.request.urlopen('http://127.0.0.1:8000/'+name) as response:
  data=response.read();assert response.headers['Cross-Origin-Opener-Policy']=='same-origin' and response.headers['Cross-Origin-Embedder-Policy']=='require-corp'
 assert data==(frozen/name).read_bytes()==(repo/'build/wasm'/name).read_bytes();assets[name]=dict(bytes=len(data),sha256=sha(data))
assert assets['softgl.wasm']['sha256']==plan['referenceWasmSha256']
push=load(r/'push-completion.json');assert push['terminal'] and push['exitCode']==0
proof=dict(status='diagnostic-committed-pushed-private-records-and-live-D4-verified',head=head,originMaster=head,clean=True,artifacts=len(m['artifacts']),actualPrivateJitFiles=file_hashes,actualPrivateSelectedNativeRecords=native_records,actualProducerObjects=20,actualLinkInputs=259,actualPushSession=push['session'],actualPushExitCode=0,sourceAndReportUnchanged=True,liveAssets=assets,goalRemainsActive=True)
(r/'publication-proof.json').write_text(json.dumps(proof,indent=2)+'\n');print(head,len(m['artifacts']),'committed artifacts,',native_records,'private native records and live D4 exact')
