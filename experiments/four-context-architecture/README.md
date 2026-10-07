# 2026-10-05: four-context architecture trials

All trials below start from accepted `261f286` / WASM `c4e565e0`.
They preserve GL arithmetic, geometry, sampling and the three-helper-plus-caller
pool. Each has two quiet 4x audits with three complete AB/BA pairs per audit,
640x360, 80 warm-up / 100 measured frames per arm, and resolve/readback on
every frame. All attempts and host monitors are retained.

| Private architecture | BMW time, audit 1 / 2 | T80 time, audit 1 / 2 | Decision |
| --- | --- | --- | --- |
| Pack queue vertices at the end of each 128-vertex transform slice | +0.65% / -1.24% | +2.21% / +0.64% | Reject: BMW mixed; T80 slower |
| Same packing, reclaim idle queue storage before reservation | +1.15% / +0.80% | +0.94% / -0.62% | Reject: all six BMW pairs slower |
| Atomic monotonic geometry tickets between 128-vertex slices | +1.53% / +1.47% | +0.59% / +0.31% | Reject: no gain in either audit |
| Intern byte-identical cube faces; copy on mutation | +0.85% / +1.48% | +0.76% / +1.04% | Reject: both models slower |
| Same interning with 64-byte-aligned face data | +1.49% / +1.42% | +0.57% / +0.29% | Reject: no BMW gain |
| Coarse four-pixel SIMD before exact sample-lane coverage | +2.93% / +2.41% | +3.46% / +1.78% | Reject: all six pairs slower in both models |

Early packing reserves an unpublished idle slot without waiting and keeps the
existing aggregate 2MiB queue budget. Joined workers pack disjoint slices while
full transformed vertices remain available for clipping. Final submission
reuses the payload only if layout, capacity and source count still match;
clipped vertices and failed reservations retain the ordinary copy. Untimed
counters show BMW reuses 33,354 of 83,746 packed vertices per frame (39.8%),
with about 60.2% of early writes performed by helpers. T80 does not use this
DOT3 queue path. Moving the same writes earlier does not establish a speedup.

The ticket trial claims further slices without the queue mutex. Each worker
captures immutable stage inputs before releasing completion; a monotonic
cursor prevents an old stage from claiming a new stage's work. Tickets reset
only after all queue workers join, with an exact overflow fallback. Existing
135 queue and 54 triangle state/sample-plane oracles pass.

Cube interning keeps ordinary aligned RGBA8 sampler pointers. A private storage
prefix owns references and fingerprints; every alias is confirmed by full byte
comparison. Upload/copy may share within one context, while subimage writes
first detach shared storage. State teardown releases references after joining
workers. Nine new private ownership/mutation cases pass native, WASM and
ASan/UBSan with leak checking, including mipmaps, face/object isolation,
delete/re-upload, framebuffer copy, display lists and old queued snapshots.
The 51 renderer and 135 queue checks pass too. No full compliance rerun follows
these performance rejections. All six trials keep 100 exact rotating hashes
and four byte-identical frames per model at 4x. Production remains unchanged.

A current-module diagnostic preserves the same exact model frames and counts
work after whole-triangle HZ. These are logical operations, not hardware cache
misses or measured DRAM traffic:

| Per frame, 640x360 / 4x | BMW | T80 |
| --- | --- | --- |
| Bounding-box pixels | 2,840,601 | 1,022,817 |
| Pixels visited after scanline bounds | 1,744,066 | 442,589 |
| Geometrically covered pixels | 641,674 | 215,722 |
| Empty visited pixels | 1,102,392 | 226,866 |
| Covered pixels after early depth | 301,292 | 137,667 |
| Fully covered pixels before depth | 234,725 | 95,894 |

The unchanged BMW pack contains 23 cubes but only nine byte-distinct whole
cubes; 138 faces contain only 48 byte-distinct face images. Cube texels occupy
8.625MiB unshared and 3.000MiB if shared per identical face, excluding small
ownership prefixes. This establishes a storage opportunity, not a frame-time
or cache-miss improvement.

The coarse four-pixel trial conservatively rejects a pixel only if one edge
excludes all its samples; every candidate retains the original exact sample
test and pixel order. Its 4,480-frame / 46,688,256-sample-mask oracle,
51 renderer checks, 135 queue hashes and both rotating-model comparisons pass.
Extra coarse-test overhead is not offset by fewer sample tests; all six pairs
are slower for both scenes. It remains private.

The separate 64-byte-aligned storage variant keeps the same mutation rules
and passes all nine WASM storage cases and both exact rotating-model gates.
Its two complete audits show BMW +1.49%/+1.42% and T80 +0.57%/+0.29%;
BMW is slower in five of six pairs and T80 in all six. It is rejected too.
No native/full compliance rerun follows this rejection. The smaller storage
footprint and deliberate alignment establish neither a frame-time gain nor
a hardware cache-miss reduction. All six trials remain private; production
source and live module stay at accepted `261f286` / `c4e565e0`.

Evidence: build/diagnostics/{queue-slice-prepack,queue-slice-prepack-reclaim,
queue-atomic-stage,cube-storage-intern,cube-storage-intern-aligned,
msaa-coarse-pixel-groups}/validation.json
and experiment.patch;
build/diagnostics/current-261f286-raster-counts/{validation,cube-dedup-shapes}.json;
all raw timing pairs under build/perf/tigerlake-20261004/.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
