# SIMD packet texture addressing (2026-10-04, accepted)

Four-pixel 2D sampling now wraps/clamps integer texel coordinates in SIMD,
shares row products across bilinear taps, and uses the existing prepared
power-of-two masks for REPEAT. Full live packets gather four RGBA words
without four per-lane mask branches; partial packets still read only live
lanes. Float/integer filtering, interpolation and combiner arithmetic are
unchanged. The actual module emits native i32x4 min/max/multiply and v128
bit operations; smaller instruction counts do not prove cache traffic.

The first vector-only variant 8348349c passes strict native/WASM sampler and
shader contracts, all 234 four-sample images, and both models' 100 hashes plus
four byte frames. Its one three-pair audit gives BMW -0.49% and T80 -2.21%.
It is superseded by the power-of-two variant rather than published separately.

Two independent three-pair four-sample audits of a05d5778 against 9a0e20a1
give BMW -0.83 / -1.36% at 22.22 / 22.35 FPS,
and T80 -1.49 / -3.15% at 60.31 / 62.01 FPS.
Two no-MSAA/readback audits give BMW -0.54 / -3.28%
and T80 +0.62 / 0.48%; the latter is a small
paired-median cost below 1%, retained for the repeated four-sample gains.
The pooled T80 frame medians are slightly lower in both audits; the two
statistics differ, so no useful no-MSAA T80 gain is claimed. The first
no-MSAA T80 audit includes a +8.17% pair; all raw arms and quiet-guard results remain recorded.
All twelve complete AB/BA pairs use 640x360, three workers plus caller,
80 warm-up and 100 measured frames per arm, resolve/readback every frame.
Builds/tests/profiling are absent during timings. Both four-sample series
put T80 above 60 FPS; BMW remains well below 30 FPS, so the goal stays open.

Validation: 736 native correctness/contracts plus the benchmark; 16 explicit
ASan/UBSan/leak contracts; 240 unchanged-tolerance WASM/Mesa images, all 240
byte-identical to baseline; 234 exact four-sample tests; both models' 100
hashes plus four raw frames each for 0/2/4; 51 WASM contracts, 99 queue/eager
hashes, 18 browser default-pool contracts and three strict numeric/shader
contracts. The sampler oracle also injects NaN/infinity into inactive lanes
and prepares the POT masks, covering both address branches without texel reads
from inactive lanes. Native/WASM retain 331,447 sampler and 128,054 shader
comparisons, plus the existing 266,461,184 additive byte channels and 32,768
actual writer comparisons. Chromium and Firefox each pass 234 viewer cases,
three ordered six-scene MSAA benchmark passes, cancellation and eight-worker
context recycling. A system Playwright cleanup error after the 18 default
checks is retained in its log; the project-local Playwright retry exits cleanly.
Canonical JS/WASM exactly match the timed candidate. Geometry, framebuffer
format, quality, build flags, cache/queue budgets and pixel tolerances stay
unchanged. Evidence: `build/diagnostics/packet-pot-address/validation.json`,
`build/diagnostics/packet-vector-address/validation.json` and
`build/perf/tigerlake-20261004/packet-pot-address*-summary.json`.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
