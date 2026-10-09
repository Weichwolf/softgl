# Exact sample-grid edge reduction and original-coordinate packets

Status: next MSAA architecture prototype; implementation and timings pending.

The original geometry uses 16.8 fixed coordinates, but every existing two-/four-
sample offset and pixel step is divisible by 16. Reduce edge units rather than
rounding vertex coordinates. For an integer edge at a pixel origin `E`, its
top-left bias `b` and an offset `D` divisible by 16:

```
Q = floor((E + b) / 16)
R = (E + b) - 16*Q                 // 0..15
sample inside iff Q + D/16 >= 0
original unbiased sample edge = 16*(Q + D/16) + R - b
```

This identity preserves exact ownership, including negative edges and the
one-unit top-left bias. Prove signed-int32 bounds over the complete sample
rectangle; unsupported ranges retain the original int64 kernel. Existing
16.8 vertex coordinates and all genuine sample positions remain. This differs
from the earlier [quantized MSAA packets](../scene-msaa-quantized-packets/README.md),
which round geometry to 16.4 and change coverage.

Exact interpolation must reconstruct the original int64 edge before float
rounding. Casting `Q` to float, multiplying by 16 and adding the low remainder
can double-round ties. A SIMD128 candidate can convert two signed-int32 lanes
to f64x2, reconstruct the integer edge exactly in double and demote once to
float; combine two pairs into f32x4. Prove this against original casts across
signed bounds, mantissa transitions, biases and remainders in native/WASM.
Coverage reduction alone does not justify changing sample depth expressions.

The current four-triangle packet has 48 bytes of packed 16.4 XY, 96 bytes of
original Z/reciprocal W and a four-byte eligibility mask, padded to 160 bytes.
Its final twelve padding bytes can hold magnitudes of the original 16.8-minus-
16.4 residuals, one byte per vertex/lane (four bits per axis). Both conversions
truncate the same finite coordinate after scaling by powers of two; each
residual is in −15..15. Store the 24 residual signs in currently unused upper
eligibility bits, preserving its four low lane bits. This is a hypothesis to
validate, not an implemented format. Audit every mask consumer and invalid-lane
case. OFF decoding must retain the original 16.4 values exactly.

Such packets could feed a dedicated exact MSAA backend without reconstructing
full vertices and the general per-triangle range machinery for every bin
reference. Their stride need not grow. However MSAA currently prepares no
triangle packets; enabling them has real preprocessing/allocation costs even
with unchanged stride. Existing geometry limits and rollback must include
those costs, and browser peak memory must be measured. Keep original clipped,
cutout, tiny-triangle, between-sample and current-frame occlusion fallbacks.
Do not assume a speedup or suppress raw control regressions.

Sources: our [fixed-coordinate conversion](../../libsoftgl/src/raster_types.h),
[MSAA edge/sample kernels](../../libsoftgl/src/raster_msaa_impl.h),
[existing packet producer/consumer](../../libsoftgl/src/scene_visibility.c),
[packet declarations](../../libsoftgl/src/geometry_types.inc) and the exact
integer identity above. This is our proposed CPU/SIMD128 adaptation; no copied
upstream algorithm or upstream performance result is claimed.

Prototype gates: independent integer/float reconstruction and packet round-trip
oracles, original int64 sample-plane controls, all 108 original model/mode
views, real fast/fallback execution, then repeated OFF/2×/4× AB/BA with the
four unchanged packs/cameras at 640×360 and caller plus three workers.
Adoption additionally needs native ISA/sanitizer/full CTest, actual SIMD128
WASM, live browser/material checks and <4 GiB, commit/push and live update.
Priority remains Bistro > Sponza > BMW F31 > T-80.
