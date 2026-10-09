# Reject fully hidden MSAA pixels before depth interpolation

Status: native exactness validated, screen not adopted; no confirmed gain.

After exact geometric sample coverage, compare each covered sample's old depth
with a conservative lower bound for the entire triangle. If every covered old
depth is strictly below that bound, all covered samples must fail LESS/LEQUAL;
skip their four depth interpolations and shading. The existing whole-triangle
Hi-Z query remains. This finer test can help where a 4×4 hierarchy cell contains
holes or nearer/farther surfaces and cannot reject the whole triangle.

Reuse the existing 2e-6 offset-scaled interpolation margin, require finite
offsets and vertex depths in [0,1], and exclude stencil and nonmonotonic depth
functions. Exact coverage still sets the coverage-seen flag. Strict rejection
cannot conceal an equal-depth contribution from a later material pass; weak
visibility classification remains unchanged. No geometry, material, sample,
draw order, buffer layout or rendering resolution changes.

Screen original 640×360 model/camera assets with four total native threads and
actual resolve/readback. Positive evidence needs repeated balanced all-four
off/2×/4× measurements, exact native model planes, regression/sanitizer and
actual WASM/browser checks before adoption, commit/push and live refresh.

Sources: our [current native profiles](../scene-full-msaa-control/README.md),
[existing depth-bound proof](../../libsoftgl/src/raster_hz.h),
[sample-depth capture](../../libsoftgl/src/raster_msaa_impl.h), and
[current whole-triangle MSAA occlusion](../scene-msaa-occlusion/README.md).
This experiment applies the established local bound at individual pixels;
no new upstream result is claimed.

## Native observations

Parent Full `c4cb731`, Clang 22.1.8, SIMD128 only. One quiet balanced AB/BA
block per original model at genuine 4× MSAA, 60 warmup/30 orbit frames,
640×360, four total threads and resolved readback. BMW time changes −0.67%,
Bistro +0.06%, Sponza +19.51%, T-80 +1.66%. No useful whole-frame gain is
established. Raw accepted/rejected records retain every attempt; short-screen
variation and code changes are not independently separated here.

All 108 independent native original-model views across off/2×/4× and nine
angles are exact in RGBA/depth/stencil/sample-depth/sample-stencil. No new
pixel-rejection counter, independent bound fixture, sanitizer, actual WASM or
browser adoption gate was run. This tested implementation remains private;
this pixel-depth shortcut was not integrated into the product.

The closed `validation/` archive retains frozen sources/recipes, build flags,
native ISA checks, accepted/rejected raw timings and independent quality
receipts. Verify it with `python3 tools/scene_trial_archive.py verify experiments/scene-msaa-pixel-depth-bound`.
These exact sampler/depth trials are separate from the subsequent
[within-pixel material merge](../scene-msaa-material-pixel-merge/README.md).
