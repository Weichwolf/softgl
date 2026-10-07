# Finite geometry-priority stages (2026-10-04)

Ready vertex slices now take priority over claiming another raster bin.
Already claimed bins finish before switching, and the caller uses the same
finite geometry stage. Mutex ownership, release/acquire completion, vertex
arithmetic and per-bin draw order are unchanged. No additional worker is
created. A counter-only diagnostic preserves 100 hashes/four raw frames for
each model: BMW still uses nine stages and 585 slices per frame, with workers
claiming about 338.5 (57.9%) instead of 83.1 (14.2%). T80 does not use the stage
in these views; its timing differences are not transferred vertex work.

Candidate 58d27457 versus accepted 32338ac5 improves BMW 4x frame time by
1.55/1.22% in two independent quiet three-pair audits; all six pairs improve.
T80 changes by -1.56/-0.91%. The 2x control is BMW -1.29%, T80 +0.32%;
no-MSAA/readback is -0.91%/-0.53%. Lit icosphere 2x ratios include +3.60%,
-36.59% and +19.84%, so no stable speed claim is made for it. All twelve
complete AB/BA pairs pass the unchanged quiet guard on attempt one, with
640x360, three workers plus caller, warm-up 80, timed frames 100 per arm and
resolve/readback each frame. Current 4x medians are BMW 22.26/22.19 FPS and
T80 59.36/58.86 FPS; goal thresholds remain open.

An initial canonical check caught a stale workers object because copying the
private include retained an older timestamp. Touching the include and rerunning
all native/sanitizer/canonical/WASM gates fixes the build provenance. Final
canonical JS and WASM match the timed frozen module exactly. The original
private numeric/image/performance evidence remains valid; initial stale native
gates were not accepted. Final tests/publication:
build/diagnostics/queue-geometry-priority/validation.json.
Scheduling counters: build/diagnostics/queue-geometry-priority/stage-counts-summary.json.
Timings: build/perf/tigerlake-20261004/queue-geometry-priority*-summary.json.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
