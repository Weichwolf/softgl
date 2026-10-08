# Conservative occlusion queries on meshlet bounds

Status: research candidate, not implemented or measured.

Test visibility for whole geometry groups before their fine triangle setup and
raster work. Use current-frame opaque occluders and conservative projected
bounds, with an interleaved front-to-back traversal. Unlike the rejected
scene-hierarchical-depth trial, query a cluster rather than every triangle,
and consider masked depth/coverage summaries to avoid rescanning dirty pixels.
Keep visible uncertain groups, clipped/near-plane groups, cutout holes and
unsupported transforms. Bound depth error explicitly; never use approximate
occlusion to remove actually visible geometry. No previous-frame image/depth
reuse. Preprocessing and scratch memory must have explicit budgets/revisions.

Source: locally cloned `~/Git/MaskedOcclusionCulling`, pinned
`1fd7974456cffa481a1a534328a1d02523d19ce8`:
[README](https://github.com/GameTechDev/MaskedOcclusionCulling/blob/1fd7974456cffa481a1a534328a1d02523d19ce8/README.md),
[masked hierarchy implementation](https://github.com/GameTechDev/MaskedOcclusionCulling/blob/1fd7974456cffa481a1a534328a1d02523d19ce8/MaskedOcclusionCullingCommon.inl).
It separates coverage from depth and provides SSE4.1 as well as wider variants;
libsoftgl must use a C11 SIMD128 adaptation on both native and WASM. Upstream
performance and conservative precision are not proofs for our renderer.

Measure cluster rejections, fine triangles avoided, summary overhead and total
frame time with the same four assets/cameras, four threads and native 640×360.
Require independent coverage/material checks, false-occlusion contracts,
all-mode AB/BA, sanitizers, WASM and browser heap validation before adoption.

## Additional local source inspection

EmberGL (`~/Git/EmberGL`, `6c197451257d3b2d800b40d4e21e5e3fe4f52ae7`)
bins **clusters** using projected bounds, tests cluster depth bounds against
tile Hi-Z, and calls the cluster rasterizer only for survivors. The latter
performs vertex transformation or retrieves a post-transform cache entry.
This can avoid vertex processing and triangle setup as well as fine raster
work. Our current scene route prepares positions and triangle references
before the fine raster phase; adding another test there cannot recover that
earlier work.

Primary implementation inspected locally:
[bounds and cluster binning](https://github.com/EmberGL-org/EmberGL/blob/6c197451257d3b2d800b40d4e21e5e3fe4f52ae7/src/egl_rasterizer_tiling.cpp),
[Hi-Z rejection before cluster rasterization](https://github.com/EmberGL-org/EmberGL/blob/6c197451257d3b2d800b40d4e21e5e3fe4f52ae7/src/egl_rasterizer.cpp),
[pipeline description](https://github.com/EmberGL-org/EmberGL/blob/6c197451257d3b2d800b40d4e21e5e3fe4f52ae7/README.md).
Its quantized depth and MCU tradeoffs are not directly safe replacements for
our full-precision MSAA depth planes.

Meshlete was cloned to `~/Git/meshlete` before local inspection, pinned to
`03a1591f5bb1830b227d140c2f8d1fa447ce96ac`.
[README](https://github.com/JarkkoPFC/meshlete/blob/03a1591f5bb1830b227d140c2f8d1fa447ce96ac/README.md)
and [generation implementation](https://github.com/JarkkoPFC/meshlete/blob/03a1591f5bb1830b227d140c2f8d1fa447ce96ac/src/mlet_gen.cpp)
provide tighter meshlet spheres and visibility cones. Its sampled offline
visibility construction needs a conservative error argument before use to
remove geometry; it is not a proof of invisibility for our assets.

Next concrete architecture trial: bin conservative cluster bounds first,
perform current-frame MSAA-aware occlusion in each owning bin, and prepare
surviving geometry lazily with a bounded post-transform cache. Start with an
untimed census of safely rejected clusters and triangles avoided. Include
holes in cutouts, partly covered MSAA cells, near clipping, overlapping bins,
cache limits and fallback. This is research, not implemented or timed; no
double-digit gain is established.

An incremental alternative can reuse our existing 16-triangle bin references:
cache conservative bounds and nearest depth for a referenced packet, then
reject the whole packet against the owning bin's current-frame MSAA Hi-Z
before individual `scene_packet_draw` calls. This could amortize fine-raster
setup across hidden groups without a new cluster pipeline. It would still
pay the earlier position/geometry work, so measure it separately from lazy
cluster preparation. Include only active reference-mask lanes and fall back
when clipping or depth bounds are uncertain. Additional metadata must remain
small; the previous large full-precision MSAA packets regressed total time.
