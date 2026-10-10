# Current-frame occlusion during deferred MSAA

Status: accepted after three quiet balanced AB/BA blocks per all four assets
and OFF/2×/4×, full native/sanitizer/WASM/browser checks. Bistro 2× frame time
falls another 7.58% and 4× another 7.03% relative to accepted `25bf0e3`.
The optional density hint still selects forward rendering on BMW/T-80/Sponza MSAA.

Adaptive deferred MSAA reduced Bistro4 frame time by 37.3%. Its fresh user-only
perf profile still places 35.11% of sampled cycles in MSAA raster and 10.07% in
sample capture. Current deferred capture commits real sample depths but leaves
the existing current-frame 4×4 depth hierarchy untouched, so subsequent hidden
triangles do not benefit from those new occluders.

This variant records only actual depth writes after the captured material's
alpha/cutout test passes. It reuses the production conservative 4×4 sample-depth
summary and whole-triangle query, retaining exact sample coverage, original draw
order and every visible geometry/material. No previous-frame depth is reused.
The established 2e-6 depth-interpolation bound remains unchanged. Whole-cell
coverage is required; cutout holes cannot count as covered samples. Unsupported
states and low-density scenes retain the accepted forward path.

After a failed scene restores sample depths, invalidate all hierarchy cells:
restored depth can be farther than captured depth, so retaining the new maximum
would falsely reject subsequent ordinary draws. Invalidating a cell safely loses
an optimization until real subsequent writes refill it. No extra memory buffers
are introduced. SIMD128/native and WASM constraints remain mandatory.

First gates: independent 216-plane fixture, canonical positions, mixed alpha,
tiny coverage and post-capture rollback; an audited build counts genuine update,
whole-triangle rejection and rollback invalidation. Compare all asset views
against the accepted adaptive candidate, then native quiet AB/BA OFF/2×/4×.
Full production/sanitizer/WASM/browser checks follow only if a gain is confirmed.
All performance work uses 640×360 and four total threads.

```sh
python3 experiments/scene-msaa-occlusion/prepare.py
cmake -S experiments/scene-msaa-occlusion -B build/scene-msaa-occlusion/native \
  -DCMAKE_C_COMPILER=clang-22 -DCMAKE_BUILD_TYPE=Release
cmake --build build/scene-msaa-occlusion/native -j4
```

Sources: the local `libsoftgl/src/raster_hz.h` conservative MSAA hierarchy,
`scene_visibility.c` real sample writes/rollback, and
[Greene, Kass and Miller, Hierarchical Z-Buffer Visibility (SIGGRAPH 1993)](https://www.cs.cmu.edu/afs/cs/academic/class/15869-f11/www/readings/greene93_hierarchicalz.pdf).
This reuses a single existing summary level; it does not implement every method
in that paper. [Earlier OFF-only summary results](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/scene-hierarchical-depth/README.md)
were mixed and do not establish a gain in genuine deferred MSAA.

## Initial evidence

All 108 paired views are byte-identical to the accepted adaptive renderer,
including RGBA/depth/stencil/sample-depth/sample-stencil. Audited controls count
13,288,582 actual pixel updates, 5,096 whole hidden-triangle rejections and
12 rollback invalidations; tiny coverage, mixed alpha and hint boundaries pass.
The actual native archive uses SIMD128 with zero AVX/YMM/ZMM instructions.
[Evidence](validation/).

One quiet AB/BA block on Bistro alone uses 60 warm-up/30 orbit frames per run,
640×360 and four threads. Both tested modes retain exact angle-160 RGB.
Bistro2 screen is -7.58% frame time.
Bistro4 baseline/candidate medians are 78.522/72.555 ms (-7.60% frame time).
This is screening evidence, not gain confirmation or a new live version.
Timings must not be subtracted from earlier batches under different conditions.

## Confirmed gain and adoption gates

[Full evidence](validation/): 144 accepted quiet runs, zero rejected attempts,
three balanced AB/BA blocks per asset/mode, 60 warm-up/30 complete orbit frames,
640×360 and four total threads. Baseline and candidate use the same prepared
packs, camera and configured thread budget. Times include clear, transform,
raster/shading, completion, actual MSAA resolve and observable RGBA readback.

| Frame-time change vs `25bf0e3` | BMW | T-80 | Sponza | Bistro |
| --- | ---: | ---: | ---: | ---: |
| OFF | -0.02% | -5.40% | -5.64% | -0.66% |
| 2× | -1.61% | -1.28% | -1.33% | -7.58% |
| 4× | +1.19% | -1.25% | -1.24% | -7.03% |

Bistro4 medians: 77.857 → 72.386 ms, or 12.84 → 13.81 FPS (+7.56%).
Bistro2: 63.038 → 58.257 ms (+8.21% FPS). These matched measurements confirm
an additional gain; clock/cache/host conditions differ from the preceding +59%
FPS batch, so the absolute times must not be mixed to infer an exact cumulative
ratio. The user's next requested ~26.4 FPS milestone is still outstanding.
Small controls and the OFF timing changes are not attributed to a new OFF
algorithm: that path is unchanged; compiler layout/host causes are not proven.
The small BMW4 cost is outweighed by the complex-scene gain, per user priority.

The production archive is byte-identical to the measured candidate:
`5d76b7acdac492c4e07e477e9dd50499990c302991433430d79c7c8f9eb9fdaf`.
Its actual ISA audit finds 62,688 XMM references and zero AVX/YMM/ZMM use.
All **757 native CTest cases pass**. The additional regression extends the
existing scene MSAA contract: six 2×/4× × 1/3/8-helper ordinary-render pairs after
a failed nearer occluder, checking actual sample/color/depth output. It asserts
no implementation-specific hierarchy storage. A deliberately mutated private
library that omits invalidation is caught by wrong subsequent framebuffer depth;
[mutation receipt](validation/mutation.json). It is never a production or timed
binary. Root fixture was rerun after removing the redundant storage assertion.

ASAN/UBSAN/leak checks pass 2,024 SIMD128 compatibility pairs, 216 quantized
pairs, mixed alpha/tiny/rollback dispatch controls and all six ordinary-render
replay pairs. Actual WASM independently matches 216 platform-baseline hashes,
counts real hierarchy updates/rejections, passes sample rollback and all six
ordinary-render replay pairs; four-byte pointers, 256 MiB small fixture heap.
**288 resident/fresh-context frame-plane comparisons** pass across MSAA changes.

Live localhost:8000 passes all **12** asset/mode cases, true 640×360 dimensions,
0/2/4 samples, shared isolated WASM heap and zero JS errors. Observed peak heap
is **2,845,376,512 bytes (2.65 GiB)**. Bistro4 screenshot was visually inspected.
Served JS/WASM match the build bytes; COOP/COEP headers are present. The standard
Emscripten pthread/memory-growth configuration notice remains; no C compiler
warnings, sanitizer failures or regression tolerance changes are introduced.
The first resident checker referenced the wrong oracle folder and exited before
rendering; its failure is retained, the path corrected, and all 288 checks passed.

```sh
python3 experiments/scene-msaa-occlusion/check_resident.py
bash experiments/scene-msaa-occlusion/wasm_contract.sh
node experiments/scene-msaa-occlusion/browser-smoke.cjs
python3 experiments/scene-msaa-occlusion/mutation_check.py
```
The mutation checker uses a fresh owned directory under `build/` and deliberately
expects failure. It never edits the measured source or the live renderer.
