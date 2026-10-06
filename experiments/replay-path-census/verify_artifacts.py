"""Portable archive closure, source reconstruction and observation arithmetic.

Checks retained evidence; does not rebuild modules or rerun rendering tests.
"""
from pathlib import Path
import json,hashlib,tempfile,subprocess,math,statistics
r=Path(__file__).resolve().parent;sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
m=json.loads((r/'results.json').read_text());files={str(p.relative_to(r)) for p in r.rglob('*') if p.is_file()}-{'results.json'};assert files==set(m['artifacts'])
for fn,digest in m['artifacts'].items():assert sha(r/fn)==digest,fn
ownership=json.loads((r/'ownership-audit.json').read_text())
assert sha(r/'original/libsoftgl/src/workers_queue_raw.inc')==ownership['queuePublication']['sourceSha256']
assert sha(r/'original/libsoftgl/src/workers.c')==ownership['asyncPublication']['sourceSha256']
queue_lines=(r/'original/libsoftgl/src/workers_queue_raw.inc').read_text().splitlines()
assert 'sg_worker_bin tmp = p->bins[i];' in queue_lines[ownership['queuePublication']['line']-1]
worker_lines=(r/'original/libsoftgl/src/workers.c').read_text().splitlines()
for line in ownership['asyncPublication']['lines']:assert 'sg_worker_bin tmp = p->bins[i];' in worker_lines[line-1]
identity=json.loads((r/'disabled-identity.json').read_text());assert identity['comparedActualBytes']
assert identity['disabledWorkerObjectSha256']==identity['referenceWorkerObjectSha256']
for pair in identity['artifacts']:assert pair['exact'] and pair['disabledSha256']==pair['referenceSha256']
v=json.loads((r/'validation.json').read_text());assert v['disabledBuildByteExact'] and len(v['objects'])==20 and len(v['linkedObjects'])==259 and v['changedLibraryObjects']==['workers.c.o']
assert sha(r/'source.patch')==v['patchSha256'];parent=Path.cwd()/'build/tmp';parent.mkdir(parents=True,exist_ok=True)
with tempfile.TemporaryDirectory(prefix='replay-census-archive-',dir=parent) as directory:
 work=Path(directory);(work/'libsoftgl/src').mkdir(parents=True);(work/'libsoftgl/src/workers.c').write_bytes((r/'original/libsoftgl/src/workers.c').read_bytes())
 subprocess.run(['git','apply',str(r/'source.patch')],cwd=work,check=True)
 for fn,digest in v['finalSourceFiles'].items():assert sha(work/fn)==sha(r/'candidate-source'/fn)==digest,fn
for fn,n in [('native-full-tests.log',744),('native-full-bench.log',1),('asan-full-tests.log',24)]:assert f'100% tests passed, 0 tests failed out of {n}' in (r/fn).read_text()
for receipt in v['fullGateReceipts']:assert sha(r/receipt['file'])==receipt['sha256']
mesa=json.loads((r/'mesa-images.json').read_text());assert mesa['wasmSha256']==v['diagnosticWasmSha256'] and len(mesa['images'])==240 and all(x['passed'] for x in mesa['images'])
for mode,fn in [(0,'all-tests-ms0-results.json'),(2,'all-tests-msaa-results.json'),(4,'all-tests-msaa4-results.json')]:
 d=json.loads((r/fn).read_text());assert d['passed'] and d['samples']==mode and d['exactImages']==len(d['images'])==234
 d=json.loads((r/f'frame-equivalence-{mode}.json').read_text());assert d['wasmSha256']==v['diagnosticWasmSha256'] and d['baselineSha256']==v['referenceWasmSha256'] and set(d['models'])=={'bmw','tank'}
 for model in d['models'].values():assert model['workers']==3 and model['frameHashesEqual']==len(model['rows'])==100 and model['representativeFramesByteEqual']==4
contracts=json.loads((r/'wasm-contracts/results.json').read_text());assert contracts['completed']==contracts['planned']==len(contracts['results'])==23
for c in contracts['results']:assert c['passed'] and sha(r/c['log'])==c['logSha256'] and sha(r/'fixtures'/(c['name']+'.c'))==c['fixtureSha256']
for fn in ['native-index_range-run.log','wasm-contracts/index_range-run.log']:assert (r/fn).read_text().strip()==json.loads((r/'range-oracle.json').read_text())['stdout'].strip()
for fn in ['native-msaa_edge-run.log','wasm-edge-run.log']:assert '4480 frames, 62251008 exact sample masks, 12431040 exact coefficient lanes' in (r/fn).read_text()
original=(r/'wasm_perf.cjs').read_text();restored=(r/'wasm_perf_replay.cjs').read_text()
for e in reversed(json.loads((r/'observer-replacements.json').read_text())):assert restored.count(e['new'])==1;restored=restored.replace(e['new'],e['old'])
assert restored==original
# Execute the independent raw analyzer against a scratch copy to avoid mutating
# the published archive; copied inputs contain no generated modules.
with tempfile.TemporaryDirectory(prefix='replay-census-analysis-',dir=parent) as directory:
 work=Path(directory)
 for fn in ['analyze-observations.py','validation.json','analysis.json']:(work/fn).write_bytes((r/fn).read_bytes())
 import shutil
 shutil.copytree(r/'runs',work/'runs')
 subprocess.run(['python3',str(work/'analyze-observations.py'),'--check'],check=True)
completion=json.loads((r/'process-completion.json').read_text());assert completion['gateExitCode']==completion['finalizerExitCode']==completion['observationExitCode']==0
print(f'PASS: {len(files)} bound artifacts, two-file diagnostic patch, reversible observer, disabled D4 identity receipts, native744+Bench1/ASan24/WASM23 and1200 checked scene frames. No gain/ceiling claim.')
