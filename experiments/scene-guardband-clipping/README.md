# Bounded guardband clipping for canonical quantized scenes

Status: not adopted. One balanced off screening block gives BMW/T-80/Sponza/
Bistro +10.67/-0.01/-1.12/-0.62%; no broad advantage. 36 enabled views have
identical stencil/sample planes and foreground/background masks. BMW/T-80 RGB
and depth are exact. Sponza/Bistro worst mean RGB errors are 0.1611/0.2727
bytes/channel, max depth changes 0.03007/0.03394. These are diagnostic metrics,
not complete material/geometry acceptance. No enabled rollback/full-mode,
sanitizer or WASM adoption validation was pursued after failed screening.
Source/binary/asset hashes, all attempts and quality metrics are in screening/.

Expand lateral clipping planes to a 256-pixel guardband around the 640×360
viewport. Near/far clipping remains unchanged and the raster bounds still
restrict writes to the framebuffer. This lets many triangles crossing screen
edges retain their original vertices instead of creating clipped fans and
barycentric attribute bases. SIMD32 raster coordinates accept [-257,897] X and
[-257,617] Y (including a one-pixel rounding margin): determinant/edge
magnitudes remain below signed 32-bit range. Unsupported ranges retain the old
16.8 fallback. Explicit softgl_scene_guardband requires an active quantized
scene and resets each begin; ordinary/default/MSAA paths retain old clipping.

Clipping/quantization arithmetic changes boundary coverage, depth and attributes,
so enabled mode is an approximation rather than an exact-image optimization.
The quality runner's --measure-guardband option reports RGB/depth/coverage
changes without asserting exact depth. It still checks stencil and sample
planes; passing that check alone is not a quality acceptance or proof of
complete geometry/material correctness. Worst changed views must be inspected
and enabled-mode near/far/guard-bound/rollback contracts added before adoption.

Sources: [GLimpSW Rasterizer.cpp at 2f915606](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Rasterizer.cpp),
locally inspected DrawMeshletST/Clipper and EnableGuardband; original C11 bounded
integration in accepted d5e79c7 [geometry.inc](../../libsoftgl/src/geometry.inc)
and [scene visibility](../../libsoftgl/src/scene_visibility.c).
No upstream source is copied, no assets changed, no previous-frame reuse or
extra ISA is introduced. Build Clang22 Release using this folder, then run
check_quality.py --samples 0 --measure-guardband and resident_trial.py --pairs 1
--samples 0 with the four identical prepared packs/cameras and four total
threads at 640×360. Screening alone never establishes adoption.
