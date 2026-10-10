# Current-sample Hi-Z for partially written cells

Status: own architecture proposal; implementation and measurement pending.

The current four-sample hierarchy rejects a rectangle only if every intersecting
4×4 cell has all 64 real samples written. A small rectangle can lie entirely
inside written samples while other pixels in its cell remain background.
Use the existing 64-bit sample-written mask to require only the queried
rectangle. Keep a conservative maximum for all written samples in a partial
cell; a full cell retains its current exact-maximum tracking. No old frame,
different resolution, sample duplication or shader/material simplification.

First use an explicit private scene opt-in that invalidates old written masks
before capture. This prevents an ordinary partial cell without a maintained
maximum from entering the new query. Current monotonic LESS/LEQUAL writes can
only decrease a previously written depth; retaining an older larger maximum
is conservative. Mark only real accepted sample writes. Unknown/nonfinite
depths, missing rectangle samples, unsupported depth/stencil behavior and
ordinary GL retain the original rejection rules. Clear/rollback/pixel copies
must invalidate the affected masks. A query never skips a current sample
unless its written depth is bounded above and the triangle's proven lower
depth is farther. Preserve the existing numerical safety margin.

Measure extra successful current-cell/packet queries and the cost of maximum
maintenance and mask generation, then actual complete frames. Independent
explicit sample-depth/mask oracles must include inside/outside holes, partial
writes, overwrites, clears, rollback, cutouts, clipping, ties and worker stripes.
Require original four-model 640×360/four-thread native AB/BA including OFF/2×/4×,
physical planes, native/SIMD128 WASM and real browser memory checks before any
adoption. There is no established speedup.

Sources: own adaptation of the existing
[sample-written masks and numerical bound](../../libsoftgl/src/raster_hz.h),
[four-triangle packet query](../../libsoftgl/src/scene_visibility.c) and
[independent hierarchy oracle](../../tests/hierarchical_depth.c).
The previous [visibility-order trial](../scene-temporal-visibility-priority/README.md)
reduced writes without a total-frame gain. This proposal instead aims to avoid
the raster/depth work of entirely hidden current regions before those writes.
