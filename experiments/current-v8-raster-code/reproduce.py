"""Prepare or repeat six source-unchanged native/profile diagnostic captures."""
from pathlib import Path
import argparse,hashlib,json,shutil,subprocess,sys
archive=Path(__file__).resolve().parent;repo=Path.cwd().resolve()
p=argparse.ArgumentParser(description=__doc__);p.add_argument('--work',default='build/diagnostics/current-v8-native-reproduction');p.add_argument('--native-build',default='build/diagnostics/simd-index-range/native-full');p.add_argument('--prepare-only',action='store_true');args=p.parse_args()
work=(repo/args.work).resolve()
if work.parent!=(repo/'build/diagnostics').resolve() or work.exists():p.error('Use a new direct child of build/diagnostics/')
plan=json.loads((archive/'plan.json').read_text());frozen=repo/'build/controls/simd-index-range-candidate';sha=lambda q:hashlib.sha256(q.read_bytes()).hexdigest()
if sha(frozen/'softgl.wasm')!=plan['referenceWasmSha256']:p.error('Frozen D4 reference differs')
inputs=json.loads((archive/'input-identities.json').read_text())
if sha(Path('/usr/lib/chromium/chromium'))!=inputs['/usr/lib/chromium/chromium']:p.error('Installed Chromium differs; explicit new diagnostic design is needed')
work.mkdir()
for name in ['prepare-capture.py','run-captures.py','extract-code.py','analyze-native.py','plan.json']:
 text=(archive/name).read_text()
 if name=='prepare-capture.py':
  text=text.replace("repo/'tools/wasm_perf.cjs'",repr(str(archive/'original-wasm_perf.cjs')))
  text=text.replace("s=("+repr(str(archive/'original-wasm_perf.cjs'))+").read_text()", "s=Path("+repr(str(archive/'original-wasm_perf.cjs'))+").read_text()")
  text=text.replace(repr(str(archive/'original-wasm_perf.cjs'))+",", "Path("+repr(str(archive/'original-wasm_perf.cjs'))+"),")
  text=text.replace("repo/'build/diagnostics/simd-index-range/softgl.js.symbols'", "Path("+repr(str(archive/'accepted.symbols'))+")")
 if name=='run-captures.py':text=text.replace("'build/diagnostics/simd-index-range/native-full'",repr(str((repo/args.native_build).resolve())))
 (work/name).write_text(text)
subprocess.run([sys.executable,str(work/'prepare-capture.py')],check=True,cwd=repo)
(work/'plan.json').write_text(json.dumps(dict(plan,status='fresh-six-run-diagnostic-prepared'),indent=2)+'\n')
receipt=dict(unchangedD4Verified=True,chromiumBinaryVerified=True,sourceObserverPrepared=True,guardedCapturesExecuted=False,fullRendererRegressionsExecuted=False,notAcceptanceTimings=True)
(work/'reproduction-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
if args.prepare_only:print('PASS: source-unchanged fresh observer prepared',work);sys.exit(0)
if not (repo/args.native_build/'CTestTestfile.cmake').is_file():p.error('Matching native CTest catalog is required; use --native-build')
subprocess.run([sys.executable,str(work/'run-captures.py')],check=True,cwd=repo)
for audit in (1,2):
 for mode in (0,2,4):
  label=f'guarded-audit{audit}-ms{mode}';run=work/'runs'/label
  subprocess.run([sys.executable,str(work/'extract-code.py'),'--run',label],check=True,cwd=repo)
  subprocess.run([sys.executable,str(repo/'tools/wasm_profile_summary.py'),'--result',str(run/'result.json'),'--wasm',str(frozen/'softgl.wasm'),'--symbols',str(work/'accepted.symbols'),'--output',str(run/'profile-summary.json')],check=True,cwd=repo)
subprocess.run([sys.executable,str(work/'analyze-native.py')],check=True,cwd=repo)
receipt['guardedCapturesExecuted']=True;(work/'reproduction-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
print('PASS: fresh six native/profile diagnostic captures complete',work)
