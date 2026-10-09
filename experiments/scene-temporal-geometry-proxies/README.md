# Screen-space geometry proxies with reusable material data

Status: native census and two automatic mesh-LOD prototypes measured; held.
Actual geometry reduction is implemented in private native viewers. There is
no adopted speedup, material-history reuse or browser path. Original packs
remain the inputs; runtime LOD selection does not replace benchmark assets.

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
- The native prototypes use the existing vendored
  [meshoptimizer v1.3](https://github.com/zeux/meshoptimizer/tree/9e1f07b159d3cb777f1c67ed31fc11fd117986f4),
  not the separate newer clone. Reviewed local API and implementation:
  `meshopt_simplifyWithAttributes`, `meshopt_buildMeshletsSpatial`, simplifier
  options `LockBorder`, `Sparse`, `ErrorAbsolute`, `PreserveFolds` and
  `ErrorClamped`. Vendor source hashes are retained with each build receipt.
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

## Actual native automatic LOD prototypes

Both versions freeze baseline `b226169` and leave the engine library untouched
and byte-identical to the accepted SIMD128 archive. Offline C++17 tools build
three independent index reductions at approximately 50/20/5% of original
indices, with a 0.02 object-unit attribute-aware simplification error limit.
Normals and UVs participate in the metric. Borders and folds are retained;
permissive simplification and vertex updates are disabled. Original textures,
material identities and all twelve vertex float fields are retained. Alpha
cutouts and transparent parts stay at full detail. Runtime viewer code is C11.

The runtime estimates the projected simplifier error using the current
projection, transform and cluster bounds. Eye/near-plane ambiguity retains
fine geometry. It refines immediately when the current tier exceeds its
budget and coarsens only after three frames below 75% of that budget.
The nominal one-pixel budget is a heuristic, **not a proven image-error or
surface-distance bound**. Only the tier choice persists across frames;
lighting, shading and visibility are freshly computed. These prototypes do
not yet replace a tiny group with one cached-color triangle.

V2 keeps original mesh parts and vertex ordering, appending LOD indices to
the existing element buffer. Large parts often extend close to the camera,
so their projected error retains fine geometry. V3 forms spatial meshlets,
groups six consecutive meshlets within a part, and creates LODs per group.
It duplicates interface vertices and orders each group's original vertices
coarsest-first so selected coarse tiers use shorter vertex spans. Its fine
triangles and ordered corner attributes are checked as an exact multiset of
the original geometry. Reordered submissions still change some depth ties,
rounding and output colors; geometric equivalence is not pixel equivalence.

| Scene | V3 groups | V3 cache bytes | Creation time | Opaque triangles at last quality pose: original → selected |
| --- | ---: | ---: | ---: | ---: |
| Bistro | 686 | 56,348,816 | 2.425 s | 490,807 → 442,493 |
| Sponza | 187 | 15,386,116 | 0.598 s | 227,327 → 151,459 |
| BMW F31 | 82 | 4,120,312 | 0.156 s | 56,029 → 51,309 |
| T-80 | 51 | 3,869,928 | 0.122 s | 44,513 → 43,825 |

Cache size includes repacked vertices and all index tiers. It is not measured
WASM peak memory. Creation and cache upload occur before timing; per-frame
selection, submission, rendering, finish and readback are included. The
quality-pose counts are sequential views ending at 315°, not steady-state
averages or the benchmark's 30-pose orbit. The three reductions are
independent and can have nonmonotonic triangle counts; choosing the highest
feasible tier is a known limitation, particularly for T-80.

## Native quality and complete-frame screening

Four campaigns compare nine views in all four original scenes with MSAA
OFF/2×/4×: 432 paired frames. V2 with LOD disabled is exactly equal in RGBA,
resolved depth, sample depth and stencil. V3's reordered fine control changes
some colors and depth values even with LOD disabled. It removes no measured
sample coverage in the 4× views. This control must remain distinct from LOD
error; ordinary GL regression tolerances are unchanged.

| Scene | V2 1 px: worst RGB mean error, 4× | V3 1 px: worst RGB mean error, 4× | V3 maximum removed 4× samples |
| --- | ---: | ---: | ---: |
| Bistro | 0.02414 | 0.11448 | 0 |
| Sponza | 0.03466 | 0.40852 | 0 |
| BMW F31 | 0.02183 | 0.19421 | 68 |
| T-80 | 0.00092 | 0.01688 | 14 |

Mean error is in RGB byte units, averaged over the image, then maximized over
the nine poses. It does not bound local error or establish subjective motion
quality. Coverage means actual depth values below 1; it does not establish
correct ownership or material identity at every covered sample. Static
Bistro V2 images at 160° were visually inspected. Camera approaches, moving
objects, changing lights, disocclusion, temporal popping and ghosting have
not been validated. The 2 px variant has timing only, not the above quality
validation. Larger accepted errors would need measured benefits and visual
checks; no universal 1/255 threshold is imposed on optional paths.

Screening uses 640×360, four total threads, 60 warm-up and 30 measured orbit
frames per request, and one AB/BA block per configuration. Eighty selected
records were retained; blocks with foreign CPU load above 0.1 core are
rejected by the shared runner. Negative values below mean shorter frame time.

| Scene | V2 1 px OFF | V2 1 px 2× | V2 1 px 4× | V3 1 px 4× |
| --- | ---: | ---: | ---: | ---: |
| Bistro | −15.33% | +2.56% | −0.29% | +4.38% |
| Sponza | −1.43% | −13.43% | −1.29% | +2.32% |
| BMW F31 | +0.67% | −3.47% | −3.22% | −9.45% |
| T-80 | −7.35% | +0.74% | +1.27% | +3.71% |

Raw timing variation is substantial in some blocks. None of these single
blocks establishes a reproducible gain. V2 at 2 px recorded Bistro/Sponza
4× −8.93/−0.97%, with noticeable baseline drift. V3 grouped fine geometry
at 0 px recorded +0.08/+0.22% for Bistro/Sponza 4× in a separate block.
That control does not establish grouping overhead as the cause of the V3
LOD regressions. Different blocks cannot be subtracted to isolate costs.
V3 has not yet been timed with OFF/2×. No new Mesa/GLimpSW comparison was
run for these private variants.

Decision: hold both prototypes. Fewer submitted triangles did not yield a
clear 4× benefit in the priority scenes. The next useful checks are joined
phase accounting, material-state consolidation after visible vertex
attributes have been produced, and integration with cheaper shading and
visibility. LOD alone does not meet the GLimpSW target. The optional runtime
has not yet passed sanitizer, SIMD128 WASM, browser or motion gates and is
not enabled in production.

## Reproduction and retained evidence

The frozen recipes in [native-validation](native-validation/artifacts.json)
retain each actual compiled driver, wrapper and helper, vendor source hashes,
cache hashes, original pack hashes, generated compiler flags, unchanged
runner receipts and SIMD128 disassembly checks. Both native library archives
have SHA256 `b36345fc1129012ee4b821712934e6e2c278b89e5682a2fb4b02e7d0960144b8`.
The builder, viewer and linked libraries have no AVX instructions or wide
registers. Generated caches, executables, raw images and framebuffer planes
remain under `build/` and `tmp/`, excluded from Git.

A fresh reconstruction of the retained recipes regenerated all eight binary
caches and nine actual compiled driver/wrapper/include sources byte-exactly;
see [reconstruction receipt](native-validation/reconstruction/receipt.json).
This checks source/cache reproducibility, not an additional timing campaign
or WASM validation.

The shared runners' historical `driverSha256` fields name their unmodified
driver templates. They do **not** name these trials' modified drivers with
the cold LOD-cache loader. Per-version `compiled-source-provenance.json`
records the actual compiled driver and include hashes; original receipts
are preserved rather than silently rewritten.

```sh
build/python/bin/python experiments/scene-temporal-geometry-proxies/prepare_lod.py \
  --output-root build/scene-temporal-geometry-proxies/fresh --clusters
cmake -S experiments/scene-temporal-geometry-proxies \
  -B build/scene-temporal-geometry-proxies/fresh/native \
  -DSCENE_TRIAL_ROOT="$PWD/build/scene-temporal-geometry-proxies/fresh" \
  -DCMAKE_C_COMPILER="$HOME/.local/bin/clang-22" -DCMAKE_BUILD_TYPE=Release
cmake --build build/scene-temporal-geometry-proxies/fresh/native -j4
build/python/bin/python experiments/scene-temporal-geometry-proxies/verify_native.py
```

Omit `--clusters` for V2. For exact historical source/cache reconstruction, run
`reproduce_native.py --output-root build/scene-temporal-geometry-proxies/new-reconstruction`
with the same Python interpreter. It uses the archived per-version recipes.
Budget variants are `candidate` (1 px), `coarse`
(2 px), `fine` (0.5 px) and `control` (0 px); `baseline` loads no LOD cache.
