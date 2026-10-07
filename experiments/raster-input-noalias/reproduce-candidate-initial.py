"""Reconstruct the fixed qualifier trial; optionally rebuild all forty WASM objects."""
from pathlib import Path
import argparse
import hashlib
import io
import json
import re
import shutil
import subprocess
import sys
import tarfile

archive = Path(__file__).resolve().parent
repo = Path.cwd().resolve()
p = argparse.ArgumentParser(description=__doc__)
p.add_argument('--work', default='build/diagnostics/raster-input-noalias-reproduction')
p.add_argument('--build', action='store_true')
args = p.parse_args()
work = (repo/args.work).resolve()
if work.parent != (repo/'build/diagnostics').resolve() or not re.fullmatch(r'[a-zA-Z0-9_-]+',work.name):
    p.error('--work must be a new direct child of build/diagnostics/')
if work.exists() or any((repo/'build/controls'/(work.name+suffix)).exists() for suffix in ['-candidate','-disabled']):
    p.error('Work/control already exists; choose a fresh name')
v = json.loads((archive/'validation.json').read_text())
work.mkdir(parents=True)
baseline = work/'baseline-source'
baseline.mkdir()
cmd = ['git','archive',v['researchBaselineCommit'],'CMakeLists.txt','libsoftgl','tests','tools','wasm']
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(cmd))) as data:
    data.extractall(baseline,filter='data')
source = work/'source-root'
shutil.copytree(baseline,source)
shutil.copy2(archive/'source.patch',work/'source.patch')
subprocess.run(['git','apply',str(work/'source.patch')],cwd=source,check=True)
sha = lambda q:hashlib.sha256(q.read_bytes()).hexdigest()
assert sha(work/'source.patch')==v['patchSha256']
for name,digest in v['finalSourceFiles'].items():assert sha(source/name)==digest,name
keys = ['researchBaselineCommit','referenceWasmSha256','changedFiles','finalSourceFiles',
        'patchSha256','hypothesis','predeclaredComparisons','decisionRule']
(work/'validation.json').write_text(json.dumps({k:v[k] for k in keys},indent=2)+'\n')
receipt = dict(changedSourcesExact=True,sourcePatchSha256=sha(work/'source.patch'),
               rendererBuildExecuted=False,fullGatesExecuted=False,notAcceptanceTimings=True)
(work/'reproduction-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
if args.build:
    for name in ['build-wasm.py','codegen.py']:
        (work/name).write_text((archive/name).read_text().replace('raster-input-noalias',work.name))
    for name in ['build-wasm.py','codegen.py']:
        subprocess.run([sys.executable,str(work/name)],check=True)
    reference=repo/'build/controls/simd-index-range-candidate'
    for name in ['softgl.js','softgl.wasm']:
        assert (work/name).read_bytes()==(work/'disabled'/name).read_bytes()==(reference/name).read_bytes()
    receipt.update(rendererBuildExecuted=True,allFortyObjectsRebuilt=True,jsWasmByteExact=True)
    (work/'reproduction-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
print('PASS: fixed source reconstructed'+('; fresh forty-object build and final JS/WASM byte exact' if args.build else ''),work)
