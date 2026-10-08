# Exact scaled MSAA coverage in the forward renderer

Status: private trial validated and screened; not adopted because gains are
small/mixed and OFF controls regress. No production change. Baseline `6d3658c`;
native 640×360/four threads, SIMD128 only,
same BMW/T-80/Sponza/Bistro packs and cameras. Intended to remove MSAA edge
overhead independently of the mixed-result deferred-visibility architecture.

This scales **edge predicates**, not vertices or sample positions. With the
existing 1/256-pixel integer edges, advancing one pixel adds `256*dx`.
`floor((edge+bias)/256)` therefore advances by integer `dx` and preserves the
sign used by coverage. Each sample/edge's low eight bits remain constant;
restore them before the original integer-to-float barycentric/depth conversion.
No centroid/coverage approximation and no sample merging is introduced.

A rectangle proof bounds scaled coverage edges in signed 32 bits. The existing
area-plus-sample-span proof separately bounds **raw** depth edges for every
sample of a covered pixel. Unproved/large triangles retain the original kernel.
Coverage recurs in SIMD128 registers across samples/pixels/rows, keeping exact
conservative scanline proposals. Original material shader, ordered writers,
MSAA buffers/resolve and HZ maintenance remain intact. Weak depth-capture ties
are preserved. Eligible state is genuine 4×, enabled multisampling, depth-test/
write GL_LESS, no stencil and the existing packet-shader eligibility. Other
states and MSAA2 use the original path. Existing dedicated edge-test hooks keep
their original kernel; separate new counters verify that this path executes.

The kernel derives from [the private MSAA vector trial](../scene-msaa-visibility/README.md)
but starts independently from production, with no scene-state admission changes,
new sample metadata, material permutation or deferred shading. The generated
source preserves scalar tail shading and original packet shade/store behavior.

Reproduce:

```sh
python3 experiments/msaa-scaled-coverage/prepare.py
cmake -S experiments/msaa-scaled-coverage -B build/msaa-scaled-coverage/native \
  -DCMAKE_C_COMPILER=clang-22 -DCMAKE_BUILD_TYPE=Release
cmake --build build/msaa-scaled-coverage/native -j4
build/msaa-scaled-coverage/native/quantized_baseline
build/msaa-scaled-coverage/native/quantized_candidate
build/msaa-scaled-coverage/native/position_contract
bash experiments/msaa-scaled-coverage/wasm_contract.sh
```

The existing strict `scene-meshlets-soa/check_quality.py --root
build/msaa-scaled-coverage --samples 0,2,4` checks 108 native asset views.
The `scene-msaa-visibility/resident_trial.py` runner accepts this experiment's
explicit baseline/candidate binary, source and wrapper paths, and retains
balanced 60-warm/30-frame AB/BA attempts with the unchanged quiet guard.
Native audit: configure a separate build with `-DSOFTGL_MSAA_SCALED_AUDIT=ON`,
run `msaa_scaled_contract`; no audited binary is used for performance acceptance.
Full native/sanitizer/browser gates and confirmation remain required for adoption.

## Results

216 independent full-plane hashes match in native and actual WASM. The canonical
position fixture passes 162 pairs/486 commands/six rollback checks. All 108 asset
views are exact RGB, depth, stencil, sample-depth and sample-stencil against
production. Native archive `cd10767f…` has 65,312 XMM references and no AVX/YMM/ZMM.
Actual dispatch: 18,112 fast triangles and 11,132,600 tested pixels in both native
and WASM; native depth-passing samples 23,441,800, WASM 23,441,832. Each platform
is compared to its own independent baseline; cross-platform equality is not claimed.

The added `controlled.c` emits 48 independent baseline/candidate full-plane
hashes covering large triangles, a center-missing tiny triangle, disabled
multisampling, alpha-to-coverage, polygon offset, fog, LESS ties and LEQUAL,
each at OFF/2×/4× and one/three helpers. All native hashes match exactly.
The audited build proves two fast tiny triangles and **384 large-triangle
fallbacks**, so the area bound is exercised rather than only reviewed.
Actual WASM large/state controls have not yet been run. The first control build
attempt lacked the newly added CMake targets; regenerating CMake corrected it.
No failed build was measured.

One complete quiet AB/BA block, 60 warm-up/30 timed frames, all four assets/modes,
48 accepted runs, no rejected attempts:

| Frame-time change | BMW | T-80 | Sponza | Bistro |
| --- | ---: | ---: | ---: | ---: |
| OFF | -0.28% | +6.18% | +5.57% | +12.53% |
| 2× | +1.14% | -0.81% | -2.20% | -0.23% |
| 4× | -0.61% | -4.89% | -3.28% | -0.97% |

This does not establish a usable broad gain. OFF/2× never select this kernel,
but adding code can still change compilation/layout; host clock/cache effects
also remain. No specific cause for the OFF regression has been proven.
The generator has a `--noinline` option for an isolated follow-up; **that variant
has not been built or measured**. Do not label it a remedy or confirmed gain.

Sources: original [raster MSAA kernel](../../libsoftgl/src/raster_msaa_impl.h),
[MSAA edge-reuse proof](../msaa-edge-reuse/README.md),
[Giesen's software raster/occlusion series](https://fgiesen.wordpress.com/2013/02/17/optimizing-sw-occlusion-culling-index/),
[GLimpSW resource audit](../glimpsw-resource-audit/README.md).
The exact low-bit reconstruction is this experiment's own derivation; no
upstream implementation or AVX code is copied.
