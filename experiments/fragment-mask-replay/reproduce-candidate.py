"""Reconstruct this isolated renderer; optionally build, gate and compare it."""
from pathlib import Path
import argparse,hashlib,io,json,os,re,shutil,subprocess,sys,tarfile
archive=Path(__file__).resolve().parent;repo=Path.cwd().resolve()
p=argparse.ArgumentParser(description=__doc__)
p.add_argument('--work',default='build/diagnostics/fragment-mask-replay-reproduction')
p.add_argument('--prepare-only',action='store_true')
p.add_argument('--timings',action='store_true')
a=p.parse_args()
if a.timings and a.prepare_only:p.error('--timings requires fresh builds and all gates')
work=(repo/a.work).resolve()
if work.parent!=(repo/'build/diagnostics').resolve() or not re.fullmatch('[a-zA-Z0-9_-]+',work.name):p.error('--work must be a new direct child of build/diagnostics/')
if work.exists() or any((repo/'build/controls'/(work.name+x)).exists() for x in ['-candidate','-disabled']):p.error('Work or controls already exist; choose a fresh directory')
load=lambda p:json.loads(p.read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v=load(archive/'validation.json');assert sha(archive/'source.patch')==v['patchSha256']
work.mkdir(parents=True);src=work/'source-root';src.mkdir()
cmd=['git','archive',v['researchBaselineCommit'],'CMakeLists.txt','libsoftgl','tests','tools','wasm']
with tarfile.open(fileobj=io.BytesIO(subprocess.check_output(cmd,cwd=repo))) as tree:tree.extractall(src,filter='data')
base=work/'baseline-source';base.mkdir();shutil.copytree(src/'libsoftgl',base/'libsoftgl')
original=work/'original';candidate=work/'candidate-source';reconstruction=work/'patch-reconstruction'
for directory in [original,candidate,reconstruction]:directory.mkdir()
for name in v['changedFiles']:
 if (src/name).exists():
  for directory in [original,reconstruction]:
   target=directory/name;target.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(src/name,target)
shutil.copy2(archive/'source.patch',work/'source.patch')
for directory in [src,reconstruction]:
 subprocess.run(['git','init','-q'],cwd=directory,check=True)
 subprocess.run(['git','apply',str(work/'source.patch')],cwd=directory,check=True)
for name,digest in v['finalSourceFiles'].items():
 assert sha(src/name)==sha(reconstruction/name)==digest,name
 target=candidate/name;target.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(src/name,target)
fresh={key:v[key] for key in ['researchBaselineCommit','referenceWasmSha256','changedFiles','finalSourceFiles','patchSha256','hypothesis','scope']}
fresh.update(status='fresh-source-reconstructed',independentSourcePatchVerified=True)
(work/'validation.json').write_text(json.dumps(fresh,indent=2)+'\n')
(work/'patch-reconstruction.json').write_text(json.dumps(dict(changedSourcesExact=True,patchSha256=v['patchSha256'],files=v['finalSourceFiles']),indent=2)+'\n')
receipt=dict(command=cmd,sourcePatchSha256=sha(work/'source.patch'),changedSourcesExact=True,recipeSha256=sha(archive/'reproduce-candidate.py'),rendererBuildExecuted=False,fullGatesExecuted=False,timingsExecuted=False)
(work/'reproduction-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
if a.prepare_only:
 print('PASS: fresh isolated source and independent reconstruction; all nine hashes match',work);sys.exit(0)
required=[repo/'build/checks/msaa-wasm/CMakeFiles/softgl.dir/link.txt',repo/'build/controls/simd-index-range-candidate/softgl.wasm',repo/'build/assets/bmw.pack']
assert all(x.is_file() for x in required),'Canonical viewer catalog, frozen D4 and BMW pack are prerequisites; see README'
assert sha(required[1])==v['referenceWasmSha256']
names=['build-wasm.py','full-regressions.py','wasm-edge-gate.py','wasm-contracts.py','all-tests-ms0.cjs','all-tests-msaa.cjs','all-tests-msaa4.cjs','model-equivalence.cjs','finalize-gates.py','run-gates.py','gate-launcher.py','prepare-timings.py','pre-timing-proof.py','run-timings.py','compare-all.py','timing-launcher.py','analyze-timings.py','analyze-uncertainty.py','compare-native-warnings.py']
for name in names:(work/name).write_text((archive/name).read_text().replace('fragment-mask-replay-local-reader',work.name))
env=dict(os.environ,NODE_PATH=str(repo/'build/node/node_modules'),TMPDIR=str(repo/'build/tmp'),XDG_CACHE_HOME=str(repo/'build/browser-cache'),EM_CACHE=str(repo/'build/emscripten-cache'),EM_FROZEN_CACHE='0')
def run(script,log):
 with (work/log).open('w') as stream:subprocess.run([sys.executable,str(work/script)],cwd=repo,env=env,stdout=stream,stderr=subprocess.STDOUT,check=True)
for script,log,key in [('build-wasm.py','producer-driver.log','rendererBuildExecuted'),('gate-launcher.py','gates-driver.log','fullGatesExecuted')]:
 run(script,log);receipt[key]=True;(work/'reproduction-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
run('compare-native-warnings.py','native-warnings-check.log')
if a.timings:
 fresh=load(work/'validation.json');fresh['timingGitCommit']=subprocess.check_output(['git','rev-parse','HEAD'],cwd=repo,text=True).strip();(work/'validation.json').write_text(json.dumps(fresh,indent=2)+'\n')
 run('prepare-timings.py','prepare-timings.log');run('timing-launcher.py','timings-driver.log');run('analyze-timings.py','analysis-run.log');run('analyze-uncertainty.py','uncertainty-run.log');receipt['timingsExecuted']=True;(work/'reproduction-receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
print('PASS: isolated renderer build and full gates;', '18 comparisons complete' if a.timings else 'no acceptance timings requested')
