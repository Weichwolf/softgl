# BVH raster frontend: raster-hz

Status: no accepted gain after an initial full-frame native screen. All 36
paired off-mode images (nine poses × four assets) and their depth/stencil planes
are byte identical to accepted libsoftgl. Geometry and textures are unchanged.

Additional conservative current-frame 8×8 depth maxima reject complete BVH groups
with at least 32 source triangles before lazy vertex transformation.
Persistent object-space geometry ownership is explicit through an immutable
geometry epoch. Current-camera frustum tests precede per-frame cached transforms;
original clipping and top-left SIMD coverage feed the existing material shader.
Only final winning records receive vertex lighting attributes. Exact depth ties
choose the earliest original triangle/fan key, independently of BVH order.

640×360, Clang 22.1.8, caller plus three helpers, one quiet AB/BA block per asset,
15 warm-up and 30 measured complete frames per request:

bmw: 14.439→13.987 ms (-3.1%).
t80: 8.799→8.473 ms (-3.7%).
sponza: 27.766→31.861 ms (+14.7%).
bistro: 44.178→45.799 ms (+3.7%).

These are rejection screens, not repeated adoption proofs. Rejected noisy
blocks remain in the receipt. There is no MSAA, browser or sanitizer validation
for this version. Root renderer and live WASM remain unchanged.

The frozen `scene_bvh_raster.inc` in this folder identifies the tested raster
variant; its other frozen library sources and binary hashes are in the receipt.
The current parent implementation has a later traversal variant; do not assign
these timings to it. Algorithm description, upstream research source and
reproduction workflow: [parent](../README.md).
