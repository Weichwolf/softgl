# Shade one contribution per material within an MSAA pixel

Status: V6 accepted for the model viewer; V4/V5 rejected by alpha checks.
BMW's 100 FPS target remains open. No new Mesa/GLimpSW timing is claimed.

Retain fresh full-resolution coverage and every actual 4× sample's winning
depth/material. Final shading may group different triangle winners of one
material inside one framebuffer pixel and shade the first covered contributor
once. Write that color only to the group's existing sample mask. Different
materials and uncovered samples remain separate. This is an explicit opt-in
for canonical deferred geometry, copied into each material when it is captured;
each successful scene begin resets the policy. Ordinary GL rendering defaults
to the existing exact grouping, and off/2× behavior stays unchanged.

The viewer enables sharing only for non-alpha-tested materials whose actual
uploaded albedo alpha channel is constant. The loader computes that property
while converting native pixels; browser uploads inspect their final RGBA bytes,
and sharing an uploaded texture also copies its property. No texture pixels,
geometry or physical sample positions are changed. Four-sample BMW/T-80 now
use the deferred path above a general one-triangle-per-eight-pixel threshold;
other sample modes retain the previous adaptive choice.

Subpixel normals, lighting and UVs are approximate; sharp UV or geometric seams
within one material can change substantially at individual pixels. There is no
universal one-byte RGB guarantee. Every frame recomputes geometry and lighting,
with no history, neighboring-pixel reuse, mesh simplification or half-resolution
shading. Alpha-tested geometry keeps its previous shading.

Sources: our [Full control and CPU profiles](../scene-full-msaa-control/README.md),
[existing sample grouping](../../libsoftgl/src/scene_visibility.c),
[exact uniform metadata](../scene-msaa-uniform-metadata/README.md),
[earlier low-density trial](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/scene-msaa-low-density/README.md), and
[model upload/material selection](../../wasm/model_wrap.c).
This within-pixel material approximation and its eligibility policy are our
proposal; no upstream speedup is used as evidence.

## Native acceptance

Parent Full `c4cb731`, Clang 22.1.8, SIMD128 only, 640×360 and four total
threads (caller plus three helpers). Identical original packs and camera orbits;
60 warmup/30 measured frames per request, complete finish/resolve/readback and
output copy. Three quiet balanced AB/BA blocks per scene/sample configuration
retain 144 selected timings and every rejected attempt. Browser checks,
compilation and profiling did not overlap the timing campaign.

| Scene | Samples | Full → V6 ms | Full → V6 FPS | FPS change |
| --- | ---: | ---: | ---: | ---: |
| bistro | 0 | 32.0895 → 31.8157 | 31.16 → 31.43 | +0.86% |
| bistro | 2 | 48.1498 → 47.7616 | 20.77 → 20.94 | +0.81% |
| bistro | 4 | 53.9592 → 54.2289 | 18.53 → 18.44 | -0.50% |
| sponza | 0 | 20.7631 → 21.3607 | 48.16 → 46.82 | -2.80% |
| sponza | 2 | 35.9404 → 36.2061 | 27.82 → 27.62 | -0.73% |
| sponza | 4 | 38.1578 → 33.4036 | 26.21 → 29.94 | +14.23% |
| bmw | 0 | 9.7183 → 9.7355 | 102.90 → 102.72 | -0.18% |
| bmw | 2 | 15.7013 → 15.7663 | 63.69 → 63.43 | -0.41% |
| bmw | 4 | 17.5345 → 16.8752 | 57.03 → 59.26 | +3.91% |
| t80 | 0 | 6.0636 → 6.0932 | 164.92 → 164.12 | -0.49% |
| t80 | 2 | 12.6394 → 12.6343 | 79.12 → 79.15 | +0.04% |
| t80 | 4 | 14.3527 → 11.5293 | 69.67 → 86.74 | +24.49% |

Adopted gains concern 4× MSAA: Sponza +14.23%, BMW +3.91%, T-80 +24.49%
FPS. Bistro is within noise (−0.50% FPS), with no improvement claimed. Off/2×
controls show no established gain; Sponza off is −2.80% FPS in this campaign.
These controls and their raw values are retained, rather than discarded.

V4's apparently larger gains (+11.88% Bistro, +18.24% Sponza, +5.97% BMW,
+27.15% T-80) were rejected: canonical admission also supports alpha masks,
and sharing their shade changed Sponza alpha from 194 to 144 at one checked
pixel. V5 excludes masks but still merges variable-alpha opaque textures in
Bistro. V6 records an explicit policy per material and checks actual uploaded
alpha consistency, rather than relying on its opaque declaration. V4/V5 source,
timing/quality receipts and failed browser logs remain separate in the archive;
their speedups are not product results.

## Quality and platform checks

All 108 native pairs (four scenes × off/2×/4× × nine camera angles) retain
byte-identical resolved and physical-sample depth buffers; stencil and sample
stencil hashes match. Off/2× RGBA hashes are exact. At 4× the largest mean RGB
channel error across the nine views is measured below, in byte units:

| Scene | Worst-view RGB MAE /255 | Max RGB channel error | Pixels with a channel error >8 |
| --- | ---: | ---: | ---: |
| bistro | 0.1147 | 121 | 0.43% |
| sponza | 1.0781 | 91 | 5.02% |
| bmw | 0.8895 | 187 | 2.47% |
| t80 | 0.3602 | 90 | 1.64% |

[Native before/after pairs](validation/checks/images/) show Full on the left,
V6 on the right at each scene's largest mean-error view. Geometry and materials
remain present; BMW's subpixel body seams can acquire isolated bright pixels.
These are static comparisons, not a formal temporal/perceptual-quality study.

All 760 production native CTests pass with unchanged GL tolerances. The new
regression has 90 paired frames, deliberate UV-seam approximations at 4×,
exact depth/coverage/alpha, off/2× controls, separate materials, legacy fallback,
reset and per-material capture policy. Its masked-alpha extension detects V4's
fault. Four independent contracts also pass ASan/UBSan and actual SIMD128 WASM:
merge, canonical positions, physical MSAA/admission/rollback, and coverage.
Actual native instruction scans find XMM but no AVX/YMM/ZMM; all 22 compiled
engine `.text` sections match the measured and production builds.

The actual localhost module has 108 original-model browser views: off/2× RGBA
exact, 4× RGB error quantified and **zero observed alpha error in every view**.
The experimental browser gate permits at most one alpha byte, but adoption
verification additionally demands zero for these retained observations. It
checks original triangle/material counts, removed Shading/Meshes controls and
exports, three helpers plus caller, and peak heap 2,845,376,512 bytes (2.65 GiB),
below 4 GiB. Preview navigation covers 234 cases, all sample modes, benchmark
cancellation and context recycling.

Early gate failures are retained: the first helper omitted the include reused
by the MSAA fixture; its retry incorrectly added fast-math absent from the
preview, causing the existing positions contract to fail. The successful WASM
recipe matches the actual preview's arithmetic flags. No native/WASM contract
tolerance was relaxed to accept those failures. Alpha-mask eligibility was
fixed in code, and V6 satisfies the original exact-alpha observations as well.

## Reproduction and retention

`validation/` closes frozen V4/V5/V6 sources/recipes, flags, uninstrumented
native timing/quality receipts, platform gate recipes/logs, actual browser
identities and images. Executables, WASM binaries, build directories, downloaded
assets and large raw frame buffers remain untracked.

Verify the archive with `python3 experiments/scene-msaa-material-pixel-merge/archive_adoption.py`.
For a fresh V6 build use `prepare.py --baseline-revision c4cb731 --low-density
--output-root <new-root>`, then the retained CMake/native resident recipe.
The archived `resident_diagnostic.py`, `check_quality.py`, `contracts.py` and
browser scripts identify their actual drivers, sources, packs and modules.
