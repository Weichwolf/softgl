# Opt-in four-bit subpixel SIMD32 visibility

Status: adopted; native all-mode confirmation, regression, scalar-reference,
sanitizer, resident-context and live SIMD128/WASM browser gates pass.

GLimpSW quantizes screen vertices to four fractional bits. This original C11
prototype explicitly opts into that precision in the canonical scene producer
and uses unbiased signed-int32 rolling edge vectors for coverage and depth
barycentrics, eliminating eight scalar int64-to-float conversions per surviving
packet and the original quotient/remainder split. Original 16.8 visibility
remains the default and handles any unsupported coordinate or legacy producer.
The prepared geometry, textures, resolution, materials, camera, sample count,
asset and shading frequency remain unchanged. MSAA keeps its accepted path.

The new kernel accepts only finite NDC screen coordinates inside [-1,641] X
and [-1,361] Y. At 16 fixed units per pixel, this bounds vertex differences,
origin edges and every framebuffer sample edge, including inactive packet
lanes, far below INT32_MAX. Coverage still uses the same top-left bias, strict
LESS depth test, masked-material alpha sampler and shader. Triangle records
store these new edges and area for consistent final interpolation. Quantization
can change edge pixels, depth values, UVs and colors, particularly on thin
triangles; it is an intentional approximation, not an exact rendering claim.
No material or mesh is deliberately removed. Quality must be inspected and
quantified before adoption; no production test tolerance is changed.

Sources: local GLimpSW Rasterizer.cpp TrianglePacket::Setup's `vpHalfSize << 4`
and TriangleEdgeVars::Setup at pinned revision
2f915606d50b70fef8859ef29adc9d53f9aee887, available in
[upstream Rasterizer.cpp](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Rasterizer.cpp);
accepted [scene visibility](../../libsoftgl/src/scene_visibility.c) at 3495913;
[current phase accounting](../scene-phase-accounting/README.md).
No upstream implementation code is copied. This uses SIMD128, not AVX512.

Prepare/build with Clang 22.1.8 Release, then check_quality.py --samples 0
and resident_trial.py --pairs 1 --samples 0 for all four shared packs/cameras
at 640×360. Quality logs finite [0,1] depth, unchanged stencil/sample planes,
coverage-mask changes, depth deviations and RGB differences; these gates do
not themselves prove material correctness or acceptable visual quality.
The completed native/sanitizer/WASM/independent performance gates are recorded
in validation/. No universal pixel equivalence is claimed for the quantization.

[Initial screen](screening/README.md), [independent native confirmation and
validation](validation/README.md). Off frame time falls 5.98/8.58/5.82/1.91%
for BMW/T-80/Sponza/Bistro; MSAA controls stay within ±1%. Enabled mode is
exact against the separate scalar raster oracle, while intentional differences
from the former 16.8 renderer are quantified separately.
