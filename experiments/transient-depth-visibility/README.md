# 2026-10-05: transient depth visibility across geometry replays

An untimed accepted-source diagnostic distinguishes geometric coverage from
weak depth visibility (`incoming <= stored`, before alpha/color/sample filters).
BMW averages 33,906.53 covered triangle-bin references in cache-associated
draws, of which 12,427.74 are strictly hidden. This measurement excludes the
early hierarchy rejection. Equality is common: 12,082.04 covered references
have at least one equal-depth sample across the measured eligible draws.
Both models retain 100 exact hashes and four byte-identical raw frames.

The first private architecture trial captures weak visibility alongside the
existing intrinsic-empty classification. It stores one hidden bit per retained
reference in the reclaimed tail of the entry's triangle allocation, after
intrinsic compaction completes. Allocation capacity is checked; entries without
tail space fall back. No geometry-cache budget or bin stride grows. Unlike
intrinsic emptiness, depth invisibility never permanently deletes a triangle
from the general geometry cache.

Depth reuse requires matching position/index revisions, transforms, viewport
and multisample state through the existing geometry key, plus enabled depth
testing, disabled stencil and polygon offset, and LESS/LEQUAL/EQUAL. Every
worker flush invalidates the caller-owned depth epoch before joining work;
streamed draws that can increase depth also invalidate it before preparation.
Only monotonic LESS/LEQUAL/EQUAL writes can cross that epoch. Immutable jobs
carry their captured epoch; workers do not read mutable geometry-cache entries.
Publication checks entry validity/stamp, bin sizes and the current epoch.
LESS failures that include equality remain available for later LEQUAL/EQUAL.
Early HZ rejections are not classified as transiently hidden in this trial.

A separate diagnostic of this implementation confirms actual BMW consumption:
7.99 valid publications/frame, 12,002.01 hidden references captured and skipped
from 58,522.77 eligible replay references. T80 has 0.19 publications and zero
replay consumers. Both diagnostic models match accepted 58ecf6ef in 100 hashes
and four raw frames; these logical counts are not instruction/cache/FPS counts.

The new private oracle compares classification against an actual LEQUAL render
in 2,048 cases, including adjacent float depths and mixed sample visibility:
686 strictly hidden cases and 256 full equality ties preserved. Eighteen
publication/depth-function/stencil/offset/epoch/stale-ticket checks also pass
on native, WASM and ASan/UBSan. Preliminary WASM gates pass 51/135/54 and
uninstrumented models match all 100 hashes and four raw frames. Missing fixture
includes and a private helper-name error are corrected; failed compiler logs
remain saved.

Two guarded three-pair audits of the first implementation change BMW time by
-0.358% and -1.089%, with four of six pairs improving. T80 changes by +3.744%
and +0.946%, with five of six pairs slower. All guards pass on attempt one,
using the same quiet 640x360/4x/three-helper/80-warm/100-frame/AB-BA/readback
protocol as above. The first implementation was initially rejected for the
T80 cost. The user subsequently reports concurrent system load and explicitly
prioritizes BMW gains over small T80 regressions. These initial six pairs and
the specialized variant's first nine pairs are therefore excluded from
acceptance; the local guard did not establish absence of that reported load.
The next private variant compiles capture into its own 4x root and restricts
capture to the ordered multitexture queue; it is measured separately.

The specialized variant's initial BMW audits are -2.315% / -2.032% / +1.602%,
and T80 audits +0.309% / +2.013% / +2.444%. Its first six BMW pairs improve
and the following three regress. These results remain saved with the reported
load qualification. A fresh two-audit measurement uses a new
`depth-replay-specialized-recheck` label after the user's correction.

Its additional API integration oracle compares warm replays with forced VBO
revision misses in 108 state cases per native/WASM/ASan run. It compares query
counts and every resolved/color/depth/stencil sample, tests clears, depth pixel
transfers, nonmonotonic writes, stencil, polygon offset, alpha/sample coverage,
position/matrix changes and multisample switching. It also verifies that a
4x warm replay really contains fewer references and that a subsequent flush
restores the full intrinsic geometry. All 108 cases pass on each platform.

Evidence: build/diagnostics/{depth-replay-counts,depth-replay,
depth-replay-consumption,depth-replay-specialized}/, frozen candidate controls,
and build/perf/tigerlake-20261004/depth-replay*-audit-*.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
