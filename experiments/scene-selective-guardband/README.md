# Selective guardband bypass at the triangle stage

Status: not adopted. Initial screening off BMW/T-80/Sponza/Bistro gives
-0.99/+0.30/-3.32/-1.81%. Independent three-block off confirmation gives
-0.37/+3.74/-4.49/-2.41%; the T-80 regression prevents general adoption.
36 views have identical stencil/sample planes and foreground/background masks;
BMW/T-80 RGB/depth are exact. Worst mean RGB Sponza/Bistro is 0.05762/0.27273,
max depth difference 0.03007/0.03393. Inspected worst-mean paired images
(Sponza90/Bistro225, preserved in screening/) show no gross missing surfaces
or broken materials, but texture/raster changes are real. No enabled bounds/
rollback/full-mode/sanitizer/WASM acceptance is claimed. Complete attempts,
sources/binaries/assets and quality metrics remain in the proof folders.

Follow-up to [expanded clipping planes](../scene-guardband-clipping/README.md).
Keep accepted per-vertex outcodes and clipping distances unchanged. Only when a
triangle needs lateral clipping but no near/far clipping, and all three NDC
positions fit the bounded [-256,896]×[-256,616] screen guardband, bypass lateral
clipping and retain the original triangle. Other triangles keep the complete
original six-plane clipping. The normal SIMD32 range check is tried first;
only an explicitly enabled out-of-range triangle tries expanded bounds.
This avoids changing the common per-vertex path and its screen-interior tests.

Near/far clipping, 640×360 framebuffer writes, assets, cameras and thread budget
remain. Clipping/16.4 arithmetic can change boundary coverage, depth and RGB;
check_quality.py --samples 0 --measure-guardband reports them separately and
is not a quality acceptance test. Enabled bounds/rollback contracts and worst
changed image inspection are required before any adoption. Defaults/MSAA keep
accepted behavior. No wider ISA, previous frame or extra buffers are used.

Sources: original C11 refinement of the previous experiment and accepted
[geometry.inc](../../libsoftgl/src/geometry.inc). Primary guardband inspiration:
[GLimpSW Rasterizer.cpp at 2f915606](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Rasterizer.cpp),
locally inspected DrawMeshletST/Clipper. Build Clang22 Release from this folder,
then quality and one balanced off block on all four shared packs/cameras at
640×360 with four total threads. Independent all-mode repeats, sanitizer and
WASM validation remain necessary for a promising candidate.
