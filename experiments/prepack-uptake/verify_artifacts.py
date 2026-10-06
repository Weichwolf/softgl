"""Portable retained-evidence verification; no fresh render/CPU ceiling claim."""
from pathlib import Path
import hashlib,importlib.util,json,subprocess,tempfile
r=Path(__file__).resolve().parent;sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest();m=json.loads((r/'results.json').read_text())
files={str(p.relative_to(r)) for p in r.rglob('*') if p.is_file()}-{'results.json'};assert files==set(m['artifacts'])
for name,digest in m['artifacts'].items():assert sha(r/name)==digest,name
v=json.loads((r/'validation.json').read_text());assert v['notAcceptanceTimings'] and v['disabledBuildByteExact'];assert len(v['objects'])==20 and len(v['linkedObjects'])==259
assert m['status']=='diagnostic-only-not-adopted' and m['diagnosticWasmSha256']==v['diagnosticWasmSha256']
assert sha(r/'source.patch')==v['patchSha256']
for name,digest in v['finalSourceFiles'].items():assert sha(r/'diagnostic-source'/name)==digest,name
parent=Path.cwd()/'build/tmp';parent.mkdir(parents=True,exist_ok=True)
with tempfile.TemporaryDirectory(prefix='softgl-prepack-uptake-',dir=parent) as directory:
 work=Path(directory)
 for p in (r/'original').rglob('*'):
  if p.is_file():q=work/p.relative_to(r/'original');q.parent.mkdir(parents=True,exist_ok=True);q.write_bytes(p.read_bytes())
 subprocess.run(['git','apply',str(r/'source.patch')],cwd=work,check=True)
 for name,digest in v['finalSourceFiles'].items():assert sha(work/name)==digest,name
for name,count in [('native-full-tests.log',745),('native-full-bench.log',1),('asan-full-tests.log',25)]:assert f'100% tests passed, 0 tests failed out of {count}' in (r/name).read_text()
for receipt in v['fullGateReceipts']:assert sha(r/receipt['file'])==receipt['sha256']
mesa=json.loads((r/'mesa-images.json').read_text());assert mesa['wasmSha256']==v['diagnosticWasmSha256'];assert len(mesa['images'])==240 and all(x['passed'] for x in mesa['images'])
for samples,name in [(0,'all-tests-ms0-results.json'),(2,'all-tests-msaa-results.json'),(4,'all-tests-msaa4-results.json')]:
 data=json.loads((r/name).read_text());assert data['passed'] and data['samples']==samples and data['exactImages']==len(data['images'])==234
 data=json.loads((r/f'frame-equivalence-{samples}.json').read_text());assert data['wasmSha256']==v['diagnosticWasmSha256'] and data['baselineSha256']==v['referenceWasmSha256']
 assert set(data['models'])=={'bmw','tank'}
 for ob in data['models'].values():assert ob['workers']==3 and ob['frameHashesEqual']==len(ob['rows'])==100 and ob['representativeFramesByteEqual']==4
contracts=json.loads((r/'wasm-contracts/results.json').read_text());assert contracts['completed']==contracts['planned']==len(contracts['results'])==24
for record in contracts['results']:assert record['passed'] and sha(r/record['log'])==record['logSha256'] and sha(r/'fixtures'/(record['name']+'.c'))==record['fixtureSha256']
for name in ['native-msaa_edge-run.log','wasm-edge-run.log']:assert '4480 frames, 62251008 exact sample masks, 12431040 exact coefficient lanes' in (r/name).read_text()
for name in ['native-index-range-run.log','wasm-contracts/index_range-run.log']:assert (r/name).read_text().strip()==json.loads((r/'range-oracle.json').read_text())['stdout'].strip()
for name in ['native-slice_prepack-run.log','wasm-contracts/slice_prepack-run.log']:assert 'actual allocation failure, pending/idle budget ownership' in (r/name).read_text()
for name in ['native-msaa_store-run.log','wasm-contracts/msaa_store-run.log']:
 text=(r/name).read_text()
 for samples in (0,2,4):assert f'{samples}x: 98304 exact post-Z stores, 640 DOT3 query-oracle frames and fallback states passed' in text
 assert '262144 exact RGBA quantizations passed' in text
text=(r/'wasm_perf_producer.cjs').read_text()
for item in reversed(json.loads((r/'observer-replacements.json').read_text())):
 assert text.count(item['new'])==1;text=text.replace(item['new'],item['old'])
assert text==(r/'wasm_perf.cjs').read_text()
ids=json.loads((r/'observer-input-identities.json').read_text())
for path,digest in ids.items():
 name=Path(path).name
 if name in ['wasm_perf.cjs','wasm_quiet_audit.py','wasm_perf_producer.cjs','observer-replacements.json','check-row.py','run-observations.py','observation-launcher.py']:assert sha(r/name)==digest,name
symbols=(r/'diagnostic.symbols').read_text()
for name in ['sg_prepack_diag_reset','sg_prepack_diag_read']:assert ':'+name+'\n' in symbols,name
# Execute the arithmetic verifier without creating archive-local bytecode.
subprocess.run(['python3',str(r/'analyze-observations.py'),'--check'],check=True)
completion=json.loads((r/'process-completion.json').read_text());assert completion['gateExitCode']==completion['finalizerExitCode']==completion['observationExitCode']==0
print(f'PASS: {len(files)} hashed artifacts, reconstructed source, observer reversibility, native745+Bench1/ASan25/WASM24 receipts and1200 frame partitions verified; diagnostic never adopted.')
