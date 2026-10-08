# BVH raster frontend: raster-planes

Status: not adopted; an initial complete-frame screen gives no broad gain.
All 36 paired off-mode images (nine poses × four assets) and their depth/stencil
planes are byte identical to accepted libsoftgl. Geometry and textures are unchanged.

A conservative inside/outside frustum-plane mask is inherited by each child.
Proven inside planes are omitted for all descendants. Leaves contain up to four
triangles; 8×8 current-frame depth summaries reject BVH groups of at least 32.
Current-camera transforms remain lazy and frame tagged. Original clipping,
culling, top-left coverage, depth arithmetic, alpha texture tests and material
shading remain in use. Source-order equal-depth tie handling preserves output.

640×360, Clang 22.1.8, caller plus three helpers, one quiet AB/BA block per asset,
15 warm-up and 30 measured complete frames per request:

bmw: 14.317→13.833 ms (-3.4%).
t80: 9.214→8.129 ms (-11.8%).
sponza: 27.305→32.880 ms (+20.4%).
bistro: 45.152→45.389 ms (+0.5%).

Sponza still regresses, and Bistro's changes are inconclusive. The smaller-scene
initial improvements require repeated proofs before any adoption. This is not
an MSAA/browser/sanitizer validation or a claimed production performance gain.

Reproduce the [parent](../README.md) raster/occlusion build with
`-DSCENE_BVH_LEAF_SIZE=4` during native CMake configuration.
Image/measurement receipts and binary/source hashes are retained here.
