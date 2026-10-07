# SIMD two-sample fragment writer (2026-10-04)

The two-sample writer now handles common opaque and supported blend states
with SIMD depth tests and color blending, using bounded eight-byte sample
loads/stores. It reuses the existing conservative additive-byte rounding
guard; alpha/stencil/logic/query/masked-color states retain the scalar writer.
A separate retained two-sample WASM root keeps its dispatch and scratch out
of the four-sample writer. Sample positions, coverage, interpolation, storage
format, query semantics and the prepared BMW geometry remain unchanged.

The first private variant e431f43b put the two-sample eligibility dispatch
inside the general writer. Its two independent three-pair 2x audits improve
BMW by 3.14/4.03%, T80 by 6.56/6.24%, and icosphere by 19.51/10.43%.
However, all three 4x BMW pairs regress (+0.51/+0.91/+2.48%; median +0.91%).
That variant is superseded, without full acceptance gates or publication.
Its raw outliers remain recorded, including one unusually large 2x BMW gain.
Evidence: `build/diagnostics/msaa2-writer-simd/validation.json`.

The separate-root candidate cd80da51 has two independent quiet three-pair
2x audits against 1fce9677: BMW -3.48/-3.66%, T80 -4.28/-7.04%, and lit
icosphere -12.05/-14.02% frame time. All six pairs improve all three scenes.
Candidate times are BMW 43.44/43.36ms, T80 16.30/16.02ms and icosphere
1.77/1.81ms. A three-pair 4x control gives BMW -0.18% and T80 -1.01%,
at 22.39/61.28 FPS; BMW pair changes are -0.18/-2.23/+3.64%, so this
control is not evidence of a useful 4x gain. A no-MSAA control gives BMW
-0.27% and T80 +0.33%, without material regressions. All twelve complete
AB/BA pairs pass the quiet guard on attempt one: 640x360, three workers
plus caller, 80 warm-up and 100 timed frames per arm, resolve/readback every
frame, and no simultaneous builds/tests/profiling. BMW's 4x goal stays open.

Multisample contracts check every existing depth/blend/coverage case both
inside the framebuffer and at its final pixel, in native and WASM with
0/1/3/8 workers. The independent scalar-query writer contract now covers
32,768 states for each of 2x and 4x, comparing whole color/depth/stencil
planes. All 234 test images match baseline exactly in both MSAA modes;
each model matches 100 hashes and four raw frames per mode. Full regression,
browser and publication results are recorded in
`build/diagnostics/msaa2-writer-isolated/validation.json`. Raw timings:
`build/perf/tigerlake-20261004/msaa2-writer-isolated*-summary.json`.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
