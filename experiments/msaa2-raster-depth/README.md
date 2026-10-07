# SIMD two-sample raster depth (2026-10-04, rejected)

A private variant db3f5ee4 extends the four-sample SIMD barycentric depth and
early-depth path to two samples when the existing signed-32 edge range proof
holds. Larger triangles retain the scalar i64 path, and sample depth loads
are bounded to eight bytes. Native and WASM multisample contracts pass;
both models' 100 hashes and four raw frames plus all 234 images match
cd80da51 exactly for each of 2x and 4x.

Two independent quiet three-pair 2x audits give BMW -0.70/+0.89%,
T80 -0.63/-0.79%, and lit icosphere -3.31/-6.68%. All three confirmation
BMW pairs are slower (+0.37/+0.94/+0.89%), and sphere results have large
positive and negative outliers in both audits. The variant is rejected:
BMW's gain does not repeat. The first confirmation pair passes on attempt
two; its contaminated attempt and monitor remain recorded. Four-sample and
no-MSAA timing controls and full acceptance gates are not run for this
rejection. Production remains cd80da51. Evidence:
`build/diagnostics/msaa2-depth-simd/validation.json` and
`build/perf/tigerlake-20261004/msaa2-depth-simd*-summary.json`.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
