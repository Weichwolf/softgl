# Previous visibility guides current opaque render order

Status: five private native variants implemented; three screens do not establish
a useful gain. None adopted. The enabled 1-MiB SIMD128 variant also passes
ASan/UBSan and an actual WASM sequence fixture.

Use the previous completed scene only to predict which opaque triangle groups
should be rendered first. Retain a bounded set of stable source-triangle keys
for previous visible contributors. In the current frame, prioritize references
containing those contributors, then use the existing current near-depth keys.
Draw every original reference. Perform every current transform, coverage/depth
comparison, alpha test and shader operation normally. A stale prediction can
produce a worse order; it must never remove geometry or answer a depth/color
query with an old value. This keeps four genuine current-frame MSAA samples.

The accepted [near-first ordering](../scene-depth-order-cached-keys/README.md)
uses the nearest vertex of a sixteen-triangle reference. That depth can describe
an invisible protrusion rather than a useful current occluder. Previous final
visibility may identify useful occluders more directly. This is a proposed
ordering heuristic, not reverse reprojection, material memoization or BVH ray
tracing. Earlier [BVH visibility trials](../scene-ray-visibility/README.md) already
tested scalar/four-ray and cached raster variants; they are not a new proposal.

Keep opaque, other opaque and cutout references in stable depth buckets.
Preserve the existing ordinary/translucent draw paths, reset the explicit trial
opt-in at every scene begin, and handle allocation/unsupported-state fallback
through the accepted path. A roughly 1–2 MiB context-owned key set is an initial
budget to test, not an allocated product structure. Hash collisions or changed
geometry may change priority, but cannot become a culling decision. Material,
mesh and light edits must always render current data. No immutable-asset
assumption or scene/resolution-specific name is needed for correctness.

First measure previous-visible overlap, actual Hi-Z rejection/depth overwrites,
collection/probe/sort costs and total current-frame time. Camera cuts, reversals,
disocclusion, changing meshes/materials and overlapping depth ties need separate
fixtures and moving model sequences. Reordering can change equal-depth RGB
winners, so quantify that difference instead of claiming exact images. All
work, including history maintenance, belongs in timing. No repeated old frame
counts as a newly rendered frame. Require native SIMD128, original assets at
640×360/four total threads, quiet repeated OFF/2×/4× AB/BA and actual WASM/browser
memory/quality checks before adoption. A hit-rate increase is not an FPS gain.

Sources: own follow-up to [current reference sorting](../../libsoftgl/src/geometry.inc),
[final winner/visible-record collection](../../libsoftgl/src/scene_visibility.c),
the accepted near-first experiment above, and our [temporal research and its
distinct alternatives](../scene-temporal-shading-reuse/README.md).
No upstream speedup is used as evidence for this heuristic.

## Implemented variants and current work

Parent `52aff7b`, Clang 22.1.8, SSE4.1 with AVX/AVX2/AVX512 prohibited. The
current source-vertex set and mesh input addresses identify a triangle; winding
changes retain the same key. A context-owned bitmap records completed visible
opaque triangles. Collisions change priority only. Collection follows the
joined current shader pass; all collection, clearing, probing and ordering
costs belong to each timed frame. There is no cached output, old color/depth
answer, mesh reduction or material reduction.

V1 uses a 1-MiB bitmap and ordinary allocation/clear, for work census only.
V2 aligns the bitmap and clears it with explicit volatile SIMD128 stores.
V0 has zero history budget and always retains the original path. V3 reduces
the explicit-SIMD128 bitmap to 128 KiB; V4 additionally probes only the first
current live triangle in each reference. Other triangles still render. Defaults
reset the private opt-in at capture begin; unsupported modes and invalid
captures fall back without old visibility being used to discard geometry.
The frozen `temporalCache: false` field denotes the earlier rendered/material
cache, while `temporalOrderPrediction: true` explicitly identifies this
ordering-only history. It does not mean this prototype has no retained state.

Separately instrumented V1 and control engines render 31 actual frames per
asset: a 30-frame orbit and the final 160-degree view. Depth writes decrease
by 4.33% in Bistro, 4.40% in Sponza, 10.60% in BMW and 12.80% in T-80.
Reference queries require on average 6.32/6.06/5.94/7.21 triangle probes.
Only 40.74/56.62/36.52/33.93% of queried references find a previous contributor.
Hi-Z packet rejection changes little. Instrumented times are not FPS evidence;
fewer successful writes do not imply proportionally fewer depth tests.

## Native performance screen

Each variant has one complete quiet AB/BA block for each original asset at
640×360/4× MSAA, four total threads, 60 warm-up and 30 rotating measured
frames. Renderer completion, MSAA resolve/readback and output copy are included.
The control is the complete current accepted renderer, with identical
packs/cameras. No builds, image checks or instrumented census overlap timings.
These are screens, not repeated acceptance results. Positive values cost time.

| Variant | Bistro time change | Sponza | BMW | T-80 |
| --- | ---: | ---: | ---: | ---: |
| V2, 1 MiB | +4.62% | −3.85% | +2.59% | +0.08% |
| V3, 128 KiB | +4.46% | +5.94% | +2.10% | +1.07% |
| V4, one probe / 128 KiB | +2.77% | +6.98% | −5.03% | +3.94% |

V4 BMW's apparent improvement combines control 18.046/16.127 ms and candidate
16.264/16.188 ms; it is not a consistent directional gain. Sponza control
launches span roughly 32–45 ms, so those short-screen estimates are not stable
algorithmic effects. Bistro costs more in both directions for all variants.
The archive retains all 48 selected and eight rejected timings, including the
complete BMW blocks rejected for foreign CPU load above 0.1 cores. The present
evidence does not justify adoption or an OFF/2×/4× repeat campaign.

## Correctness and retention

All five frozen variants pass the four original independent default-state
contract families, actual native library/timed-driver SIMD128 scans, and 216
enabled/fallback sequence pairs across OFF/2×/4× and 1/3/8 helpers. Sequences
include motion/cuts, light changes, same-pointer vertex edits, winding reversal,
alpha holes, disable/reset and invalid-attribute rollback. Instrumented V1
proves positive real predictor dispatch, not just the presence of a setter.
V2's same 216-pair fixture passes strict ASan/UBSan/leak checks and actual
SIMD128 WASM with a 4-GiB maximum and 2-MiB worker stacks.

V1 and V2 each have 36 enabled model pairs: all four original models, nine
angles, genuine 4× MSAA. Raw resolved/sample depth and alpha bytes are identical;
resolved/sample stencil hashes match. V2 worst per-view mean RGB byte errors
are Bistro 0.01369, Sponza 0.00071, BMW 0.00065 and T-80 0.00104. Sparse local
channel maxima reach 82/20/131/36 from reordered equal-depth/sample-centroid
winners. These are measured color changes, not byte-identical images. V3/V4
have the independent fixture and exact exported physical-plane hashes in
their timed final views; no full nine-view quality or platform gate is claimed
for them. No full model WASM/browser, motion-video or production CTest suite
was run for this unadopted ordering path.

`validation/` retains frozen sources/recipes, actual build and instruction
identities, enabled/default/platform fixtures, real-plane lengths/hashes,
instrumented work and all native timing attempts. Raw frame planes and binaries
remain local. Verify with `python3 experiments/scene-temporal-visibility-priority/verify.py`.

```sh
python3 experiments/scene-temporal-visibility-priority/prepare.py --output-root build/temporal-order-new --variant representative
cmake -S build/temporal-order-new/recipe -B build/temporal-order-new/native -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER="$HOME/.local/bin/clang-22" -DSCENE_TRIAL_ROOT="$PWD/build/temporal-order-new"
cmake --build build/temporal-order-new/native -j4
```

Next: measure coverage-aware current-cell rejection before changing ordering
again. Saved writes alone proved insufficient in these variants.
