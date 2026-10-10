# Eight exact MSAA edge lanes in SIMD128

Status: two exact native variants screened; neither adopted. No FPS gain established.

The current captured 4× raster kernels use four signed-32 lanes for the four
coverage samples of one pixel. Try eight signed-16 lanes for two adjacent
pixels while retaining four float32 lanes for each pixel's original depth
expression. This doubles coverage lanes within SIMD128, without reducing
sample count, shading resolution, geometry or textures.

For a fixed-point edge, `floor((raw_edge + top_left_bias)/256)` preserves its
sign. Pixel increments are exactly divisible by 256. Check the minimum and
maximum quotient for every edge and sample over the complete clipped box,
including an inactive odd-width partner. Only admit a box when these extrema
fit signed 16 bits. All other triangles use the accepted original kernels.
SIMD16 recurrence uses modular vector addition; every consumed value is in
the checked range. Final unused increments need not be interpreted as edges.

Keep the original low eight edge bits and a correction for top-left -1 bias
at a zero remainder. Sign-extend a pixel's four short quotients, correct them,
and reconstruct the original int32 raw edges before the original float
conversion, reciprocal, weighted depth expression, clamp and comparisons.
Keep original row spans, ascending pixel order, alpha packet boundaries,
selected sample/center point, winner writes and hierarchy callbacks.

The common admitted kernel handles small triangles and larger opaque triangles;
larger cutouts retain their old general route. All guards use actual framebuffer
bounds. No new fixed-size specialization, buffer or history cache is introduced.
The initial conservative four-pixel empty-box prefilter was not implemented:
it adds a second predicate to covered pixels. This trial instead increases the
lanes of the existing exact predicate.

Own SIMD lane-layout proposal based on
[the accepted rebased edges](../scene-msaa-rebased-edges/README.md),
[the current small/rebased sample kernels](../../libsoftgl/src/scene_visibility.c),
[the earlier exact quotient/sign derivation](../scene-simd-coverage/README.md)
and [fresh accepted-parent profiles](../scene-msaa-batched-hiz/README.md).
The previous [four-pixel interior trial](../scene-msaa-four-pixel-interiors/README.md)
required all sixteen samples inside the triangle and changed depth rounding;
this trial also processes boundary masks and targets exact original arithmetic.

Freeze accepted `52aff7b` with Clang 22/SIMD128. Require independent original
material/position/MSAA/worker contracts, exact quotient/range/reconstruction
checks, actual fast and fallback execution, strict depth-hierarchy checks and
ISA audit before a quiet native screen. A useful screen needs three balanced
AB/BA blocks for all four scenes and off/2×/4×, exact original-model planes,
sanitizer/WASM/browser gates, then commit/push and live WASM refresh.

## Variants and native result

V2 checks affine extrema over the entire clipped box, including `x == right`
for an inactive pair partner regardless of the row-span start parity. It runs
Hi-Z before extra pair preparation. The initial V1 draft was built but never
tested or timed; its weaker global-width parity guard is not retained as a
validated result.

V3 skips the extrema calculations only when the **original** pre-clipping box
is at most 8×8. Vertex spans are then at most 2047 fixed units. For any pixel
sample used by the kernel, including the inactive partner, the edge magnitude
is bounded by `w*h + 512*h + 256*w <= 5,762,305`; its biased quotient fits signed
16 bits. Larger boxes retain V2's range guard. This is a triangle-size proof,
independent of a fixed framebuffer resolution.

Uninstrumented Clang 22.1.8/SIMD128, 640×360, four total threads and identical
original asset packs/cameras. Each variant has **one screening AB/BA block** per
scene, with 60 warm-up and 30 rotating measured frames per request, including
finish/resolve/readback. Positive percentages mean more frame time:

| Scene | V2 control → candidate ms | V2 time change | V3 control → candidate ms | V3 time change |
| --- | ---: | ---: | ---: | ---: |
| bistro | 47.8959 → 50.8670 | +6.20% | 48.3171 → 50.0221 | +3.53% |
| sponza | 32.9484 → 33.4150 | +1.42% | 32.8717 → 44.7255 | +36.06% |
| bmw | 16.2555 → 16.9769 | +4.44% | 16.4526 → 16.7484 | +1.80% |
| t80 | 11.4507 → 11.7928 | +2.99% | 12.2849 → 13.4311 | +9.33% |

Every selected endpoint has identical RGBA/depth/stencil and physical sample
depth/stencil hashes. V2's first Sponza block was rejected for foreign CPU
load; the entire rejected block remains in the receipt. V3's large Sponza
screen discrepancy passed that load gate but does **not** reproduce in the
separate paired hardware diagnostic below. T-80 V3 is also variable between
requests. These single screens establish no robust speedup or pure mechanism
cost. They do not prove that all signed-short coverage designs are slower.
No acceptance repeat, off/2× timing campaign, 108-view quality campaign,
sanitizer or actual WASM/browser candidate gate was run: useful native 4×
performance was absent. Production renderer and live viewer are unchanged.

## Independent checks and actual execution

Both frozen variants pass all four existing material/position/MSAA/coverage
contract families and the strict depth-hierarchy fixture. The hierarchy oracle
uses `-fno-fast-math -ffp-contract=off`; each sample mode checks 131,072 tracked
writes, 1,048,576 numerical bounds, and 1,536 exact Hi-Z on/off frames and sample
queries with 1/3/8 helpers. ISA scans of the actual libraries and drivers find
no AVX/YMM/ZMM instructions or registers.

An independent int64/direct-float oracle exercises operations extracted from
each actual frozen kernel: range admission, paired coverage, raw-edge
reconstruction and modular row/pair recurrence. V2 passes 786,432 range checks,
1,272,893 pair masks and 20,366,288 raw/float conversions. V3 passes 786,432,
1,278,406 and 20,454,496 respectively, plus 3,122,160 small-box pixel-square
corner checks. These are empirical arithmetic checks, not a universal
floating-point or complete renderer proof.

The first counted MSAA fixture failed to compile: an outer `main` macro
collided with the unchanged fixture's nested rename. No dispatch executable
ran. V2's screen was mistakenly started before that diagnostic was corrected;
it remains a failed-performance screen, not an adoption result. The corrected
binding renames only the outer entry function in a copied fixture, preserving
all assertions. The existing general fixture then reaches only **one** new
path pixel, so it is insufficient to validate broad execution.

Both variants additionally run the original 576-case small-triangle fixture
against the accepted parent's actual library and the candidate's actual
uninstrumented library. All resolved and physical sample color/depth/stencil
hashes match. Cases include small and large extents, clipped/boundary placements,
alpha cutouts, overlap, 2×/4× samples and 1/3/8 helpers. Separate counted
libraries produce the same 576 hashes and reach 846 short-path admissions,
300 range fallbacks, 7,209 visited real pixels and 12,054 depth-passing samples.
The instrumentation is absent from FPS binaries.

A separate V3 census runs nine angles per original scene with two identical
renders per angle, four total threads and original cameras. Its 36 control/
counted pairs preserve every exported endpoint plane. Counts include Hi-Z and
other early exits in attempts; admissions are complete dispatched triangles,
not a census of all asset triangles:

| Scene | Attempts | Admissions | Range fallbacks | Real pixel visits | Passing samples |
| --- | ---: | ---: | ---: | ---: | ---: |
| bistro | 2,183,494 | 1,881,682 | 153,332 | 18,223,120 | 5,648,464 |
| sponza | 1,403,306 | 1,246,456 | 52,310 | 12,830,658 | 7,462,510 |
| bmw | 638,396 | 491,460 | 71,020 | 8,779,968 | 2,890,884 |
| t80 | 535,700 | 423,832 | 57,810 | 5,648,664 | 1,985,282 |

Thus the new kernel reaches about 77–89% of its actual attempts. Narrow
eligibility is not the reason for its unsuccessful screen. Coverage packing
saves a predicate but raw-edge sign extension/reconstruction and preparation
add work before the unchanged four-float depth and final material shading.

A separately launched paired resident `perf stat` diagnostic on Sponza has
100% running time for cycles/instructions/generic cache misses. It aggregates
two enabled 60-warm/30-rotating requests per variant, plus their worker restart
and endpoint, after import and disabled-counter warm-up. Candidate cycles
increase 3.99%, instructions 9.03%; generic cache misses change −0.18%. The
profiled-request median is 33.6364 → 33.6863 ms, much closer than the +36.06%
initial screen. Counters are diagnostic only; they establish neither DRAM
bandwidth nor complete scheduling/frequency isolation. All endpoint hashes
match. The unexplained large screening discrepancy is retained.

## Reproduction

Use `prepare.py --output-root <fresh-root>` for V2; add `--small-proof` for V3.
The archived frozen recipes, source overrides, actual library/binary identities,
raw selected/rejected timings and independently bound check logs are under
`validation/`. Reconstruct with the archive's parent revision and overrides;
configure its CMake recipe with Clang 22 and `SCENE_TRIAL_ROOT=<fresh-root>`.
Run `python3 experiments/scene-msaa-short-coverage/verify.py` to verify the
archive. Binaries, builds, assets, perf data and raw image files are untracked.
