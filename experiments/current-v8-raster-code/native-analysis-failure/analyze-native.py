"""Recompute static local control flow from selected native disassemblies.

Direct local branches are followed; calls do not traverse callees. Indirect
branches are reported as unresolved. Bytes outside reachable local instructions
are not counted (JIT regions can include metadata, constants and padding).
"""
from pathlib import Path
import collections,hashlib,json,re,sys
r=Path(__file__).resolve().parent;sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest();load=lambda p:json.loads(p.read_text())
rows=[];copies=[];profile_rows=[]
for audit in (1,2):
 for mode in (0,2,4):
  label=f'guarded-audit{audit}-ms{mode}';run=r/'runs'/label
  capture=load(run/'native-code.json');profile=load(run/'profile-summary.json')
  assert profile['observedActiveWorkers']==profile['workerCapacity']==3
  top=[x for x in profile['combinedSelectedFunctions'] if x['name'].startswith(('sg_','_sg_'))]
  profile_rows.append(dict(run=label,samples=mode,activeWorkers=3,functions=top,scope='Cross-thread sampled self durations include inlining, scheduling and blocked locations; not cycles or CPU busy time.'))
  for root in capture['representatives']:
   if root['tier']!='turbofan':continue
   receipt=load(run/'selected'/(root['function']+'-turbofan.json'))
   assembly=run/root['disassemblyFile'];assert sha(assembly)==root['disassemblySha256']
   code=bytes.fromhex(receipt['codeHex']);assert hashlib.sha256(code).hexdigest()==root['codeSha256']
   base=root['codeAddress'];instructions={}
   for line in assembly.read_text().splitlines():
    m=re.fullmatch(r'\s*([0-9a-f]+):\s*((?:[0-9a-f]{2}\s+)+)\s*([^\s]+)(?:\s+(.*))?',line)
    if not m:continue
    addr=int(m.group(1),16);data=bytes.fromhex(m.group(2));mnemonic=m.group(3);operands=(m.group(4) or '').split('#',1)[0].strip()
    assert base<=addr<base+len(code) and code[addr-base:addr-base+len(data)]==data
    instructions[addr]=dict(address=addr,offset=addr-base,size=len(data),mnemonic=mnemonic,operands=operands)
   pending=[base];seen=set();unresolved=[];external=[]
   while pending:
    addr=pending.pop()
    if addr in seen:continue
    assert addr in instructions, (label,root['function'],hex(addr))
    seen.add(addr);x=instructions[addr];mn=x['mnemonic'];operand=x['operands'];next_addr=addr+x['size']
    if mn.startswith('ret') or mn in ('ud2','int3','hlt'):continue
    branch=mn.startswith('j') or mn.startswith('loop')
    if branch:
     target=re.fullmatch(r'(?:0x)?([0-9a-f]+)',operand)
     if target:
      target=int(target.group(1),16)
      if base<=target<base+len(code):pending.append(target)
      else:external.append(dict(offset=x['offset'],mnemonic=mn,target=target))
     else:unresolved.append(dict(offset=x['offset'],mnemonic=mn,operands=operand))
     if mn in ('jmp','jmpq'):continue
    if next_addr<base+len(code):pending.append(next_addr)
   live=[instructions[n] for n in sorted(seen)]
   assert all(x['mnemonic'] not in ('(bad)','.byte') for x in live)
   explicit=[x for x in live if '[' in x['operands'] and x['mnemonic'] not in ('lea','nop','nopl','nopw')]
   native_stack=[x for x in explicit if re.search(r'\[(?:rbp|rsp)(?:[+\]-])',x['operands'])]
   row=dict(run=label,samples=mode,function=root['function'],tier='turbofan',nativeRegionBytes=root['codeSize'],localReachableDecodedSites=len(live),localReachableDecodedBytes=sum(x['size'] for x in live),unresolvedIndirectBranches=unresolved,externalDirectBranches=external,explicitMemoryOperandSites=len(explicit),explicitNativeStackOperandSites=len(native_stack),nativeStackOperandLocations=native_stack,opcodeSites=dict(sorted(collections.Counter(x['mnemonic'] for x in live).items())),codeSha256=root['codeSha256'],disassemblySha256=root['disassemblySha256'])
   rows.append(row)
   if root['function']=='sg_packet_sample_cube_target':
    prefix=[]
    for x in live:
     prefix.append(x)
     if x['mnemonic']=='call':break
    # The local normal-entry prefix has seven SIMD stores into WASM linear
    # memory before the coherent call: four zero vectors plus xyz vectors.
    heap_stores=[x for x in prefix if x['mnemonic']=='vmovdqu' and x['operands'].startswith('XMMWORD PTR [') and not re.search(r'\[(?:rbp|rsp)',x['operands'])]
    assert len(heap_stores)==7
    copies.append(dict(run=label,function=root['function'],preFirstCallHeapVectorStores=7,sourceClearBytes=64,sourceCoordinateBytes=48,logicalStoredBytes=112,instructions=heap_stores,firstCall=prefix[-1],scope='Observed static normal-entry sites and logical source bytes only; not cache transactions or measured dynamic frequency. Call identity is inferred from unchanged source and the matching WASM direct call. Native stack saves remain a separate observation.'))
result=dict(wasmSha256=load(r/'plan.json')['referenceWasmSha256'],roots=rows,profiles=profile_rows,cubeCallPreparation=copies,scope='Static local control-flow sites (unresolved indirect branches explicitly retained), source-level logical byte counts and warmed CDP observations. No spill/cache/cycle attribution, performance ceiling or acceptance FPS claim.')
if '--check' in sys.argv:assert load(r/'analysis.json')==result
else:(r/'analysis.json').write_text(json.dumps(result,indent=2)+'\n')
for row in rows:
 if row['run'].startswith('guarded-audit1'):print(row['run'],row['function'],row['nativeRegionBytes'],row['localReachableDecodedSites'],'native-stack sites',row['explicitNativeStackOperandSites'],'indirect unresolved',len(row['unresolvedIndirectBranches']))
print('PASS: six current profiles, bound native roots and seven pre-call linear-memory vector stores in every captured cube target')
