# BVH raster frontend: raster-leaf32

Status: not adopted; an initial complete-frame screen gives no broad gain.
All 36 paired off-mode images (nine poses × four assets) and their depth/stencil
planes are byte identical to accepted libsoftgl. Geometry and textures are unchanged.

The same inherited frustum masks and 8×8 conservative current-frame depth
summaries are used, with a leaf-size threshold of 32 instead of four. Larger
leaves aim to reduce traversal while retaining all original triangles.
Current-camera transforms remain lazy and frame tagged. Original clipping,
culling, top-left coverage, depth arithmetic, alpha texture tests and material
shading remain in use. Source-order equal-depth tie handling preserves output.

640×360, Clang 22.1.8, caller plus three helpers, one quiet AB/BA block per asset,
15 warm-up and 30 measured complete frames per request:

bmw: 14.498→13.673 ms (-5.7%).
t80: 8.559→8.163 ms (-4.6%).
sponza: 28.507→32.982 ms (+15.7%).
bistro: 45.409→45.311 ms (-0.2%).

Sponza still regresses, and Bistro's changes are inconclusive. The smaller-scene
initial improvements require repeated proofs before any adoption. This is not
an MSAA/browser/sanitizer validation or a claimed production performance gain.

Reproduce the [parent](../README.md) raster/occlusion build with
`-DSCENE_BVH_LEAF_SIZE=32` during native CMake configuration.
Image/measurement receipts and binary/source hashes are retained here.
