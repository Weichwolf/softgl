# Full renderer control after removing optional profiles

Status: removal validated; native control and profiles retained. No
optimization gain claimed. Product controls,
exports and Coarse/mesh-LOD implementations are removed at the user's request.
Original meshes, textures, cameras and ordinary OFF/2×/4× rendering remain.
The material-key prototype is held separately and has no product path.

BMW F31 at 640×360 with genuine 4× MSAA and four total native threads has a
new 100 FPS target: at most 10 ms for renderer, completion and readback/copy.
Shared material, MSAA and memory costs should benefit other assets, but a BMW
gain alone does not prove a Bistro/Sponza gain. Compare their actual paths;
scene visibility stays adaptive, and BMW currently uses forward MSAA.

Sources are our production [model submission](../../wasm/model_wrap.c),
[MSAA rasterizer](../../libsoftgl/src/raster_msaa_impl.h),
[scene material resolve](../../libsoftgl/src/scene_visibility.c) and original
[resident driver](../scene-material-visibility/resident_trial.c). No upstream
performance result is used as evidence. Native and WASM retain SIMD128 only.

`prepare.py` freezes the actual working sources and unchanged resident/quality
drivers. Its native recipe uses clang 22 and explicitly prohibits AVX, AVX2 and
AVX512. Repeated timings use the existing quiet AB/BA adapter, independently of
profiling or browser checks. `perf cycles:u` is a CPU-cost diagnostic rather
than a synchronized wall-time or FPS acceptance gate.

`tools/wasm_full_model_check.cjs` exercises the real localhost module and compares
all four assets × OFF/2×/4× × nine angles against the previous original-mesh Full
module. It checks absent controls/exports, original triangle/material counts,
three helpers plus caller and heap below 4 GiB. The ordinary preview tool covers
test navigation, benchmark cancellation and MSAA/context recycling.

## Completed checks and native control

All 759 production native CTests pass with unchanged tolerances. The removed
Coarse-only contract accounts for the previous 760th test. Native model controls
have 108 byte-identical RGBA/depth/stencil/physical-sample-depth/sample-stencil
pairs. The real localhost module has 108 exact original-mesh Full RGBA pairs,
three helpers plus caller and 2,845,114,368 bytes peak heap (2.65 GiB). Preview
navigation covers all 234 cases, all MSAA modes, benchmark cancellation and
context recycling. Both native libraries pass the actual instruction scan:
XMM present, no AVX instructions or YMM/ZMM registers.

Three quiet balanced AB/BA blocks per scene/sample configuration retain 144
selected native timings against original Full at `7b49448`. Inputs are unchanged
original assets/cameras; 60 warm-up and 30 orbit frames per request; four total
threads; renderer, completion/readback and output copy included. There is no
MSAA-4 performance improvement claimed from removing the optional profiles.

| Scene | Current Full 4× ms | Current Full 4× FPS | Time change versus prior Full |
| --- | ---: | ---: | ---: |
| Bistro | 54.472 | 18.36 | +0.50% |
| Sponza | 37.969 | 26.34 | −1.39% |
| BMW F31 | 17.382 | 57.53 | −0.74% |
| T-80 | 14.435 | 69.27 | +0.83% |

OFF/2× controls and all individual trials are retained in the receipt. Sponza
OFF is −5.94% in this campaign but lacks independent confirmation; it is not
reported as a new adopted optimization. No new Mesa/GLimpSW comparison is made.

## Current CPU-cost diagnosis

Separate `perf cycles:u` profiles enable sampling only after asset import and
60 warm-up/30 diagnostic frames. They capture another 120 rotating frames,
request worker restart and the final view/hash export. The flat reports lose no
samples and contain about 3K BMW and 12K Bistro observations. All final planes
match their unprofiled warm-up controls. Instrumented times are excluded from
native acceptance.

BMW: `sg_raster_triangle_msaa4_capture` 48.51% and the ordinary four-sample
raster entry 4.34% of sampled CPU cycles. These entries include inlined shading
and storage; this is **not** 52.85% pure edge/depth work or a synchronized frame
latency. Scalar and coherent cube sampling account for another 6.22% and 6.10%.
MSAA resolve is only 1.37%, so eliminating resolve alone cannot reach 100 FPS.

Bistro: material resolve 26.36%, ordinary MSAA raster 13.91%, the small-MSAA
kernel 8.86%, geometry append 7.63%, positions 6.27%, visibility packets 5.30%,
and scalar/coherent cube sampling 4.22%/2.37%. Source-line reports locate substantial
material time in adjacent RGBA tap loads. This supports investigating shared
sampler/fragment cost and the BMW capture kernel independently; BMW forward
and Bistro deferred pipelines do not have identical bottlenecks. The previously
rejected masked triangle-tail packets are not proposed again without new evidence.
No cache misses, memory bandwidth or attainable FPS are inferred from these CPU
sample shares.

## Retention and reproduction

`validation/` contains the actual removal patch/product sources, source/recipe
identities, flags, complete test logs, independent model controls, native timing
receipts, profiler reports and actual browser screenshots. Raw `perf.data` and
all frame planes remain local under `tmp/full-msaa-cleanup`; their hashes are
bound by receipts, but those large binary captures are not committed. The first
preview checker failure expected an obsolete worker-only display; the first
model checker intercepted Emscripten's unbound lazy export. Corrected adapters
pass; both original failures are retained rather than attributed to renderer
behavior.

```sh
python3 experiments/scene-full-msaa-control/prepare.py --output-root build/full-msaa-repeat
cmake -S build/full-msaa-repeat/recipe -B build/full-msaa-repeat/native -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER="$HOME/.local/bin/clang-22" -DSCENE_TRIAL_ROOT="$PWD/build/full-msaa-repeat"
cmake --build build/full-msaa-repeat/native -j4
python3 experiments/scene-full-msaa-control/verify.py
```

The generator freezes the current working renderer for a new control; the
retained patch and verifier reconstruct the actually measured removal sources
against `7b49448` independently of later product edits. There are no generated
renderer binaries or build directories in this archive.
