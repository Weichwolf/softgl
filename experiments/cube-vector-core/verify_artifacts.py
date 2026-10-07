"""Check source/evidence closure and all declared graphics/timing gates."""
from pathlib import Path
import hashlib
import json
import os
import re
import shutil
import subprocess
import sys
import tempfile
r=Path(__file__).resolve().parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
load=lambda p:json.loads(p.read_text())
m=load(r/'results.json');v=load(r/'validation.json')
actual={str(p.relative_to(r)) for p in r.rglob('*') if p.is_file() and p!=r/'results.json' and '__pycache__' not in p.parts}
assert actual==set(m['artifacts'])
for name,digest in m['artifacts'].items():assert sha(r/name)==digest,name
assert m['status'] in ['accepted','rejected']
assert m['candidateWasmSha256']==v['candidateWasmSha256']
assert m['referenceWasmSha256']==v['referenceWasmSha256']
assert m['gateExitCode']==m['timingExitCode']==0
assert v['independentSourcePatchVerified'] and sha(r/'source.patch')==v['patchSha256']
assert len(v['objects'])==20 and len(v['linkedObjects'])==259
comparison=load(r/'object-comparison.json')
assert len(comparison)==20 and [name for name,equal in comparison.items() if not equal]==['rasterizer.c.o']
assert load(r/'native-warnings-comparison.json')['newWarningLines']==[]
repo=r.parents[1];tmp=repo/'build/tmp';tmp.mkdir(parents=True,exist_ok=True)
with tempfile.TemporaryDirectory(dir=tmp) as directory:
    stage=Path(directory)
    for name in v['changedFiles']:
        original=r/'original'/name
        if original.exists():
            target=stage/name;target.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(original,target)
    subprocess.run(['git','apply',str(r/'source.patch')],cwd=stage,check=True)
    for name in v['changedFiles']:
        assert (stage/name).read_bytes()==(r/'candidate-source'/name).read_bytes()
        assert sha(stage/name)==v['finalSourceFiles'][name]
for receipt in v['fullGateReceipts']:assert sha(r/receipt['file'])==receipt['sha256']
for name,count in [('native-full-tests.log',744),('native-full-bench.log',1),('asan-full-tests.log',24)]:
    assert f'100% tests passed, 0 tests failed out of {count}' in (r/name).read_text()
mesa=load(r/'mesa-images.json')
assert mesa['wasmSha256']==v['candidateWasmSha256']
assert len(mesa['images'])==240 and all(x['passed'] for x in mesa['images'])
for samples,name in [(0,'all-tests-ms0-results.json'),(2,'all-tests-msaa-results.json'),(4,'all-tests-msaa4-results.json')]:
    images=load(r/name)
    assert images['passed'] and images['samples']==samples and images['exactImages']==len(images['images'])==234
    frames=load(r/f'frame-equivalence-{samples}.json')
    assert frames['wasmSha256']==v['candidateWasmSha256'] and frames['baselineSha256']==v['referenceWasmSha256']
    assert set(frames['models'])=={'bmw','tank'}
    for model in frames['models'].values():
        assert model['workers']==3 and model['frameHashesEqual']==len(model['rows'])==100
        assert model['representativeFramesByteEqual']==4
contracts=load(r/'wasm-contracts/results.json')
assert contracts['completed']==contracts['planned']==len(contracts['results'])==23
for row in contracts['results']:
    assert row['passed'] and sha(r/row['log'])==row['logSha256']
    assert sha(r/'fixtures'/(row['name']+'.c'))==row['fixtureSha256']
for name in ['native-pixel_packet-run.log','wasm-contracts/pixel_packet-run.log']:
    assert '331447 exact four-pixel sampler comparisons passed' in (r/name).read_text()
    assert '128054 exact four-pixel shader comparisons passed' in (r/name).read_text()
for name in ['native-msaa_store-run.log','wasm-contracts/msaa_store-run.log']:
    text=(r/name).read_text()
    for samples in [0,2,4]:assert f'{samples}x: 98304 exact post-Z stores, 640 DOT3 query-oracle frames and fallback states passed' in text
    assert '262144 exact RGBA quantizations passed' in text
for name in ['native-depth_replay-run.log','wasm-contracts/depth_replay-run.log']:
    text=(r/name).read_text()
    assert 'off capture: 4608 cases' in text and '232 LESS ties' in text
    assert '8192 actual LEQUAL/ALWAYS classification cases exact' in text and '416 LESS ties preserved' in text
    assert text.count('22 actual queued state/sample-plane cases exact')==6 and text.count('18 actual queued state/sample-plane cases exact')==12
for name in ['native-msaa_edge-run.log','wasm-edge-run.log']:
    assert '4480 frames, 62251008 exact sample masks, 12431040 exact coefficient lanes' in (r/name).read_text()
for name in ['native-index-range-run.log','wasm-contracts/index_range-run.log']:
    assert (r/name).read_text().strip()==load(r/'range-oracle.json')['stdout'].strip()
records=load(r/'sampler-opcodes.json')['records']
assert len(records)==17
for row in records:
    assert row['wasmSha256']==v['referenceWasmSha256' if row['label']=='reference' else 'candidateWasmSha256']
    symbol=r/(row['label']+'.symbols');assert sha(symbol)==row['symbolMapSha256']
    symbols={name:int(index) for line in symbol.read_text().splitlines() for index,name in [line.split(':',1)]}
    assert symbols[row['function']]==row['absoluteFunctionIndex']
    assert row['definedFunctionLabel']==row['absoluteFunctionIndex']-row['importFunctionCount']
    export=row['mappingExport'];assert symbols[export['name']]==export['absoluteFunctionIndex']
    assert export['definedFunctionLabel']==export['absoluteFunctionIndex']-row['importFunctionCount']
    body=(r/row['rootFile']).read_text();assert sha(r/row['rootFile'])==row['rootSha256']
    assert body.startswith(' (func $'+str(row['definedFunctionLabel'])+' ')
    for opcode,count in row['staticOpcodeSites'].items():assert len(re.findall(r'\('+re.escape(opcode)+r'(?=\s|\))',body))==count
    selectors=re.findall(r'\(i8x16.shuffle ([0-9 ]+)\n',body)
    for pattern in row['channelShufflePatterns']:assert selectors.count(pattern['pattern'])==pattern['sites']
    assert [x['sites'] for x in row['channelShufflePatterns']]==[0]*4
identities=load(r/'timing-input-identities.json')
for filename in ['wasm_perf.cjs','wasm_quiet_audit.py','compare-all.py','run-timings.py']:
    values=[digest for path,digest in identities.items() if path.endswith('/'+filename)]
    assert values==[sha(r/filename)]
assert 'FOREIGN_CPU_CORES = .10' in (r/'wasm_quiet_audit.py').read_text()
raw=[p for p in (r/'timings').glob('cube-vector-core*-audit-*-pair-*.json') if '.attempt-' not in p.name]
assert len(raw)==18
for p in raw:
    d=load(p);assert d['driverSha256']==sha(r/'wasm_perf.cjs')
    accepted=[]
    for monitor in p.parent.glob(p.stem+'.attempt-*.monitor.json'):
        q=load(monitor);assert q['guardSha256']==sha(r/'wasm_quiet_audit.py')
        assert q['foreignCPUThresholdCores']==.10 and q['settlePolls']==6 and q['pollSeconds']==.5
        assert monitor.with_name(monitor.name.replace('.monitor.json','.log')).exists()
        if not q['unexpectedActivity'] and q['exitCode']==0:accepted.append(q['attempt'])
    assert len(accepted)==1
recipe=load(r/'recipe-check/reproduction-receipt.json')
assert recipe['changedSourcesExact'] and recipe['sourcePatchSha256']==v['patchSha256']
assert not recipe['rendererBuildExecuted'] and not recipe['fullGatesExecuted']
assert load(r/'recipe-check/validation.json')['finalSourceFiles']==v['finalSourceFiles']
subprocess.run([sys.executable,str(r/'analyze-cube-codegen.py'),'--check'],check=True)
subprocess.run([sys.executable,str(r/'verify-native-check.py'),'--check'],check=True)
assert load(r/'native-warnings-comparison.json')['candidateLogSha256']==sha(r/'native-full-build.log')
assert load(r/'decision.json')['analysisSha256']==sha(r/'analysis.json')
assert m['status']==load(r/'decision.json')['status']
assert load(r/'decision.json')['candidateAdopted']==(m['status']=='accepted')
subprocess.run([sys.executable,str(r/'analyze-timings.py'),'--check'],check=True)
print('PASS:',len(actual),'artifacts; exact source patch, native/WASM/image/model/edge gates, bound opcode sites and eighteen paired comparisons')
