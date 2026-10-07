# Cache-local depth and finer MSAA bins (2026-10-04, rejected)

All variants use the accepted `2a926624` renderer as their reference, unchanged
model packs, 640x360, three workers plus caller, and a resolve on every timed
four-sample frame. Screens use one quiet AB/BA pair with 80 warm-up and 100
measured frames; they are preliminary measurements, not accepted speedups.

Aligning only the four-sample depth plane to 64 bytes eliminated the observed
16/32/48-byte base offsets, but its first screen was mixed: BMW -0.77%, T80
+0.76% frame time. This establishes alignment, not measured cache traffic.
A tighter range-dependent floating-point depth bound passed strict native/WASM
oracles and exact model frames, but added arithmetic: BMW +0.83%, T80 +2.38%.
Neither was retained.

Two-pixel-square hierarchy cells track 16 samples in eight bytes and reduce
maximum-depth refresh from 64 samples to 16. The optional table doubles to
471,104 bytes including the header at 640x360, capped at 512KiB. Two independent
three-pair four-sample audits gave BMW -1.73%/-1.52% and T80 -0.31%/+0.39%.
Two matching no-MSAA/readback audits gave BMW +1.04%/+0.47% and T80
-0.80%/+0.66%. The modest four-sample benefit was not retained with that BMW
no-MSAA tradeoff. All 732 native checks, 11 sanitizer contracts, 49 WASM
contracts, 18 default-pool checks, 240 unchanged-tolerance Mesa comparisons,
240 exact images, 234 exact four-sample images and both models at 0/2/4
passed. Chromium and Firefox passed their preview checks. Source and canonical
WASM were restored; live port 8000 stayed on the accepted module throughout.

Finer bins instead preserve the accepted 4x4 hierarchy and align bin endpoints
to whole hierarchy cells; no-MSAA bins remain unchanged. At 640x360, 64 bins
use 8/12-pixel stripes (90–135KiB sample color+depth per stripe), versus the
accepted 32 bins' 225KiB. Their first quiet screen gave BMW +0.23% and T80
+4.31%. Forty bins use 16-pixel stripes (180KiB) and gave BMW -0.73%, T80
+0.54%. Both mixed or negative screens were rejected before full validation.
A quad-cell/64-bin source variant was prepared but never built or measured.
Smaller active regions alone did not compensate for added bin work.

Evidence: `build/diagnostics/msaa-cache-alignment/`, `hz-depth-error-bound/`,
`hz-quad-cells/`, `msaa-64-aligned-bins/`, `msaa-40-aligned-bins/` and the
corresponding JSON results under `build/perf/tigerlake-20261004/`.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
