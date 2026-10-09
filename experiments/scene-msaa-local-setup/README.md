# Exact 16-byte local-coordinate setup cache

Status: rejected after native screening; not adopted. Frozen baseline
`47572f4`; production remains unchanged.

Geometry admission already computes each triangle's original 16.8 XY and
bounding box. Preserve that work for small opaque four-sample triangles in
a 16-byte per-primitive cache: three packed local XY pairs plus the exact
integer origin and box dimensions. Local coordinates are at most 4095 under
the existing <=16-pixel proof, so packing each into unsigned 16 bits retains
every fractional bit. Origins are encoded with one-unit bias to retain -1.
The default eligibility remains eight pixels per side, matching production.

Allocate this cache only for opaque four-sample geometry tasks, during the
existing append stage rather than an additional full packet-preparation pass.
Respect the existing 128-MiB geometry budget and free/reuse every cache.
Large and alpha triangles retain the original general/small kernels; OFF/2×
do not allocate or fill the cache. Per-task metadata grows slightly.

Rasterization uses the cached local edges and bounds, reads original Z/W from
the prepared position/clipping arrays, and writes real sample depths directly.
Capture reciprocal W only when allocating an actual winner record; reconstruct
its global integer edge coefficients exactly for unchanged final shading.
Keep original depth arithmetic/clamp, four rotated samples, top-left rule,
Hi-Z after real writes, primitive order and joined full-sample rollback.
The original small/general kernels remain unchanged in source.

This differs from the rejected full-precision packet's 304 bytes per four
triangles: only 16 bytes per triangle, no extra setup pass or cached Z/W,
and only the proven small opaque path. Extra storage/branches may still cost
more than setup reuse saves. Require independent 216+576 sample-plane hashes,
actual cached/fallback dispatch, all original model views, forced fallback,
resident reuse, sanitizer, WASM and repeated OFF/2×/4× timing before adoption.
No approximation, wider SIMD or asset reduction is introduced; no FPS gain
is established yet.

Sources: own review of [geometry admission](../../libsoftgl/src/geometry.inc),
[exact small triangles](../scene-msaa-small-triangles/README.md),
[direct opaque commit](../scene-msaa-opaque-commit/README.md), and the rejected
[full-precision packets](../scene-msaa-triangle-packets/README.md).
The compact local-coordinate adaptation is our own; prior renderer/paper
ratios are not evidence for this CPU SIMD128 implementation.

The original 216+576 sample-plane hashes, 162 position pairs, Hi-Z/rollback
checks and 36 four-sample model views are exact. Audit fixtures report 282
eligible cache entries, 87 large fallbacks, 414 cached triangle executions and
1,917 direct pixels. Forcing the original kernel preserves all independent
hashes and rollback results, with zero cached executions. These counts are
fixture-only. ISA inspection finds no wider SIMD.

One quiet AB/BA screen, 24 accepted/zero rejected runs, 640×360/four threads:

| Scene | OFF time change | 2× time change | 4× time change |
| --- | ---: | ---: | ---: |
| T-80 | +1.74% | −0.92% | −2.23% |
| Bistro | +2.37% | −0.05% | +2.26% |

Bistro 4× slows from 57.670 to 58.976 ms, with regression in both directions.
The extra cache does not pay for itself in this screen. T-80 stays on the
forward route, so its change is a control observation. No repeated all-four
confirmation, OFF/2× model quality, sanitizer, reuse or actual WASM gates were
run after rejection. Extent-16 remains untested.
Frozen source, raw attempts, reproduction and dispatch receipts:
[local-v1 validation](validation/local-v1/metadata.json).
