# Cached primary-ray candidate frontend

Status: 36 exact off-mode paired images, nine poses per asset; full-frame native
screening rejects this version. Color/depth/stencil/sample-plane hashes all match accepted
rolling SIMD. Candidate diagnostic logs confirm the BVH path is active.

One persistent object-space AABB hierarchy plus lazy current-frame vertex and
triangle preparation replaces eager transformation and raster traversal. Leaf
callbacks still use exact 16.8 top-left coverage, culling, original clipping,
LESS tests and alpha texture sampling. The original shader resolves winners.
A per-bin current-frame hash reuses prepared winning triangle records. Equal
depths retain the earliest original triangle ID. Blended passes remain ordered.

The caller explicitly guarantees immutable positions/indices until the geometry
epoch changes. Command signatures and common affine-view/symmetric-projection
eligibility are revalidated each frame. Camera changes invalidate lazy transforms
through atomic frame tags. Unsupported commands retain the existing renderer.
Native BVH build/traversal uses a private C++ research bridge to pinned TinyBVH;
this is not a production dependency or a completed C11 backend. Sources and
integration requirements: [parent](../README.md).

Reproduce `prepare.py --backend scalar`, the native CMake build, then
`check_quality.py --samples 0` with the project NumPy/Pillow interpreter.
Geometry and material textures are unchanged. No MSAA/sanitizer/browser proof
or accepted performance improvement is claimed yet.

One quiet AB/BA block per asset: full-frame times BMW 14.43→23.87 ms,
T-80 9.03→12.29 ms, Sponza 28.55→64.55 ms, Bistro 44.31→125.43 ms.
These are complete-frame measurements, not visibility-only timings. The exact
images and transformed-vertex savings do not establish a performance win.
