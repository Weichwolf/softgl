# 2026-10-05: exact production triangle-size histogram

A separate diagnostic retains production's depth/coverage/shading arithmetic
and only counts non-HZ-rejected bin invocations by complete fixed-point
triangle area, area2/131072 in square pixels. It computes plane eligibility
without using the plane for rendering. Both models retain 100 exact rotating
hashes and four raw byte-identical frames at 4x against accepted `c4e565e0`.
No diagnostic frame timings are used for performance claims.

| Mean per 4x frame | BMW | T80 |
| --- | --- | --- |
| Bin triangle invocations after HZ | 81,968.56 | 17,446.07 |
| Eligible for guarded plane | 81,627.93 | 17,401.67 |
| Invocations with full triangle area <4 pixels | 72.10% | 61.30% |
| Invocations with full triangle area >=16 pixels | 11.27% | 19.63% |
| Covered pixels belonging to >=16-pixel triangles | 57.42% | 70.37% |
| Covered pixels / bin invocation, area <1 | 0.97 | 1.20 |
| Covered pixels / bin invocation, area 16–64 | 24.36 | 24.89 |

These are logical work counts, not unique triangles, native cycles, cache-miss
or bandwidth measurements. They justify investigating a single geometry-only
area crossover that avoids plane preparation for tiny triangles; they do not
prove its performance. All seven size buckets and per-angle rows are retained
in build/diagnostics/msaa-depth-area-counts/{validation.json,
frame-equivalence-4.json,experiment.patch}.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
