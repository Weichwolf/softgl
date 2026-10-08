# Conservative opacity classification for cutout triangles

Status: research candidate, not implemented or measured.

Preclassify opaque/transparent/uncertain UV regions for immutable alpha textures
and cutout triangles. Proven opaque regions skip alpha texture sampling;
proven transparent regions skip visibility writes; uncertain regions retain
the original filter and alpha test. Account for the complete bilinear footprint,
repeat/clamp seams, cutoff, interpolation/rounding bounds and texture revisions.
Invalidate on texture/UV/index/filter changes. Alpha-tested materials remain
unchanged, and microtriangle orientation must track winding and clipping.
Keep preprocessing and memory costs in the comparison with explicit ownership.

Primary source, inspected upstream documentation:
[meshoptimizer opacity micromaps](https://meshoptimizer.org/#opacity-micromaps)
and [source repository](https://github.com/zeux/meshoptimizer).
Its algorithms target GPU ray-tracing APIs. Raster cutout acceleration is our
hypothesis, not an upstream CPU raster performance claim; no ray-tracing
hardware dependency or AVX2/AVX512 may be added. Four-state classification is
needed to retain uncertain samples rather than forcing binary approximation.

Measure the current cutout share first, then alpha samples avoided, lookup
cost and complete frame time. The same four assets/cameras, four threads and
native 640×360 remain. Adoption needs coverage/material checks (especially
foliage and thin holes), edge/filter/revision contracts, all-mode AB/BA,
sanitizers and actual WASM/browser memory validation.
