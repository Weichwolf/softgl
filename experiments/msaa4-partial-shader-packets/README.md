# Partial four-sample shader packets (2026-10-04, rejected)

A private variant shades two- and three-pixel triangle remainders with a
masked SIMD packet, padding inactive edge lanes and retaining scalar single
pixels. Both models' 100 hashes plus four raw frames and all 234 four-sample
test images match 2da59ac9. One three-pair quiet audit gives BMW
-1.06 / +1.18 / +0.29% (median +0.29%) and T80
-0.50 / +4.12 / -2.27% (median -0.50%). There is no reproducible BMW gain,
so the variant is not retained. The second pair passes on attempt five;
four CPU-contaminated attempts and their monitors remain recorded. Full
acceptance gates and a confirmation audit are not run for this rejection.
Evidence: `build/diagnostics/msaa-partial-packets/validation.json` and
`build/perf/tigerlake-20261004/msaa-partial-packets-audit-1-summary.json`.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
