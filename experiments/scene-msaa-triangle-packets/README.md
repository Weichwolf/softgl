# Full-precision SIMD128 triangle packets for MSAA

Status: source audit and implementation plan; not implemented or measured.

The accepted OFF pipeline prepares four triangles together in SoA packets.
The 2×/4× path disables quantized packets and reconstructs three vertices for
each triangle before entering the general raster setup. In Bistro 4×, the
joined raster/capture stage currently costs about 32.4 of 72.5 ms.

Prepare full 16.8 fixed coordinates, reciprocal W/depth and screen bounds for
four triangles in SIMD128, then directly dispatch admitted MSAA triangles with
that setup. Precompute real sample-position edge offsets once per triangle,
while retaining the accepted hierarchy, top-left rule, alpha sampling and depth
arithmetic. Reuse setup across all bin references instead of repeatedly
converting coordinates and computing areas in generic entry points.

Guard integer products with explicit bounds; large or clipped uncertain
triangles retain the int64/general path. The prior
[exact scaled kernel](../scene-msaa-exact-kernel/README.md) accelerated inner
coverage but left much of this entry/setup intact and did not supply an
acceptable broad gain. Measure setup elimination separately from changed
coverage precision. Avoid a variant that merely adds a branch to ordinary MSAA.

Require independent full sample/resolved plane comparisons, forced large-range
and clipping fallbacks, native SIMD128 ISA audit, all-four OFF/2×/4× repeated
AB/BA, sanitizer and WASM/browser validation before adoption.

Sources: [A4 section 6](https://fileadmin.cs.lth.se/graphics/research/papers/2013/a4/a4.pdf),
[SimdRast packet setup](https://github.com/rasmusbarr/simdrast/blob/e6a2a07fa92e55ba11107915455685f8ef7cd60c/SimdRast/TriangleSetup.cpp),
[GLimpSW](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/README.md)
and our [accepted OFF packets](../scene-triangle-packets/README.md).
Upstream speed figures and wider SIMD are not our performance evidence.
