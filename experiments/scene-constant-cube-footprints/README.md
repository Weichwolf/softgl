# Exact constant cube-map footprint shortcut

Status: two native variants screened and exactness validated, not adopted.

An offline census of the unchanged original cube textures finds identical RGBA8
values at all four taps of 79.01% of BMW interior bilinear cells, 77.34% of
Sponza cells and 81.45% of Bistro cells. These are texture-cell populations,
not measured shader hit rates or projected frame gains.

Store one byte per base-level cell indicating four identical taps. An eligible
scalar fragment reads one RGBA8 texel and retains the original two-stage float
filter order. A four-fragment cube packet uses the shortcut only if all four
interior cells are flagged. All other footprints, wrap seams, other texture
targets and nearest filtering retain ordinary sampling. This reduces loads
and conversions, preserving arithmetic even for identical float taps.

The auxiliary table budget is 64 MiB per context; small cube faces need one
byte per original texel, with invalid edge cells zeroed. Updates rebuild after
joining workers, deletion releases the budget, and allocation failure falls
back without a new GL error. This adds no coarser colors, texture resolution
change, lost geometry or changed physical MSAA samples.

Freeze the Full renderer and screen native original assets at 640×360, four
total threads and full resolved readback. A successful variant needs repeated
off/2×/4× AB/BA controls, exact model planes, native/sanitizer/WASM sampler and
lifetime tests, and actual browser memory/framebuffer validation before
commit/push and live WASM refresh.

Sources: the [current CPU profiles](../scene-full-msaa-control/README.md),
[rejected large footprint storage](../scene-cube-footprint-packing/README.md),
[original generated environment textures](../../tools/pack_gltf.py),
[scalar cube filter](../../libsoftgl/src/fragment.c), and
[paired-tap vector filter](../../libsoftgl/src/frag_packet.h).
This exact constant-cell shortcut is our own proposed sampler optimization.

## Native observations

Parent `c4cb731`, Clang22, native SIMD128 only; one balanced AB/BA block per
original asset at 640×360/4× MSAA, four total threads, 60 warmup/30 measured
orbit frames and full resolve/readback. These are short screens, not repeated
acceptance results.

| Variant | BMW time change | Bistro | Sponza | T-80 |
| --- | ---: | ---: | ---: | ---: |
| Adjacent-cell guards | +2.05% | +0.59% | −1.40% | −0.07% |
| Compact tag checks | +1.20% | +0.23% | −2.50% | +1.59% |

The compact variant uses zero last-row/column tags to reject wrap seams.
Clamped duplicate taps at the first edge are a subset of the constant interior
cell, so additional adjacency tests are unnecessary. Four zero/one tags are
ANDed before one decision. Scalar and packet interpolation order is retained.

Both variants match all 108 independent native model views across off/2×/4×
in RGBA/depth/stencil/sample-depth/sample-stencil hashes, and both actual native
archives pass the no-AVX/YMM/ZMM check. Sponza's small screen improvement needs
independent confirmation; the BMW target is not advanced by these variants.
No complete sampler/update fixture, sanitizer, actual WASM or browser adoption
gates are claimed. Neither sampler variant was integrated into the product.

The [census script](census.py) binds per-face cell counts to unchanged native
pack hashes. Its logical population is not a measured shortcut hit rate.

The closed `validation/` archive retains frozen sources/recipes, build flags,
native ISA checks, accepted/rejected raw timings and independent quality
receipts. Verify it with `python3 tools/scene_trial_archive.py verify experiments/scene-constant-cube-footprints`.
These exact sampler/depth trials are separate from the subsequent
[within-pixel material merge](../scene-msaa-material-pixel-merge/README.md).
