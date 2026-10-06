"""Verify retained native/profile evidence; no fresh browser/performance claim."""
from pathlib import Path
import hashlib,json,os,re,struct,subprocess,sys,tempfile
r=Path(__file__).resolve().parent;repo=Path.cwd().resolve();load=lambda p:json.loads(p.read_text());sha=lambda b:hashlib.sha256(b).hexdigest()
m=load(r/'results.json');plan=load(r/'plan.json');actual={str(p.relative_to(r)) for p in r.rglob('*') if p.is_file() and p!=r/'results.json' and '__pycache__' not in p.parts}
assert set(m['artifacts'])==actual
for name,digest in m['artifacts'].items():assert sha((r/name).read_bytes())==digest,name
assert m['diagnosticOnly'] and not m['candidateAdopted']
assert load(r/'process-completion.json')==dict(captureStatus='terminal',captureExitCode=0,plannedCaptures=6)
identities=load(r/'input-identities.json')
assert next(d for n,d in identities.items() if n.endswith('/tools/wasm_perf.cjs'))==sha((r/'original-wasm_perf.cjs').read_bytes())
assert next(d for n,d in identities.items() if n.endswith('/simd-index-range-candidate/softgl.wasm'))==plan['referenceWasmSha256']
assert next(d for n,d in identities.items() if n.endswith('/current-v8-raster-code/wasm_perf_jit.cjs'))==sha((r/'wasm_perf_jit.cjs').read_bytes())
assert sha((r/'accepted.symbols').read_bytes())==next(d for n,d in identities.items() if n.endswith('/simd-index-range/softgl.js.symbols'))
assert load(r/'baseline-fidelity.json')['candidateWasmSha256']==plan['referenceWasmSha256']
assert load(r/'baseline-fidelity.json')['regressions']==dict(native=744,benchmark=1,asanUbsan=24,mesaImages=240,exactImagesEachMode=234,modelHashesEachModeEachModel=100,modelRawFramesEachModeEachModel=4,wasmContracts=23,offCaptureCasesEachEngine=4608,msaaCaptureCasesEachEngine=8192,queuedApiCasesEachEngine=348,postDepthStoresEachModeEachEngine=98304,actualDot3QueryScenesEachModeEachEngine=640,quantizationsEachEngine=262144,indexRangeCasesEachEngine=1007307,indexRangeItemsEachEngine=182312387)
for path in (r/'source-snapshot').rglob('*'):
 if path.is_file():
  name=str(path.relative_to(r/'source-snapshot'))
  assert sha(path.read_bytes())==load(r/'baseline-fidelity.json')['productionSources'][name]
recipe=load(r/'recipe-check/reproduction-receipt.json')
assert recipe['unchangedD4Verified'] and recipe['chromiumBinaryVerified'] and recipe['sourceObserverPrepared']
assert not recipe['guardedCapturesExecuted'] and not recipe['fullRendererRegressionsExecuted']
symbols={int(i):n for line in (r/'accepted.symbols').read_text().splitlines() for i,n in [line.split(':',1)]}
all_functions=set();captures=0;tmp=repo/'build/tmp';tmp.mkdir(parents=True,exist_ok=True)
with tempfile.TemporaryDirectory(dir=tmp) as directory:
 stage=Path(directory)
 for audit in (1,2):
  for mode in (0,2,4):
   run=r/'runs'/f'guarded-audit{audit}-ms{mode}';data=load(run/'result.json');native=load(run/'native-code.json');summary=load(run/'profile-summary.json')
   assert data['wasmSha256']==native['wasmSha256']==summary['wasmSha256']==plan['referenceWasmSha256']
   assert data['driverSha256']==sha((r/'wasm_perf_jit.cjs').read_bytes())
   assert data['options']['frames']==240 and data['options']['warmup']==80 and data['options']['rounds']==1 and data['options']['samples']==mode
   assert data['metadata']['width']==640 and data['metadata']['height']==360 and data['metadata']['crossOriginIsolated']
   assert data['benchmarks']['resolvePerFrame'] and data['benchmarks']['workerCounts']==dict(candidate=3)
   assert {x['name'] for x in data['benchmarks']['scenes']}=={'bmw','tank'}
   assert data['profile']['targets']==9 and data['profile']['intervalUs']==1000 and data['profile']['preparation']==dict(warmup=80,frames=240,workers=3)
   attempt=native['attempt'];monitor=load(run/f'result.attempt-{attempt}.monitor.json');assert monitor['exitCode']==0 and not monitor['unexpectedActivity']
   assert monitor['guardSha256']==sha((r/'wasm_quiet_audit.py').read_bytes()) and monitor['foreignCPUThresholdCores']==.10
   assert monitor['settlePolls']==6 and monitor['pollSeconds']==.5
   process_path=r/native['captureProcessesFile'];assert sha(process_path.read_bytes())==native['captureProcessesSha256'];procs=load(process_path)
   assert procs['terminal']==dict(exitCode=0,signal=None)
   births={};threads={}
   for snap in procs['snapshots']:
    by_pid={x['pid']:x for x in snap['processes']};assert procs['browserPid'] in by_pid
    for x in by_pid.values():
     parent=x['pid'];seen=set()
     while parent!=procs['browserPid']:
      assert parent not in seen and parent in by_pid;seen.add(parent);parent=by_pid[parent]['ppid']
     births.setdefault(x['pid'],set()).add(x['birthTicks'])
     for t in x['threads']:
      threads.setdefault((x['pid'],t['tid']),set()).add(t['birthTicks'])
   for f in native['files']:
    assert f['header']['machine']==62 and f['header']['version']==1 and f['header']['flags']==0
    assert f['completePrefixBytes']<=f['bytes']
    if f['incompleteTail']:assert f['incompleteTail']['offset']==f['completePrefixBytes'] and f['incompleteTail']['bytes']==f['bytes']-f['completePrefixBytes']
   for row in native['representatives']:
    name=row['function'];all_functions.add(name);receipt=load(run/'selected'/(name+'-'+row['tier']+'.json'))
    raw=bytes.fromhex(receipt['rawRecordHex']);code=bytes.fromhex(receipt['codeHex'])
    kind,size,stamp=struct.unpack_from('<IIQ',raw);pid,tid,vma,addr,n,index=struct.unpack_from('<IIQQQQ',raw,16);end=raw.index(b'\0',56)
    assert kind==0 and size==len(raw)==row['recordBytes'] and stamp==row['timestampNs']
    assert raw[56:end].decode()==row['name'] and raw[end+1:]==code and n==len(code)==row['codeSize']
    assert (pid,tid,vma,addr,index)==(row['pid'],row['tid'],row['vma'],row['codeAddress'],row['codeIndex'])
    assert births[pid]=={row['pidBirthTicks']} and threads[pid,tid]=={row['tidBirthTicks']}
    assert int(row['tidBirthTicks'])*1_000_000_000//os.sysconf('SC_CLK_TCK')<=stamp
    assert any(int(s['monotonicNs'])>=stamp for s in procs['snapshots'] if any(x['pid']==pid and any(t['tid']==tid for t in x['threads']) for x in s['processes']))
    assert row['name']==f"JS:wasm-function[{row['functionIndex']}]-{row['functionIndex']}-{row['tier']}"
    assert symbols[row['functionIndex']]==name and sha(raw)==row['recordSha256'] and sha(code)==row['codeSha256']
    f=next(x for x in native['files'] if x['file']==row['file']);assert f['sha256']==row['fileSha256'] and row['recordOffset']+size<=f['completePrefixBytes']
    assert any(x['recordSha256']==row['recordSha256'] for x in f['selectedRecords'])
    asm=run/row['disassemblyFile'];assert sha(asm.read_bytes())==row['disassemblySha256']
    binary=stage/'code.bin';binary.write_bytes(code)
    output=subprocess.check_output(['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','--insn-width=16','--adjust-vma='+hex(addr),str(binary)],text=True)
    normalize=lambda s:re.sub(r'^.*:     file format binary$', '<binary>:     file format binary',s,flags=re.M)
    assert normalize(output)==normalize(asm.read_text())
   profile=r/data['profile']['path'].split('/build/diagnostics/current-v8-raster-code/',1)[1]
   assert sha(profile.read_bytes())==summary['sourceProfileSha256'] and sha((run/'result.json').read_bytes())==summary['sourceResultSha256']
   output=stage/'profile-summary.json'
   subprocess.run([sys.executable,str(repo/'tools/wasm_profile_summary.py'),'--result',str(run/'result.json'),'--profile',str(profile),'--wasm',str(repo/'build/controls/simd-index-range-candidate/softgl.wasm'),'--symbols',str(r/'accepted.symbols'),'--output',str(output)],check=True,stdout=subprocess.DEVNULL)
   assert output.read_bytes()==(run/'profile-summary.json').read_bytes();captures+=1
assert captures==6
assert all_functions=={'sg_raster_triangle_tile_prepared','sg_raster_triangle_depth_capture','sg_raster_triangle_msaa2','sg_raster_triangle_msaa2_capture','sg_raster_triangle_msaa4','sg_raster_triangle_msaa4_capture','sg_packet_sample_cube_coherent','sg_packet_sample_cube_target'}
assert load(r/'preparation-failure/failure.json')['exitCode']==1
assert load(r/'native-analysis-failure/failure.json')['exitCode']==1
subprocess.run([sys.executable,str(r/'analyze-native.py'),'--check'],check=True)
print('PASS:',len(actual),'closed artifacts; six actual guarded native/profile captures, complete selected records, live PID/TID births, regenerated disassembly and profile summaries. No fresh browser execution or speedup claim.')
