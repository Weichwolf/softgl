"""Reconstruct the fixed off-mask candidate and optionally repeat all gates/timings."""
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
p.add_argument('--work',default='build/diagnostics/off-edge-mask-reproduction')
p.add_argument('--prepare-only',action='store_true')
p.add_argument('--timings',action='store_true')
args=p.parse_args()
if args.prepare_only and args.timings:p.error('--timings requires the full producer and gates')
work=(repo/args.work).resolve()
if work.parent!=(repo/'build/diagnostics').resolve() or not re.fullmatch(r'[a-zA-Z0-9_-]+',work.name):
    p.error('--work must be a new direct child of build/diagnostics/')
if work.exists() or any((repo/'build/controls'/(work.name+suffix)).exists() for suffix in ['-candidate','-disabled']):
    p.error('Work/control already exists; choose a fresh name')
v=json.loads((archive/'validation.json').read_text())
work.mkdir(parents=True)
baseline=work/'baseline-source';baseline.mkdir()
command=['git','archive',v['researchBaselineCommit'],'CMakeLists.txt','libsoftgl','tests','tools','wasm']
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(command))) as source:
    source.extractall(baseline,filter='data')
src=work/'source-root';shutil.copytree(baseline,src)
shutil.copy2(archive/'source.patch',work/'source.patch')
subprocess.run(['git','init','-q'],cwd=src,check=True)
subprocess.run(['git','apply',str(work/'source.patch')],cwd=src,check=True)
sha=lambda q:hashlib.sha256(q.read_bytes()).hexdigest()
for name,digest in v['finalSourceFiles'].items():assert sha(src/name)==digest,name
keys=['researchBaselineCommit','referenceWasmSha256','changedFiles','finalSourceFiles',
      'patchSha256','hypothesis','predeclaredComparisons','decisionRule']
fresh={k:v[k] for k in keys};fresh.update(productionUntouched=True)
(work/'validation.json').write_text(json.dumps(fresh,indent=2)+'\n')
receipt=dict(sourcePatchSha256=sha(work/'source.patch'),changedSourcesExact=True,
             rendererBuildExecuted=False,fullGatesExecuted=False,notAcceptanceTimings=True)
(work/'reproduction-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
if args.prepare_only:
    print('PASS: fresh source reconstruction and all three changed-source hashes:',work)
    sys.exit(0)
names=['build-wasm.py','codegen.py','full-regressions.py','wasm-contracts.py','wasm-edge-gate.py',
       'all-tests-ms0.cjs','all-tests-msaa.cjs','all-tests-msaa4.cjs','model-equivalence.cjs',
       'run-gates.py','gate-launcher.py','finalize-gates.py','compare-native-warnings.py',
       'prepare-timings.py','pre-timing-proof.py','run-timings.py','timing-launcher.py',
       'compare-all.py','analyze-timings.py']
for name in names:(work/name).write_text((archive/name).read_text().replace('off-edge-mask',work.name))
for name in ['build-wasm.py','codegen.py']:
    subprocess.run([sys.executable,str(work/name)],check=True)
receipt['rendererBuildExecuted']=True
(work/'reproduction-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
subprocess.run([sys.executable,str(work/'gate-launcher.py')],check=True)
subprocess.run([sys.executable,str(work/'compare-native-warnings.py')],check=True)
receipt['fullGatesExecuted']=True
(work/'reproduction-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
if args.timings:
    fresh=json.loads((work/'validation.json').read_text())
    fresh['timingGitCommit']=subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()
    (work/'validation.json').write_text(json.dumps(fresh,indent=2)+'\n')
    for name in ['prepare-timings.py','timing-launcher.py','analyze-timings.py']:
        subprocess.run([sys.executable,str(work/name)],check=True)
print('PASS: fresh producer and complete gates'+('; eighteen comparisons complete' if args.timings else ''),work)
