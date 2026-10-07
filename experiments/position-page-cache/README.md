# Bounded position-page cache (2026-10-03, accepted)

Cache clip, screen and eye-space positions plus six-plane classifications in
1024-vertex pages, shared between draws over the same VBO address. Canonical
stride/field offsets let part-local array pointers refer to the same global
records. Colors, UVs, normals and front/back lighting are refreshed per vertex;
edge flags are refreshed separately from cached eye coordinates. This also
applies to clipped, lit and query draws because cached coordinates are
independent of those states. Client-memory positions and mapped position
buffers bypass the cache; ranges exceeding 64 pages take the ordinary path.

VBO identity/revision and exact matrix/viewport epochs invalidate the position
data. Pages share the existing strict 4MiB payload budget with ordered bins;
no additional 4MiB cache was added. Selected pages are pinned for the vertex
job, each vertex index has one producer, and pending raster jobs never read
position-cache pages. Allocation failures/partial budgets fall back per page.

Two independent three-pair quiet AB/BA audits against accepted 1ecea859 confirm
BMW 4x frame time -1.33%/-1.50%, at 16.73/16.82 FPS; T80 -1.48%/-1.34%,
at 50.97/50.80 FPS. All six complete pairs pass the quiet-host guard.
Both requested targets remain unmet. The separate guarded no-MSAA screen
with readback every frame is preliminary: BMW -1.38%, 42.13ms, 23.74FPS;
T80 -5.37%, 13.04ms, 76.68FPS. No build/test/profile ran during retained timing.

Production WASM byte-identical to measured 34e1b54d passes 729 native checks,
240 WASM/Mesa images byte-exact to 1ecea859, 100 hashes plus four exact frames
per model with EACH 0/2/4 mode, eight ASan/UBSan/leak contracts, 38 WASM
contracts (9 position, 9 stream, 3 compact, 9 bin cache, 8 MSAA), 18 default-pool
cases, Chromium/Firefox 234 tests, six benches, cancellation, 8 workers and
MSAA switching. The new position contract verifies exact vertices and
classifications against scalar transformation with partial pages, canonical
array offsets, fresh attributes/lighting/edge flags, outside vertices,
matrix/viewport/storage changes, read-only/writable maps, deletion/reuse,
large-range fallback and bounded LRU eviction. Geometry, arithmetic and
all image tolerances stay unchanged.

Frozen build: build/controls/position-cache-candidate; evidence:
build/diagnostics/position-cache/validation.json,production-* logs and
build/perf/tigerlake-20261003/position-cache-*. The early oversized-range
drain trial is not adopted: one quiet 4x screen gave BMW -1.0%, T80 +2.1%;
it remains under build/diagnostics/stream-large-range/. Fresh adopted-async
profiling is under async-raster-profile4-bmw-functions.json (sampled self,
not CPU cycles); raster work remains the main optimization target.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
