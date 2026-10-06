"""Archive the complete bulk-bin trial, regardless of its performance outcome."""
from pathlib import Path
import json, shutil, hashlib, subprocess
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent;public=repo/'experiments/bulk-prepared-bins'
v=json.loads((r/'validation.json').read_text());decision=json.loads((r/'decision.json').read_text())
assert decision['status'] in ('accepted','rejected') and not public.exists()
terminal=json.loads((r/'process-completion.json').read_text())
assert terminal['gateExitCode']==terminal['finalizerExitCode']==terminal['timingExitCode']==0
subprocess.run(['python3',str(r/'analyze-timings.py'),'--check'],check=True)
public.mkdir()
def copy(p, target):
 q=public/target;q.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,q)
for p in r.iterdir():
 if p.is_file() and p.suffix in ('.py','.cjs','.json','.patch','.log','.rsp','.c'):copy(p,p.name)
for folder in ['timings','wasm-contracts']:
 for p in (r/folder).rglob('*'):
  if p.is_file() and p.suffix in ('.log','.json','.cjs'):copy(p,str(p.relative_to(r)))
copy(r/'softgl.js.symbols','candidate.symbols')
copy(repo/'build/diagnostics/simd-index-range/softgl.js.symbols','reference.symbols')
copy(repo/'build/checks/msaa-wasm/CMakeFiles/softgl.dir/link.txt','producer-recipes/canonical-link.txt')
for fn in v['changedFiles']:
 if fn!='tests/prepared_bins.c':
  q=public/'original'/fn;q.parent.mkdir(parents=True,exist_ok=True)
  q.write_bytes(subprocess.check_output(['git','show',v['researchBaselineCommit']+':'+fn]))
 copy(r/'source-root'/fn,'candidate-source/'+fn)
contracts=json.loads((r/'wasm-contracts/results.json').read_text())
for c in contracts['results']:copy(r/'source-root/tests'/(c['name']+'.c'),'fixtures/'+c['name']+'.c')
copy(r/'source-root/tests/msaa_edges.c','fixtures/msaa_edges.c')
for fn in ['wasm_perf.cjs','wasm_quiet_audit.py']:copy(repo/'tools'/fn,fn)
a=json.loads((r/'analysis.json').read_text());oracle=json.loads((r/'prepared-bins-oracle.json').read_text())
rows=[f"| {'BMW F31' if x['scene']=='bmw' else 'T-80'} | {'off' if x['samples']==0 else str(x['samples'])+'x'} | {x['auditChangesPercent'][0]:+.6f}% | {x['auditChangesPercent'][1]:+.6f}% | {x['faster']} / {x['slower']} |" for x in a['summary']]
readme='# Stable bulk prepared-bin emission\n\n'+decision['summary']+'\n\n'
readme+=f"Research snapshot `{v['researchBaselineCommit']}`; accepted reference `{v['referenceWasmSha256']}`, candidate `{v['candidateWasmSha256']}`.\n\n"
readme+='''## Hypothesis and implementation

The historical caller-producer diagnostic used the older 7cc module, not this
trial's accepted D4 reference. It observed tens of thousands of per-record
sg_bin_grow calls/frame but very few actual warm allocations. Those observations
motivate removing repeated capacity checks; they do not measure D4's phase costs
or predict this trial's speedup.

The candidate counts prepared triangle bin-range endpoints in a stack-local
33-element difference histogram, prefixes the counts and reserves each affected
bin once. It then appends 16-byte triangle records in original primitive order.
With a column map, bins are nonempty integer intervals partitioning the positive
framebuffer width. first/end come from the triangle's clamped endpoint columns;
every bin in that range necessarily overlaps. The old per-entry overlap predicate
is redundant on this path. Without a column map, the original overlap and capacity
checks remain, including zero-width bins in narrow framebuffers.

GENERAL records terminate each run. The pipeline emits their serial clipping
fallback at the original position before continuing, preserving blend/stencil/query
order. REJECT records never use their otherwise uninitialized fields. Geometry
cache hits retain their existing bypass. There are no new workers, barriers,
atomics, persistent allocations, record layouts, numerical approximations or
changes to geometry, raster coverage, texture sampling or OpenGL state semantics.

An additional linear descriptor scan, small runs separated by GENERAL records,
stack initialization and code size can offset saved producer instructions. This
is a combined bulk reservation/mapped-overlap trial; its result does not isolate
individual components or prove a cache/hardware cause.

## Complete comparisons

Two independent audits for each off/2x/4x mode, three AB/BA paired page-crossover
comparisons per audit, two rounds per pair, 80 warmup plus 100 rotating measured
frames, 640x360, three helpers plus caller, BMW and T-80, resolve/readback each frame.
All eighteen comparisons use the frozen current D4 reference. The browser benchmark
and quiet guard remain unchanged (.10 foreign CPU cores); every attempt is retained.
Only the private driver native-build path changes. Builds, regression tests and
codegen inspection finish before timings; no selective confirmation or parameter
sweep follows. Negative percentages mean faster paired frame time. Each audit is
the geometric mean of its three geometric paired ratios.

| Scene | MSAA | Audit1 | Audit2 | Faster / slower pairs |
|---|---|---|---|---|
'''+ '\n'.join(rows)+'''

Raw comparisons and all guard attempts are in `timings/`. Independent arithmetic
is retained in `analysis.json`; `decision.json` evaluates all modes and BMW priority.
Absolute FPS is scoped to this benchmark protocol, not a continuous UI guarantee.

## Correctness and actual producer

The producer recompiles workers.c and pipeline.c, reuses the other eighteen
accepted D4 library objects and retains twenty actual library objects plus
259 ordered link inputs. Sources, commands, object hashes, link-input hashes,
fixture identities and frozen JS/WASM hashes are retained. Generated binaries
and build directories are excluded from publication. The five-file patch can be
reconstructed against archived originals independently of the full repository.

Before timing, all 745 native tests plus Bench1, 25 ASan/UBSan/leak contracts,
24 actual WASM contracts, 240 WASM/Mesa images, 234 byte-exact control images
per mode, 100 matching dual frame hashes and four byte-exact representative frames
per model/mode pass. The complete native/WASM edge oracle checks 4480 frames,
62,251,008 masks and 12,431,040 coefficient lanes. Existing post-depth store,
DOT3-query, RGBA quantization, index-range and depth replay contracts also pass.
No image tolerance changes. Native reference comparisons use working Linux OSMesa.

'''
readme+=f"The new independent interval oracle passes {oracle['cases']:,} cases and {oracle['runCalls']:,} actual production run calls in native and WASM. It compares {oracle['checkedRecords']:,} exact 16-byte records across all observed prefixes, including repeated prefixes; this is not a count of unique inputs or rendered triangles. It checks capacities and counts at every run/GENERAL barrier, nonzero initial bins, empty/tiny/odd framebuffers, missing maps, rejects, arbitrary chunks, 8192-record stages and depth bit patterns including signed zero/infinities/NaNs. Synthetic GENERAL insertions test ordering; the full image/API regressions cover actual clipping.\n\n"
readme+='''Static inspection checks eighteen mapped function roots: seventeen raster,
fragment,worker and queue bodies remain byte-identical. draw_elements grows
from 17,454 to 17,874 static WASM body bytes. Hashes include relocated function
indices. These observations are not native/JIT instruction counts, dynamic
operation counts, register pressure, cache events or a hardware ceiling.

The first receipt-finalization attempt failed because a broad script replacement
changed expected image count 234 to 244 when adding the 24th WASM contract. The
observer assertion and generator were corrected; runtime code, fixtures and gate
results did not change. Both observer versions and the failed attempt are retained.
The corrected finalizer passed before any timing began.

## Reproduction and evidence scope

Portable checksum/patch/raw-arithmetic verification:

```sh
python3 experiments/bulk-prepared-bins/verify_artifacts.py
```

Fresh source build/native regression recipe:

```sh
python3 experiments/bulk-prepared-bins/reproduce-candidate.py
```

This fresh recipe is supplied but was not executed for this archive. The original
incremental producer and complete correctness/paired-comparison recipes were
executed. A fresh build needs Emscripten, CMake/native OSMesa dependencies and the
bound BMW pack; different paths/toolchains can change binary identities. Output
stays under build/. Original full WASM/sanitizer/image scripts document their
staging paths and need adaptation for a new tree. The portable verifier checks
retained receipts and raw arithmetic; it does not rerun browser/rendering tests.
Repeat all-mode WASM fidelity and guarded comparisons before adopting a fresh build.
'''
if decision['status']=='accepted':
 assert (r/'adoption-summary.md').exists();readme+='\n'+(r/'adoption-summary.md').read_text();copy(r/'adoption-summary.md','adoption-summary.md')
(public/'README.md').write_text(readme)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
manifest=dict(status=decision['status'],researchBaselineCommit=v['researchBaselineCommit'],referenceWasmSha256=v['referenceWasmSha256'],candidateWasmSha256=v['candidateWasmSha256'],gateExitCode=0,finalizerExitCode=0,timingExitCode=0,artifacts={str(p.relative_to(public)):sha(p) for p in sorted(public.rglob('*')) if p.is_file()})
(public/'results.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('Archived',len(manifest['artifacts']),'artifacts plus manifest')
