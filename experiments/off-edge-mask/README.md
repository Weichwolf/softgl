# One combined off-mode coverage sign mask

**Rejected, 2026-10-07.** BMW off does not reproduce a benefit in both audits;
BMW 4x is slower in both. All gates pass, but fewer static bitmask calls and a
61-byte smaller WASM do not yield an overall defensible measured gain. The
production renderer remains D4; the optimization goal stays open.

## Problem and exact transformation

The normal and depth-capture single-sample raster roots construct three
saturated i32 vectors for partially covered 2x2 quads. They extract each
nonnegative-lane mask separately, AND the three masks, then apply the unchanged
bounds mask. The candidate ORs the three integer vectors first, extracts one
nonnegative-lane mask and applies the same bounds mask.

For each lane, the sign bit of a bitwise OR is the OR of the operand sign bits.
The result is nonnegative precisely when all three saturated edge values are
nonnegative. This is an integer-bit identity: it does not assume normalized
lane values, narrow original edges or non-overflowing truncation. All twelve
existing saturations are preserved. Raw i64 edge values, top-left bias, lane
order, clipping, traversal, coverage accept/reject shortcuts, interpolation,
sample shading, depth, fragment writes and replay classifications are unchanged
in source. No floating-point operation or struct layout is changed.

The fixed scope is one production header, `raster_triangle_impl.h`, and a
new independent regression contract. Native SSE4.1 and WASM SIMD128 both use
the same existing intrinsic/wrapper interface. No variant sweep, additional
dispatch, thread, atomic, sampler or geometry-cache change is included.

## Sources and generated-code evidence

- [SoftGL raster_msaa_impl.h](https://github.com/Weichwolf/softgl/blob/96c77269bb9e56886a5e704eec00c27ba503d8cb/libsoftgl/src/raster_msaa_impl.h) at baseline commit
  `96c77269bb9e56886a5e704eec00c27ba503d8cb` already uses integer vector OR before
  `sg_i32x4_mask_nonneg` in sample coverage. This is the immediate implementation
  reference; only the same sign-bit identity is transferred to the off path.
- [SoftGL simd.h](https://github.com/Weichwolf/softgl/blob/96c77269bb9e56886a5e704eec00c27ba503d8cb/libsoftgl/src/simd.h) at that commit defines native `_mm_movemask_ps` and WASM
  `wasm_i32x4_bitmask` implementations of `sg_i32x4_mask_nonneg`.
- [Current raster code](../current-v8-raster-code/README.md),
  [accepted off capture](../depth-replay-off-bound/README.md) and
  [validation protocol](../validation-protocol/README.md) supply the workload,
  classification and acceptance context. Prior counters do not establish a
  dynamic cost for this operation.

Twenty library objects are freshly compiled for both baseline and candidate;
all twenty baseline objects and final JS/WASM must match accepted D4 exactly.
Only candidate rasterizer.c.o changes. Both links use the same 259 inputs.
The actual candidate has a distinct final module identity. `validation.json`,
`producer-commands.json` and `object-comparison.json` bind these facts.

At actual producer flags, optimized LLVM IR in each off root changes from ten
to eight static WASM bitmask calls and one to three vector ORs. Other shading
mask calls are included in these totals. Static loads/stores are unchanged:
643/124 in capture, 642/124 in normal. The four MSAA root bodies are exactly
unchanged in this diagnostic IR. Complete IR and a recomputing script are
retained. These are static counts, not executed instruction counts, V8 machine
code costs, cache misses or frame-time savings. Two ORs can extend vector
lifetimes, so fewer scalar masks do not guarantee fewer cycles. Linking and JIT placement may
still affect MSAA modes and controls; only measurements decide acceptance.

## Correctness gates and independent oracle

The new off_coverage contract compares the actual normal/capture kernels with
full-frame pixel-center cross products in i64. The oracle uses no production
bounds, quad extrema, saturation, SIMD operations or sign masks. It checks
3072 rendered frames and 2,916,352 pixel masks/channel outputs at three odd/small
frame sizes, both quad and forced scalar writers, different stripe boundaries,
scissors, shared edges, degenerate/back-facing and large-coordinate triangles.
It also checks intrinsic-empty capture classifications and untouched depth
and stencil. The fixtures encounter 2,313,115 edge values outside signed i32
and 114,087 exact edge ties. Those counts describe oracle values, not a count
of executed saturation instructions. The fixture independently passes against
the hash-verified accepted D4 native library. Existing replay/store/packet and
MSAA edge oracles cover other fragment states and asynchronous ownership.

All gates completed with actual terminal exit zero: 745 native tests plus
Bench1, 25 ASan/UBSan/leak contracts, 24 WASM contracts, 240 WASM/Mesa images
with unchanged tolerances, 234 byte-exact image controls in each mode,
100 dual full-frame hashes and four raw frame comparisons per model/mode.
Existing MSAA edge oracles pass 4480 frames, 62,251,008 sample masks and
12,431,040 coefficient lanes. No new warning lines relative to D4; 62 inherited
warning lines appear in the full fresh native build. Native tests use Linux
OSMesa, not Windows/WGL. The new oracle and image gates supplement the bit
identity but do not claim exhaustive GL correctness.

## Measurements and decision

Predeclared before compilation: all eighteen guarded pairs, two audits in each
of off/2x/4x, three pairs per audit, two AB/BA crossover rounds per pair,
80 warm-up and 100 rotating frames, BMW plus T-80, 640x360, three helper workers
plus caller, resolve/readback each frame. Keep the 0.10 foreign-core threshold
and retain every attempt. Use the candidate's actual gated module and frozen
D4 reference. Require reproducible BMW off benefit in both audits and an
overall defensible result after checking all modes, controls and uncertainty.
Do not select runs based on favourable FPS or infer speed from mask counts.

All eighteen comparisons complete, all on the first accepted guard attempt.
The driver and source/object/module/input hashes remain bound. Negative changes
mean less frame time; audit figures are geometric means of the three original
crossover pair ratios, not ratios of pooled medians.

| Scene | MSAA | Audit 1 frame-time change | Audit 2 frame-time change | Faster/slower pairs |
| --- | --- | ---: | ---: | ---: |
| bmw | 0 | -0.906303% | +1.115099% | 2/4 |
| bmw | 2 | +0.251367% | +0.183785% | 2/4 |
| bmw | 4 | +0.649546% | +2.177133% | 1/5 |
| tank | 0 | -0.619381% | +1.565510% | 3/3 |
| tank | 2 | +0.646175% | -1.132002% | 3/3 |
| tank | 4 | -0.531822% | -1.075858% | 4/2 |

BMW off changes direction between audits and only two of six pairs are faster.
BMW2 slows in both audits, with four slower pairs; BMW4 slows in both with five
slower pairs. All six scene/mode descriptive paired-log t intervals include
zero: they neither prove a benefit nor a hardware-level regression. For BMW off
the six-pair geometric change is +0.099295%, with interval [-1.480681%,
+1.704610%]. BMW4 is +1.410464%, interval [-0.087614%, +2.931003%]. These intervals
assume independent approximately normal log ratios, with only six pairs; they
are uncertainty descriptions, not certified probability bounds. Raw pair
values and the method are retained in uncertainty.json and are recomputed by
the verifier. No interval was used to tune the candidate or selectively rerun
a favourable scene.

**Decision: reject.** The required reproducible BMW off benefit is absent, and
all-mode controls provide no overall justification. No extra confirmation run
or variant sweep was performed. Source stays only in the isolated experiment
patch; active renderer, served D4, model packs and bench_report.md stay unchanged.

## Reproduction

```sh
python3 experiments/off-edge-mask/verify_artifacts.py
python3 experiments/off-edge-mask/reproduce-candidate.py --prepare-only
python3 experiments/off-edge-mask/reproduce-candidate.py --work build/diagnostics/off-mask-repeat --timings
```

Full fresh reproduction needs Emscripten 3.1.69, the matching canonical
239-object viewer/test catalog at build/checks/msaa-wasm, frozen D4, BMW pack,
OSMesa/CMake, Node/Playwright/Chromium and the recorded toolchain. Prepare-only
reconstruction has been executed; the supplied full fresh gate/timing recipe
is not itself evidence of another executed timing series. Generated binaries
stay under ignored build/. `results.json` binds every published artifact;
ignored logs are explicitly included and checked in the actual Git commit.
