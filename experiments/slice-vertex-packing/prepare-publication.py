"""Archive bound source, complete gates and every comparison attempt."""
from pathlib import Path
import hashlib,json,shutil,subprocess
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;public=repo/'experiments/slice-vertex-packing'
v=json.loads((r/'validation.json').read_text());d=json.loads((r/'decision.json').read_text());terminal=json.loads((r/'process-completion.json').read_text())
assert d['status'] in ('accepted','rejected') and not public.exists()
assert terminal['gateExitCode']==terminal['finalizerExitCode']==terminal['timingExitCode']==0
subprocess.run(['python3',str(r/'analyze-timings.py'),'--check'],check=True)
public.mkdir()
def copy(p,target):
 q=public/target;q.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,q)
for p in r.iterdir():
 if p.is_file() and p.suffix in ('.py','.cjs','.json','.patch','.log','.rsp'):copy(p,p.name)
for folder in ['timings','wasm-contracts','draft-before-lifecycle','fixture-before-main-restore','attempt-before-harness-restore','attempt-before-model-harness-restore','attempt-before-route-fix']:
 for p in (r/folder).rglob('*'):
  if p.is_file() and p.suffix in ('.log','.json','.cjs','.c','.h','.inc','.patch'):copy(p,str(p.relative_to(r)))
for fn in v['changedFiles']:
 if fn!='tests/slice_prepack.c':
  p=public/'original'/fn;p.parent.mkdir(parents=True,exist_ok=True);p.write_bytes(subprocess.check_output(['git','show',v['researchBaselineCommit']+':'+fn]))
 copy(r/'source-root'/fn,'candidate-source/'+fn)
for record in json.loads((r/'wasm-contracts/results.json').read_text())['results']:
 copy(r/'source-root/tests'/(record['name']+'.c'),'fixtures/'+record['name']+'.c')
copy(r/'source-root/tests/msaa_edges.c','fixtures/msaa_edges.c')
for label,path in [('candidate',r),('reference',repo/'build/diagnostics/simd-index-range')]:copy(path/'softgl.js.symbols',label+'.symbols')
for name in ['wasm_perf.cjs','wasm_quiet_audit.py']:copy(repo/'tools'/name,name)
a=json.loads((r/'analysis.json').read_text())
rows=[f"| {x['scene']} | {x['samples']} | {x['auditChangesPercent'][0]:+.6f}% | {x['auditChangesPercent'][1]:+.6f}% | {x['faster']}/{x['slower']} |" for x in a['summary']]
readme='# Packing raster vertices inside geometry slices\n\n'+d['summary']+'\n\n'
readme+=f"Research baseline `{v['researchBaselineCommit']}`; accepted reference `{v['referenceWasmSha256']}`, candidate `{v['candidateWasmSha256']}`.\n\n"
readme+='''## Hypothesis and implementation

The current D4 caller diagnostic observed ten ordered packed BMW draws per frame,
83,746 transformed vertices and 5,076,400 logical output bytes. Late packing took
0.848–0.918 caller wall ms/frame, including observer overhead and preemption.
This does not establish removable CPU time, actual cache/DRAM traffic or a ceiling.
The trial moves eligible ordered-draw packing into the existing geometry stage.
Queued claims remain 128 vertices; larger initial worker/caller partitions and
serial slices pack in bounded 128-vertex chunks. No ownership partition, worker
count, stage join, atomics or geometry/fragment arithmetic changes.

An extra caller-owned packed output shares the unchanged 2MiB aggregate ordered
queue vertex capacity. Early preparation never waits for or reserves a raster
slot. It borrows only an idle matching-capacity buffer or allocates within the
budget, reclaiming only idle storage if needed. Pending payloads stay immutable.
After the original geometry join and queue reservation, exact matching layout,
count, units and capacity allow a buffer ownership swap. Projection includes any
old target packed buffer retained by the caller. Otherwise the original late
packing path runs. Clipped vertices are always appended late; full transformed
vertices remain available for clipping and triangle preparation. Empty draws,
oversized clipped geometry, queue-size failures and ordinary/raw fallback free
unsubmitted packed output. Readiness resets before transform allocation failures.
The 2MiB bound concerns ordered queue vertex buffers plus this caller-owned output,
not framebuffer, producer full vertices, cache, texture or total process memory.

Additional early sampler preparation, layout checks, allocator/idle-buffer work,
chunk dispatch and displacement of raster work can offset saved late packing.
This combined scheduling/locality/ownership trial does not isolate these costs.
T-80 retains its large packed path, while shared worker dispatch/layout can still
change static code/JIT layout. Source includes no production timing/counters or
geometry simplification. All twenty WASM library units were freshly compiled;
nineteen object files match D4 exactly and only workers.c.o differs. The linker
binds 259 ordered inputs and the actual module/source/object identities. Static
WASM body/hash observations include function-index changes and imply no JIT,
register, cache or dynamic cycle facts.

The original unbuilt draft and its source/patch identities are retained under
draft-before-lifecycle/. Lifecycle cleanup was added before any compilation or
comparison. The test-only slice_prepack fixture includes actual worker source,
intercepts aligned allocations only in that translation unit, and proves failed
allocation fallback, full pending-budget refusal, idle-only reclamation/borrowing,
nonzero-origin transform partitions/tails, exact packed fields, actual buffer
adoption, late clipped append and empty-draw cleanup in all three modes. Its
included original queue/eager fixture also checks real 1/3/8-worker rendering.
Production binaries contain no allocator injection. The original native/sanitizer/image/edge gates passed, but the first WASM test link failed because its nested main macro hid the sg_contract_main export. The fixture now saves/restores that incoming macro. The old fixture, patch, identities and full actual gate receipts are retained under fixture-before-main-restore/. Runtime source and measured production module did not change. Final-fixture native/sanitizer gates were repeated successfully. The receipt archive move also removed unchanged browser scripts, causing a MODULE_NOT_FOUND before browser execution. Exact script bytes were restored; completed native/sanitizer receipts were bound and only outstanding browser/WASM phases resumed before timings. Both missing-script attempts are retained under attempt-before-harness-restore/ and attempt-before-model-harness-restore/. The second had already completed the off image comparison before discovering the missing model runner. An initial resume receipt loop then shadowed the experiment name and sent the model runner to a nonexistent build path; that actual failure and driver are retained under attempt-before-route-fix/. The iterator was renamed, the entire script closure and actual candidate module path/hash are checked before resuming. Existing contracts additionally
exercise clipping, layout/state changes, source reuse and mutation/destruction.

## Complete comparisons

Two audits per off/2x/4x mode, three AB/BA page-crossover pairs per audit, two
rounds per pair, 80 warmup and 100 rotating measured frames at640x360, three
helpers plus caller, BMW/T-80, resolve/readback each frame. All eighteen pairs
compare the frozen D4 reference. Benchmark/quiet guard remain unchanged; the
foreign CPU threshold stays .10 cores and every attempted run is retained.
Changes below are frame-time percentages; negative is faster.

| Scene | Samples | Audit1 | Audit2 | Faster/slower pairs |
|---|---|---|---|---|
'''+ '\n'.join(rows)+'\n\n'
readme+='''## Fidelity and reproduction

Before timing, all745 native tests plus Bench1, 25 ASan/UBSan/leak contracts,
24 WASM contracts, 240 WASM/Mesa images, 234 exact test controls per mode,
100 equal dual frame hashes plus four exact representative frames per model/mode
pass. Edge observers check4480 frames,62,251,008 masks and12,431,040 coefficient
lanes. Post-depth stores, DOT3 query scenes, RGBA conversion, unsigned index
ranges and actual depth-replay API/sample-plane contracts retain direct stdout.
No pixel tolerance changes. Native image references use Linux OSMesa/llvmpipe.

Portable retained-evidence verification:

```sh
python3 experiments/slice-vertex-packing/verify_artifacts.py
```

Fresh full source/native regression build recipe:

```sh
python3 experiments/slice-vertex-packing/reproduce-candidate.py
```

The fresh reproduction recipe is supplied, not executed for this archive. The
actual full-library producer, native/sanitizer/WASM gates and all18 comparisons
were executed. Original scripts retain staging paths and need adaptation to a
fresh tree. Rebuilds need Emscripten, CMake/OSMesa and the bound BMW pack; different
paths/toolchains can change binary identities. Output stays below build/.
The verifier checks retained receipts, checksum closure, patch reconstruction
and raw arithmetic; it does not rerun browsers, authenticate observations or
establish a hardware ceiling. Repeat complete fidelity and paired measurements
before adopting a fresh rebuild. Generated binaries/build trees are excluded.
'''
if d['status']=='accepted':
 readme+='\n'+(r/'adoption-summary.md').read_text()
 for p in r.iterdir():
  if p.is_file() and p.suffix=='.png':copy(p,p.name)
 for p in (r/'preview-firefox').rglob('*'):
  if p.is_file() and p.suffix in ('.log','.json','.png'):copy(p,str(p.relative_to(r)))
(public/'README.md').write_text(readme)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
manifest=dict(status=d['status'],researchBaselineCommit=v['researchBaselineCommit'],referenceWasmSha256=v['referenceWasmSha256'],candidateWasmSha256=v['candidateWasmSha256'],artifacts={str(p.relative_to(public)):sha(p) for p in sorted(public.rglob('*')) if p.is_file()})
(public/'results.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('Archived',len(manifest['artifacts']),'artifacts plus manifest')
