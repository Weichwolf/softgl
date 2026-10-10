# Layered geometry keyframes with fresh material corrections

Status: held CPU/SIMD128 prototype. V12 has repeated native timings and 108
current-pose comparisons. Product integration was withdrawn on 2026-10-09;
no current library, viewer selector or renderer uses this cache. The request
also removes Coarse 2×2 and automatic mesh LOD from the product.

## Actual single-pixel prototype

Three directional geometry/material keys cover a static camera origin and a
rotating view. Each output pixel gets its own reprojection, surface lookup and
fresh fixed-function lighting evaluation; this is not the rejected 2×2 color
replication. Homographies and four distinct output pixels use SIMD128. A packed
key stores albedo, mapped/geometric normals, a surface plane, material identity,
an anchor correction and an eye-distance fallback. A precomputed continuity
mask limits bilinear filtering to compatible material/surface neighborhoods.
Three 48-byte-per-pixel keys occupy 33,177,600 bytes, or 31.64 MiB.

The keys retain resolved MSAA colors as anchor corrections. Intermediate images
replicate a reconstructed color into physical color samples. They **do not
compute fresh 4× MSAA coverage at each current pose**, even when their keys were
rendered using genuine 4× MSAA. Silhouettes, disocclusions and transparency are
approximate. These numbers cannot be presented as BMW/ordinary-MSAA progress
or as evidence of beating GLimpSW with equivalent coverage.

The model owner resets keys when assets, textures, texture sharing or camera
parameters change. Rotating BMW/T-80 models change the camera origin in object
space and take the exact original renderer fallback. V12 does not support
arbitrary camera translation, changing lights, animated geometry or generic GL
texture mutation. The later withdrawn integration adds a camera-translation
cooldown and a stable key orientation; it was compiled but not benchmarked or
validated in a real browser.

## Repeated native results

V12 against original-mesh Full at `7b49448`, clang 22, SSE4.1/SIMD128 only,
640×360 and four total threads. Every scene/sample configuration has three
balanced AB/BA blocks, six timings per variant, 60 warm-up and 30 timed frames
per request. The unchanged resident driver includes renderer work, completion,
readback and output copy. All 144 selected trials pass the existing ≤0.1 foreign
CPU core limit; four rejected attempts remain in the receipt.

| Scene | OFF Full → cache | 2× keys Full → cache | 4× keys Full → cache |
| --- | ---: | ---: | ---: |
| Bistro | 32.227 → 9.681 ms | 48.127 → 11.587 ms | 55.016 → 11.762 ms |
| Sponza | 21.099 → 9.115 ms | 35.884 → 10.655 ms | 37.922 → 11.195 ms |
| BMW F31 | 9.722 → 9.692 ms | 15.766 → 15.777 ms | 17.398 → 17.729 ms |
| T-80 | 5.982 → 5.983 ms | 12.722 → 12.676 ms | 14.333 → 14.241 ms |

The 4×-key warm-cache rates are Bistro 85.0 FPS and Sponza 89.3 FPS; their
Full controls are 18.2 and 26.4 FPS. BMW/T-80 retain Full and establish no gain.
Key generation is excluded by warm-up. V12 keyframe latency, amortized startup
cost and moving-image quality remain unmeasured acceptance gates. There is no
new Mesa/GLimpSW timing campaign for this prototype.

## Quality and validation scope

The original nine-view quality driver compares all four scenes at OFF/2×/4×
against fresh Full references: 108 paired views. BMW/T-80 color, resolved depth,
sample depth and stencil are exact. Worst per-view mean RGB channel errors at
4× keys are Bistro 8.199/255 and Sponza 4.693/255. Bistro has at most two removed
covered pixels and six removed covered physical samples; Sponza has no removed
coverage in these measured views. This is neither a ≤1/255 optimization nor a
proof that arbitrary moving views preserve all geometry. Stills look somewhat
softer, but temporal stability, flicker and ghosting have not been assessed.
A near-tangent surface can use its cached eye distance instead of a failed
plane intersection, affecting one pixel in the measured Bistro 4× views.

Actual angle-90 comparisons retain Full on the left and the held individual-
pixel prototype on the right: [Bistro](validation/v12-quality/bistro-angle90-comparison.png)
and [Sponza](validation/v12-quality/sponza-angle90-comparison.png).

V10 passes 216 actual native ASan/UBSan fixture frames and the same 216 frames
in SIMD128 WASM/Node, with OFF/2×/4×, one/three helpers, asset motion and texture/
sharing/camera/frustum reset controls. These earlier contracts do not establish
validation of V12's new distance proxy or of a browser model path. The withdrawn
product candidate compiles natively and in WASM; no model/browser acceptance is
claimed. Ordinary renderer tests and their tolerances were not loosened.

Earlier exploration kept separate scopes: V1 failed compilation; V2's uniform
MSAA-point capture was incorrect and its quality output is invalid; V3 fixed
capture; V4 added anchor correction and continuity filtering; V5's fast 2×2
output was discarded; V6–V8 evaluated individual pixels and full-render repair;
V9–V11 tried compact keys, alternate views and bounded raster repair. V12 avoids
one near-tangent full-render repair using the distance proxy. Screening and
kernel-only reprojection costs do not replace the V12 complete-driver timings.

## Retained sources and reproduction

`validation/` retains actual frozen V10/V12 sources as overrides of `7b49448`,
the actual CMake recipes/flags, manifests, original drivers, raw timing and
quality receipts and the withdrawn integration diff. No generated binaries or
build directories are committed. `restore.py` reconstructs a variant without
using the current production renderer, and `verify.py` checks retained hashes,
reconstructs source identities and recomputes timing medians. For example:

```sh
python3 experiments/scene-layered-keyframe-cache/restore.py --variant v12-pipeline --output-root build/key-cache-reproduction
cmake -S build/key-cache-reproduction/recipe -B build/key-cache-reproduction/native -DCMAKE_C_COMPILER="$HOME/.local/bin/clang-22" -DSCENE_REPO="$PWD" -DSCENE_TRIAL_ROOT="$PWD/build/key-cache-reproduction"
cmake --build build/key-cache-reproduction/native -j4
python3 experiments/scene-layered-keyframe-cache/verify.py
```

The editable `prepare.py`, `prepare_pipeline.py`, capture/compact/reconstruction
helpers and fixture files remain private experiment tools. Their default
historical baseline is deliberately preserved. `prepare_production.py` belongs
to the withdrawn integration and requires that frozen source layout; it is not
a recipe to re-enable a current product path.

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

## Original research direction

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

Related proposals: [motion-compensated residuals](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/scene-motion-compensated-residual/README.md),
[temporal sample reconstruction](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/scene-temporal-sample-reconstruction/README.md)
and the removed [current-frame coarse shader](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/scene-coarse-direct-scatter/README.md).
