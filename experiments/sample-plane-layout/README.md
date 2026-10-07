# 2026-10-05: sample-plane layout and bin alignment, rejected

Three private trials compare against accepted `261f286` / `c4e565e0`.
Each has two quiet audits of three complete AB/BA pairs, 640x360,
80 warm-up / 100 measured frames per arm, three helpers plus caller and
resolve/readback on every measured frame. All eighteen pairs pass the host
activity guard on their first attempt. Positive changes mean slower frames.

| Private architecture | MSAA | BMW time, audits 1 / 2 | T80 time, audits 1 / 2 |
| --- | --- | --- | --- |
| 16x16 tiled sample planes, page-aligned color/depth | 4x | +2.14% / +1.39% | +2.84% / +0.93% |
| Same layout, row offsets hoisted and sample addresses reused by writers | 4x | +0.79% / +2.35% | +1.03% / +1.79% |
| Linear 2x planes aligned to 64 bytes; interior X-bin boundaries aligned to eight pixels | 2x | -0.13% / +0.67% | +0.05% / +0.22% |

The tiled variants preserve linear resolved output while changing every
sample-plane consumer, including clears, pixel transfers, accumulation return,
general/opaque writers, HZ refresh and resolve. Padded partial tiles are bounded;
small framebuffers retain linear sample storage. The revision passes one
physical sample index from coverage/depth through shading to the final writer.
Both variants preserve 100 rotating hashes and four byte-exact frames per model
at 4x. Each passes 51 WASM renderer checks, 135 queue hashes and 270 logical
color/depth/stencil sample-plane state hashes on native, WASM and ASan/UBSan
with leak checks. Shapes 65x67 and 128x81 exercise padded edges and active HZ,
off/2x/4x, eager/queued draws and 1/3/8 helpers against the old linear renderer.
BMW is slower in every one of the six pairs for each tiled variant.

The independent 2x trial keeps linear storage and the old four-sample layout.
At 640 pixels, aligned boundaries alternate 16/24-pixel bins instead of 20;
sample color/depth bases, rows and bin boundaries then align to 64 bytes.
This proves separate cache-line ownership for those writes, not fewer measured
cache misses. Small/nonqualifying widths retain the old bins. Both models keep
100 exact hashes and four byte-identical frames at 2x; 51 WASM renderer checks
and 135 queue hashes pass. Both audits have mixed individual pairs, with no
reproducible model gain. No native/full compliance rerun follows this rejection.

All trials remain private; production source and served assets are unchanged.
Evidence: build/diagnostics/{msaa-tiled16,msaa-tiled16-cached-address,
msaa2-bin-alignment}/{validation.json,experiment.patch}; timing pairs and
summaries under build/perf/tigerlake-20261004/.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
