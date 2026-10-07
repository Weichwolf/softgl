# Direct SIMD cube coordinates and cold scalar fallback

Decision: **rejected**. BMW off regresses in both audits (+0.592893%/+0.942761%) and all six pairs. BMW 2x changes direction (-1.876685%/+0.732297%). BMW 4x audit means improve (-1.029251%/-1.829012%) but only three of six pairs improve, with individual changes from -8.0297% to +9.2616%. These mixed all-mode results do not justify adopting the joint module. Native/WASM copies are genuinely removed; that does not prove why frame time changes.

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
| bmw | 0 | +0.592893% | +0.942761% | 0/6 |
| bmw | 2 | -1.876685% | +0.732297% | 4/2 |
| bmw | 4 | -1.029251% | -1.829012% | 3/3 |
| tank | 0 | -2.390906% | -0.817803% | 4/2 |
| tank | 2 | +0.473510% | -0.301481% | 3/3 |
| tank | 4 | -0.368369% | +1.230421% | 3/3 |

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
linear-memory vector stores, while 4 explicit native vector stack saves remain.
Its code region is 704 bytes and the vector core's is
4352 bytes. These regions include data/padding.
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

Research baseline `f3672ec98331078e58a848811fd332834f2a6380`; reference `d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0`;
candidate `67e6eb5c75c162b3066a1cbd575edecf2073b90a427bab662723ede4e52779bc`.
