# SIMD triangle setup

Research brief, 2026-10-07. **Proposed, lower priority; not implemented or
measured.** The initial scope is four independent triangle descriptors within
the existing parallel preparation stage.

## Hypothesis

SoftGL prepares triangles across threads, but `sg_prepare_triangle_slice`
processes each triangle separately. Four-lane arithmetic could batch area,
facing, bounds or minimum-depth calculations while retaining the exact
original arithmetic sequence within each lane. Loading indexed AoS vertices,
forming lane vectors and scattering descriptors may outweigh the savings.

First count uncached preparation work, GENERAL/REJECT/READY records, four-item
group eligibility and tails. Geometry-cache hits bypass work and cannot be
counted as setup that a new SIMD kernel could save. Existing
[caller-phase observations](../current-producer-phases/README.md) include
worker completion/helping and do not isolate setup arithmetic costs.

## Primary source

rawrunprotected/rasterizer, revision
`50a1c132c24e85aaa7ef00a6337610ffc04c403e`:

- [Rasterizer.cpp](https://github.com/rawrunprotected/rasterizer/blob/50a1c132c24e85aaa7ef00a6337610ffc04c403e/SoftwareRasterizer/Rasterizer.cpp),
  especially `rasterize`: SIMD packets of independent primitive/vertex data.
- [README](https://github.com/rawrunprotected/rasterizer/blob/50a1c132c24e85aaa7ef00a6337610ffc04c403e/README.md):
  CPU requirements and scope as an occlusion rasterizer.

Local clone: `/home/cosmo/Git/rawrunprotected-rasterizer`. Borrow only the
batching principle. Its compressed geometry/depth, quantized coverage tables,
FMA and projection shortcuts are outside this exact SoftGL proposal. Its
upstream performance comparison does not predict SoftGL gains.

## Implementation boundary

Start in [workers.c](../../libsoftgl/src/workers.c), at
`sg_prepare_triangle_slice`. Use native SSE4.1 and WASM SIMD128 with four
independent triangles per vector. Keep existing worker partitions, joins,
scratch ownership and ordered emission. Do not reorder primitives, introduce
meshlets or change prepared geometry/cache formats in the same experiment.

Handle all supported index widths and unsigned offsets exactly. GENERAL
triangles retain clipping at their original position; partial groups and
unsupported coordinate ranges use the existing scalar path. Use the original
per-lane operation order, including degeneracy thresholds, winding swaps,
screen rounding and bounds. Min/max instructions need explicit consideration
of NaNs, signed zero and scalar tie behavior.

## Validation and decision

Compare each initialized descriptor field and emitted bin record with the
scalar preparation path; do not compare uninitialized REJECT payloads or
padding. Cover all index types, culling/front-face states, clipping cases,
degenerate triangles, odd group sizes, bin boundaries and cache reuse.
Run actual native/WASM and sanitizer contracts plus image/edge comparisons.

Apply the [shared validation protocol](../validation-protocol/README.md).
The rejected [bulk prepared-bin emission](../bulk-prepared-bins/README.md)
optimizes a different stage and does not establish a gain for SIMD setup.
Do not combine the two changes or extrapolate saved scalar operations into
frame-time savings.
