"""Verify the closed no-code-change trial without retaining generated binaries."""
from pathlib import Path
import hashlib
import io
import json
import re
import subprocess
import tarfile
import tempfile

r=Path(__file__).resolve().parent
repo=Path.cwd().resolve()
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
m=load(r/'results.json');v=load(r/'validation.json')
actual={str(p.relative_to(r)) for p in r.rglob('*') if p.is_file() and p!=r/'results.json' and '__pycache__' not in p.parts}
assert actual==set(m['artifacts'])
for name,digest in m['artifacts'].items():assert sha(r/name)==digest,name
assert m['status']==v['status']=='rejected-browser-byte-exact'
assert v['candidateWasmSha256']==v['disabledWasmSha256']==v['referenceWasmSha256']==m['candidateWasmSha256']
assert v['jsByteExact'] and v['wasmCodeByteExact'] and v['disabledBuildByteExact']
assert v['candidateJsSha256']==v['disabledJsSha256']
baseline=load(r/'baseline-producer.json')
assert v['referenceWasmSha256']==baseline['referenceWasmSha256']
assert v['candidateJsSha256']==baseline['referenceJsSha256']
by_name=lambda d:{Path(n).name:h for n,h in d.items()}
assert len(v['objects'])==len(v['disabledObjects'])==20
assert by_name(v['objects'])==by_name(v['disabledObjects'])==by_name(baseline['objects'])
assert len(v['linkedObjects'])==v['linkInputCount']==259
comparison=load(r/'object-comparison.json')
assert len(comparison)==20 and all(comparison.values())
commands=load(r/'producer-commands.json')
assert [q['enabled'] for q in commands]==[False,True]
for row in commands:
    assert len(row['compile'])==20
    for cmd in row['compile']:
        assert all(a in cmd for a in ['-std=gnu11','-O2','-msimd128','-msse4.1','-pthread'])
        assert not any(a.startswith('-D') for a in cmd)
    assert '--emit-symbol-map' in row['link']
    assert len((r/('link.rsp' if row['enabled'] else 'disabled/link.rsp')).read_text().splitlines())==259
assert sha(r/'source.patch')==v['patchSha256']
tmp=repo/'build/tmp';tmp.mkdir(parents=True,exist_ok=True)
with tempfile.TemporaryDirectory(dir=tmp) as directory:
    stage=Path(directory)
    command=['git','archive',v['researchBaselineCommit'],'libsoftgl']
    with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(command))) as data:
        data.extractall(stage,filter='data')
    subprocess.run(['git','init','-q'],cwd=stage,check=True)
    for name in v['changedFiles']:assert (stage/name).read_bytes()==(r/'original'/name).read_bytes()
    subprocess.run(['git','apply',str(r/'source.patch')],cwd=stage,check=True)
    for name,digest in v['finalSourceFiles'].items():
        assert sha(stage/name)==digest and (stage/name).read_bytes()==(r/'candidate-source'/name).read_bytes()
    for name,digest in v['productionSources'].items():assert sha(stage/name)==digest,name
ir=load(r/'codegen.json')
assert ir['onlyDifferencesAreSourceIdentityAndNoaliasAttributes']
normalized=[]
for record in ir['records']:
    assert sha(r/record['file'])==record['sha256']
    text=(r/record['file']).read_text()
    text=re.sub(r'; ModuleID = .*\n','',text)
    text=re.sub(r'^source_filename = .*\n','',text,flags=re.M)
    normalized.append(text.replace(' noalias',''))
    assert len(record['roots'])==6
    for name,root in record['roots'].items():
        expected=[False,True,True,True,True] if record['label']=='candidate' else [False]*5
        assert root['noaliasParameters']==expected
assert normalized[0]==normalized[1]
for name in ir['records'][0]['roots']:
    a,b=[row['roots'][name] for row in ir['records']]
    assert (a['staticLoads'],a['staticStores'],a['staticLines'])==(b['staticLoads'],b['staticStores'],b['staticLines'])
native=load(r/'native-codegen.json')
assert not native['objectByteExact'] and not native['textByteExact']
assert native['records'][1]['textBytes']-native['records'][0]['textBytes']==112
for row in native['records']:
    path=r/(row['label']+'-native-rasterizer.asm')
    assert sha(path)==row['disassemblySha256']
    text=path.read_text().split('Disassembly of section .text:\n',1)[1].split('Disassembly of section ',1)[0]
    data=bytearray(row['textBytes']);covered=bytearray(row['textBytes'])
    for match in re.finditer(r'^\s*([0-9a-f]+):\t([0-9a-f ]+)\t',text,re.M):
        offset=int(match[1],16);value=bytes.fromhex(match[2]);end=offset+len(value)
        assert end<=len(data) and not any(covered[offset:end])
        data[offset:end]=value;covered[offset:end]=b'\x01'*len(value)
    assert all(covered) and hashlib.sha256(data).hexdigest()==row['textSha256']
receipt=load(r/'recipe-check/reproduction-receipt.json')
assert receipt['changedSourcesExact'] and receipt['rendererBuildExecuted'] and receipt['allFortyObjectsRebuilt'] and receipt['jsWasmByteExact']
assert not receipt['fullGatesExecuted'] and receipt['notAcceptanceTimings']
fresh=load(r/'recipe-check/validation.json')
assert fresh['finalSourceFiles']==v['finalSourceFiles']
assert fresh['candidateWasmSha256']==v['candidateWasmSha256'] and fresh['candidateJsSha256']==v['candidateJsSha256']
assert all(load(r/'recipe-check/object-comparison.json').values())
assert len(fresh['linkedObjects'])==259
assert v['candidateAdopted'] is False and v['candidateTimingRuns']==0
assert not list(r.glob('*.wasm')) and not list(r.glob('*.o'))
print('PASS:',len(actual),'bound artifacts; exact patch, all20 baseline/candidate object hashes, final JS/WASM identity, complete normalized IR, decoded native .text hashes and fresh forty-object reproduction')
