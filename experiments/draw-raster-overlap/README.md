# Bounded draw preparation/raster overlap (2026-10-03, accepted)

Indexed filled triangles publish one immutable draw snapshot while the caller
prepares the next draw. Raster jobs retain their original order: publishing
the next draw joins the previous job, with the caller assisting outstanding
bins. Two vertex/bin slots exchange ownership without vertex copies. Each
submitted draw is bounded to 2MiB of transformed plus clipped vertex storage;
bin records, classification, textures and state metadata are additional.
Oversized draws use the synchronous path. Compact local indexed transforms
avoid allocating/touching the unreferenced prefix of a global vertex buffer.
This is an active-working-set budget, not an 8MiB resident-memory guarantee.

Sampler/context metadata belongs to the job. Texture storage mutation and
delete, framebuffer reads/writes, queries, immediate primitives, draw-array
fallbacks and mode/destruction handovers drain preceding work. All client
attributes are consumed before DrawElements returns. Queries remain
synchronous; raster draw order, geometry, arithmetic and tolerances are
unchanged. There is no new viewer mode or geometry simplification.

Two independent three-pair guarded AB/BA audits against fb8684b5 confirm BMW
4x frame time -13.00%/-13.30%, at 16.43/16.40 FPS including per-frame resolve.
T80 +1.05%/+1.49%, at 48.77/49.10 FPS, is slightly slower; this change targets
the BMW preparation/raster bottleneck. Both requested targets remain unmet.
One guarded no-MSAA pair with readback every frame gives BMW -16.92%
(42.33ms, 23.62 FPS), T80 -0.43% (14.59ms, 68.52 FPS); preliminary only.
No build/test/profile ran during retained timings. All six 4x pairs and the
no-MSAA screen passed the host-activity guard.

Production WASM is byte-identical to measured V3 candidate 1ecea859. Passes
728 native checks, 240 WASM/Mesa images byte-exact to accepted fb8684b5,
100 exact hashes plus four exact frames per model with EACH 0/2/4 mode,
seven ASan/UBSan/leak contracts, 29 WASM contracts (9 streaming, 3 local-range,
9 geometry, 8 multisample), 18 default-pool contracts and Chromium/Firefox
previews (234 tests, six benchmarks, cancellation, eight workers, MSAA
switching). The new committed contract compares eager drains and overlap at
equal worker/bin counts and exercises texture-table movement, sampler/state
changes, image replacement/delete, BufferData/map/client UV mutation,
display-list clear, immediate points, DrawPixels, framebuffer texture copies,
queries, mode handover, destruction, oversized fallback and bounded recovery.
The transform oracle covers nonzero first=50003, lighting/normal modes and
1023..13108 capacity boundaries. Mode handover preserves existing behavior;
it does not introduce a selection implementation.

Frozen control: build/controls/async-raster-candidate-v3. Evidence:
build/diagnostics/async-raster/validation-v3.json and production-* logs,
build/perf/tigerlake-20261003/async-raster-v3-*. Earlier V2 and uncompiled
designs remain private diagnostics, not additional accepted optimizations.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
