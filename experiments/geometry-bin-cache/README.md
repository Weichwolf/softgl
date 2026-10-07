# Geometry bin cache (2026-10-03, accepted)

Dense indexed VBO draws can reuse raw ordered triangle-bin records, their
index range and the results of frustum qualification/backface culling when
position/index revisions, attribute layout, matrices, viewport and culling
state match. Only wholly inside filled draws qualify. Attributes and vertices
still transform freshly on every draw, so material/color/UV changes remain
visible. Cached records precede optional Z sorting; blend, stencil and query
semantics remain in the original raster path. Client arrays, mapped buffers,
user clipping and two-sided lighting retain the existing preparation. Buffer
uploads, writable maps and reused object names invalidate by revision.
The 64-entry LRU is bounded to 4 MiB.

Two independent three-pair quiet AB/BA audits confirm BMW 4x-MSAA frame time
-6.86%/-6.52%, at 14.08/13.97 FPS. Tank -0.21%/-0.23%, at 49.65/49.74 FPS, is
practically neutral; both targets remain unmet. One contaminated attempt was
discarded after the guard detected Codex process CPU activity. No test or build
ran during the retained comparisons. The separate guarded no-MSAA screen is
recorded below; one pair does not establish a repeated performance result.

Candidate `162bc25f` passes 727 native checks, 240 WASM/Mesa checks with all
240 images byte-identical to `d02a6367`, 100 angle hashes and four exact frames
per model with each of 0/2/4 samples, nine native/WASM geometry contracts,
eight explicit MSAA and eighteen default-pool contracts, six ASan/UBSan/leak
contracts, and Chromium/Firefox previews with 234 tests, six benchmarks, eight
workers, cancellation and MSAA switching. Cache contracts exercise actual
hits/replay, clipping fallback, buffer mutation/reuse, matrix/viewport/cull
changes, LRU eviction, fresh colors, blending, alpha/stencil/scissor and queries.
Geometry and image tolerances remain unchanged. Evidence:
`build/diagnostics/geometry-cache/validation.json`,
`build/perf/tigerlake-20261003/geometry-cache-*`; frozen build:
`build/controls/geometry-cache-candidate-v2`. Private row-span files under
`build/diagnostics/msaa-row-spans/` are uncompiled and unaccepted.

No-MSAA screen: bmw -8.62% frame time, 50.841 ms (19.67 FPS).

No-MSAA screen: tank +0.73% frame time, 14.131 ms (70.77 FPS).

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
