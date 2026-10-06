"""Archive the complete byte-group visibility trial, including negative results."""
from pathlib import Path
import hashlib, json, shutil, subprocess
repo=Path.cwd().resolve();r=Path(__file__).resolve().parent
public=repo/'experiments/visibility-byte-select'
v=json.loads((r/'validation.json').read_text());decision=json.loads((r/'decision.json').read_text())
assert decision['status'] in ('accepted','rejected') and not public.exists()
terminal=json.loads((r/'process-completion.json').read_text())
assert terminal['gateExitCode']==terminal['finalizerExitCode']==terminal['timingExitCode']==0
subprocess.run(['python3',str(r/'analyze-timings.py'),'--check'],check=True)
public.mkdir()
def copy(p,target):
 q=public/target;q.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,q)
for p in r.iterdir():
 if p.is_file() and p.suffix in ('.py','.cjs','.json','.patch','.log','.rsp','.c','.h'):copy(p,p.name)
for folder in ['timings','wasm-contracts','fixture-before-sequencing']:
 for p in (r/folder).rglob('*'):
  if p.is_file() and p.suffix in ('.log','.json','.cjs','.c','.patch'):copy(p,str(p.relative_to(r)))
for label in ['reference','candidate']:copy(r/(label+'-draw-elements.wat'),label+'-draw-elements.wat')
copy(r/'softgl.js.symbols','candidate.symbols')
copy(repo/'build/diagnostics/simd-index-range/softgl.js.symbols','reference.symbols')
copy(repo/'build/checks/msaa-wasm/CMakeFiles/softgl.dir/link.txt','producer-recipes/canonical-link.txt')
for fn in v['changedFiles']:
 if fn in ('libsoftgl/src/workers.c','tests/CMakeLists.txt'):
  q=public/'original'/fn;q.parent.mkdir(parents=True,exist_ok=True)
  q.write_bytes(subprocess.check_output(['git','show',v['researchBaselineCommit']+':'+fn]))
 copy(r/'source-root'/fn,'candidate-source/'+fn)
contracts=json.loads((r/'wasm-contracts/results.json').read_text())
for c in contracts['results']:copy(r/'source-root/tests'/(c['name']+'.c'),'fixtures/'+c['name']+'.c')
copy(r/'source-root/tests/msaa_edges.c','fixtures/msaa_edges.c')
for fn in ['wasm_perf.cjs','wasm_quiet_audit.py']:copy(repo/'tools'/fn,fn)
a=json.loads((r/'analysis.json').read_text());oracle=json.loads((r/'visibility-oracle.json').read_text())
rows=[f"| {'BMW F31' if x['scene']=='bmw' else 'T-80'} | {'off' if x['samples']==0 else str(x['samples'])+'x'} | {x['auditChangesPercent'][0]:+.6f}% | {x['auditChangesPercent'][1]:+.6f}% | {x['faster']} / {x['slower']} |" for x in a['summary']]
readme='# Byte-group hidden-bitmap visibility selection\n\n'+decision['summary']+'\n\n'
readme+=f"Research snapshot `{v['researchBaselineCommit']}`; accepted reference `{v['referenceWasmSha256']}`, candidate `{v['candidateWasmSha256']}`.\n\n"
readme+='''## Hypothesis and implementation

The accepted D4 replay census observed 89.87–92.53% of BMW incoming replay
references taking the hidden-bit filtering path. These are logical references,
including bin duplication; they are neither frame-cost shares nor physical traffic.
The candidate processes each bitmap byte as up to eight consecutive records.
Fully hidden groups skip their payload. Fully visible groups copy all records,
using a constant 128-byte copy for complete groups. Mixed groups visit visible
set bits with trailing-zero count, then clear the lowest set bit. This emits
records in exactly the original order. Bounded first/last groups read only their
one bitmap byte and mask bits outside the requested range.

The helper uses restrict for the distinct owned destination bin and read-only
cache records/bitmap. Existing cache allocation bounds first+count. It replaces
only the filtered replay loop. The original depth-epoch/sample/depth/stencil/
polygon-offset predicate, unfiltered memcpy, capacity growth, queue ownership,
cache lifetime, primitive order and geometry/fragment arithmetic remain unchanged.
No runtime counters, extra workers, synchronization, record layout changes or
geometry simplification are included. Full/mixed-group branching and copy
dispatch can offset saved per-reference checks. This is a combined grouped
selection/copy/restrict trial; timings do not isolate components or prove a
hardware cache cause.

## Complete comparisons

Two independent audits per off/2x/4x mode, three AB/BA paired page-crossover
comparisons per audit, two rounds per pair, 80 warmup plus 100 rotating measured
frames, 640x360, three helpers plus caller, BMW and T-80, resolve/readback each frame.
All eighteen comparisons use the frozen D4 reference. Benchmark and quiet guard
remain unchanged (.10 foreign CPU cores); every attempt is retained. Builds,
regression tests and codegen inspection finish before timings. No selective
confirmation or parameter sweep follows. Negative percentages mean faster paired
frame time. Each audit is the geometric mean of three geometric paired ratios.

| Scene | MSAA | Audit1 | Audit2 | Faster / slower pairs |
|---|---|---|---|---|
'''+ '\n'.join(rows)+'''

Raw comparisons and guard attempts are in `timings/`. Independent arithmetic
is retained in `analysis.json`; `decision.json` evaluates all modes with BMW
priority. Absolute FPS applies to this protocol, not a continuous UI guarantee.

## Correctness and actual producer

The producer recompiles workers.c and reuses nineteen accepted D4 library
objects. Twenty actual library objects and 259 ordered link inputs are bound
by hashes. Commands, source/fixture identities and frozen JS/WASM identities
are retained. Generated binaries and build directories are excluded. The
four-file patch reconstructs against the two archived originals; its header
and new fixture are additions.

Before timing, all 745 native tests plus Bench1, 25 ASan/UBSan/leak contracts,
24 actual WASM contracts, 240 WASM/Mesa images, 234 byte-exact control images
per mode, 100 matching dual frame hashes and four byte-exact representative
frames per model/mode pass. The complete native/WASM edge oracle checks
4480 frames, 62,251,008 masks and 12,431,040 coefficient lanes. Existing
post-depth-store, DOT3-query, RGBA quantization, index-range and depth-replay
contracts pass. Image tolerances remain unchanged. Native reference comparisons
use working Linux OSMesa.

'''
readme+=f"The independent per-record visibility oracle passes {oracle['cases']:,} cases, {oracle['inputs']:,} incoming records and {oracle['outputs']:,} exact surviving 16-byte payloads. It covers all 256 byte masks, first/end bit boundaries, source/destination offsets, empty input, stage lengths 8191/8192/8193 and larger, exact source ends, poisoned destination prefix/tail, source immutability and raw float payload bits including signed zero/infinities/NaNs. It shares no grouped selection, ctz iteration or bulk copy with the production helper.\n\n"
readme+='''Before full gates, the fixture was revised to explicitly construct a typed
triangle object before copying its representation into allocated storage.
Those preflights both passed with identical counts/stdout. The original
fixture/log and revision receipt are retained. Subsequently, all original
native/sanitizer/WASM gates passed, but the native/WASM randomized input totals
differed: C does not specify the order of multiple PRNG function arguments.
Before receipt finalization or any timing, PRNG calls were sequenced in separate
statements. Original fixture, patch, validation and complete gate receipts are
retained under fixture-before-sequencing/. Full gates were repeated with the
final fixture and identical native/WASM input/output totals. Runtime source,
production objects and measured candidate module did not change with either
fixture correction.

Static inspection binds eighteen mapped roots: seventeen raster, fragment,
worker and queue bodies remain byte-identical; draw_elements grows from
17,454 to 17,598 WASM body bytes. The actual draw-root disassemblies contain
0→1 i32.ctz and 39→41 memory.copy sites. v128.load/store site counts remain
26/18. Counts include other code in this root. These observations are neither
native/JIT instruction counts nor dynamic operation counts, register pressure,
cache events or a hardware ceiling.

## Reproduction and evidence scope

Portable checksum/patch/raw-arithmetic verification:

```sh
python3 experiments/visibility-byte-select/verify_artifacts.py
```

Fresh source build/native regression recipe:

```sh
python3 experiments/visibility-byte-select/reproduce-candidate.py
```

The fresh recipe is supplied but was not executed for this archive. Original
incremental production, full correctness and paired comparison recipes were
executed. Rebuilding needs Emscripten, native CMake/OSMesa dependencies and the
bound BMW pack. Different paths/toolchains can change binary identities. Output
stays under build/. Original WASM/sanitizer/image drivers document staging paths
and need adaptation to a fresh tree. The portable verifier checks retained
receipts and arithmetic; it does not rerun browser or rendering tests. Repeat
all-mode WASM fidelity and guarded comparisons before adopting a fresh build.
'''
if decision['status']=='accepted':
 assert (r/'adoption-summary.md').exists();readme+='\n'+(r/'adoption-summary.md').read_text();copy(r/'adoption-summary.md','adoption-summary.md')
if decision['status']=='accepted':
 for p in (r/'preview-firefox').rglob('*'):
  if p.is_file() and p.suffix in ('.json','.png','.log'):copy(p,str(p.relative_to(r)))
 for p in r.glob('*.png'):copy(p,p.name)
 copy(repo/'tools/wasm_preview_check.cjs','wasm_preview_check.cjs')
 copy(repo/'build/diagnostics/wasm-four-contexts/firefox-preview.py','firefox-preview.py')
(public/'README.md').write_text(readme)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
manifest=dict(status=decision['status'],researchBaselineCommit=v['researchBaselineCommit'],referenceWasmSha256=v['referenceWasmSha256'],candidateWasmSha256=v['candidateWasmSha256'],gateExitCode=0,finalizerExitCode=0,timingExitCode=0,artifacts={str(p.relative_to(public)):sha(p) for p in sorted(public.rglob('*')) if p.is_file()})
(public/'results.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('Archived',len(manifest['artifacts']),'artifacts plus manifest')
