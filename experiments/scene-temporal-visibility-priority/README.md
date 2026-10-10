# Previous visibility guides current opaque render order

Status: queued architecture experiment; not implemented or measured.

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
