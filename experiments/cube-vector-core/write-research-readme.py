"""Describe actual vector cube-call measurements and their stated scope."""
from pathlib import Path
import json
r=Path(__file__).resolve().parent;load=lambda p:json.loads(p.read_text())
v,a,d,g,n=[load(r/name) for name in ['validation.json','analysis.json','decision.json','cube-codegen.json','native-cube-check.json']]
times=[f"| {x['scene']} | {x['samples']} | {x['auditChangesPercent'][0]:+.6f}% | {x['auditChangesPercent'][1]:+.6f}% | {x['faster']}/{x['slower']} |" for x in a['summary']]
text=f'''# Direct SIMD cube coordinates and cold scalar fallback

Decision: **{d['status']}**. {d['reason']}

The [current V8 diagnostic](../current-v8-raster-code/README.md) identified
seven normal-entry vector stores in the D4 cube target: 64 logical bytes clearing
the fallback table and 48 storing xyz before the coherent call. The coherent
entry reloads xyz. Its warmed BMW sampled self work justified examining this
specific intermediate; the profile does not predict saved time.

This independent candidate starts from D4 and changes only rasterizer.c. A new
internal coherent core accepts the existing xyz SIMD values directly. The old
pointer entry remains as a thin compatibility/test wrapper with its original
no-live/no-texture early guards. The target invokes the vector core first and
prepares scalar fallback arrays only on rejection. All original projection,
filtering, masks, dead-lane behavior, output stores, prepared geometry and worker
ownership remain. No arithmetic, texture storage, new state, threads or atomics
are added. Existing exact cube contracts exercise the wrapper/core; full shader,
image/model and queued-state gates exercise actual target integration.

## Repeated comparisons

Eighteen fixed comparisons against frozen D4: two audits x three AB/BA pairs
x off/2x/4x; both BMW and T-80; two rounds, 80 warm-up and 100 measured rotating
frames at 640x360; three helpers plus caller; resolve/readback each frame.
All actual guard attempts and per-round times are retained. Negative time
changes mean faster; each audit value is the geometric mean of its three paired
ratios. No statistical equivalence or theoretical ceiling is inferred.

| Scene | Samples | Audit 1 time change | Audit 2 time change | Faster/slower pairs |
|---|---|---|---|---|
'''+'\n'.join(times)+f'''

## Actual code generation

All twenty library translation units are rebuilt; nineteen match D4 and only
rasterizer.c.o changes. The module links 259 bound inputs. The six raster normal/
capture bodies retain identical WAT text after replacing only numeric function
declaration/direct call/ref.func labels with symbol-map names. The cube core's
parameter types are i32/v128/v128/v128/i32/i32. The target and compatibility
wrapper directly call that core. The old target has seven pre-call v128 stores;
the actual candidate has zero. The remaining scalar result table is initialized
only in the rejection branch. LLVM still reserves 64 linear stack bytes before
the call; the claim concerns stores, not elimination of every stack operation.

A separate warmed native-code check executes the actual candidate module on
Chromium/V8 with the same diagnostic perf-prof method, outside acceptance
comparisons. Complete selected code-load records and owned process/thread
births are retained. The target TurboFan normal-entry prefix has zero pre-call
linear-memory vector stores, while {n['targetPreFirstCallNativeVectorStackStores']} explicit native vector stack saves remain.
Its code region is {n['targetNativeRegionBytes']} bytes and the vector core's is
{n['vectorCoreNativeRegionBytes']} bytes. These regions include data/padding.
The selected bytes, symbol maps, disassembly and checks are supplied. perf-prof
changes code-space compaction and profiling adds overhead, so diagnostic
address/layout is not assumed identical to an uninstrumented browser.
No physical traffic, dynamic call frequency, spill, cache or saved-cycle claim
follows from the source/WASM/native checks. Only fixed guarded comparisons
support the performance decision.

## Fidelity and reproduction

Full gates pass: 744 native tests plus Bench 1, 24 ASan/UBSan/leak contracts,
23 WASM contracts, 240 WASM/Mesa images at unchanged tolerances, 234 exact
controls in each sample mode, 100 matching dual full-frame hashes and four
byte-exact raw frames per model/mode. Edge observers verify 4480 frames,
62251008 masks and 12431040 coefficient lanes. Direct sampler/shader, cube,
post-depth/DOT3/query, quantization, replay/queue and index outputs are retained.
No new native warning lines appear relative to D4. Coverage is stated explicitly;
these tests do not exhaust every OpenGL state. The source patch is independently
reconstructed and final source/module/producer/fixture identities are bound.

```sh
python3 experiments/cube-vector-core/verify_artifacts.py
python3 experiments/cube-vector-core/reproduce-candidate.py --prepare-only
python3 experiments/cube-vector-core/reproduce-candidate.py --work build/diagnostics/cube-vectors-repeat
```

The retained-evidence verifier checks checksum closure, source reconstruction,
full gate receipts, actual WASM/native parameter/copy shape and eighteen raw
pairs/guard attempts. It does not authenticate observations or freshly run tests.
Prepare-only was executed and its receipt is retained; the supplied full fresh
branch was not executed. Original producer, fidelity gates, native diagnostic
and comparisons were executed. Fresh builds require the matching canonical
259-input catalog/frozen D4 control, model packs, Emscripten 3.1.69, CMake/OSMesa
and Node/Playwright/Chromium. Paths/toolchains may change module identity; do not
silently substitute another reference. Full native-check observations are
supplied separately from the fresh fidelity recipe and acceptance comparisons.
All scratch output stays under build/; generated binaries/full JIT dumps are
excluded from publication. The research goal remains open.

Research baseline `{v['researchBaselineCommit']}`; reference `{v['referenceWasmSha256']}`;
candidate `{v['candidateWasmSha256']}`.
'''
(r/'research-readme.md').write_text(text)
print('Wrote measured',d['status'],'vector cube core account')
