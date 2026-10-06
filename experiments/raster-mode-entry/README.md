# Separate outer raster-mode entries

Decision: **rejected**. BMW changes do not reproduce across audits: off +0.174358%/-0.181628%,2x +0.134421%/-0.192380%,4x +0.097916%/-0.034401%. T-80 off audit means regress +2.232163%/+0.456785%. Reject standalone entry separation; this is not a statistical equivalence claim. D4/live/report remain active. Static mode separation and unchanged normalized inner bodies are verified, but no hardware/JIT cause is proven.

The [previous pixel-packing trial](../off-pixel-packing/README.md) improved BMW
off but regressed BMW4x. This experiment starts independently from accepted D4:
it separates outer triangle setup/raster entries for framebuffer samples0/2/4,
selecting the mode before setup. No pixel compaction is included and prior
timings are not evidence for this module. Original arithmetic, geometry,
sample predicates, shaders, stores and job/stripe ownership remain. The existing
worker/public prepared-triangle entry is retained as the dispatcher; depth-
capture selection still chooses each mode's original capture routine.

## Repeated comparisons

All eighteen fixed comparisons run: two audits x three AB/BA pairs x off/2x/4x,
with both BMW and T-80, two rounds per pair, 80 warm-up and 100 measured rotating
frames at 640x360, three helpers plus caller and resolve/readback each frame.
The reference is the frozen D4 module. All actual guard attempts and per-round
times are retained. Negative time changes are faster; audit values are geometric
means of the three paired ratios. No hardware/theoretical ceiling is inferred.

| Scene | Samples | Audit 1 time change | Audit 2 time change | Faster/slower pairs |
|---|---|---|---|---|
| bmw | 0 | +0.174358% | -0.181628% | 3/3 |
| bmw | 2 | +0.134421% | -0.192380% | 4/2 |
| bmw | 4 | +0.097916% | -0.034401% | 3/3 |
| tank | 0 | +2.232163% | +0.456785% | 2/4 |
| tank | 2 | -0.274515% | +0.249038% | 3/3 |
| tank | 4 | -1.914108% | -0.102347% | 5/1 |

## Actual compilation

The source specializes the shared outer template using `SG_RASTER_SAMPLES`.
Only the off entry includes the old quad/packet body; each MSAA outer entry
performs original triangle/bounding/scissor/polygon-offset setup and calls
only its original sample-count loop or capture variant. Internal functions are
retained with used/noinline so the whole-program optimizer does not collapse
the separation. No GL API declaration, worker synchronization, texture/combiner
change or preparation-state cache is added.

The actual symbol-mapped dispatcher calls exactly the three new entries.
The2x/4x entries call exactly their two matching normal/capture routines; the
off entry calls no MSAA routine. Static WASM body bytes and declared SIMD locals:

| Candidate function | Body bytes | Declared v128 locals |
|---|---|---|
| sg_raster_triangle_tile_prepared | 77 | 0 |
| sg_raster_triangle_off_prepared | 22710 | 31 |
| sg_raster_triangle_samples2_prepared | 822 | 9 |
| sg_raster_triangle_samples4_prepared | 822 | 9 |

D4's shared outer body is22877 bytes with31 declared v128 locals. All four inner
MSAA routines and off capture retain identical WAT text after replacing only
function declaration/direct call/ref.func numeric labels with symbol-map names.
Raw body hashes may differ from link renumbering. The bound module/symbol maps,
selected WAT bodies, local declarations, opcode sites and normalized call graph
are published. These are static compilation observations, not native V8 code,
register allocation/spills, cache residency, dynamic instructions or saved time.
The previous4x slowdown's cause is not established by this experiment.

## Fidelity and reproduction

All twenty library translation units are freshly compiled; nineteen objects
match D4 and only rasterizer.c.o changes. The module links259 bound inputs.
The source patch is independently reconstructed and final source/module/
producer/test-fixture identities are bound before timing. Source snapshots bind
unchanged samplers, MSAA loop template, stores and workers.

Full gates pass:744 native tests plus Bench1,24 ASan/UBSan/leak contracts,
23 WASM contracts,240 WASM/Mesa images at unchanged tolerances,234 exact image
controls per sample mode,100 matching dual full-frame hashes and four byte-
exact raw frames per model/mode. Edge observers verify4480 frames,62251008
sample masks and12431040 coefficient lanes. Direct native/WASM sampler, shader,
post-depth/DOT3/query, replay/queue, index and quantization outputs are retained.
Tests establish their stated coverage, not exhaustive proof of every GL state.
The native warning comparison reports no new warning lines relative to D4.

```sh
python3 experiments/raster-mode-entry/verify_artifacts.py
python3 experiments/raster-mode-entry/reproduce-candidate.py --prepare-only
python3 experiments/raster-mode-entry/reproduce-candidate.py --work build/diagnostics/raster-modes-repeat
```

The retained-evidence verifier checks checksum closure, source reconstruction,
full gate receipts, actual static mode separation and all eighteen raw pairs
and guard attempts. It does not authenticate observations or freshly execute
rendering tests. Prepare-only was executed and its receipt is retained; the
supplied full fresh branch was not executed. Original producer, full gates and
comparisons were executed. Fresh builds require the matching canonical259-input
catalog/frozen D4 control, prepared BMW pack, Emscripten3.1.69, CMake/OSMesa and
Node/Playwright/Chromium. Paths/toolchains may change module identity; do not
silently substitute a different reference. Original comparison recipes are
supplied separately for repeating the fixed all-mode protocol after fresh gates.
All output stays below build/; generated binaries/build trees are excluded from
publication. The research goal remains open.

Research baseline `24dbde1b4697f04e3ad119e798ebea408d79ce8a`; reference `d4dd244cbc59bb5d11b834596bf2e6bcbd3fd86bf883e6b2bed6528a41515ab0`; candidate `ab10281a25524145a316b8a8f8f0ef7f798e482dc9573b601b8b5554f771dc87`.
