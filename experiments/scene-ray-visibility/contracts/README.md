# Native BVH geometry contract

Status: the raster/occlusion candidate passes 162 paired full-plane frames with
one, three and eight helpers, MSAA off/2×/4×, inherited frustum masks and leaf
sizes four and 32. The leaf32 receipt identifies its executable and sources.
MSAA and orthographic cases use the existing fallback; perspective off cases
activate the BVH, as their RAYS diagnostic logs confirm.

The fixture derives from `tests/scene_positions.c` and retains its original
exact depth/stencil/sample-plane and at-most-one-byte channel comparisons.
It changes positions and triangle indices in place between frames, advances
the explicit geometry epoch, restores the source geometry with a further epoch,
and varies cameras, culling, material callbacks, alpha tests and clipping.
Invalid attribute callbacks and an oversized span must restore the complete
pre-frame color/depth buffers. Six rollback checks pass.

Build `bvh_contract` in this experiment after preparing the raster/occlusion
backend, then run it with `SOFTGL_RAY_STATS=1`. The original leaf4 run is in
`native.txt`; the source/binary-bound leaf32 run is in `leaf32.txt` and its receipt.
This contract does not prove the full 751-case regression suite, sanitizer or
WASM/browser behavior for the prototype. No production adoption is claimed.
