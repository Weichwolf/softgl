# Layered geometry keyframes with fresh material corrections

Status: researched alternative path; CPU/SIMD128 implementation and performance
unmeasured. No current renderer or browser path uses this cache.

## Primary references

- Künzel et al., [Amulet: Frame Extrapolation Through Sparse Layered Scene
  Representation and Adaptive Shading](https://arxiv.org/abs/2608.10423v1),
  August 2026; [method text](https://arxiv.org/html/2608.10423v1). It stores sparse
  depth/primitive tiles in multiple depth layers, traverses their geometry for
  new views, and refreshes shading adaptively. Separate object caches and a
  larger prediction frustum help cover motion and disocclusions. Its GPU
  results do not establish a CPU/WASM gain.
- Vining et al., [FastAtlas: Real-Time Compact Atlases for Texture Space
  Shading](https://www.cs.ubc.ca/labs/imager/tr/2025/fastatlas/), Eurographics
  2025; [paper](https://arxiv.org/abs/2502.17712). Visible charts are packed into
  compact shading atlases with controlled texel-to-pixel density. This is a
  possible material-cache layout, not an adopted CPU implementation.

References were checked against the authors' pages/arXiv on 2026-10-09. No
matching Amulet GitHub implementation was found in the targeted search;
similarly named unrelated FastAtlas repositories are not source code for this
paper. FastAtlas publishes atlas compute shaders on its author page. No shader
code has been downloaded, compiled or ported in this experiment.

## Our proposed CPU experiment

The user's proposal merges tiny current triangles into a cheaper representation
for following frames and evaluates lighting again. A single previous color/
depth layer lacks hidden geometry: reprojection alone cannot correctly reveal a
chair previously behind another object. Keep geometry information for additional
potentially visible surfaces, rather than filling those regions by blending
unrelated old colors.

Begin with immutable canonical opaque meshes and explicit object/material/
texture revision ownership. A keyframe records bounded tiles containing depth,
stable primitive/part identity and surface coordinates. Try two/four layers;
separate static scenery from rigid moving objects. A conservative camera region
defines the cache's valid range. The keyframe pass may be more expensive than a
normal frame; include that expense and its latency in the final measurements.

Try two reconstructions independently: SIMD128 ray traversal through cached
depth tiles, or small surface triangles/quads assembled from compatible cached
samples. Mesh proxies need material and surface continuity checks, finer
silhouette/cutout cells, and current transforms. Joining distant surfaces into a
single proxy risks bridging gaps or losing thin geometry. Our depth/material
2×2 shading rule alone does not prove that a geometry merge is safe.

Cache albedo/normal information or copied original vertex indices and surface
barycentrics for inexpensive fresh lighting. A final lit RGB value cannot simply
be multiplied by a second lighting evaluation. Refresh view-dependent highlights,
environment terms and transparent draws independently. Compare stable chart
coordinates against the rejected per-fragment UV hash cache; a high cache-hit
rate is insufficient if lookups/validation cost more than fresh shading.

Repair uncovered or stale regions from current geometry, and refresh a whole
keyframe when validity or the repair budget fails. Existing
[SIMD128 BVH probes](../scene-ray-visibility/README.md) may be useful for localized
repair; their rejected full-frame ray timings are not evidence that sparse
repair is fast. Evaluate raster repair separately. Every presented frame must
represent the current pose; repeated old images do not constitute useful FPS.

## Concrete feasibility and acceptance gates

First export fresh references at 640×360 for slow motion (about 0.5° per frame)
and the existing rapid 12° benchmark orbit. Measure required hidden layers,
repair pixels and cache-valid intervals before integrating a renderer. Camera
cuts, starts/stops, disoccluded objects, foliage, thin silhouettes, moving
lights and texture/mesh edits must trigger exercised repair/reset behavior.
Image averages alone cannot excuse missing geometry or broken materials.

Use the same four original packs, cameras and complete trajectories for every
renderer in a new comparison. Keep the existing 12° trials as well; a favorable
slow-motion sequence must not silently replace the established workload.
Include imports separately, then time keyframes, prediction, lighting,
validation, repair, finish/readback and output. Report amortized frame time,
keyframe spikes, repair frequency and cache memory. No interpolated future
keyframe or additional input latency is assumed.

This remains a distinct optional temporal reconstruction profile. Synthesized
frames do not establish genuine freshly rasterized 4× MSAA coverage, even if
keyframes use real 4× MSAA. Compare quality against full current-frame OFF/2×/4×,
retain ordinary GL tests and their tolerances, and label both the native results
and browser choice accordingly. Native and WASM use SIMD128 only, four total
native threads and a measured total browser heap below 4 GiB. Adopt only after
moving-image validation and repeated AB/BA prove a priority-scene benefit.

Related proposals: [motion-compensated residuals](../scene-motion-compensated-residual/README.md),
[temporal sample reconstruction](../scene-temporal-sample-reconstruction/README.md)
and the adopted [current-frame coarse shader](../scene-coarse-direct-scatter/README.md).
