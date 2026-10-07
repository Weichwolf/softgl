# Specialized depth replay retained after the user's load correction

Fresh 4x audits against byte-identical accepted 58ecf6ef improve paired BMW
frame time by 1.457% and 3.141%; five of six independent pairs improve.
Candidate FPS are 28.039 and 27.711. T80 changes by +0.621% / +0.175%, at
66.231 / 66.975 FPS. The user explicitly prioritizes the reproducible BMW
gain over a small T80 cost. BMW's 30 FPS target remains unmet.

The retained variant compiles a separate 4x capture root with no capture
bookkeeping in the ordinary 2x/4x roots. Only the ordered multitexture queue
captures depth visibility. A fresh separate instrument of this exact variant
confirms BMW's 12,002.01 skipped references from 58,522.77 eligible references,
7.99 valid publications/frame, and zero T80 capture/replay consumers. It
matches 100 model hashes and four raw frames per model against 58ecf6ef.
These perturbed logical counts do not establish a cache-miss or instruction
reduction. No extra coordinator, payload allocation or bin-stride growth.

Two fresh 2x audits change BMW by +1.450% / +0.002% and T80 by
+0.726% / +0.832%; BMW pairs are mixed. The off audit changes BMW by
-0.331% and T80 by -1.353%, also with mixed pairs. All fifteen acceptance
pairs pass the local guard on attempt one, after the load correction, with
three helpers plus caller and resolve/readback every frame. Previous guarded
pairs with user-reported load remain saved and excluded. The paired changes
are medians of per-pair geometric crossover ratios, not ratios of the pooled
frame-time medians used for FPS.

Fresh retention gates pass 741 native tests plus the single native benchmark,
21 ASan/UBSan/leak contracts, 240 WASM/Mesa comparisons and 240/234/234
byte-exact control images for off/2x/4x. Both models match 100 hashes and
four raw frames in every mode. WASM renderer/queue/triangle/default-pool gates
pass 51/135/54/18; strict clamp/sampler/shader/DOT3 and writer/cube oracles
pass their existing counts. Scanline coverage passes 4,480 frames /
46,688,256 masks; intrinsic classification passes 8,192 frames / 5,431,296
masks on native/WASM/ASan. The new depth classification and 108 actual queue
state cases pass on all three platforms. Both browsers pass 234 viewer tests,
18 benchmark rows in sequential off/2x/4x passes, cancellation, sample-mode
switching and the three-helper default on nine reported processors.

Canonical source builds match measured JS/WASM byte-for-byte:
WASM f58faf1775bf1c59075c9afa7fcf7a0a6cb5fac2dafffa1c9ebffefbcacd0247.
All geometry, model assets, depth/color/texture arithmetic and image tolerances
remain unchanged. Initial private fixture includes/helper declarations, an
ASan target-list error and the wrong Firefox Python environment are corrected;
their failed logs remain saved. Firefox's known mozprofile destructor message
occurs after passed checks with exit zero. Evidence and publication bindings:
build/diagnostics/depth-replay-specialized/validation.json, canonical module
proof, build/diagnostics/depth-replay-specialized-consumption/, and fresh
depth-replay-specialized{-recheck,-ms2,-ms0}-audit-* files.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
