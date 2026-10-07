# Packed raster vertices for oversized draws (2026-10-04, private trials)

Previously oversized draws synchronously drain when full 160-byte vertex
capacities exceed the 2MiB immutable-draw budget. Private trials instead pack
only exact float NDC, front color, eye.z and every active UV set. A one-UV
record uses 64 bytes; at most 2MiB is submitted per job. The producer retains
full geometry, triangle/bin/sort order stays intact, and a collision-safe
64-entry decode cache supplies the existing rasterizer. No precision or
geometry reduction is involved. This bounds submitted storage, not total
resident memory or cache traffic.

Both the original-layout and separately outlined variants pass 51 WASM
contracts, including 524,288 bit-exact triangle fetches across all 16 UV masks
and 90 large packed/full state comparisons of resolved and individual sample
planes. Both models retain 100 four-sample hashes and four bytewise frames.
The separately outlined variant also passes a private full-core native
ASan/UBSan/leak run of the 90-state sample-plane oracle. The earlier initial
variant additionally passed 180 cross-module comparisons against the accepted
renderer. These results do not constitute full native/Mesa/browser acceptance.

Two independent three-pair audits of the original-layout variant give
BMW/T80 four-sample frame-time changes -0.75%/-2.26% and -0.80%/-2.40%;
no-MSAA/readback changes +1.78%/-4.17% and +0.86%/-3.21%. Separately keeping
the packed submission and drain as WASM roots gives a first four-sample screen
-0.4%/-3.9%, but its three-pair no-MSAA audit still gives +0.94%/-3.11%.
That audit's second pair needed a second attempt after detected Codex CPU
activity; discarded data remain recorded. Remaining audits were stopped.
Neither variant was adopted because BMW is the primary scene.

Evidence: `build/diagnostics/packed-large-raster-reused/validation.json`,
`build/diagnostics/packed-large-raster-cold/validation.json`,
`build/diagnostics/packed-large-raster-counters/summary.json`, and matching
`build/perf/tigerlake-20261004/` JSON. Counters are logical counts; reduced
storage is not a measured reduction in cache misses or DRAM traffic.

The retained variant reuses the existing prepared-range flag store for the
compact source count, with a negative count marking original-index storage
that retains the synchronous fallback. Worker-pool layout and the original
vertex-job partition stores stay unchanged. Two independent three-pair quiet
four-sample audits give BMW -0.70%/-0.18%, T80 -0.70%/-1.92%, at
19.32/19.40 and 57.21/57.65 FPS. No-MSAA/readback audits give BMW
-0.35%/+1.09% and T80 -4.72%/-4.72%; BMW's no-MSAA result is mixed,
not a demonstrated gain or repeated regression. The first pair of the first
four-sample audit required a second attempt after detected Codex CPU activity;
all other accepted pairs passed the activity guard on their first attempt.
Four-sample frames resolve every frame; both modes use 640x360, three workers
plus caller, 80 warm-up and 100 measured frames per arm.

Acceptance gates: 733 native correctness/contract checks plus the native
benchmark; 13 ASan/UBSan/leak contracts; 240 WASM/Mesa comparisons with unchanged
tolerances and 240 exact images against the previous renderer; all 234 tests
with four-sample MSAA exact; each model's 100 hashes and four bytewise frames
with 0/2/4 samples; 51 WASM and 18 default-pool contracts; Chromium and Firefox
with 234 tests, six benchmarks, responsive cancellation, eight workers and
MSAA switching. The canonical JS and WASM match the frozen timed candidate
byte for byte (`b1f61553`). Neither FPS goal has yet been reached. The model
packs, full float precision and renderer semantics stay unchanged.

Evidence: `build/diagnostics/packed-large-raster-marker/validation.json` and
`build/perf/tigerlake-20261004/packed-large-raster-marker*-summary.json`.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
