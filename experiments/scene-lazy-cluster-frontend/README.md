# Lazy cluster frontend with current-frame occlusion

Status: five native variants screened against `c83e18f`, all slower in Bistro
4× MSAA. None adopted. V6 also passes enabled sanitizer and actual SIMD128
WASM fixtures. This rejects these implementations, not the cluster-first idea.

The current renderer prepares every position and triangle before visibility.
This trial instead derives conservative object-space AABBs at model load from
the same original pack, one per 64 consecutive triangles. The pack, topology,
index order and texture dimensions are unchanged. Bounds have a separate
8-MiB model limit; missing bounds fall back to the original frontend.

At capture end, project and distribute groups to owned image stripes. Stable
opaque/near-first order runs per stripe. Query the existing Hi-Z against its
actual four-sample depths before vertex or fine triangle setup. Surviving
groups and their vertices are prepared once through separate atomic readiness
states; other stripes share those results. Material attribute preparation and
MSAA rasterization use the existing implementation. No prior-frame visibility
is reused. This first variant activates only on explicitly ordered 4× captures;
ordinary draws and unbound OFF/2× captures retain their original paths.

The new API requires immutable finite positions and conservative six-float
object-space bounds held until capture end. Epochs prevent old descriptors
from enabling later captures. Group count is limited to the existing 16,384
geometry tasks; references/primitives retain existing budgets. Unsupported
counts retain the original frontend; joined failure restores sample planes.
The original mesh, geometry-task, frame and scene-bin layouts remain intact;
a descriptor occupies previously unused bin padding. Per-worker sorting uses
a bounded 128-KiB stack array within the existing 2-MiB WASM worker stack.

Projection uses double interval bounds for separate float MV/projection error
and independent numerator/positive-denominator signs at all eight box corners.
Near/far/eye-plane ambiguity retains the whole viewport and skips coarse
occlusion. Bounds expand by an additional pixel and depth margin. These design
arguments need independent executable checks before any acceptance.

The unpruned control uses identical cluster order, vertex preparation and
raster code but never skips a coarse-hidden group and distributes every group to every
image stripe, including projected-empty groups. Compare every output plane
with it to isolate false occlusion from intended ordering/shading differences.
Audit counters quantify actual group queries/rejections, prepared groups,
transformed vertices and fine input triangles. Timed builds omit counters.
Require all-four images, boundary/clip/cutout/reset/failure checks, sanitizers,
actual SIMD128 WASM, resident reuse and balanced OFF/2×/4× timings before
adoption. Native and WASM must both remain SIMD128.

Sources: own C11 adaptation of the cluster-first/interleaved principle in
[Intel MaskedOcclusionCulling](https://github.com/GameTechDev/MaskedOcclusionCulling/blob/1fd7974456cffa481a1a534328a1d02523d19ce8/README.md)
and [EmberGL cluster binning](https://github.com/EmberGL-org/EmberGL/blob/6c197451257d3b2d800b40d4e21e5e3fe4f52ae7/src/egl_rasterizer_tiling.cpp),
locally cloned previously under `~/Git/`. Reuse our
[conservative transform error approach](../../libsoftgl/src/cluster_cull.h),
[actual-sample Hi-Z](../../libsoftgl/src/raster_hz.h) and
[research notes](../scene-meshlet-occlusion/README.md). No upstream AVX code or
occlusion-only approximate depth is substituted for our four physical samples.
The sources establish no speedup for this implementation.

See the fresh-root V6 reproduction command below.


Use fresh roots for changes: the generator refuses to overwrite frozen trees.

Initial V2 evidence: original 216+576 full-plane hashes, 162 position
pairs and Hi-Z/rollback outputs match the baseline. The candidate archive
contains no AVX/YMM/ZMM instructions. Nine Bistro4 views match the all-bin
unpruned oracle in every reported plane (RGBA, resolved/sample depth and
stencils). Compared with production, removed sample coverage is zero and
worst mean RGB error is 0.1263/255. Model sample-color is not dumped by this
driver; enabled boundary/failure evidence follows below. V1 was
only built, before strengthening the unpruned oracle; no V1 acceptance claim.

## Implemented variants and timings

All screens use the original resident driver, the same Bistro pack/camera,
640×360, three helpers plus caller, 60 warm-up and 30 measured rotating-view
frames. Each screen has one AB/BA block; this is insufficient to accept a
gain, but the large regressions reject adoption. V2 retains one rejected
four-run block with foreign CPU load above 0.1 cores before its quiet block.
Other screens have four selected runs each. Native baselines have the exact
production archive hash `b3195a594c0b1295423884ece09d6cb23e31141ef4696744dce375575c77dc0b`.

| Variant | Change | Baseline → candidate ms | Frame-time change |
| --- | --- | ---: | ---: |
| V2 | Per-vertex lazy cache, original groups, raw depth keys | 54.498 → 66.445 | +21.92% |
| V3 | One readiness claim per aligned 32-position block; original SIMD128 transforms | 54.187 → 59.708 | +10.19% |
| V4 | Normalize eligible depths across the frame, retain uncertain groups first | 55.716 → 61.699 | +10.74% |
| V5 | V4 plus centroid-Morton grouping at load | 54.034 → 60.718 | +12.37% |
| V6 | V4 plus different group-ID rotations per bin inside equal-depth buckets | 54.011 → 59.990 | +11.07% |

V6 rotations depend on group IDs, not list length, so the all-bin oracle
retains the same relative live-group order despite additional references.
V5 adds an optional immutable index copy selected only for explicitly ordered
4× captures. The pack and triangle corners remain unchanged, OFF/2× use the
original indices, and index copies have a separate 32-MiB budget. Model-load
metadata allocation failure retains original grouping. Full browser memory
and all-mode model rendering are not validated for these private variants.

## Work saved and limits

V2's two-frame Bistro census (angle0 plus final angle160) prepares
663,716 of 1,280,242 input triangles and transforms 860,581 of 1,614,174
positions. The all-bin unpruned oracle prepares all of them. These are about
48% fewer fine input triangles and 47% fewer positions; they are **not** FPS
gains. Actual hidden group/bin queries are 15,035 of 109,990, and 4,641
projected-empty groups are excluded. A group surviving any bin is prepared
once globally. V3+ may transform unused neighboring positions within a
claimed block to recover SIMD throughput.

Instrumented V2 profile records six rendered frames, including warm-up and
final image, rather than only the four timed frames. Totals: initialization
11.279 ms, projection/distribution 19.114 ms, joined raster callback 271.630 ms,
sum of group-owner preparation scopes 350.953 ms, sum of task-wait scopes
132.861 ms, and position waits 0.0032 ms. Owner and wait scopes overlap across
threads and must not be added to elapsed wall time. Global atomic audit
counters add substantial overhead. This diagnostic identifies sharing/waits,
not production phase shares or a speedup prediction.

V5 independently preserves the exact triangle multiset and corner order and
checks every generated bound against every contained vertex in all four
original packs. The squared box diagonal, weighted by contained triangles,
is 0.465/0.550/1.630/0.732 of original grouping for BMW/T-80/Sponza/Bistro.
Morton grouping therefore worsens this proxy for Sponza; tighter groups are
not universally guaranteed. Cold metadata creation costs
10.11/7.15/40.88/103.18 ms, outside frame timing. Bistro retains 243,216 bytes
of bounds and 7,680,636 bytes of index copies. These are not full heap peaks.

## Completed checks and evidence

V2 matches the baseline's 216+576 default sample-plane records, 162 position
records and Hi-Z/rollback output. Every V2–V6 enabled native fixture has 180
frames covering OFF/2×/4×, 1/3/8 helpers, clipping, culling, cutouts, missing
bound epochs, invalid attributes/bounds and budget rejection. Full sample
color/depth/stencil hashes match its all-bin unpruned control. The fixture
also compares all lazy positions byte-for-byte with original eager position
transforms. Native candidate archives V2–V6 have no AVX/YMM/ZMM instructions.

Nine Bistro4 views each for V2/V4/V5/V6 match their all-bin control in every
reported model plane. None adds or removes sample coverage versus production.
Worst mean RGB difference from production is respectively
0.12631/0.12605/0.18755/0.12740 out of 255 because order changes some winners.
These model dumps do not expose sample color; the independent enabled fixture
does. V3 has the small enabled fixture but no nine-model-view run.

V6's 180 enabled frames also pass ASan/UBSan with leak detection, and actual
SIMD128 WASM independently matches all 180 all-bin full sample planes. WASM
uses 256-MiB initial memory, a 4-GiB limit and 2-MiB worker stacks. No full
four-model browser gate, production CTest run or accepted all-mode timing
campaign is claimed for these rejected prototypes. Production and the live
browser engine remain `c83e18f`.

Additional source cloned to `~/Git/meshoptimizer`, pinned
`3d8e9b8a2a2b9a5becfc6fbc512307b04207ab5d`: its
[centroid spatial ordering](https://github.com/zeux/meshoptimizer/blob/3d8e9b8a2a2b9a5becfc6fbc512307b04207ab5d/src/spatialorder.cpp)
and [meshlet locality discussion](https://github.com/zeux/meshoptimizer/blob/3d8e9b8a2a2b9a5becfc6fbc512307b04207ab5d/README.md#clusterization)
motivate V5. Our C11 implementation uses ten-bit centroid Morton keys and
stable original-triangle tie breaking; no C++ implementation is imported.
The [SIGGRAPH 2021 Nanite course](https://advances.realtimerendering.com/s2021/index.html)
is an additional architecture reference, not an implemented Nanite system.
Its linked slides could not be fetched in this turn; detailed slide claims
are absent. The local meshoptimizer clone and code inspection did succeed.

[Validation](validation/artifacts.json) hashes text/source artifacts, including
raw selected/rejected timing receipts, native/WASM contracts, source patches,
ISA audits, census and profile. Every version's `candidate.patch` applies to
the original `c83e18f` engine plus `wasm/model_wrap.c` copied to `model_wrap.c`.
Frozen template snapshots and exact variant switches are retained separately.
No binaries, images, packs or build directories are committed.

Reproduce V6 in a **fresh** root with the current templates:

```sh
python3 experiments/scene-lazy-cluster-frontend/prepare.py \
  --vertex-block 32 --normalized-keys --rotated-groups \
  --output-root build/scene-lazy-cluster-frontend/reproduce-v6
cmake -S experiments/scene-lazy-cluster-frontend \
  -B build/scene-lazy-cluster-frontend/reproduce-v6/native \
  -DSCENE_TRIAL_ROOT="$PWD/build/scene-lazy-cluster-frontend/reproduce-v6" \
  -DCMAKE_C_COMPILER="$HOME/.local/bin/clang-22" -DCMAKE_BUILD_TYPE=Release
cmake --build build/scene-lazy-cluster-frontend/reproduce-v6/native -j4
```

Next: profile current SIMD128 production including real 4× MSAA before
spending more work on frontend variants; see
[current MSAA phase accounting](../scene-msaa-current-phase-accounting/README.md).
