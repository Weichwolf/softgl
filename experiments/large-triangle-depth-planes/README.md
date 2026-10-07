# 2026-10-05: plane arithmetic only for larger triangles, rejected

The size histogram motivates one geometry-only crossover: complete fixed-point
area2>=2097152, equivalent to 16 square pixels. Smaller triangles bypass f64
preparation and the added caller HZ check, retaining original legacy depth/HZ
kernels. Every state/bin/scissor uses the same full-geometry choice. There is
no sweep of timing thresholds. The two legacy and two plane kernels remain
byte-identical to the static predecessor: among 1,398 defined WASM functions,
only common dispatch body 166 changes; the other 1,397 remain byte-identical.

| Area-gated trial against `c4e565e0`, 4x | Audit 1 | Audit 2 |
| --- | --- | --- |
| BMW frame-time change | +1.82% | +1.97% |
| BMW FPS | 26.47 | 26.53 |
| T80 frame-time change | -0.28% | +0.45% |
| T80 FPS | 66.15 | 66.91 |

Six quiet AB/BA pairs use the same 640x360/4x, three-helpers-plus-caller,
80/100-frame, two-round, per-frame-resolve protocol. All guards pass on
attempt one; BMW regresses in all six pairs. T80 is mixed. Reject the version
and do not run full retention or off/2x timing after this result.

Fresh native/WASM/ASan oracles each pass 4,480 frames / 46,688,256 exact sample
masks and 4,570,220 depths, maximum absolute error 1.34798664e-7, plus all 72
state/scissor/split-bin invariance cases. Geometry classification is now
2,202 eligible / 2,278 rejected input frames, not actual fast-kernel execution
counts. ASan/UBSan/leaks, 51 WASM renderer contracts, 135 queue/eager hashes
and 240 default-sample Mesa image comparisons pass. Reference-MSAA/full
retention gates are not claimed. Image tolerances and production remain unchanged.

Against production over 100 rotating 4x frames, BMW has 64 exact frames and
71 changed pixels in total, maximum channel delta 35; T80 has 77 exact frames,
49 changed pixels, maximum delta 64. Numerical reformulation still breaks
legacy byte equivalence; no new tolerance is introduced.

After all quiet timing finishes, inspect the actual common caller's Chromium
TurboFan code. It shrinks from 105,976 to 41,608 bytes; initial stack reservation
shrinks from 1,296 to 952 bytes, stack-reference sites from 2,946 to 1,530, and
vector stack-move sites from 283 to 165. Thus an assumed increase in caller
stack reservation is not supported. These static quantities still do not
measure dynamic spills/misses or explain the measured regression. Avoid
another outlining/layout trial solely from static function sizes.

Evidence: build/diagnostics/msaa-depth-plane-large/{validation.json,
experiment.patch,plane-proof.md,wasm-body-comparison.json,
common-machine-code-comparison.json,native-common-*.{json,bin,asm}} and
build/perf/tigerlake-20261004/msaa-depth-plane-large-*.

An additional byte-exact 100-angle shape histogram measures active bin-clamped
boxes, rather than treating small full triangle area as a small box. BMW has
2,499.42 one-pixel-box calls per frame (3.05% of post-HZ bin invocations), but
only 163.28 surviving shaded pixels from these boxes (0.054% of post-Z pixels).
T80 has 282.40 such calls and 46.71 surviving pixels. A kernel that batches
only single-pixel-box triangles therefore targets too little work and is
rejected before implementation/timing. BMW boxes of <=4/<=16 pixels account
for 25.44%/59.40% of post-HZ calls; these cumulative counts are not claims of
successful coverage, saved operations or performance. Evidence:
build/diagnostics/msaa-depth-shape-counts/{validation.json,
frame-equivalence-4.json,experiment.patch}; both models retain 100 exact hashes
and four byte-identical frames, with unchanged production arithmetic.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
