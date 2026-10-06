"""Publish bound D4 phase observations without adopting a runtime diagnostic."""
from pathlib import Path
import hashlib,json,shutil,subprocess
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;public=repo/'experiments/current-producer-phases'
v=json.loads((r/'validation.json').read_text());completion=json.loads((r/'process-completion.json').read_text())
assert completion['gateExitCode']==completion['finalizerExitCode']==completion['observationExitCode']==0
assert not public.exists()
subprocess.run(['python3',str(r/'analyze-observations.py'),'--check'],stdout=subprocess.DEVNULL,check=True)
public.mkdir()
def copy(p,fn):
 dst=public/fn;dst.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,dst)
for p in r.iterdir():
 if p.is_file() and p.suffix in ('.py','.cjs','.json','.patch','.log'):copy(p,p.name)
for folder in ['runs','wasm-contracts']:
 for p in (r/folder).rglob('*'):
  if p.is_file() and p.suffix in ('.json','.log','.cjs'):copy(p,str(p.relative_to(r)))
for label in ['disabled','instrumented']:
 copy(r/label/'link.rsp','producer-recipes/'+label+'-link.rsp')
 copy(r/label/'softgl.js.symbols',label+'.symbols')
copy(repo/'build/diagnostics/simd-index-range/softgl.js.symbols','reference.symbols')
copy(repo/'build/checks/msaa-wasm/CMakeFiles/softgl.dir/link.txt','producer-recipes/canonical-link.txt')
for fn in v['changedFiles']:
 if fn!='libsoftgl/src/producer_diag.h':
  target=public/'original'/fn;target.parent.mkdir(parents=True,exist_ok=True)
  target.write_bytes(subprocess.check_output(['git','show',v['researchBaselineCommit']+':'+fn]))
 copy(r/'source-root'/fn,'instrumented-source/'+fn)
contracts=json.loads((r/'wasm-contracts/results.json').read_text())
for c in contracts['results']:copy(r/'source-root/tests'/(c['name']+'.c'),'fixtures/'+c['name']+'.c')
copy(r/'source-root/tests/msaa_edges.c','fixtures/msaa_edges.c')
for fn in ['wasm_perf.cjs','wasm_quiet_audit.py']:copy(repo/'tools'/fn,fn)
a=json.loads((r/'analysis.json').read_text())
def records(scene,samples):return sorted([x for x in a['records'] if x['scene']==scene and x['samples']==samples],key=lambda x:x['audit'])
def phase_pair(rows,name):return ' / '.join(f"{next(x for x in row['phases'] if x['name']==name)['elapsedMsPerFrame']['mean']:.6f}" for row in rows)
readme='# Current D4 caller and packed-vertex phase diagnostic\n\n'+(r/'interpretation.md').read_text()+'\n'
readme+=f"\nResearch snapshot `{v['researchBaselineCommit']}`; accepted `{v['referenceWasmSha256']}`; private diagnostic `{v['diagnosticWasmSha256']}`. Production and live preview retain accepted D4.\n\n"
readme+='''## Phase observations

Two quiet guarded audits per scene/mode: 640x360, three helpers plus caller,
80 warmup then 100 rotating measured frames with resolve/readback each frame.
Audit1 visits off/2x/4x; audit2 visits 4x/2x/off. All attempts use the unchanged
quiet guard (.10 foreign CPU cores) and remain archived. These are diagnostic
observations, not performance acceptance comparisons.

The nine outer phase durations are non-overlapping on the caller. Four disjoint
submit subphases are already included in stream_submit; do not add them again.
For every one of 1200 raw frames, independent checks require the outer sum to fit
inside draw+resolve and the nested sum to fit inside stream_submit (only 1e-9ms
floating subtraction allowance). Clocks include preemption/joins/mutex waits and
diagnostic costs. Workers can rasterize concurrently. Wall times are neither
exclusive CPU costs nor removable frame costs or an uninstrumented FPS ceiling.

Outer phases, mean wall ms/frame, audit1 / audit2:

| Scene | MSAA | lookup | index_scan | normal_cache | compact_transform | triangle_prepare | triangle_emit | geometry_store | geometry_replay | stream_submit |
|---|---|---|---|---|---|---|---|---|---|---|
'''
for scene in ['bmw','tank']:
 for samples in [0,2,4]:
  rows=records(scene,samples);readme+='| '+('BMW F31' if scene=='bmw' else 'T-80')+' | '+('off' if samples==0 else str(samples)+'x')+' | '+' | '.join(phase_pair(rows,name) for name in v['topLevelPhases'])+' |\n'
readme+='''
Disjoint submit subphases, mean wall ms/frame, audit1 / audit2:

| Scene | MSAA | packed_vertex_write | queue_reserve | stream_finish_previous | submit_texture_prepare |
|---|---|---|---|---|---|
'''
for scene in ['bmw','tank']:
 for samples in [0,2,4]:
  rows=records(scene,samples);readme+='| '+('BMW F31' if scene=='bmw' else 'T-80')+' | '+('off' if samples==0 else str(samples)+'x')+' | '+' | '.join(phase_pair(rows,name) for name in v['nestedSubmitPhases'])+' |\n'
readme+='''
packed_vertex_write brackets only the two actual transformed/clipped source writes;
allocation, layout, sampler preparation, queue selection, state capture and
publication remain outside that scope. queue_reserve covers the complete slot/
budget loop, including retirement, mutexes, caller raster helping and waiting.
stream_finish_previous brackets only finish calls in submission paths, including
joins/helping; it is not all frame polling. submit_texture_prepare brackets actual
sampler preparation in ordered, large-packed and ordinary submission paths.
Unmeasured submit residue includes layout/allocation, snapshots, ownership swaps,
publication and instrumentation overhead. No per-triangle, per-record or per-spin
counter/timer is added. Cached replay counters use per-bin sums; emitted-record
counts use sums before/after a triangle batch. The four-file patch changes no
renderer arithmetic, geometry, framebuffer layout, synchronization or ordering.

Logical counts, mean/frame, audit1 / audit2:

| Scene | MSAA | '''+' | '.join(v['counters'])+' |\n|---|---|'+ '|'.join(['---']*len(v['counters']))+'|\n'
for scene in ['bmw','tank']:
 for samples in [0,2,4]:
  rows=records(scene,samples);numbers=[' / '.join(f"{next(x for x in row['counters'] if x['name']==name)['perFrame']['mean']:.2f}" for row in rows) for name in v['counters']]
  readme+='| '+scene+' | '+('off' if samples==0 else str(samples)+'x')+' | '+' | '.join(numbers)+' |\n'
readme+='''
Requested transformed vertices are ranges, not actual cache misses or computed
vertices. Packed vertex bytes are logical output records, excluding source reads,
cache-line traffic, DRAM transactions and bin duplication. Counters partition
packed draws into ordered/large and packed vertices into transformed/clipped.
The analysis retains every phase/counter distribution, not just means.

## Actual producer and fidelity

The executed producer recompiles workers.c and pipeline.c (including the edited
queue include), reuses eighteen accepted D4 library objects, and records twenty
actual library objects plus 259 ordered link inputs. Both disabled caller objects,
JS and WASM match accepted D4 byte-for-byte. Compile/link commands, actual object/
source/fixture/module identities and matching symbol maps are bound. The source
patch reconstructs independently from archived originals. The private observer's
reversible edits recover the tracked benchmark exactly; benchmark and quiet guard
are unchanged. Frame clocks surround draw+resolve; diagnostic metadata reads occur
afterward. The diagnostic can alter compiler/JIT layouts and schedules.

Before observations, all 744 native tests plus Bench1, 24 ASan/UBSan/leak contracts,
23 actual WASM contracts, 240 WASM/Mesa images, 234 byte-exact controls per mode,
100 matching dual model frame hashes and four byte-exact representative frames
per model/mode pass. Native/WASM edge observers pass 4480 frames, 62,251,008 sample
masks and 12,431,040 coefficient lanes. Existing post-depth-store, DOT3 query,
quantization, index-range and depth replay contracts pass with direct stdout.
No tolerance changes. Native reference comparisons use working Linux OSMesa.
The original creator stdout retains an obsolete grow-counter label from its
template. Actual generated sources and the eighteen-counter schema contain no
bin-grow/per-record counters; only that creator summary wording was corrected.

## Reproduction and limits

Portable retained-evidence checks:

```sh
python3 experiments/current-producer-phases/verify_artifacts.py
```

Fresh source/native regression build recipe:

```sh
python3 experiments/current-producer-phases/reproduce-diagnostic.py
```

The fresh recipe is supplied, not executed for this archive. The original
incremental producer, full fidelity gates and six guarded observations are
executed. Fresh builds need Emscripten, native CMake/OSMesa dependencies and the
bound BMW pack. Different paths/toolchains can change binary identities. Output
stays under build/. Original full WASM/sanitizer/image/observation drivers retain
staging paths and need adaptation to a fresh tree. Run all-mode WASM fidelity
before new observations or performance claims. The portable verifier checks
retained receipts/raw arithmetic and does not rerun rendering/browser tests.
Generated binaries and build directories are excluded from publication.
'''
(public/'README.md').write_text(readme)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
manifest=dict(status='diagnostic-published-no-runtime-adoption',researchBaselineCommit=v['researchBaselineCommit'],referenceWasmSha256=v['referenceWasmSha256'],diagnosticWasmSha256=v['diagnosticWasmSha256'],gateExitCode=0,finalizerExitCode=0,observationExitCode=0,artifacts={str(p.relative_to(public)):sha(p) for p in sorted(public.rglob('*')) if p.is_file()})
(public/'results.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('Archived',len(manifest['artifacts']),'artifacts plus manifest; actual D4 observations without runtime adoption')
