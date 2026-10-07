# Geometry help inside the ordered draw queue (2026-10-04)

The queue adds a finite geometry stage for next-draw ranges of at least 1,024
vertices. Ready raster bins keep priority. Otherwise, workers claim disjoint
slices of at most 128 vertices in the caller-owned arrays, using the existing
prepared inputs and position cache. The GL caller processes the same slices.
Queue metadata is protected by the existing mutex; release/acquire completion
ensures all attributes and cache flags are consumed before the caller changes
inputs or submits the new snapshot. Ordered per-bin raster claims, float
geometry arithmetic, texture evaluation and existing memory budgets are
unchanged. This uses three workers plus caller without a fifth coordinator.

Candidate 32338ac5 improves BMW four-sample frame time by 1.37/1.48% in two
independent quiet three-pair audits against acfc66bb. All six BMW pairs improve.
T80 changes by -0.59/-2.11%. Two-sample control gives BMW -1.07%, T80 -0.08%;
no-MSAA/readback control gives -2.18%/-0.22%. All twelve complete AB/BA pairs
pass the unchanged activity guard on attempt one, at 640x360, three workers
plus caller, 80 warm-up and 100 measured frames per arm, resolve every frame.
No compiles, image tests or profiling overlap acceptance measurements.

A separate counter-bearing build preserves both models' 100 hashes and four
raw frames. BMW uses nine geometry stages and 585 vertex slices per frame;
workers claim about 83.1 slices (14.2%), caller about 501.9. T80 does not use
this stage in the tested views, so its timing differences cannot be attributed
to transferred vertex work. The lit icosphere's -12.15% control also does not
establish a geometry-stage benefit. Counters are scheduling diagnostics, not
hardware cache/DRAM measurements. Current four-sample audit medians are BMW
22.17/22.15 FPS and T80 58.95/59.26 FPS; both target thresholds remain open.

The existing ordered-draw regression now crosses the 1,024-vertex threshold
with 1,020/1,023/1,026/1,152/6,144-vertex ranges and partial 128-vertex tails.
It compares 99 whole-frame/sample-plane hashes against eager flushing while
reusing slots, changing inputs/state, blending and exercising storage drains.
Full validation/publication status: build/diagnostics/queue-vertex-stage/validation.json.
Design and next hypotheses: build/diagnostics/queue-vertex-stage/design.md.
Raw evidence: build/perf/tigerlake-20261004/queue-vertex-stage*-summary.json.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
