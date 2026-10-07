# Exact saturated-byte additive MSAA blending

The current queue baseline was profiled separately using its accepted objects
with function names retained. BMW sampled self wall locations include
15.9ms/frame in the main MSAA raster loop, 5.1ms in queue help, 4.1ms in vertex
processing, 4.2ms in cached triangle processing, and 2.2ms in the MSAA writer.
Active workers sample 21.3–21.7ms in raster, 3.3–3.5ms in cube sampling and
2.6–2.9ms in the writer. These are 1ms location samples, not CPU cycles or
cache traffic. Evidence: `build/diagnostics/ordered-draw-queue-profile/`.

For additive destination factor ONE, each effective source S is multiplied
by 255 and rounded once. A source in [0,1] more than 1/512 away from an integer
boundary after the +0.5 bias has a destination-independent byte increment:
the float path's byte-domain error is below 1/8192. Four RGBA increments are
packed/repeated across four samples and added with unsigned byte saturation.
Out-of-range/nonfinite sources and rounding boundaries keep the existing
float path. Alpha overrides, coverage, depth, stencil, queries, color masks
and other blend factors preserve existing dispatch/order. The actual WASM
module emits one i8x16.add_sat_u site; the native oracle emits paddusb.
No geometry, texture precision, build flags or pixel tolerances change.

The initial inline candidate c87bc2b2 is rejected: BMW four-sample -2.27%/-2.32%,
but T80 +0.43%/+2.15%. Its no-MSAA results are BMW -0.30%/+0.22% and T80
+1.19%/-0.08%. The final WASM variant keeps the guard/packing in a separate
retained root outside the general writer; native code stays inline. Native
and WASM verify 266,461,184 channel comparisons across every destination byte
for accepted packets, including dense boundary/subnormal cases and fractional
source factors. 32,768 actual four-sample writes compare all color/depth/stencil
storage to the unchanged scalar query path under fragment-state combinations.

Three independent three-pair quiet four-sample audits against c57e1da0 give
BMW -2.15%/-1.57%/-1.56% at 22.41/22.30/22.31 FPS. T80 is mixed:
-1.74%/-0.23%/+1.30% at 60.91/57.57/59.10 FPS. The second audit contains
BMW paired changes +11.12%/-9.66%, despite passing the Linux activity guard;
all results are retained. This variability prompted the third audit.
No-MSAA/readback results: BMW -0.51%/+0.04%/-0.21%, T80 -1.42%/+3.73%/-0.06%;
these are neutral/mixed, not a demonstrated useful gain. All eighteen complete
AB/BA pairs pass the quiet guard on attempt one, at 640x360 with three workers
plus caller, 80 warm-up and 100 measured frames per arm, readback/resolve every
frame. Builds/tests/profiling are absent during measurements. The BMW gain
repeats across all three audits; T80 has no repeated sustained regression.
Both four-sample FPS goals remain unproven, including stable T80 >60.

Acceptance: 736 native correctness/contracts plus the benchmark; 16 explicit
ASan/UBSan/leak contracts; 240 unchanged-tolerance WASM/Mesa images and 240
exact baseline hashes; all 234 four-sample tests exact; both models' 100 hashes
and four bytewise frames each for 0/2/4 samples; 51 existing WASM contracts,
the 99 queue state/sample hashes, three strict shader/numeric contracts and
18 default-pool checks. Canonical JS/WASM match the timed frozen candidate
9a0e20a1 exactly. Browser checks and publication are in the validation artifact.
Evidence: `build/diagnostics/additive-msaa-bytes/validation.json`,
`build/diagnostics/additive-msaa-bytes-outlined/validation.json`, and
`build/perf/tigerlake-20261004/additive-msaa-bytes-outlined*-summary.json`.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
