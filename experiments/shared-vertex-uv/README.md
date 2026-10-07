# Identical vertex UV inputs (2026-10-04)

Prepared vertex inputs identify enabled UV arrays with identical resolved
base, type, component count and stride. Later units copy the earlier raw
four-component value, including padding, instead of fetching and converting
the same source again. Resolution is repeated for every joined vertex job;
there is no persistent attribute cache or additional context/vertex storage.
Independent unit state and the unprepared vertex path remain unchanged.

Two independent three-pair quiet four-sample audits of 2da59ac9 against
a05d5778 give BMW -0.63 / -1.15% frame time, at 22.71 / 22.52 FPS.
All six BMW pairs improve. T80 gives +0.21 / -1.04% at 61.86 / 61.52 FPS;
its mixed pairs do not demonstrate a useful gain or repeated regression.
Two no-MSAA/readback audits give BMW -1.17 / -0.83% and T80
-1.93 / +0.77%. All twelve complete AB/BA pairs pass the quiet guard on
attempt one; none are removed. Each uses 640x360, three workers plus caller,
80 warm-up and 100 measured frames per arm, resolve/readback every frame.
Builds, tests and profiling are absent during timings. BMW remains below
30 FPS with four samples, so the overall optimization goal stays open.

The extended input contract compares full vertices to the independent
unprepared path and geometry replay for float/short/int, client/VBO storage,
one to four components, distinct pointer/stride/size/type, disabled sources,
nonzero alias roots and fresh storage. Native and WASM both pass the extended
contract for 0/2/4 samples and 1/3/8 workers. Full validation passes 736 native
checks plus the benchmark, 16 explicit ASan/UBSan/leak contracts, all 240
unchanged-tolerance WASM/Mesa images and exact baseline hashes, 234 exact
four-sample tests, and both models' 100 hashes plus four raw frames each for
0/2/4 samples. Existing WASM gates pass 51 contracts, 99 queue/eager hashes,
18 default-pool checks, three strict numeric/shader contracts, 266,461,184
additive byte channels and 32,768 actual writer comparisons. Canonical
JS/WASM exactly match the timed frozen candidate. Browser and publication
status are recorded in `build/diagnostics/vertex-uv-alias/validation.json`.
Raw measurements: `build/perf/tigerlake-20261004/vertex-uv-alias*-summary.json`.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
