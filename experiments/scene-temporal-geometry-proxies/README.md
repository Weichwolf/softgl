# Screen-space geometry proxies with reusable material data

Status: native opportunity census completed; optional renderer path proposed.
No proxy rendering, temporal reuse or speedup has been demonstrated. Original packs remain the inputs; this is
runtime LOD selection, not a replacement benchmark asset.

## Sources

- Garland and Heckbert, [Surface Simplification Using Quadric Error Metrics](https://www.cs.cmu.edu/~garland/quadrics/),
  SIGGRAPH 1997: geometric approximation by edge contraction.
- Garland and Heckbert, [Simplifying Surfaces with Color and Texture using Quadric Error Metrics](https://www.cs.cmu.edu/~garland/Papers/quadric2.pdf),
  IEEE Visualization 1998, sections 3–5: attribute-aware error, boundary
  constraints and the limitations of simply copying endpoint attributes.
- [meshoptimizer](https://github.com/zeux/meshoptimizer/tree/3d8e9b8a2a2b9a5becfc6fbc512307b04207ab5d),
  local clean clone `~/Git/meshoptimizer`, revision
  `3d8e9b8a2a2b9a5becfc6fbc512307b04207ab5d`: README sections basic,
  attribute-aware and permissive simplification, and sparse cluster
  simplification. Its geometric error is an approximation, not a proven
  per-pixel image-error bound. The existing `tools/mesh_simplify.cpp` already
  uses a vendored attribute-aware simplifier for asset preparation.
- [Nanite deep dive](https://www.wihlidal.com/projects/nanite-deepdive/),
  SIGGRAPH Advances 2021: reference for hierarchical clustered geometry.
  The linked presentation is not yet reviewed here; no CPU implementation
  or CPU speedup is inferred from it.
- Our [motion-compensated residual experiment](../scene-motion-compensated-residual/README.md)
  and [lazy cluster frontend measurements](../scene-lazy-cluster-frontend/README.md).
  The latter saved roughly half the frontend work but increased Bistro 4×
  frame time by 10–22%; fewer triangles alone do not establish a gain.

## Proposed adaptation

Build a stable object-space cluster hierarchy from each immutable input mesh.
Each cluster retains material identity, original coverage boundaries, proxy
geometry and a geometric/attribute error estimate. Generate approximations
once on load or amortize generation across frames, rather than running an
edge-collapse heap inside every frame. Runtime code remains C11/SIMD128.

Choose the coarsest representation whose projected error fits the current
pixel budget. The user's example—many triangles covering about three pixels—
motivates an aggressive small-footprint tier. Projected area alone is not an
error bound: separate depth layers, holes, alpha-cutout foliage and silhouettes
can occupy the same three pixels. Such groups need separate proxies, coverage
data or finer geometry. The first prototype should simplify connected opaque
surfaces within a material and preserve cluster interfaces.

Keep selection stable through object-space identities and hysteresis: refine
immediately as projected error grows; coarsen only after it remains below a
lower threshold. Camera cuts, transforms, asset edits and material/texture
epochs invalidate inappropriate cache entries. The policy is resolution
independent; 640×360 is the current measurement target.

Cache filtered base albedo and opacity, representative normal or normal
distribution, and world/object-space surface data. Recompute current lighting
and view-dependent specular/environment contributions. A previous final RGB
value has lighting already baked in; relighting it directly would double-count
old illumination. Unchanged final color can be reused only under a separate
validated illumination/view policy.

First test proxies without history to isolate geometric and attribute error.
Then transport cached material data using current object/camera motion, not
the old screen coordinate. Reject uncertain depth/ownership and freshly shade
newly visible surfaces. Motion vectors alone cannot validate changed lights,
specular highlights or previously hidden occluders.

## Measurement

Start with a native census of small projected triangles and stable candidate
groups in all four original packs over the existing orbit. Distinguish bounding
box area, continuous projected triangle area and actual MSAA sample coverage.
A census is an upper-bound opportunity estimate, not a valid proxy or FPS gain.

Include hierarchy creation/amortization, selection, projection, material cache,
repair and fallback in the relevant costs. Benchmark complete frames at
640×360 with caller plus three helpers, OFF/2×/4×, repeated native AB/BA.
Inspect static views and motion, including approaches, disocclusions, moving
objects and lighting changes. Report softened details and popping explicitly;
do not accept missing objects or broken materials. Keep browser heap below
4 GiB and validate actual SIMD128 WASM before exposing this optional path.

## First native census

`census.c` uses the production SIMD128 matrix transform and the same projection,
camera and model-rotation expressions as `wasm/model_wrap.c`. It reads only
geometry and part tables from the original packs, without loading textures or
rendering. It evaluates 30 poses at angles 0,12,…,348, matching the native
resident benchmark orbit. Three synthetic controls check a connected tiny
fan, coincident triangles with disconnected indices, and invalid-index
rejection. Native clang 22 builds the driver with warnings as errors and AVX
disabled; its linked baseline archive is byte-identical to production.

| Scene | Mean fully-inside triangles | Mean triangle area ≤3 pixel² | Share | Mean triangles in connected 4-triangle groups with box area ≤3 pixel² |
| --- | ---: | ---: | ---: | ---: |
| Bistro | 377,054 | 341,439 | 90.6% | 35,622 |
| Sponza | 190,447 | 160,982 | 84.5% | 30,365 |
| BMW F31 | 63,009 | 47,587 | 75.5% | 5,999 |
| T-80 | 44,513 | 32,130 | 72.2% | 2,715 |

Counts include backfaces and occluded geometry and exclude triangles crossing
the frustum, rather than clipping them. Areas are continuous geometric areas
in pixel units, **not counts of covered pixels or MSAA samples**. In particular,
a long narrow triangle or box can have a small area but touch many pixel cells.
A runtime proxy policy must also bound projected extents and actual coverage.
Consequently these numbers do not imply that 91% of visible Bistro triangles
can safely be discarded or replaced.

Candidate groups use consecutive original triangles within a part and require
shared-index edge connectivity. They are not spatially optimized or checked
for normal/UV/depth-layer continuity. Four-triangle groups contain 9.4/15.9%
of fully-inside Bistro/Sponza triangles, versus smaller fractions in larger
groups. This motivates spatial/hierarchical grouping and screen-error checks;
it does not establish that one triangle reproduces each group's coverage.
Disconnected surfaces with duplicated positions are deliberately kept separate
in this diagnostic. Terminal groups may contain fewer than the stated size.

The source, original pack hashes, raw pose counts, controls and command are
retained in [validation](validation/receipt.json). This census runs before
visibility, so it cannot estimate saved shading groups or frame time. Run it
separately from timing campaigns:

```sh
build/python/bin/python experiments/scene-temporal-geometry-proxies/census.py \
  --output tmp/scene-temporal-geometry-proxies/new-census
```

The default baseline root is the frozen V4 shader experiment; use
`--baseline-root` to select an equivalent production archive and source tree.
