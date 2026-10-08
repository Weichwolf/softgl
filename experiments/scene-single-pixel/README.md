# Exact one-pixel visibility kernel

Status: not adopted; 36 exact off-mode views and three geometry contracts pass,
but independent three-block all-mode confirmation does not reproduce a gain.

The accepted renderer's joined phase measurements show visibility costs around
40–48% of complete-frame time in T-80/Sponza/Bistro; position transforms cost
3–8%. This trial targets the actual visibility loop: an opaque triangle window
that visits one pixel evaluates one scalar depth value instead of constructing
four SIMD lanes, edge-step vectors and unused barycentric values. The original
top-left coverage, integer edges, float operation grouping, depth comparison,
record allocation, primitive winner and material resolve remain. Only successful
one-pixel depth writes build the full interpolation-edge record. Masked and larger
windows keep the accepted SIMD path. No asset, shading frequency, storage or ISA
change; scalar C remains available in native and SIMD128/WASM source builds.

Sources: original C11 extension of
[accepted scene visibility](../../libsoftgl/src/scene_visibility.c) at 3495913,
guided by [current phase accounting](../scene-phase-accounting/README.md).
Unlike [coarse shading](../scene-coarse-shading/README.md), no color approximation
is intended. Native quality/coverage comparisons must verify the scalar math.

Prepare/build this folder with Clang 22.1.8 Release, then check_quality.py
--samples 0 and resident_trial.py --pairs 1 --samples 0 at 640×360 for all four
unchanged assets. Evidence: [initial screen](screening/README.md) and
[independent confirmation](confirmation/README.md). Initial apparent off gains
(-1.3/-4.3/-10.2/-1.0%) disappear: +0.2/+1.4/+0.9/-0.2% for
BMW/T-80/Sponza/Bistro. No production library, assets or live WASM change.
