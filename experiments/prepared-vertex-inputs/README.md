# Prepared vertex inputs (2026-10-04, accepted)

Resolve the seven array/VBO streams once per joined vertex job, instead of
looking up buffer metadata for each attribute of each vertex. Float arrays
use direct component loads or an unaligned SIMD load for four components;
shorter arrays never read beyond their allocation. Other types retain the
existing conversions and stride rules. Position-cache replay still refreshes
all attributes and lighting. The descriptor adds 168 bytes of pool metadata;
addresses are resolved again for every draw and pending raster snapshots
never access them. Existing joined-job and storage-mutation barriers apply.

Two independent three-pair quiet AB/BA audits against accepted 34e1b54d
confirm BMW 4x frame time -4.36%/-4.63%, at 17.21/17.30 FPS; T80
-2.38%/-1.32%, at 51.64/51.74 FPS. Resolve is included every frame,
640x360, three workers plus caller, 80 warm-up and 100 measured frames.
All six complete pairs pass the host-activity guard; no tests, builds or
profiles ran during them. Both requested targets remain unmet. One guarded
no-MSAA pair with readback every frame gives BMW -7.30% (39.21ms,
25.51 FPS), T80 -3.37% (12.67ms, 78.92 FPS); preliminary only.

Production WASM is byte-identical to measured c566ddc0. Passes 730 native
checks, nine ASan/UBSan/leak contracts, 240 WASM/Mesa images byte-exact to
34e1b54d, 100 exact hashes and four exact frames per model with EACH
0/2/4 mode, 47 WASM contracts (9 inputs, 9 positions, 9 stream, 3 compact,
9 geometry, 8 MSAA), 18 default-pool cases and Chromium/Firefox previews
(234 tests, six benchmarks, cancellation, eight workers, MSAA switching).
The new contract compares fresh/prepared/cached vertices and classifications
across 16 array layouts, mixed VBO/client data, precisely sized allocations,
typed conversions, lighting/current attributes, client changes and VBO
reallocation. Geometry, arithmetic and image tolerances are unchanged.

Frozen build: build/controls/prepared-attributes-candidate; evidence:
build/diagnostics/prepared-attributes/validation.json and production-*-final
logs, build/perf/tigerlake-20261004/prepared-attributes-*.

Other private trials this turn were not adopted. Shader outlining reduces
BMW time by 1.74% but increases T80 time by 0.93% across three quiet pairs;
scalar-only outlining increases both in one screen. Conservative per-bin
Y clipping removes 17.6%/34.0% of BMW/T80 bounding-box pixels, but one
quiet screen gives BMW +0.06%, T80 -1.44%. Ten-byte cached triangle
references preserve full float depth sort keys and pass 1,114,112 exact
native/WASM round trips, boundary contracts and model image comparisons;
cache payload falls from 3.65 to 3.18 MB for BMW and 3.05 to 2.86 MB for
T80, but position hits are unchanged and both scenes become slightly slower.
All remain under build/diagnostics/, without production changes.

Logical-counter diagnostics show scalar tails consume 18.1%/12.8% of
BMW/T80 post-Z pixels. These are work counts, not CPU cycles or bandwidth
measurements. Reducing cached bytes alone did not improve reuse; the next
shader or triangle-setup experiment needs a measured bottleneck.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
