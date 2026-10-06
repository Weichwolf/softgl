"""Portable checksum closure, patch reconstruction and raw paired timing verifier.

This verifies archived evidence. It does not execute rendering/browser tests,
rebuild WASM, establish a CPU ceiling, or authenticate recorded measurements.
"""
from pathlib import Path
import hashlib, json, math, statistics, tempfile, subprocess, re
r=Path(__file__).resolve().parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
manifest=json.loads((r/'results.json').read_text())
files={str(p.relative_to(r)) for p in r.rglob('*') if p.is_file()}-{'results.json'}
assert files==set(manifest['artifacts']), 'Artifact closure differs'
for fn,digest in manifest['artifacts'].items():assert sha(r/fn)==digest,fn
v=json.loads((r/'validation.json').read_text())
assert len(v['objects'])==20 and len(v['linkedObjects'])==259
assert v['changedLibraryObjects']==['workers.c.o']
assert sha(r/'source.patch')==v['patchSha256']
for fn,digest in v['finalSourceFiles'].items():assert sha(r/'candidate-source'/fn)==digest,fn
work_parent = Path.cwd()/'build/tmp'
work_parent.mkdir(parents=True, exist_ok=True)
with tempfile.TemporaryDirectory(prefix='softgl-visibility-archive-', dir=work_parent) as directory:
 work=Path(directory)
 for p in (r/'original').rglob('*'):
  if p.is_file():
   target=work/p.relative_to(r/'original');target.parent.mkdir(parents=True,exist_ok=True);target.write_bytes(p.read_bytes())
 subprocess.run(['git','apply',str(r/'source.patch')],cwd=work,check=True)
 for fn,digest in v['finalSourceFiles'].items():assert sha(work/fn)==digest,fn
for fn,count in [('native-full-tests.log',745),('native-full-bench.log',1),('asan-full-tests.log',25)]:
 assert f'100% tests passed, 0 tests failed out of {count}' in (r/fn).read_text()
for receipt in v['fullGateReceipts']:assert sha(r/receipt['file'])==receipt['sha256']
mesa=json.loads((r/'mesa-images.json').read_text());assert mesa['wasmSha256']==v['candidateWasmSha256'];assert len(mesa['images'])==240 and all(x['passed'] for x in mesa['images'])
for mode,fn in [(0,'all-tests-ms0-results.json'),(2,'all-tests-msaa-results.json'),(4,'all-tests-msaa4-results.json')]:
 data=json.loads((r/fn).read_text());assert data['passed'] and data['samples']==mode and data['exactImages']==len(data['images'])==234
 data=json.loads((r/f'frame-equivalence-{mode}.json').read_text());assert data['wasmSha256']==v['candidateWasmSha256'] and data['baselineSha256']==v['referenceWasmSha256']
 assert set(data['models'])=={'bmw','tank'}
 for model in data['models'].values():assert model['workers']==3 and model['frameHashesEqual']==len(model['rows'])==100 and model['representativeFramesByteEqual']==4
contracts=json.loads((r/'wasm-contracts/results.json').read_text());assert contracts['planned']==contracts['completed']==len(contracts['results'])==24
for c in contracts['results']:
 assert c['passed'] and sha(r/c['log'])==c['logSha256'];assert sha(r/'fixtures'/(c['name']+'.c'))==c['fixtureSha256']
for fn in ['native-visibility_copy-run.log','wasm-contracts/visibility_copy-run.log']:
 assert (r/fn).read_text().strip()==json.loads((r/'visibility-oracle.json').read_text())['stdout'].strip()
for fn in ['native-index-range-run.log','wasm-contracts/index_range-run.log']:
 assert (r/fn).read_text().strip()==json.loads((r/'range-oracle.json').read_text())['stdout'].strip()
for fn in ['native-msaa_edge-run.log','wasm-edge-run.log']:
 assert '4480 frames, 62251008 exact sample masks, 12431040 exact coefficient lanes' in (r/fn).read_text()
# Retain and check the successful pre-correction gates, including the mismatch.
prior=r/'fixture-before-sequencing'
old=json.loads((prior/'validation.json').read_text())
assert sha(prior/'visibility_copy.c')==old['finalSourceFiles']['tests/visibility_copy.c']
assert sha(prior/'source.patch')==old['patchSha256']
for fn,count in [('native-full-tests.log',745),('native-full-bench.log',1),('asan-full-tests.log',25)]:
 assert f'100% tests passed, 0 tests failed out of {count}' in (prior/fn).read_text()
old_contracts=json.loads((prior/'wasm-contracts/results.json').read_text())
assert old_contracts['completed']==old_contracts['planned']==len(old_contracts['results'])==24
for c in old_contracts['results']:
 assert c['passed'] and sha(prior/c['log'])==c['logSha256']
old_native=(prior/'native-visibility_copy-run.log').read_text()
old_wasm=(prior/'wasm-contracts/visibility_copy-run.log').read_text()
assert old_native.strip()==json.loads((prior/'visibility-oracle.json').read_text())['stdout'].strip()
assert '115498940 input records, 69469182 exact' in old_native
assert '115445691 input records, 69442243 exact' in old_wasm
assert old_native!=old_wasm
assert json.loads((prior/'gate-completion.json').read_text())['exitCode']==0
assert old['candidateWasmSha256']==v['candidateWasmSha256']

# Recount the archived actual draw-root disassemblies independently.
ops=json.loads((r/'opcodes.json').read_text())
for record in ops['records']:
 assert record['wasmSha256']==v[record['label']+'WasmSha256']
 assert sha(r/record['rootFile'])==record['rootSha256']
 body=(r/record['rootFile']).read_text()
 for opcode,count in record['opcodes'].items():
  assert len(re.findall(r'\('+re.escape(opcode)+r'(?:\s|\))',body))==count
 symbols=r/(record['label']+'.symbols')
 assert sha(symbols)==record['symbolMapSha256']
codegen=json.loads((r/'codegen-comparison.json').read_text())
assert codegen['referenceWasmSha256']==v['referenceWasmSha256'] and codegen['candidateWasmSha256']==v['candidateWasmSha256']
assert len(codegen['roots'])==18 and sum(x['bodyBytesExact'] for x in codegen['roots'])==17
for name in ['reference','candidate']:
 data=json.loads((r/(name+'-codegen.json')).read_text())
 assert data['wasmSha256']==v[name+'WasmSha256']

# Recompute every pair directly, including two independent all-mode audits.
analysis=json.loads((r/'analysis.json').read_text());records=[];audits=[];attempt_count=0
for mode in (0,2,4):
 label='visibility-byte-select' if mode==4 else f'visibility-byte-select-ms{mode}'
 for audit in (1,2):
  pairs=[]
  for pair in (1,2,3):
   fn=f'{label}-audit-{audit}-pair-{pair}.json'; data=json.loads((r/'timings'/fn).read_text())
   assert data['wasmSha256']==v['candidateWasmSha256'] and data['referenceWasmSha256']==v['referenceWasmSha256']
   assert data['options']['rounds']==2 and data['options']['warmup']==80 and data['options']['frames']==100
   assert data['metadata']['width']==640 and data['metadata']['height']==360 and data['metadata']['crossOriginIsolated']
   bench=data['benchmarks'];assert bench['workerCounts']=={'candidate':3,'reference':3};assert bench['samples']==mode and bench['resolvePerFrame'];assert bench['protocol']=='page crossover AB/BA, two-round geometric pairs'
   assert {scene['name'] for scene in bench['scenes']}=={'bmw','tank'}
   assert data['modelAssets']['candidatePackSha256']==data['modelAssets']['referencePackSha256']
   rows={}
   for scene in bench['scenes']:
    c=scene['samples'];b=scene['reference']['samples'];assert len(c)==len(b)==2 and all(math.isfinite(x) and x>0 for x in c+b)
    ratio=math.sqrt(c[0]/b[0]*c[1]/b[1]);assert math.isclose(ratio,scene['medianRatio'],rel_tol=1e-12)
    rows[scene['name']]=dict(ratio=ratio,candidateFrameMs=statistics.geometric_mean(c),referenceFrameMs=statistics.geometric_mean(b))
   monitors=[json.loads(p.read_text()) for p in sorted((r/'timings').glob(Path(fn).stem+'.attempt-*.monitor.json'))];assert monitors
   passed=[m for m in monitors if m['exitCode']==0 and not m['unexpectedActivity']];assert passed and all(m['foreignCPUThresholdCores']==.10 for m in passed);attempt_count+=len(monitors)
   records.append(dict(samples=mode,audit=audit,pair=pair,file=fn,scenes=rows));pairs.append(rows)
  for scene in ('bmw','tank'):
   ratio=statistics.geometric_mean(p[scene]['ratio'] for p in pairs)
   audits.append(dict(samples=mode,audit=audit,scene=scene,ratio=ratio,changePercent=100*(ratio-1),candidateFrameMs=statistics.geometric_mean(p[scene]['candidateFrameMs'] for p in pairs),referenceFrameMs=statistics.geometric_mean(p[scene]['referenceFrameMs'] for p in pairs)))
assert records==analysis['records'] and audits==analysis['audits']
for row in analysis['summary']:
 relevant=[x['scenes'][row['scene']]['ratio'] for x in records if x['samples']==row['samples']]
 changes=[x['changePercent'] for x in audits if x['scene']==row['scene'] and x['samples']==row['samples']]
 assert row['ratios']==relevant and row['auditChangesPercent']==changes
 assert row['faster']==sum(x<1 for x in relevant) and row['slower']==sum(x>1 for x in relevant) and row['equal']==sum(x==1 for x in relevant)
decision=json.loads((r/'decision.json').read_text());assert manifest['status']==decision['status'] in ('accepted','rejected')
completion=json.loads((r/'process-completion.json').read_text());assert completion['gateExitCode']==completion['finalizerExitCode']==completion['timingExitCode']==0
print(f'PASS: {len(files)} bound artifacts, exact source patch, native745+Bench1/ASan25/WASM24 and all-mode image receipts, 18 raw pairs/{attempt_count} guard attempts independently verified. Decision: {decision["status"]}.')
