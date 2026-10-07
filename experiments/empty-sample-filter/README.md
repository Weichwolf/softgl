# Exact empty-sample filtering, 2026-10-05

A fresh production diagnostic counts completely sample-empty post-HZ triangle
invocations: BMW 19,871.41 of 81,968.56 per frame, T80 2,454.86 of 17,446.07.
However, rejecting an entire active box when one edge excludes it would save
only 0.192%/0.158% of visited pixels. That particular proposal is rejected
before implementation or timing. Evidence:
build/diagnostics/msaa-box-reject-counts/{validation.json,
frame-equivalence-4.json,experiment.patch}; 100 model hashes and four raw frames
per model remain byte-exact against production c4e565e0.

A different private candidate tests small triangles once in parallel geometry
preparation, before appending their bin references. Supported raw fixed-point
boxes fit 4x4 pixels. Existing screen-coordinate conversion and sample patterns
are preserved; bounded edge differences and sample distances fit signed i16
exactly. Three SIMD dot products evaluate four samples against the three edges.
The implementation uses the original top-left rule, requires every active
sample to fail before rejecting, and falls back for unsupported coordinates,
boxes or render modes. Geometry, depth, color and texture precision remain
unchanged. Cache hits reuse the filtered ordered bins. No retained allocation,
descriptor growth or new coordination is introduced.

At 100 rotating 4x frames, this detects 7,792.81 empty prepared triangles per
BMW frame and 948.21 per T80 frame. Including geometry-cache replay, actual
bin references fall from 155,431.04 to 139,128.64 for BMW (-10.49%) and from
28,100.62 to 27,112.19 for T80 (-3.52%). These are logical counts, not measured
CPU time, cache misses, memory transactions or an FPS improvement.

An independent scalar i64 oracle scans the full framebuffer, then compares
actual original-raster sample colors and the new helper's classifications.
Native SSE4.1, WASM and ASan/UBSan each pass 8,192 frames / 5,431,296 exact
sample masks, with 128 fragment-state invariance cases and 60 exceptional
coordinate fallbacks. Each run supports 6,814 classifications and finds 6,291
empty cases; those deliberately adversarial oracle counts are not model
execution counts. New candidates pass 51 renderer contracts, 135 ordered queue
hashes, 54 staged triangle hashes, 240 default-sample Mesa comparisons, and
100 hashes plus four byte-identical 4x frames per model. Tolerances stay fixed.
These are preliminary gates, not a fresh full retention suite.

The first implementation (00698b43) is rejected. Two three-pair quiet AB/BA
audits change BMW frame time by +0.081%/+1.512%; five of six pairs are slower.
T80 changes by -0.702%/+0.797%, so its gain also fails to reproduce across
audits. Every quiet guard passes on its first attempt. Removing work does not
justify retaining an implementation without a reproducible main-scene gain.

Evidence: build/diagnostics/msaa-tiny-lattice{,-counts,-bin-counts}/,
including validation.json, proof.md, tiny_msaa_oracle.c, emitted-helper.json,
frame-equivalence-4.json and experiment.patch; frozen control
build/controls/msaa-tiny-lattice-candidate/; quiet raw pairs and monitors
build/perf/tigerlake-20261004/msaa-tiny-lattice-audit-*.

One cost-removal revision (0e088583) adds an early scalar Y-extent selector
before screen-coordinate conversion and SIMD edge packing. The 4x4 threshold
is unchanged. It returns only unsupported; near negative zero it can
conservatively bypass a previously supported box, retaining original
rasterization. The new helper still emits three i32x4.dot_i16x8_s sites and
two i32x4.trunc_sat_f32x4_s sites, plus one early f32.floor. The original
selector reached roughly 8,141 unsupported BMW boxes per frame, motivating
this specific revision rather than a threshold sweep.

The revision passes the same fresh independent native/WASM/sanitizer oracle
and preliminary image/contract gates. Nevertheless, BMW frame time changes
by +0.596%/+0.790% over two independent three-pair quiet audits; all six pairs
are slower. T80 changes by +0.482%/+3.943%. All guards pass first attempt.
It is also rejected. No full retention suite or off/2x timing is run after
either rejection. Production c4e565e0 and both model assets remain unchanged.
Evidence: build/diagnostics/msaa-tiny-lattice-yguard/, frozen
build/controls/msaa-tiny-lattice-yguard-candidate/, and
build/perf/tigerlake-20261004/msaa-tiny-lattice-yguard-audit-*.

A further diagnostic revisits previously rejected visible-vertex replay
against these newly filtered cached lists. Unlike the original unfiltered
scene, BMW now has 2,758.71 unused of 46,103 replayed input vertices per frame
(5.98%), over 23 cache-hit jobs. T80 has no cache-hit jobs in this sequence.
Temporary flags count referenced indices without altering any transform,
triangle or pixel; 100 hashes and four raw frames per model remain exact.
This establishes a changed work target, not a speedup or a retained sparse
transform implementation. Evidence:
build/diagnostics/msaa-tiny-lattice-visible-counts/{validation.json,
frame-equivalence-4.json,experiment.patch}.

Fresh production counters split the same raster work by actual depth-mask
state. BMW's read-only passes have 39,566.58 post-HZ triangle invocations,
10,339.34 sample-empty invocations and 71,992.43 visited pixels in those empty
invocations per frame. T80 has no read-only passes in this benchmark. These
counts include transparent material passes and do not identify cache hits or
prove that coverage can be reused. They motivate investigating coverage
results from the ordinary first raster pass, rather than paying a second
sample test during geometry preparation. Evidence:
build/diagnostics/msaa-coverage-phase-counts/{validation.json,
frame-equivalence-4.json,experiment.patch}; 100 hashes and four raw frames per
model remain byte-exact. No such reuse implementation has been timed or
retained in this evidence entry.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
