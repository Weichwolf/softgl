"""Verify the actual candidate native cube-call prefix, not saved CPU cycles."""
from pathlib import Path
import hashlib,json,re,struct,sys
r=Path(__file__).resolve().parent;load=lambda p:json.loads(p.read_text());sha=lambda b:hashlib.sha256(b).hexdigest();check=r/'native-check';run=check/'runs/candidate-ms0'
v=load(r/'validation.json');result=load(run/'result.json');native=load(run/'native-code.json')
assert result['wasmSha256']==native['wasmSha256']==v['candidateWasmSha256']
roots={x['function']:x for x in native['representatives'] if x['tier']=='turbofan'}
assert 'sg_packet_sample_cube_vectors' in roots and 'sg_packet_sample_cube_target' in roots
row=roots['sg_packet_sample_cube_target'];receipt=load(run/'selected/sg_packet_sample_cube_target-turbofan.json');text=(run/row['disassemblyFile']).read_text()
assert sha(text.encode())==row['disassemblySha256'];code=bytes.fromhex(receipt['codeHex']);raw=bytes.fromhex(receipt['rawRecordHex'])
assert sha(code)==row['codeSha256'] and sha(raw)==row['recordSha256']
kind,size,stamp=struct.unpack_from('<IIQ',raw);pid,tid,vma,address,n,index=struct.unpack_from('<IIQQQQ',raw,16);end=raw.index(b'\0',56)
assert kind==0 and len(raw)==size and raw[end+1:]==code and n==len(code)
prefix=[]
for line in text.splitlines():
 m=re.fullmatch(r'\s*([0-9a-f]+):\s*((?:[0-9a-f]{2}\s+)+)\s*([^\s]+)(?:\s+(.*))?',line)
 if not m:continue
 addr=int(m.group(1),16);data=bytes.fromhex(m.group(2));op=m.group(3);operand=(m.group(4) or '').split('#',1)[0].strip()
 assert code[addr-address:addr-address+len(data)]==data
 prefix.append(dict(offset=addr-address,mnemonic=op,operands=operand))
 if op=='call':break
assert prefix and prefix[-1]['mnemonic']=='call'
stores=[x for x in prefix if x['mnemonic']=='vmovdqu' and x['operands'].startswith('XMMWORD PTR [') and not re.search(r'\[(?:rbp|rsp)',x['operands'])]
assert len(stores)==0
# The whole first normal-entry prefix is retained, including native stack saves.
native_saves=[x for x in prefix if x['mnemonic'].startswith('vmov') and x['operands'].startswith('XMMWORD PTR [rbp')]
process_path=check/native['captureProcessesFile'];processes=load(process_path)
assert processes['terminal']==dict(exitCode=0,signal=None)
assert any(p['pid']==pid and p['birthTicks']==row['pidBirthTicks'] and any(t['tid']==tid and t['birthTicks']==row['tidBirthTicks'] for t in p['threads']) for s in processes['snapshots'] for p in s['processes'])
proof=dict(candidateWasmSha256=v['candidateWasmSha256'],browserVersion=processes['browserVersion'],targetCodeSha256=row['codeSha256'],targetNativeRegionBytes=row['codeSize'],vectorCoreNativeRegionBytes=roots['sg_packet_sample_cube_vectors']['codeSize'],targetPreFirstCallHeapVectorStores=0,targetPreFirstCallNativeVectorStackStores=len(native_saves),prefix=prefix,captureProcessesSha256=sha(process_path.read_bytes()),scope='Actual selected candidate TurboFan normal-entry prefix. Seven earlier linear-memory stores are absent; native vector stack preservation can remain. perf-prof layout/compaction and profile overhead are diagnostic. No physical traffic, dynamic frequency, saved cycles or speedup claim.')
if '--check' in sys.argv:assert load(r/'native-cube-check.json')==proof
else:(r/'native-cube-check.json').write_text(json.dumps(proof,indent=2)+'\n')
print('PASS: actual candidate native cube core; zero pre-call linear-memory vector stores;',len(native_saves),'explicit native vector stack saves remain')
