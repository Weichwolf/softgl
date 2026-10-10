# Project constant-normal lighting before pixel interpolation

Status: own material architecture proposal; implementation and timings pending.

The current canonical shader interpolates three diffuse-light components and
three half-vector components even when its normal texture is constant. For a
constant tangent normal, project both encoded vectors onto that normal once
per visible triangle vertex, after current attribute generation and clipping.
Store the two scalars in the canonical record's unused UV0.z/UV2.z slots.
Interpolate those scalars per fragment, then apply the original clamp, specular
power, albedo/reflection/tint and exact alpha path. This reduces six vector
component interpolations to two without changing the original normal texture,
geometry, resolution or four current MSAA samples. It is current-frame algebra,
not cached illumination or shading at a lower output resolution.

The constant part of a linear dot product commutes with interpolation in real
arithmetic. Floating-point subtraction, perspective normalization and changed
summation order can introduce small differences; quantify them against the
original shader rather than assuming byte identity. Keep original color and
half-vector attributes intact so raw/legacy/mixed packets can use the original
shader. An explicit prepared-record marker in unused canonical data must never
be inferred from arbitrary legacy attributes. Nonfinite coefficients, invalid
programs, budget failure and rollback retain the original behavior. Both native
and WASM remain SIMD128, with no new per-pixel or triangle buffer.

First census how many actual shaded groups use a constant normal and how much
visible-triangle preparation is required, then implement a distinct shorter
shader for eligible canonical packets. Test arbitrary constant normal colors,
mixed prepared/raw records, clipping, changing light/material/program data,
all four models, actual alpha/sample depth and OFF/2×/4×. Require repeated quiet
native 640×360/four-thread AB/BA and sanitizer/SIMD128 WASM/browser checks before
adoption. Eligibility or fewer interpolations is not an FPS gain, and this does
not establish that BMW can reach 100 FPS.

A separate later approximation could treat a weak, unresolved normal map as
a bounded constant component plus residual detail. That would require texture
revision/lifetime summaries, footprint/variance limits, measured lighting error
and actual image/motion inspection. It is not implemented or part of the first
constant-texture algebra variant. Do not conflate it with normal-map removal,
the withdrawn Coarse/Mesh UI paths, or a blanket material simplification.

Sources: own specialization of
[current diffuse/specular interpolation](../../libsoftgl/src/scene_visibility.c),
[current visible and clipped attributes](../../libsoftgl/src/geometry.inc) and
[existing constant-texture detection](../../libsoftgl/src/fragment.c).
The earlier [numerator-plane trial](../scene-shading-planes/README.md) keeps all
attribute dimensions and found no broad gain; this proposal instead removes
four dimensions for the proven constant-normal case. No upstream speedup is
used as evidence.
