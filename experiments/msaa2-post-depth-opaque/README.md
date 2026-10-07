# Opaque post-Z two-sample stores (2026-10-04)

The two-sample raster path now selects the same proven opaque fragment states
as four samples. It reuses the already-tested sample coverage/depth mask,
quantizes RGBA channels together with SIMD, and writes exactly eight bytes
of sample color and depth. Partial coverage preserves untouched samples.
Queries, alpha/stencil/logic/blend/color masks and enabled multisample alpha
or coverage controls retain the general writer. Packet stores use a separate
two-sample helper; compile-time macros select eligibility, direct store and
packet store for each sample count. Four-sample helper bodies are unchanged.

Candidate acfc66bb has two independent quiet three-pair 2x audits against
cd80da51: BMW -2.83/-2.19% and T80 -5.82/-5.94% frame time; all six pairs
improve both models. Candidate times are BMW 42.31/42.47ms (23.63/23.55 FPS)
and T80 15.12/15.14ms (66.13/66.07 FPS). Lit icosphere gives -5.31/-26.19%
with large outliers, including a +7.30% first-audit pair; those measurements
do not support a precise expected gain for that small scene. Four-sample
control is BMW -0.64% and T80 +0.39%, at 22.71/61.12 FPS. No-MSAA control
is BMW -0.48% and T80 -0.03%. The controls show no material regression and
are not proof of a useful new four-sample/no-MSAA optimization. All twelve
complete AB/BA pairs pass the quiet guard on attempt one, with the unchanged
640x360 / three workers plus caller / 80 warm-up / 100 timed frames per arm /
resolve-readback every frame protocol. Builds/tests/profiling are absent from
timings. BMW's four-sample 30 FPS goal remains open.

The store regression contract now runs both sample counts, with 262,144
independent RGBA quantizations, 65,536 whole-plane color/depth/stencil store
comparisons and 128 rendered query-oracle frames for each sample count.
Eligibility rejection states and final framebuffer pixels are covered.
All 234 rendering cases and each model's 100 hashes plus four raw frames
match baseline exactly for both 2x and 4x. Full gates/browser/publication
status: `build/diagnostics/msaa2-opaque-store/validation.json`.
Raw timings: `build/perf/tigerlake-20261004/msaa2-opaque-store*-summary.json`.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
