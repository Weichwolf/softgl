from pathlib import Path
import json,hashlib,shutil,subprocess
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;public=repo/'experiments/replay-path-census';assert not public.exists()
v=json.loads((r/'validation.json').read_text());analysis=json.loads((r/'analysis.json').read_text());decision=json.loads((r/'decision.json').read_text());completion=json.loads((r/'process-completion.json').read_text());assert completion['gateExitCode']==completion['finalizerExitCode']==completion['observationExitCode']==0
subprocess.run(['python3',str(r/'analyze-observations.py'),'--check'],check=True)
public.mkdir()
def copy(p,fn):
 target=public/fn;target.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,target)
for p in r.iterdir():
 if p.is_file() and p.suffix in ('.py','.json','.cjs','.log','.patch'):copy(p,p.name)
for folder in ['runs','wasm-contracts']:
 for p in (r/folder).rglob('*'):
  if p.is_file() and p.suffix in ('.json','.log','.cjs'):copy(p,str(p.relative_to(r)))
copy(r/'instrumented/softgl.js.symbols','diagnostic.symbols');copy(repo/'build/diagnostics/simd-index-range/softgl.js.symbols','reference.symbols')
for label in ['disabled','instrumented']:copy(r/label/'link.rsp','producer-recipes/'+label+'-link.rsp')
copy(repo/'build/checks/msaa-wasm/CMakeFiles/softgl.dir/link.txt','producer-recipes/canonical-link.txt')
for fn in v['changedFiles']:
 if fn=='libsoftgl/src/workers.c':
  p=public/'original'/fn;p.parent.mkdir(parents=True,exist_ok=True);p.write_bytes(subprocess.check_output(['git','show',v['researchBaselineCommit']+':'+fn]))
 copy(r/'source-root'/fn,'candidate-source/'+fn)
for c in json.loads((r/'wasm-contracts/results.json').read_text())['results']:copy(r/'source-root/tests'/(c['name']+'.c'),'fixtures/'+c['name']+'.c')
copy(r/'source-root/tests/msaa_edges.c','fixtures/msaa_edges.c')
copy(repo/'libsoftgl/src/workers_queue_raw.inc','original/libsoftgl/src/workers_queue_raw.inc')
for fn in ['wasm_perf.cjs','wasm_quiet_audit.py']:copy(repo/'tools'/fn,fn)
rows=[]
for model in ['bmw','tank']:
 for mode in [0,2,4]:
  pair=[next(x for x in analysis['summary'] if x['scene']==model and x['samples']==mode and x['audit']==a) for a in (1,2)]
  def fmt(name):return ' / '.join(f"{x['counters'][name]['mean']:.2f}" for x in pair)
  fractions=' / '.join('—' if x['copyFractionOfInput'] is None else f"{x['copyFractionOfInput']*100:.6f}%" for x in pair)
  rows.append(f"| {'BMW F31' if model=='bmw' else 'T-80'} | {'off' if mode==0 else str(mode)+'x'} | {fmt('replay_calls')} | {fmt('filtered_input_records')} | {fmt('filtered_output_records')} | {fmt('copied_records')} | {fractions} |")
readme='# Current D4 cache-replay path census\n\n'+decision['summary']+'\n\n'
readme+=f"Research snapshot `{v['researchBaselineCommit']}`; accepted reference `{v['referenceWasmSha256']}`; diagnostic `{v['diagnosticWasmSha256']}`. No runtime optimization is adopted.\n\n"
readme+='''## Ownership audit and question

Both ordered queue and raw/packed async publication already swap complete bin
ownership between producer and draw slot. There is no second triangle-copy step
at publication to remove. Vertex packing is a separate operation. The precise
source anchors and original source hashes are in `ownership-audit.json`.

Geometry-cache replay still has two paths: a memcpy of each complete nonempty
bin, or stable per-record selection through the captured hidden-bit bitmap.
Coverage retirement may compact the cache's triangle array/offsets and write a
new bitmap tail. Epoch/key invalidation and replacement may reuse the same
entry's storage. Borrowing that storage needs lifetime and immutability control;
a pointer swap alone cannot preserve asynchronous snapshot safety.

The preceding producer diagnostic used old 7cc and combined replay input/output
counts. This new current-D4 census distinguishes filtered and complete-copy bins
before designing a borrowing or deferred filtering architecture. Neither the old
phase wall times nor these logical counts are removable CPU-time measurements.

## Observations

Two quiet guarded audits per scene/mode, 640x360, three helpers plus caller,
80 warmup plus 100 rotating measured frames with resolve/readback each frame.
Audit 1 uses off/2x/4x; audit 2 reverses the modes. Eight caller TLS integer counters
are incremented at actual replay branch sites. There is no timer or counter per
triangle, no renderer-state/layout or rendering-arithmetic change. Reset/read and
metadata construction sit outside each observed draw+resolve frame clock.

The table gives means/frame, audit 1 / audit 2. Whole-bin fraction divides complete
copy-path input records by all replay input records. Byte totals in analysis.json
multiply copied record counts by 16; they are not physical cache/DRAM transactions. These are duplicated bin records,
not counts of unique model triangles.

| Scene | MSAA | Replay calls | Filter input records | Filter output records | Whole-bin copied records | Whole-bin fraction of input |
|---|---|---|---|---|---|---|
'''+ '\n'.join(rows)+'''

`runs/` retains all 1200 raw scene frames and every quiet-guard attempt. The original
.10 foreign CPU-core threshold remains unchanged. The private benchmark edits
are exactly reversible to the tracked original; no benchmark/guard changes enter
production. Independently checked per-frame identities require input=filtered
input+whole-copied records, filtered output<=filtered input and all bin categories
summing to replay calls times actual 12/32 bins. Every count is a nonnegative exact
integer below 2^53. BMW replay activity must be present; current T-80 replay counts
are all zero. Reader bounds (-1 and 8) return zero for every observed frame.

Instrumentation can change schedules and when coverage retirement publishes a
bitmap, so path eligibility describes these diagnostic observations. The retained
outer frame times and overall benchmark times include observer effects. They do
not establish an uninstrumented speedup, saved frame cost, bottleneck percentage,
cache behavior or a hardware ceiling. Any new implementation needs fresh paired
comparisons and full fidelity gates against the accepted D4 module.

## Actual producer and correctness

The incremental producer reuses nineteen accepted D4 library objects and compiles
only workers.c in disabled/instrumented variants. There are twenty library objects
and 259 ordered actual link inputs. Disabled JS/WASM are byte-identical to accepted
D4; actual identity hashes and the successful producer receipt are retained.
Instrumented exports add only the private reset/read functions. The two-file patch,
source/object/link identities and executed commands are archived. Generated binary
modules/build directories are excluded.

The first producer attempt incorrectly routed the unchanged pipeline.c.o to the
private work directory inherited from a two-unit recipe. It terminated before
linking or correctness gates. Routing was corrected to reuse the accepted D4
pipeline object; diagnostic source/counter sites did not change. The original
script, failed attempt and corrected recipe are retained in `build-correction.json`.

Before observations, all 744 native tests plus Bench1, 24 ASan/UBSan/leak contracts,
23 WASM contracts, 240 WASM/Mesa images, 234 byte-exact test images each mode,
100 matching dual hashes and four byte-exact frames per model/mode pass. Full
native/WASM edge checks retain 4480 frames/62,251,008 sample masks/12,431,040 float lanes.
Existing index-range, post-depth stores, DOT3-query and depth replay contracts pass.
No pixel tolerance changes; the native reference uses working Linux OSMesa.

## Reproduction

Portable archive/source/raw-arithmetic verification:

```sh
python3 experiments/replay-path-census/verify_artifacts.py
```

A fresh full-source rebuild recipe is supplied:

```sh
python3 experiments/replay-path-census/reproduce-diagnostic.py
```

This fresh recipe was not executed for this archive. The original incremental
producer, complete gates and guarded observations were executed. The fresh recipe
needs Emscripten, CMake/native OSMesa dependencies and the bound BMW pack. Output
stays under build/. Paths/toolchains may change binary identities. Full sanitizer,
WASM/image and guarded observation scripts describe the original staging paths
and need adaptation for a new tree. Repeat complete WASM fidelity before observing
new builds. The portable verifier checks retained receipts and raw arithmetic;
it does not rebuild binaries or rerun browser/rendering tests.
'''
(public/'README.md').write_text(readme)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest();m=dict(status='diagnostic-only-no-production-change',researchBaselineCommit=v['researchBaselineCommit'],referenceWasmSha256=v['referenceWasmSha256'],diagnosticWasmSha256=v['diagnosticWasmSha256'],notAcceptanceTimings=True,artifacts={str(p.relative_to(public)):sha(p) for p in sorted(public.rglob('*')) if p.is_file()})
(public/'results.json').write_text(json.dumps(m,indent=2)+'\n');print('Prepared',len(m['artifacts']),'diagnostic artifacts plus manifest')
