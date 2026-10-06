from pathlib import Path
import subprocess,json,os,hashlib,sys
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;v=json.loads((r/'validation.json').read_text());assert v['status']=='hardware-observer-preflight-passed-ready-for12-guarded-observations'
for name,digest in json.loads((r/'input-identities.json').read_text()).items():assert hashlib.sha256((repo/name).read_bytes()).hexdigest()==digest,name
assert not subprocess.check_output(['git','status','--porcelain'],text=True).strip()
assert subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip()==v['researchBaselineCommit']
out=r/'runs';out.mkdir(exist_ok=False);env=dict(os.environ,NODE_PATH=str(repo/'build/node/node_modules'),TMPDIR=str(repo/'build/tmp'),XDG_CACHE_HOME=str(repo/'build/browser-cache'))
records=[]
for audit in [1,2]:
 for mode in ([0,2,4] if audit==1 else [4,2,0]):
  for scene in (['bmw','tank'] if audit==1 else ['tank','bmw']):
   p=out/f'audit-{audit}-{scene}-ms{mode}.json'
   cmd=[sys.executable,str(repo/'tools/wasm_quiet_audit.py'),str(p),'node',str(r/'wasm_perf_pmu.cjs'),'--bench-only','--wasm-build',str(repo/'build/controls/simd-index-range-candidate'),'--native-build',str(repo/'build/native'),'--scenes',scene,'--samples',str(mode),'--warmup','80','--frames','240','--rounds','1','--profile-scene',scene,'--output',str(p)]
   print('Starting',audit,scene,mode,flush=True);subprocess.run(cmd,env=env,check=True)
   subprocess.run([sys.executable,str(r/'check-observation.py'),str(p)],env=env,check=True)
   records.append(dict(audit=audit,scene=scene,samples=mode,file=str(p.relative_to(r)),sha256=hashlib.sha256(p.read_bytes()).hexdigest(),command=cmd))
   (r/'observations.json').write_text(json.dumps(dict(completed=len(records),planned=12,records=records),indent=2)+'\n')
print('All12 guarded unchanged-renderer hardware observations complete',flush=True)
