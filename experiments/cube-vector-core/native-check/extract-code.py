"""Extract complete selected JIT_CODE_LOAD records from terminated Chromium files.

Unknown/incomplete suffixes are explicitly recorded, never fabricated. Native
code-load events can report the same shared code in multiple isolates; they do
not count compilations, executed instructions, loads/stores or cycles.
"""
from pathlib import Path
import argparse,hashlib,json,os,re,struct,subprocess
r=Path(__file__).resolve().parent
p=argparse.ArgumentParser(description=__doc__);p.add_argument('--run',required=True);args=p.parse_args()
run=r/'runs'/args.run;result=json.loads((run/'result.json').read_text())
assert result['wasmSha256']==json.loads((r/'plan.json').read_text())['referenceWasmSha256']
symbols={int(i):n for line in (r/'accepted.symbols').read_text().splitlines() for i,n in [line.split(':',1)]}
sha=lambda b:hashlib.sha256(b).hexdigest()
match=re.fullmatch(r'(.*)\.attempt-(\d+)\.pending\.json',Path(result['profile']['path']).name.replace('.profiles.json','.json'))
if args.run.startswith('guarded-'):
 assert match
 attempt=int(match.group(2));capture=run/f'result.attempt-{attempt}.pending'
 monitor=json.loads((run/f'result.attempt-{attempt}.monitor.json').read_text())
 assert monitor['exitCode']==0 and not monitor['unexpectedActivity']
else:capture=run/'result';attempt=None
processes=json.loads((capture/'capture-processes.json').read_text())
assert processes['terminal']==dict(exitCode=0,signal=None)
assert processes['noRendererSourceOrModuleChange']
assert any('--js-flags=--perf-prof --perf-prof-path=' in arg for arg in processes['command'])
# Bound process/worker identities come from live /proc snapshots of this browser's descendants.
identities={};thread_identities={};hz=os.sysconf('SC_CLK_TCK')
for snapshot in processes['snapshots']:
 now=int(snapshot['monotonicNs']);by_pid={x['pid']:x for x in snapshot['processes']}
 assert processes['browserPid'] in by_pid
 for row in by_pid.values():
  parent=row['pid'];seen=set()
  while parent!=processes['browserPid']:
   assert parent not in seen and parent in by_pid
   seen.add(parent);parent=by_pid[parent]['ppid']
  k=(row['pid'],row['birthTicks']);identities.setdefault(row['pid'],set()).add(row['birthTicks'])
  for thread in row['threads']:
   key=(row['pid'],thread['tid']);value=thread_identities.setdefault(key,dict(births=set(),lastSeenNs=0,firstSeenNs=now))
   value['births'].add(thread['birthTicks']);value['lastSeenNs']=max(now,value['lastSeenNs'])
wanted={'sg_raster_triangle_tile_prepared','sg_raster_triangle_depth_capture','sg_raster_triangle_msaa2','sg_raster_triangle_msaa2_capture','sg_raster_triangle_msaa4','sg_raster_triangle_msaa4_capture','sg_packet_sample_cube_coherent','sg_packet_sample_cube_target','sg_packet_sample_cube_vectors'}
files=[];selected=[]
for file in sorted(capture.glob('jit-*.dump')):
 data=file.read_bytes();assert len(data)>=40;file_digest=sha(data)
 magic,version,header_size,machine,pad,pid,timestamp,flags=struct.unpack_from('<IIIIIIQQ',data)
 assert magic==0x4a695444 and version==1 and header_size==40 and machine==62 and flags==0
 assert file.name==f'jit-{pid}.dump' and len(identities[pid])==1
 pos=header_size;counts={};tail=None;records=[]
 while pos<len(data):
  remaining=len(data)-pos
  if remaining<16:
   tail=dict(offset=pos,bytes=remaining,reason='incomplete-record-header',sha256=sha(data[pos:]));break
  kind,size,stamp=struct.unpack_from('<IIQ',data,pos)
  if size<16 or size>remaining:
   tail=dict(offset=pos,bytes=remaining,declaredBytes=size,recordKind=kind,reason='incomplete-record' if size>remaining else 'invalid-record-size',sha256=sha(data[pos:]));break
  assert kind in (0,1,2,3,4),(kind,pos)
  counts[kind]=counts.get(kind,0)+1
  if kind==0:
   assert size>=57
   owner,tid,vma,address,n,index=struct.unpack_from('<IIQQQQ',data,pos+16)
   assert owner==pid
   name_end=data.index(b'\0',pos+56,pos+size);name=data[pos+56:name_end].decode()
   assert name_end+1+n==pos+size
   m=re.fullmatch(r'JS:wasm-function\[(\d+)\]-(\d+)-(liftoff|turbofan)',name)
   if m:
    function=int(m.group(1));assert int(m.group(2))==function and function in symbols
    symbol=symbols[function]
    if symbol in wanted:
     identity=thread_identities.get((pid,tid));assert identity and len(identity['births'])==1
     birth=next(iter(identity['births']));assert int(birth)*1_000_000_000//hz<=stamp<=identity['lastSeenNs']
     code=data[name_end+1:pos+size]
     record=dict(file=str(file.relative_to(r)),fileSha256=file_digest,fileBytes=len(data),recordOffset=pos,recordBytes=size,recordSha256=sha(data[pos:pos+size]),pid=pid,pidBirthTicks=next(iter(identities[pid])),tid=tid,tidBirthTicks=birth,timestampNs=stamp,name=name,functionIndex=function,function=symbol,tier=m.group(3),codeAddress=address,vma=vma,codeSize=n,codeSha256=sha(code),codeIndex=index)
     records.append(record)
     selected.append((record,code,data[pos:pos+size]))
  pos+=size
 files.append(dict(file=str(file.relative_to(r)),sha256=file_digest,bytes=len(data),header=dict(version=version,machine=machine,pid=pid,timestamp=timestamp,flags=flags),recordCounts=counts,completePrefixBytes=pos,incompleteTail=tail,selectedRecords=records))
out=run/'selected';out.mkdir(exist_ok=False)
representatives=[]
for function,tier in sorted({(row['function'],row['tier']) for row,_,_ in selected}):
 rows=[item for item in selected if item[0]['function']==function and item[0]['tier']==tier]
 row,code,raw=rows[0];filename=function+'-'+tier
 binary=out/(filename+'.bin');binary.write_bytes(code)
 command=['objdump','-D','-b','binary','-m','i386:x86-64','-M','intel','--insn-width=16','--adjust-vma='+hex(row['codeAddress']),str(binary)]
 with (out/(filename+'.asm')).open('w') as stream:subprocess.run(command,stdout=stream,stderr=subprocess.STDOUT,check=True)
 # Retain exact selected record as text for byte/disassembly verification without publishing generated binaries.
 receipt=dict(row,rawRecordHex=raw.hex(),codeHex=code.hex(),reportedLoads=len(rows),distinctCodeHashes=sorted({x[0]['codeSha256'] for x in rows}),disassemblerCommand=command,disassemblerVersion=subprocess.check_output(['objdump','--version'],text=True).splitlines()[0],disassemblyFile=str((out/(filename+'.asm')).relative_to(run)),disassemblySha256=sha((out/(filename+'.asm')).read_bytes()))
 (out/(filename+'.json')).write_text(json.dumps(receipt,indent=2)+'\n');representatives.append(receipt)
summary=dict(run=args.run,attempt=attempt,wasmSha256=result['wasmSha256'],symbolMapSha256=sha((r/'accepted.symbols').read_bytes()),resultSha256=sha((run/'result.json').read_bytes()),captureProcessesFile=str((capture/'capture-processes.json').relative_to(r)),captureProcessesSha256=sha((capture/'capture-processes.json').read_bytes()),files=files,representatives=[{k:v for k,v in row.items() if k not in ('codeHex','rawRecordHex')} for row in representatives],scope='Complete selected native code-load records only; incomplete file suffixes retained as explicit metadata. These static code regions may contain alignment/data and are not dynamic instructions, cache costs, spills or acceptance timings. Code-load logging can repeat shared code; load-event counts are not compilation counts. perf-prof disables code-space compaction according to V8 flag definitions, so diagnostic address/layout is not assumed identical to an uninstrumented browser.')
(run/'native-code.json').write_text(json.dumps(summary,indent=2)+'\n')
print(args.run,'complete selected records',len(selected),'representatives',len(representatives),'suffixes',sum(x['incompleteTail'] is not None for x in files))
for row in representatives:
 if row['tier']=='turbofan':print(row['function'],row['codeSize'],'native bytes')
