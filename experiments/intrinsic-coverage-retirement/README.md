# Reuse intrinsic coverage at queue retirement, 2026-10-05

Accepted module 58ecf6ef reuses coverage already computed by ordinary MSAA
rasterization. A fresh cached draw records whether each bin reference covers
any sample, before depth, stencil, alpha or shader rejection. HZ rejection is
unknown and kept. Scissor-enabled draws do not publish pruning. After the
existing job join or queue-slot completion, the caller compacts sample-empty
references from the cached ordered list. Replay stays a bulk copy. No extra
sample test, early join, buffer or allocation is introduced. Workers use the
unused second half of existing sort scratch; a count consumes four bytes of
existing bin padding. Draw snapshots add an entry pointer/stamp, and the pool
adds one pointer. The existing 4 MiB geometry/position cache budget is unchanged.

Only the caller accesses cache entries. Publication verifies validity, the
original stamp and every original bin count, so replaced or touched entries
are conservatively discarded. Queue retirement releases the existing mutex
during compaction; other slots can continue. Surviving references retain their
original bin/primitive order. Matrix/viewport/MS-enable and buffer-revision
invalidation remain in force. Fragment-state changes cannot make intrinsically
sample-empty geometry observable. Source and ownership proof are retained in
build/diagnostics/msaa-coverage-reuse-queue/{experiment.patch,proof.md}.

The initial packed-single-job implementation (0e81939a) is rejected before
timing: an actual model diagnostic finds zero capture/publication jobs for
BMW. Its draws use the ordered queue. The corrected raw/packed queue path
binds 23 jobs/frame, publishes eight and conservatively discards 15 stale
associations. Those eight jobs cover 67,779.92 bin references and omit
9,252.34 references from later BMW passes. Replay references fall from
73,949.02 to 64,696.68 (-12.51%). T80 publishes 0.19 jobs/frame, but has no
replay jobs in this sequence. These are logical work counts, not FPS/miss or
memory-bandwidth measurements. All diagnostics retain 100 exact model hashes
and four byte-identical frames each against production c4e565e0.

Two guarded three-pair 4x audits reproduce BMW gains of 1.337%/1.295% in
frame time; all six pairs improve. Medians are 27.615/27.502 FPS and
36.212/36.362 ms. T80 changes by +0.284%/-1.391%, with medians
67.715/68.917 FPS. Two further three-pair 2x audits improve BMW by
2.929%/3.106% (all six pairs), at 26.957/26.973 FPS. T80 changes by
+0.729%/-0.975%, so the initial small regression does not reproduce.
The lit-sphere control changes by -2.078%/+2.108%, with mixed pairs.
A three-pair no-MSAA audit changes BMW/T80 by -0.676%/-1.375%, with mixed
pairs; medians are 32.244/83.911 FPS. All fifteen quiet guards pass first
attempt. Each pair warms 80 frames and measures 100, with two complete
AB/BA rounds, three helpers plus caller and resolve/readback per frame.
The BMW 30 FPS target with 4x remains unmet.

Fresh retention gates pass: 740 native tests plus the benchmark (741 total),
20 ASan/UBSan/leak contracts, 240 WASM/Mesa default-sample images and exact
default-image hashes against c4e565e0, 234 byte-identical images each at
2x/4x, and 100 hashes plus four raw frames per model at each of 0/2/4 samples.
Renderer/queue/triangle/default-pool checks remain 51/135/54/18.
Strict clamp/sampler/shader/DOT3, additive-write and cube-filter oracles pass.
The original full-frame coverage oracle passes 4,480 frames / 46,688,256
sample masks on SSE4.1 and WASM. A fresh independent raster-return oracle
passes 8,192 frames / 5,431,296 sample masks each on SSE4.1/WASM/ASan, plus
128 fragment-state/scissor cases. Its 7,657 empty classifications are
adversarial test cases, not model execution counts.

New tests/cache_coverage.c compares real warm replay against a forced VBO
revision miss: 84 state/mutation comparisons each on SSE4.1/WASM/ASan,
covering complete color/depth/stencil sample planes and query counts at
2x/4x with 1/3/8 helpers. It covers depth/stencil/alpha, coverage controls,
color masks/blending, scissor/offset and MS/position/viewport/matrix changes.
Chromium and Firefox each pass 234 tests, 18 benchmark rows, cancellation,
MSAA switching and the three-helper default with nine reported processors.
Firefox exits successfully; its pre-existing mozprofile shutdown destructor
message remains in the log.

The internal raster return type changes to carry coverage. A stale void
declaration in the existing scanline fixture initially caused a WASM linker
signature mismatch/trap. The declaration now lives in types.h; the corrected
fixture and related native/sanitizer checks pass. Those failed harness logs
remain saved. The cleanup preserves measured canonical JS/WASM byte-for-byte.
No geometry, floating depth/color/texture arithmetic or image tolerance changes.

Evidence: build/diagnostics/msaa-coverage-reuse{,-counts,-queue,-queue-counts}/,
frozen build/controls/msaa-coverage-reuse-queue-candidate/, and raw guarded
build/perf/tigerlake-20261004/msaa-coverage-reuse-queue{-ms0,-ms2,}-audit-*.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
