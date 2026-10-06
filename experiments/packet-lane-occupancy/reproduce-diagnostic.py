"""Reconstruct this diagnostic; optionally repeat its recorded producer/gates/observations."""
from pathlib import Path
import argparse
import hashlib
import io
import json
import os
import re
import shutil
import subprocess
import sys
import tarfile

archive = Path(__file__).resolve().parent
repo = Path.cwd().resolve()
parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--work', default='build/diagnostics/packet-lane-occupancy-reproduction')
parser.add_argument('--prepare-only', action='store_true')
parser.add_argument('--observe', action='store_true', help='Repeat six logical observations after complete fresh gates')
args = parser.parse_args()
if args.observe and args.prepare_only: parser.error('--observe requires a full build and gates')
work = (repo / args.work).resolve()
if work.parent != (repo / 'build/diagnostics').resolve() or not re.fullmatch(r'[a-zA-Z0-9_-]+',work.name):
    parser.error('--work must be a new direct child of build/diagnostics/')
if work.exists() or any((repo/'build/controls'/(work.name+suffix)).exists() for suffix in ['-candidate','-disabled']):
    parser.error('Work/control already exists; choose a fresh directory')
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
v = load(archive/'validation.json')
work.mkdir(parents=True)
src = work/'source-root'
src.mkdir()
command = ['git','archive',v['researchBaselineCommit'],'CMakeLists.txt','libsoftgl','tests','tools','wasm']
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(command,cwd=repo))) as tree:
    tree.extractall(src,filter='data')
shutil.copy2(archive/'source.patch',work/'source.patch')
subprocess.run(['git','apply',str(work/'source.patch')],cwd=src,check=True)
for name,digest in v['finalSourceFiles'].items(): assert sha(src/name)==digest,name
fresh = {k:v[k] for k in ['researchBaselineCommit','referenceWasmSha256','changedFiles','finalSourceFiles','patchSha256',
    'hypothesis','histogram','predeclaredObservation','methodology','scope','notAcceptanceTimings']}
fresh.update(status='fresh-diagnostic-source-reconstructed',productionUntouched=True,independentSourcePatchVerified=True)
(work/'validation.json').write_text(json.dumps(fresh,indent=2)+'\n')
receipt = dict(command=command,sourcePatchSha256=sha(work/'source.patch'),changedSourcesExact=True,
    rendererBuildExecuted=False,fullGatesExecuted=False,observationsExecuted=False,notAcceptanceTimings=True)
(work/'reproduction-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
if args.prepare_only:
    print('PASS: fresh source reconstruction and all five changed-source hashes:',work)
    sys.exit(0)
# Original producer reuses the 239-object canonical test/viewer catalog and
# requires the frozen D4 control and the original toolchain/model pack. This
# branch is a supplied recipe, not evidence of a fresh execution in the archive.
required = [repo/'build/checks/msaa-wasm/CMakeFiles/softgl.dir/link.txt',
    repo/'build/controls/simd-index-range-candidate/softgl.wasm',repo/'build/assets/bmw.pack']
assert all(p.is_file() for p in required), 'See README: canonical catalog, frozen D4 control and BMW pack are prerequisites'
assert sha(required[1]) == v['referenceWasmSha256']
assert sha(required[2]) == 'fae69ce423ca29ab099bde21664056456b44a2eb4250d51df3980564819e4fc8'
names = ['build-wasm.py','full-regressions.py','wasm-edge-gate.py','wasm-contracts.py',
    'all-tests-ms0.cjs','all-tests-msaa.cjs','all-tests-msaa4.cjs','model-equivalence.cjs',
    'finalize-gates.py','run-gates.py','gate-launcher.py','wasm_perf_lanes.cjs','check-row.py',
    'run-observations.py','observation-launcher.py','analyze-observations.py','wasm_quiet_audit.py']
for name in names:
    text = (archive/name).read_text().replace('packet-lane-occupancy',work.name)
    text = text.replace("repo/'build/diagnostics/simd-index-range'", "repo/'experiments/simd-index-range'")
    if name == 'wasm-edge-gate.py': text = text.replace("inc=Path('libsoftgl/include').resolve()", "inc=r/'source-root/libsoftgl/include'")
    if name == 'finalize-gates.py':
        text = text.replace("repo/'build/diagnostics/simd-index-range/range-oracle.json'", "repo/'experiments/simd-index-range/range-oracle.json'")
    (work/name).write_text(text)
env = dict(os.environ,NODE_PATH=str(repo/'build/node/node_modules'),TMPDIR=str(repo/'build/tmp'),
    XDG_CACHE_HOME=str(repo/'build/browser-cache'),EM_CACHE=str(repo/'build/emscripten-cache'),EM_FROZEN_CACHE='0')
def execute(script, log):
    with (work/log).open('w') as stream:
        subprocess.run([sys.executable,str(work/script)],cwd=repo,env=env,stdout=stream,stderr=subprocess.STDOUT,check=True)
execute('build-wasm.py','build-driver.log')
receipt['rendererBuildExecuted'] = True
(work/'reproduction-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
execute('gate-launcher.py','gates-driver.log')
receipt['fullGatesExecuted'] = True
(work/'reproduction-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
if args.observe:
    fresh = load(work/'validation.json')
    fresh['observationGitCommit'] = subprocess.check_output(['git','rev-parse','HEAD'],cwd=repo,text=True).strip()
    (work/'validation.json').write_text(json.dumps(fresh,indent=2)+'\n')
    paths = [repo/'tests/bench/tank_data/tank.pack',repo/'tools/wasm_quiet_audit.py',
        work/'wasm_perf_lanes.cjs',work/'check-row.py',work/'run-observations.py']
    paths += [repo/'build/controls'/(work.name+'-candidate')/n for n in ['softgl.js','softgl.wasm','bmw.pack','tank.pack']]
    paths += [work/f'frame-equivalence-{mode}.json' for mode in [0,2,4]]
    (work/'observer-input-identities.json').write_text(json.dumps({str(p.relative_to(repo)):sha(p) for p in paths},indent=2)+'\n')
    execute('observation-launcher.py','observations-driver.log')
    execute('analyze-observations.py','analysis-run.log')
    receipt['observationsExecuted'] = True
    (work/'reproduction-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
print('PASS: fresh diagnostic producer and full fidelity gates;', 'six observations complete' if args.observe else 'observations not requested')
