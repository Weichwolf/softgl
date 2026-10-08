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
