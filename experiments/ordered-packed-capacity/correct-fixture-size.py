"""Retain completed first gates, fix only a test signedness warning, recheck."""
from pathlib import Path
import json,shutil,hashlib,subprocess,os
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent
v=json.loads((r/'validation.json').read_text());assert v['status']=='full-correctness-gates-passed-ready-for-18-pair-timings'
terminal=json.loads((r/'process-completion.json').read_text());assert terminal['gateExitCode']==terminal['finalizerExitCode']==0
old=r/'fixture-before-size-cast';old.mkdir(exist_ok=False)
for p in r.iterdir():
 if p.is_file() and p.suffix in ['.log','.json','.patch','.py','.template']:shutil.copy2(p,old/p.name)
for p in (r/'wasm-contracts').iterdir():
 if p.is_file() and p.suffix in ['.log','.json']:
  (old/'wasm-contracts').mkdir(exist_ok=True);shutil.copy2(p,old/'wasm-contracts'/p.name)
fixture=r/'source-root/tests/ordered_capacity.c';shutil.copy2(fixture,old/'ordered_capacity.c')
s=fixture.read_text();needle='CHECK(p.transformed_cap + 3 <= SG_STREAM_VERTICES);';assert s.count(needle)==1
s=s.replace(needle,'CHECK((size_t)p.transformed_cap + 3 <= SG_STREAM_VERTICES);')
fixture.write_text(s);(r/'ordered_capacity.c.template').write_text(s)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
v['finalSourceFiles']['tests/ordered_capacity.c']=sha(fixture)
patch=''
for name in v['changedFiles']:
 before=r/'patch-base'/name
 proc=subprocess.run(['diff','-u','--label','a/'+name,'--label','b/'+name,str(before),str(r/'source-root'/name)],text=True,stdout=subprocess.PIPE)
 assert proc.returncode in [0,1];patch+=proc.stdout
(r/'source.patch').write_text(patch);v['patchSha256']=sha(r/'source.patch');v['observerFixtures']['tests/ordered_capacity.c']=sha(fixture)
v['status']='fixture-correction-gates-pending'
v['fixtureCorrection']='Test-only explicit size_t conversion resolves new signedness warning. Complete original gates/fixture/patch/identities retained; renderer module and library objects unchanged. Final-fixture native745/sanitizer25 and changed WASM-contract rechecks must pass before timings; unchanged23 contracts and image/model/edge receipts remain bound.'
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
env=dict(os.environ,TMPDIR=str(repo/'build/tmp'),NODE_PATH=str(repo/'build/node/node_modules'),EM_CACHE=str(repo/'build/emscripten-cache'),EM_FROZEN_CACHE='0',ASAN_OPTIONS='detect_leaks=1:halt_on_error=1',UBSAN_OPTIONS='halt_on_error=1')
def run(cmd,name):
 with (r/name).open('w') as log:subprocess.run(cmd,env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
for label in ['native-full','asan-full']:
 run(['cmake','--build',str(r/label),'-j4','--target','ordered_capacity_contract'],label+'-fixture-rebuild.log')
 cmd=['ctest','--test-dir',str(r/label),'--output-on-failure','-j1']
 if label=='asan-full':cmd+=['-R','_contract$']
 run(cmd,label+'-tests.log')
# Execute only the changed WASM contract using the identical producer/strict flags.
s=(r/'wasm-contracts.py').read_text().replace('out.mkdir(exist_ok=False)','assert out.is_dir()')
a=s.index('names=');b=s.index('\nobjects=',a);s=s[:a]+"names=['ordered_capacity']"+s[b:]
a=s.index('strict=[]');b=s.index('records=[]',a);s=s[:a]+s[b:]
# Preserve the complete prior23 records and replace only the rebuilt fixture record.
s=s.replace("records=[]","old_records=json.loads((out/'results.json').read_text())['results'];records=[]")
s=s.replace("(out/'results.json').write_text(json.dumps({'completed':len(records),'planned':len(names),'results':records},indent=2)+'\\n');print(name,'passed',flush=True)","merged=records+[x for x in old_records if x['name']!='ordered_capacity'];assert len(merged)==24\n (out/'results.json').write_text(json.dumps({'completed':24,'planned':24,'results':merged},indent=2)+'\\n');print(name,'corrected fixture passed',flush=True)")
(r/'rerun-wasm-fixture.py').write_text(s)
run(['python3',str(r/'rerun-wasm-fixture.py')],'fixture-wasm-recheck.log')
for p in r.glob('native-*-run.log'):p.unlink() # Copies retained; finalizer must record fresh stdout.
run(['python3',str(r/'finalize-gates.py')],'final-fixture-gates.log')
print('Corrected fixture: full native745/sanitizer25 and changed WASM contract pass; unchanged producer and other gates bound',flush=True)
