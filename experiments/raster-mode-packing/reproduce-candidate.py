"""Reconstruct the fixed candidate and optionally repeat its complete fidelity gates."""
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
archive=Path(__file__).resolve().parent
repo=Path.cwd().resolve()
p=argparse.ArgumentParser(description=__doc__)
p.add_argument('--work',default='build/diagnostics/raster-mode-packing-reproduction')
p.add_argument('--prepare-only',action='store_true',help='Only reconstruct and verify the source; do not compile or run gates')
args=p.parse_args();work=(repo/args.work).resolve()
if work.parent!=(repo/'build/diagnostics').resolve() or not re.fullmatch(r'[a-zA-Z0-9_-]+',work.name):
    p.error('--work must be a new direct child of build/diagnostics/')
control=repo/'build/controls'/(work.name+'-candidate')
if work.exists() or control.exists():p.error('Work/control already exists; choose a fresh work directory')
v=json.loads((archive/'validation.json').read_text())
work.mkdir(parents=True)
src=work/'source-root';src.mkdir()
command=['git','archive',v['researchBaselineCommit'],'CMakeLists.txt','libsoftgl','tests','tools','wasm']
data=subprocess.check_output(command,cwd=repo)
with tarfile.open(fileobj=io.BytesIO(data)) as source:
    source.extractall(src,filter='data')
shutil.copy2(archive/'source.patch',work/'source.patch')
subprocess.run(['git','apply',str(work/'source.patch')],cwd=src,check=True)
sha=lambda q:hashlib.sha256(q.read_bytes()).hexdigest()
for name,digest in v['finalSourceFiles'].items():assert sha(src/name)==digest,name
fresh={key:v[key] for key in ['researchBaselineCommit','referenceWasmSha256','changedFiles','finalSourceFiles','patchSha256','hypothesis','predeclaredComparisons','decisionRule']}
fresh.update(status='fresh-candidate-source-reconstructed',productionUntouched=True)
(work/'validation.json').write_text(json.dumps(fresh,indent=2)+'\n')
receipt=dict(command=command,sourcePatchSha256=sha(work/'source.patch'),changedSourcesExact=True,
             rendererBuildExecuted=False,fullGatesExecuted=False,notAcceptanceTimings=True)
(work/'reproduction-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
if args.prepare_only:
    print('PASS: fresh source reconstruction and the changed-source hash:',work)
    sys.exit(0)
# These are the recorded original producer/gate recipes. A matching local
# canonical catalog, frozen D4 reference, model packs and toolchain are needed.
names=['build-wasm.py','full-regressions.py','wasm-edge-gate.py','wasm-contracts.py',
       'all-tests-ms0.cjs','all-tests-msaa.cjs','all-tests-msaa4.cjs','model-equivalence.cjs',
       'finalize-gates.py','run-gates.py','gate-launcher.py']
for name in names:
    text=(archive/name).read_text().replace('raster-mode-packing',work.name)
    if name=='build-wasm.py':
        text=text.replace("reference = repo/'build/diagnostics/simd-index-range'", "reference = repo/'experiments/simd-index-range'")
        text=text.replace("str(repo/'libsoftgl/include')", "str(root/'source-root/libsoftgl/include')")
    if name=='wasm-edge-gate.py':
        text=text.replace("inc=Path('libsoftgl/include').resolve()", "inc=r/'source-root/libsoftgl/include'")
    if name=='finalize-gates.py':text=text.replace("repo/'build/diagnostics/simd-index-range/range-oracle.json'","repo/'experiments/simd-index-range/range-oracle.json'")
    (work/name).write_text(text)
subprocess.run([sys.executable,str(work/'build-wasm.py')],cwd=repo,check=True)
receipt['rendererBuildExecuted']=True
(work/'reproduction-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
subprocess.run([sys.executable,str(work/'gate-launcher.py')],cwd=repo,check=True)
receipt['fullGatesExecuted']=True
(work/'reproduction-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
print('PASS: fresh producer and complete candidate fidelity gates:',work)
