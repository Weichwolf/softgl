"""Describe the complete fixed trial; never choose a decision from partial runs."""
from pathlib import Path
import json

root = Path(__file__).resolve().parent
load = lambda name: json.loads((root/name).read_text())
validation = load('validation.json')
analysis = load('analysis.json')
decision = load('decision.json')
native = load('native-cube-check.json')
layout = load('cold-layout.json')
assert len(analysis['records']) == 18
assert not layout['linkedSeparateScalarFunction']
assert layout['targetLinearStackAllocationAfterRejection']
rows = [f"| {record['scene']} | {record['samples']} | {record['auditChangesPercent'][0]:+.6f}% | {record['auditChangesPercent'][1]:+.6f}% | {record['faster']}/{record['slower']} |"
        for record in analysis['summary']]
text = f'''# Cube coordinates with scalar fallback outlining

Decision: **{decision['status']}**. {decision['reason']}

## Hypothesis and sources

The [accepted D4 V8 diagnostic](../current-v8-raster-code/README.md)
identified seven normal-entry vector stores in the cube target: 64 logical
bytes clearing its fallback table and 48 storing xyz for a coherent call
that reloads them. The [direct-vector trial](../cube-vector-core/README.md)
removed these copies but regressed BMW without MSAA. That trial's
[follow-up proposal](../cube-vector-core/next-research.md) observes that its
target still reserves scalar scratch before the coherent call and preserves
four native vector values. Those observations do not predict saved time.

This independent candidate starts from accepted D4. It passes the existing
SIMD coordinates directly to the coherent core and outlines the original
scalar rejection route into a separate static, noinline C function. The old
pointer entry retains its original no-live/no-texture guards. Only
`libsoftgl/src/rasterizer.c` changes; all original projection, filtering,
arithmetic order, masks, zero initialization, output stores, prepared geometry,
queue ownership and worker scheduling remain. No new textures, runtime state,
threads or atomics. Existing strict cube/sampler/shader contracts exercise
coherent and rejection paths, dead lanes, axis ties, tiny/large coordinates,
wrapping and filtering. This is locally derived code, not an upstream import.

## Fixed comparisons

Eighteen comparisons against frozen D4: two audits x three AB/BA pairs x
off/2x/4x, both BMW and T-80, 640x360, three helpers plus caller, 80 warm-up
and 100 measured rotating frames, resolve/readback every frame. Each pair
contains two crossover rounds. Builds and diagnostics finish before acceptance
timing. The unchanged foreign-load guard is 0.10 core; every attempt and raw
round time is retained. `tank` below denotes T-80. Negative changes mean
faster; each audit uses the geometric mean of its three paired time ratios.
No statistical equivalence or hardware/performance ceiling is inferred.

| Scene | Samples | Audit 1 frame-time change | Audit 2 frame-time change | Faster/slower pairs |
| --- | --- | --- | --- | --- |
''' + '\n'.join(rows) + f'''

## Actual compiler result

All twenty library translation units are rebuilt. Nineteen objects match D4;
only rasterizer.c.o changes. The final module links 259 bound inputs. All six
ordinary/capture raster bodies retain identical WAT text after replacing only
numeric function declarations/direct calls/ref.func labels with symbol names.
The coherent arithmetic and scalar rejection body retain their exact source
operation order. Core parameters are i32/v128/v128/v128/i32/i32.

The LLVM object retains a static scalar fallback, but the final Emscripten
module merges it into the target. Unlike the previous direct-vector candidate,
linear-stack allocation and four zero stores now occur only after coherent
rejection. There are zero pre-first-call linear-memory vector stores, versus
seven in D4. The source function boundary is not claimed to survive linking.

A separate warmed perf-prof run observes the actual candidate module's V8
code. Its TurboFan target prefix has
{native['targetPreFirstCallNativeVectorStackStores']} explicit native vector
stack saves, versus four in the prior direct-vector observation. Native stack
preservation remains. The target region is {native['targetNativeRegionBytes']}
bytes and the vector core {native['vectorCoreNativeRegionBytes']} bytes;
regions can include data/padding. Full selected records, raw bytes as text,
symbol maps, disassembly and browser process/thread birth identities are
retained. Incomplete JIT-file suffixes are recorded explicitly. perf-prof
changes code-space compaction, and profiling adds overhead, so its layout is
not assumed identical to acceptance runs. These static checks do not establish
physical traffic, dynamic call frequency, measured spills, saved cycles or a
performance cause. Only the full fixed comparisons support adoption/rejection.

## Fidelity and reproduction

Passed: 744 native CTest checks with the current Linux OSMesa harness, one
native benchmark gate, 24 ASan/UBSan/leak contracts, 23 WASM contracts, 240
WASM/Mesa images at unchanged tolerances, 234 exact control images in each
sample mode, 100 exact model-frame hashes and four byte-exact raw frames
per model/mode. The MSAA edge oracle covers 4,480 frames, 62,251,008 masks
and 12,431,040 coefficient lanes. Direct sampler/shader, cube, post-depth,
DOT3/query, queue/replay and index oracles are retained. No new native warning
lines relative to D4. No Windows/WGL run was performed, and these tests do not
exhaust all OpenGL states. Source, object, module, fixture and result hashes
bind the actual producer and receipts.

```sh
python3 experiments/cube-cold-fallback/verify_artifacts.py
python3 experiments/cube-cold-fallback/reproduce-candidate.py --prepare-only
python3 experiments/cube-cold-fallback/reproduce-candidate.py --work build/diagnostics/cube-cold-repeat
```

The verifier checks retained checksum closure, patch reconstruction, complete
gate receipts, actual WASM/native shape and all eighteen raw comparisons with
guard attempts. It does not authenticate observations or rerun graphics tests.
Prepare-only was executed and its receipt retained; the complete fresh branch
is supplied but has not been rerun. The original producer, all fidelity gates,
native diagnostic and fixed comparisons were executed. Fresh builds require
the matching canonical 259-input catalog, frozen D4 build/model packs,
Emscripten 3.1.69, CMake/OSMesa and Node/Playwright/Chromium. See toolchain.json
and producer-commands.json for actual versions/commands. Changed paths or
toolchains can alter module identity; do not silently replace the control.

For fresh acceptance timings, run the recorded compare-all.py against both
complete frozen builds under build/, using --candidate, --reference,
--output-dir, --label and --off-audits 2. Its native-build catalog path must
refer to the freshly generated native-full tree. Keep the fixed protocol in
[validation-protocol](../validation-protocol/README.md); running correctness
or diagnostic jobs concurrently invalidates the intended measurement conditions.
All generated scratch stays under build/; binaries and full JIT dumps are
excluded from this archive.

## Next work

Continue with [exact tiled texture storage](../texture-tiled-storage/README.md),
starting with a production-bound sampler-mix/footprint diagnostic. Aggregate
PMU cache counts do not isolate texture misses or justify a selected layout.
The outlining trial does not establish that cube sampling is optimal, that
tiling will help, or that further improvement is impossible. The goal remains
open.

Research baseline `{validation['researchBaselineCommit']}`;
reference `{validation['referenceWasmSha256']}`;
candidate `{validation['candidateWasmSha256']}`.
'''
(root/'research-readme.md').write_text(text)
print('Prepared complete measured account:', decision['status'])
