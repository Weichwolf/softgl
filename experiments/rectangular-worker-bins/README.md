# 2026-10-05: rectangular worker bins, rejected

Two private implementations retain linear sample planes, the ordered draw
queue and three helpers plus caller, but replace 32 MSAA X-stripes with an
8-column / 4-row partition. At 640x360, approximately 80x90 pixels per bin
keep the sample color/depth area near the previous 225KiB. Interior X/Y
boundaries align to eight/four pixels, preserving separate HZ-cell ownership.
Conservative Y bounds and row/column lookups limit producer work to overlapping
rectangles. Prepared descriptors grow from 28 to 32 bytes, with an unchanged
8,192-record limit: 256KiB retained scratch, 512KiB during growth.

| Private bounds dispatch | BMW time, audits 1 / 2 | T80 time, audits 1 / 2 |
| --- | --- | --- |
| Read the current worker bin through TLS when clipping Y | +3.09% / +1.71% | +4.31% / +2.33% |
| Pass Y bounds directly to the prepared rasterizer | +0.88% / +2.37% | -1.32% / +2.63% |

Each implementation has two quiet three-pair 4x AB/BA audits at 640x360,
80 warm-up / 100 measured frames per arm, resolving/reading back every frame.
All twelve pairs pass the activity guard on attempt one. The TLS variant is
slower in every pair for both models; direct parameters do not establish a
reproducible improvement either. Neither is integrated or served.

Both preserve 100 rotating hashes and four byte-exact frames per model at 4x.
Each passes 51 WASM renderer checks, 135 queue hashes, 405 full logical-plane
state hashes on native/WASM/ASan, and 54 stage/serial hashes on each platform.
ASan/UBSan with leak checks passes. Shapes 65x67, 128x81 and 640x67 cover
partial rectangles, active HZ, off/2x/4x, eager/queued draws and 1/3/8 helpers.
The stage fixture exercises rectangle rows and the 8,192-record boundary.
No full native/Mesa/browser retention rerun follows these rejections.

Untimed modules compare the original stripes with the first rectangle variant.
Both preserve the same exact rotating model frames. Per frame, BMW emitted
bin references fall 155,431→139,097 (-10.51%), T80 28,101→24,195 (-13.90%);
visited raster pixels fall 1,744,066→1,629,398 (-6.57%) and
442,589→410,486 (-7.25%). Post-Z pixels/samples remain exactly unchanged.
More pixels enter the scanline path, and pre-Z covered pixels increase slightly.
These logical reductions do not establish a speedup or a cache-miss reduction;
hardware miss counters and the cause of the timing regression were not measured.

Evidence: build/diagnostics/{rectangular-bins,rectangular-bins-explicit-bounds}/
{validation.json,experiment.patch}; rectangular-bins/logical-work-comparison.json;
build/diagnostics/{rectangular-bins-counts,stripe-bin-reference-counts}/
frame-equivalence-4.json; timing pairs under build/perf/tigerlake-20261004/.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
