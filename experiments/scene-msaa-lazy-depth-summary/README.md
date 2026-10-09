# Demand-driven exact MSAA depth summaries

Status: not adopted after a slower first Bistro screen; native independent
correctness and direct counted-helper controls pass.

Current [raster_hz.h](../../libsoftgl/src/raster_hz.h) tracks the sample holding
the maximum depth of each fully written 4×4 cell. Reducing that sample rescans
all 64 real depth samples immediately. Multiple depth-passing writes can thus
rescan the same cell before its improved bound is queried.

Own idea: for monotonic four-sample scene capture, retain the previous maximum
as a conservative upper bound and mark it dirty in the unused high bit of
`maximum_sample`. Subsequent monotonic writes need no rescan. A bin-clamped
scene occlusion query scans the cell only when the stale maximum cannot
already establish rejection. Refresh uses the original exact SIMD128 reducer
and clears the marker by storing its genuine sample index. Initial full-cell
refresh remains eager; OFF/2× algorithms are unchanged.

Correctness argument: under LESS/LEQUAL writes every real depth only decreases,
so a previous upper bound stays conservative. Skipping against that bound
cannot remove visible geometry. Refresh reads actual fully materialized depths,
including cutout survivors, not inferred surface depths. Nonmonotonic writes
retain invalidation; ordinary writers eagerly refresh a pending dirty cell.
Rollback invalidates written masks as before. No extra buffer, approximate
depth, surface sharing or previous-frame data.

Concurrency is essential: queries that mutate summaries must remain within
the current worker's stripe, and stripe boundaries must align to complete
4×4 cells. The existing 640×360 scene path uses aligned X stripes. Ordinary
queries remain read-only; only active scene queries lazily refresh. Verify
all actual query call sites and ownership before any adoption.

Require an independent fixture with many maximum-reducing writes before a
query, a dirty query which rejects without scanning, holes/incomplete cells,
LEQUAL/nonmonotonic transitions, rollback then a farther ordinary draw,
resident reuse and forced disable. Count original and lazy scans separately;
fewer scans are not FPS evidence. Run exact native/actual-WASM sample-plane
controls, all model views, sanitizers and repeated quiet all-four 0/2/4 timing.

Source: our existing monotonic maximum-sample tracking in `raster_hz.h`; the
lazy dirty marker and demand-driven refresh are our own proposal. Related
[MSAA occlusion](../scene-msaa-occlusion/README.md) and
[packet occlusion](../scene-msaa-packet-occlusion/README.md) are already adopted;
this experiment changes refresh timing rather than adding those tests again.

Built with Clang22/SIMD128 against `7d67a8e`: independent 216 original and
576 small/boundary/clip/cutout/overlap sample-plane hashes exact; 162 canonical
legacy/deferred comparisons and admission/rollback/later ordinary-draw controls
pass. ISA: 66,949 XMM references, no AVX/YMM/ZMM.

Direct private-helper fixture writes actual cell depths and tests dirty queries,
stale-bound rejection, incomplete cells, LEQUAL, nonmonotonic invalidation and
resumption of an ordinary writer. For sixteen maximum-reducing pixel writes,
the original reducer scans sixteen times; the candidate scans zero times until
the next necessary query, then once. Real sample depths and query outcomes are
exact. This is fixture evidence, not a Bistro scan census or an FPS prediction.
The fixture uses a test-only active-scene token without worker/GL dispatch;
real renderer fixtures independently exercise actual scene objects. Only the
fixture header adds a reducer counter; timed libraries are uninstrumented.
The first fixture build rejected an incompatible token-pointer assignment;
the explicit void-pointer conversion fixes it, and both binaries pass.

Balanced Bistro screen, four total threads, 640×360, 60 warmup/30 orbit frames:
OFF +0.56%, 2× +2.01% controls; 4× 59.630168 → 60.458704 ms (+1.39% time).
All final angle-160 RGB images are byte-identical. The algorithm remains
unchanged for OFF/2×, but header code/layout can affect controls. No broad
all-model repetition, sanitizer, actual-WASM or production/browser adoption
was pursued without a performance case. [Validation](validation/) retains
sources, digests, native logs, the initial compile failure and timing records.
