from pathlib import Path
import hashlib,json,difflib,shutil,subprocess
r=Path(__file__).resolve().parent;src=r/'source-root';before=r/'fixture-before-main-restore';before.mkdir(exist_ok=False)
for name in ['slice_prepack.c','validation.json','source.patch','process-completion.json','full-gates-driver.log','gate-process.json']:
 p=src/'tests'/name if name.endswith('.c') else r/name;shutil.copy2(p,before/name)
# Retain all actual old gate receipts, including the failed WASM link.
for p in list(r.iterdir()):
 if p.is_file() and (p.name.startswith(('native-full-','asan-full-','all-tests-','frame-equivalence-','ms0-images','ms2-images','ms4-images','model-','mesa-images','wasm-edge-')) or p.name in ['msaa-edge.js','msaa-edge.wasm','rasterizer-edge-test.o','run-msaa-edge.cjs']):
  if p.suffix in ('.log','.json','.cjs'):shutil.move(p,before/p.name)
shutil.move(r/'wasm-contracts',before/'wasm-contracts')
p=src/'tests/slice_prepack.c';s=p.read_text();old='#define main existing_queue_main\n#include "ordered_draw_queue.c"\n#undef main'
assert s.count(old)==1;s=s.replace(old,'#pragma push_macro("main")\n#undef main\n#define main existing_queue_main\n#include "ordered_draw_queue.c"\n#undef main\n#pragma pop_macro("main")');p.write_text(s)
v=json.loads((r/'validation.json').read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
patch=''
for name in v['changedFiles']:
 baseline='' if name=='tests/slice_prepack.c' else subprocess.check_output(['git','show',v['researchBaselineCommit']+':'+name],text=True)
 patch+=''.join(difflib.unified_diff(baseline.splitlines(True),(src/name).read_text().splitlines(True),fromfile='/dev/null' if name=='tests/slice_prepack.c' else 'a/'+name,tofile='b/'+name))
(r/'source.patch').write_text(patch);v['finalSourceFiles']={n:sha(src/n) for n in v['changedFiles']};v['patchSha256']=sha(r/'source.patch');v['observerFixtures']={'tests/slice_prepack.c':sha(src/'tests/slice_prepack.c')};v['fixtureCorrection']='Restore incoming main macro after including the existing queue fixture; initial native/sanitizer/image/edge gates passed but new WASM test link failed because sg_contract_main export was absent. Runtime/source objects and measured module unchanged. Repeat full gates before timings.'
(r/'validation.json').write_text(json.dumps(v,indent=2)+'\n')
# Regenerated observer scripts must retain the correction too.
p=r/'prepare-gates.py';s=p.read_text();assert "names=['build-wasm.py'" in s
p=r/'prepare-publication.py';s=p.read_text();s=s.replace("['timings','wasm-contracts','draft-before-lifecycle']","['timings','wasm-contracts','draft-before-lifecycle','fixture-before-main-restore']")
s=s.replace('Production binaries contain no allocator injection. Existing contracts additionally', 'Production binaries contain no allocator injection. The original native/sanitizer/image/edge gates passed, but the first WASM test link failed because its nested main macro hid the sg_contract_main export. The fixture now saves/restores that incoming macro. The old fixture, patch, identities and full actual gate receipts are retained under fixture-before-main-restore/. Runtime source and measured production module did not change; full gates were repeated before any timings. Existing contracts additionally')
p.write_text(s)
