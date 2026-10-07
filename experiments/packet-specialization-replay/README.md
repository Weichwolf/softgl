# Packet specialization and visible-vertex replay, rejected (2026-10-04)

Four private experiments were compared with accepted module 4b5b002c; none
was integrated or published. A fused DOT3 packet reuses one texture result
instead of retaining four, with unchanged floating-point operations. Two
independent quiet three-pair four-sample audits give BMW -0.87/-0.01% and
T80 -1.64/+0.86% frame time. Three separately retained fixed DOT3 kernel
roots give BMW -0.41/-0.19% and T80 -0.48/-1.35%, with mixed individual
pairs. Neither establishes enough repeatable BMW benefit for the extra
specialization. Strict native/WASM numeric checks, model frames at 2x/4x,
and 234 exact scene images per MSAA mode pass; the fused packet also passes
its native sanitizer check. Evidence: build/diagnostics/packet-fused-stages/
and build/diagnostics/packet-fixed-kernels/validation.json.

Cached-bin vertex replay marks only referenced vertices for attribute refresh.
The initial whole-array initialization variant makes BMW slower in all three
quiet pairs (+0.78/+0.80/+1.78%). A second variant initializes unused slots
inside worker slices; counters establish zero vertices skipped in the target
scenes, so it was rejected before timing. BMW has 23 replay jobs per frame,
46,103 input vertices and 46,103 refreshed vertices; T80 has no such jobs.
Both variants pass 51 WASM contracts, 99 queue hashes, all 234 exact images
at 2x and 4x, and 100 hashes plus four raw frames per model at off/2x/4x.
Evidence: build/diagnostics/visible-vertex-replay*/validation.json and
build/diagnostics/visible-vertex-replay-counts/frame-equivalence-4.json.

Fresh per-thread sampling of accepted d16829a is under
build/diagnostics/current-d16829a-profile/summary.json, with raw profiles
under build/perf/tigerlake-20261004/current-d16829a-*.profiles.json. The
caller still spends substantial samples in triangle/bin preparation while
workers sample wait locations. These include inlined callees and blocked
waits; they are diagnostic observations, not CPU utilization, measured
cache misses or acceptance FPS. Parallel triangle preparation is an
architectural follow-up, not an implemented or measured improvement.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
