# Ordered multitexture draw queue (accepted)

Filled, query-free indexed triangles using at least two enabled/bound texture
units can submit four immutable full-vertex draw snapshots. Bins may advance
to a later draw only after every earlier draw for that same X stripe completes.
Other stripes progress independently. Workers remain in one queue epoch until
an explicit drain, avoiding the full raster join before every material draw.
The caller helps under backpressure and at flush. Per-draw sort legality is
snapshotted; triangle sorting, bin layout, shader math and float precision
remain unchanged. Single-texture and oversized packed draws retain their
existing paths and join the queue at handovers.

Retained raw vertex capacities across all four slots, including idle slots,
share a 2MiB ceiling. Backpressure retires completed jobs and releases idle
arrays before admitting more geometry. Producer arrays, classification, bin
records and state/texture metadata are separate. Queue drain releases its
vertex arrays; entering the queue releases idle ordinary snapshot storage.
The budget covers submitted vertices; active framebuffer stripes, geometry
caches and texture lines also occupy L3. Storage mutation, readback, queries,
mode changes and destruction preserve their existing draining behavior.

Two independent three-pair quiet audits against 532c4a5d give BMW four-sample
frame time -8.18%/-9.23% at 21.20/21.97 FPS. T80 gives -0.40%/+0.51% at
57.69/59.90 FPS, with no repeated regression. Without MSAA, resolving/readback
each frame, BMW gives -8.76%/-8.06% at 29.14/29.12 FPS; T80 -0.44%/-0.71%
at 85.38/85.58 FPS. All twelve complete AB/BA pairs pass the quiet guard on
their first attempt; each uses 640x360, three workers plus caller, 80 warm-up
and 100 measured frames per arm. Builds, tests and profiling are absent
during retained measurements. Both four-sample FPS goals remain unmet.

Acceptance: 735 native correctness/contracts plus the benchmark; 15 explicit
ASan/UBSan/leak contracts; 240 unchanged-tolerance WASM/Mesa images, also
exact to 532c4a5d; all 234 four-sample test images exact; both models' 100
hashes and four bytewise frames for each 0/2/4 samples; 51 existing WASM
contracts plus the new 99 queue/eager state and full sample-plane hashes
with 1/3/8 workers. The new contract exercises 48 overlapping draws before
readback, small/large vertex-capacity handovers, blending, masked/read-only
depth and color, fog/alpha/stencil, texture table movement and mutation, fresh
VBO/client storage, packed/synchronous fallback, query/mode and destruction
drains. Three strict numeric/shader contracts and 18 default-pool contracts
pass. ThreadSanitizer cannot start on this WSL host: unexpected memory
mapping, exit 66; this is not a race-check pass. Chromium/Firefox preview
results and publication are recorded in the validation artifact. Canonical
JS/WASM exactly match the timed frozen candidate, c57e1da0. Evidence:
`build/diagnostics/ordered-draw-queue/validation.json`,
`build/diagnostics/ordered-draw-queue/` and
`build/perf/tigerlake-20261004/ordered-draw-queue*-summary.json`.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
