# Experiment index

Only adopted work, useful measured findings and relevant research are retained. Detailed descriptions and sources live in each experiment README. Historical snapshots retain their original paths and hashes; deleted archives can be retrieved from Git at `262f573c0cc0b664cb1be5dd4f0e9533bea5037b`. Shared current drivers live in `tools/experiment_support/`.

| Experiment | Status | Finding |
| --- | --- | --- |
| [a4-sparse-aa](a4-sparse-aa/README.md) | Research / locally reviewed | A4 paper and pinned SimdRast: sparse edge AA and tiled fragment resolve; hybrid timings do not predict CPU-only 4× speed. |
| [bilinear-tap-pairs](bilinear-tap-pairs/README.md) | Accepted | Bounded 64-bit loads fetch adjacent horizontal RGBA8 taps exactly. |
| [bounded-queue-wakeup](bounded-queue-wakeup/README.md) | Accepted | Bounded generation/queue polling: BMW/Bistro -5–7%, T-80 -3–4%, Sponza -1.5%; all images identical. |
| [cpu-rasterizer-msaa-audit](cpu-rasterizer-msaa-audit/README.md) | Research | Pinned local CPU-Rasterizer and SIGGRAPH 2011 sources reviewed; pixel-frequency MSAA reuse already implemented, no new gain. |
| [cube-packets](cube-packets/README.md) | Accepted | Coherent cube packets improve BMW 4x, with other modes and controls explicitly mixed. |
| [depth-replay-four](depth-replay-four/README.md) | Accepted | Specialized four-sample capture/replay improves BMW with an explicit small T-80 cost. |
| [depth-replay-hz](depth-replay-hz/README.md) | Accepted | Strict HZ rejection supplies hidden bits reusable across later material passes. |
| [depth-replay-off-bound](depth-replay-off-bound/README.md) | Accepted trade-off | BMW off improves about 9%; BMW 4x regresses about 1%, retained under BMW priority. |
| [depth-replay-two](depth-replay-two/README.md) | Accepted | BMW 2x frame time improves 5.184%/4.718%, with all six pairs faster. |
| [dot3-compact-queue](dot3-compact-queue/README.md) | Accepted | Stores only exact attributes consumed by recognized ordered DOT3 draws. |
| [draw-raster-overlap](draw-raster-overlap/README.md) | Accepted | Overlaps next-draw preparation with one immutable raster draw under the 2 MiB budget. |
| [fragment-stream-census](fragment-stream-census/README.md) | Finding | Fragment replay is limited by storage and validation costs. |
| [fused-material-pass](fused-material-pass/README.md) | Accepted | One material pass: BMW -21–27%, T-80 -25–26%, Sponza -27–30%, Bistro -39–40% frame time across off/2x/4x; 108 identical coverage comparisons, small documented color differences. |
| [fused-transparent-pass](fused-transparent-pass/README.md) | Accepted | BMW frame time -12.9/-8.6/-10.4% off/2×/4×; independent off -13.36%; small documented RGB changes, 753 tests, 108 images, 288 resident checks; live WASM updated. |
| [geometry-bin-cache](geometry-bin-cache/README.md) | Accepted | Reuses qualified ordered triangle bins while refreshing attributes. |
| [glimpsw-mesa-comparison](glimpsw-mesa-comparison/README.md) | Historical packet comparison | SIMD128 8085056, 640×360/OFF: SG −63.8…−78.6% versus Mesa, still 4.1–6.4× GLimpSW; 72 balanced runs with exact source/asset/budget provenance. |
| [glimpsw-resource-audit](glimpsw-resource-audit/README.md) | Diagnostic / research | Resources mapped to actual implementation: hierarchy/LUT/cache work remains; user-only perf works in WSL, PCM lacks a required reference counter. |
| [hz2-static](hz2-static/README.md) | Accepted | Static 2x/4x helpers improve BMW 2x by 9.843%/10.789%; no 4x speedup is claimed. |
| [hz4-depth](hz4-depth/README.md) | Accepted | Rejects fully hidden boxes using conservative 4x4-cell depth summaries. |
| [intrinsic-coverage-retirement](intrinsic-coverage-retirement/README.md) | Accepted | Prunes sample-empty cached references using coverage already computed by rasterization. |
| [main-raster-participation](main-raster-participation/README.md) | Accepted | Caller shares the raster-bin queue; historical BMW audits improved 7.90%/7.10%; original patch is preserved. |
| [msaa-additive-bytes](msaa-additive-bytes/README.md) | Accepted variant | Exact guarded saturated-byte blending uses a separate WASM writer root. |
| [msaa-edge-reuse](msaa-edge-reuse/README.md) | Accepted | Reuses four-sample coverage coefficients; three audits support a BMW 4x gain. |
| [msaa-finer-bins](msaa-finer-bins/README.md) | Accepted | Uses 32 MSAA X-stripes to reduce the active sample region and distribute work. |
| [msaa2-fragment-writer](msaa2-fragment-writer/README.md) | Accepted variant | A separate two-sample SIMD writer avoids the earlier four-sample regression. |
| [msaa2-post-depth-opaque](msaa2-post-depth-opaque/README.md) | Accepted | Reuses two-sample depth masks for exact bounded opaque stores. |
| [msaa2-resolve](msaa2-resolve/README.md) | Accepted | Resolves four two-sample pixels using exact rounded byte averages. |
| [msaa4-post-depth-opaque](msaa4-post-depth-opaque/README.md) | Accepted | Reuses four-sample depth masks for exact opaque stores. |
| [ordered-draw-queue](ordered-draw-queue/README.md) | Accepted | Queues ordered immutable multitexture draws with independent stripe progress. |
| [packed-oversized-draws](packed-oversized-draws/README.md) | Accepted variant | Exact compact vertices admit oversized draws to bounded asynchronous raster jobs. |
| [packed-queue-admission](packed-queue-admission/README.md) | Accepted | Sponza -12–15%, T-80 -6.5–10.3%, Bistro -3.5–5%, BMW mixed within 0.25%; all images identical. |
| [packet-lane-occupancy](packet-lane-occupancy/README.md) | Finding | BMW single-sample shading left SIMD lanes idle; four-sample packets were full. |
| [packet-texture-addressing](packet-texture-addressing/README.md) | Accepted | Vectorizes texel addressing and shares row products without changing filtering. |
| [parallel-triangle-preparation](parallel-triangle-preparation/README.md) | Accepted / mixed follow-ups | Parallel descriptors preserve emission order; later visibility and span trials have separate outcomes. |
| [position-page-cache](position-page-cache/README.md) | Accepted | Caches position pages while refreshing lighting and other attributes. |
| [post-depth-common-store](post-depth-common-store/README.md) | Accepted | Common post-depth stores improve BMW off by 5.131%/5.432%, with mixed controls. |
| [prepared-vertex-inputs](prepared-vertex-inputs/README.md) | Accepted | Resolves vertex streams once per joined job. |
| [queue-geometry-help](queue-geometry-help/README.md) | Accepted | Workers and caller share finite next-draw vertex preparation slices. |
| [queue-geometry-priority](queue-geometry-priority/README.md) | Accepted | Prioritizes ready finite geometry slices before claiming another raster bin. |
| [raster-profile-20261005](raster-profile-20261005/README.md) | Diagnostic | Module-bound BMW profiles locate raster work; following row-span trials were rejected. |
| [renderer-current-msaa-comparison](renderer-current-msaa-comparison/README.md) | Measured 6e5ed5c | 144 selected/60 rejected native runs: libsoftgl 4× is 4.20–7.02× Mesa4 FPS; OFF still 3.59–5.91× GLimpSW time; Mesa2 rounds to four and is excluded. |
| [renderer-msaa4-comparison](renderer-msaa4-comparison/README.md) | Measured | 120 accepted/20 rejected runs: libsoftgl 4× is 65–82% less time than Mesa 4× but 8.3–21.1× GLimpSW OFF; GLimpSW lacks native MSAA, verified Mesa sample count/coverage. |
| [sampler-footprints](sampler-footprints/README.md) | Finding | Smaller logical texture groups do not establish lower memory traffic. |
| [scene-bin-private-state](scene-bin-private-state/README.md) | Adopted | Exact bin state separation: Bistro OFF/2×/4× +5.31/+4.79/+6.37% FPS, all OFF modes improve; Sponza2 −1.05%, SIMD128/sample planes unchanged. |
| [scene-codec-luma-chroma](scene-codec-luma-chroma/README.md) | Native prototype / held | Repeated coarse shading cuts Bistro/Sponza 4× frame time 9.91/12.22%; BMW +3.16%, visibly blocky; native sanitizer and SIMD128 WASM fixtures pass, browser/motion pending. |
| [scene-depth-order-cached-keys](scene-depth-order-cached-keys/README.md) | Adopted V7 | Opaque/near-first parallel order: Bistro4 FPS +6.61/+8.30%, OFF time +0.54/+1.50% tradeoff; 758 tests, actual SIMD128 WASM and 12 live browser cases pass. |
| [scene-error-budget-profiles](scene-error-budget-profiles/README.md) | Offline calibration evaluated | 2,304 sparse-probe cases: 6.25% uniform probes estimate global MSE but miss ~51% of above-threshold Bistro/Sponza chroma tiles; boundary/confidence repair needed; runtime unimplemented. |
| [scene-full-msaa-control](scene-full-msaa-control/README.md) | Diagnostic / validated | Coarse/LOD removed: 759 tests, 108 exact native + 108 browser pairs; genuine 4× BMW 57.53 FPS, target 100; fresh BMW/Bistro CPU profiles, no new gain. |
| [scene-layered-keyframe-cache](scene-layered-keyframe-cache/README.md) | Native prototype / held | Repeated full-pixel material reuse: Bistro 4× keys 55.016→11.762 ms, Sponza 37.922→11.195 ms; approximate coverage, startup/motion/browser pending; no product path. |
| [scene-lazy-cluster-frontend](scene-lazy-cluster-frontend/README.md) | Finding / not adopted | 48% fewer prepared triangles still increased Bistro frame time. |
| [scene-material-visibility](scene-material-visibility/README.md) | Accepted | Scene visibility/material buckets: native off BMW/T-80/Sponza/Bistro -1.6/-15.0/-22.0/-11.3%; exact images, 749 tests; Bistro MSAA +1–2% tradeoff. |
| [scene-msaa-between-samples](scene-msaa-between-samples/README.md) | Accepted | Exact empty-sample geometry culling: Bistro 2×/4× FPS +7.11/+1.94%; 144 quiet runs, native/WASM sample planes exact, 757 tests, live browser updated. |
| [scene-msaa-current-phase-accounting](scene-msaa-current-phase-accounting/README.md) | Diagnostic complete | Current SIMD128: Bistro4 visibility/shading 35.92/30.53%, setup 15.94%; 360 measured frames, 12 exact original images; other models use forward MSAA. |
| [scene-msaa-density-hint](scene-msaa-density-hint/README.md) | Adopted V2 | Isolated general cost hint: Sponza2/4 FPS +35…37/+45…47%; 288 quiet runs, 108 quantified views, 759 tests, actual SIMD128 WASM and 12 live browser cases pass; Bistro4 time +0.8%. |
| [scene-msaa-grid-reduction](scene-msaa-grid-reduction/README.md) | Finding / not adopted | The optimized coverage case was too rare to affect complex-scene FPS. |
| [scene-msaa-material-pixel-merge](scene-msaa-material-pixel-merge/README.md) | Accepted V6 | 640×360/4× MSAA FPS: Sponza +14.23%, BMW +3.91%, T-80 +24.49%, Bistro within noise; original samples/depth, approximate intrapixel RGB, V4/V5 alpha faults rejected. |
| [scene-msaa-occlusion](scene-msaa-occlusion/README.md) | Accepted | Current-frame MSAA occlusion: Bistro2/4 frame time -7.6/-7.0% vs accepted deferred; 144 runs, 108 exact views, 757 tests, sanitizer/WASM/browser and rollback mutation pass. |
| [scene-msaa-packet-occlusion](scene-msaa-packet-occlusion/README.md) | Adopted | SIMD128 Bistro 2×/4× -2.74/-2.48% time (+2.82/+2.54% FPS); exact native/actual WASM planes, 757 tests and 12 live browser cases pass. |
| [scene-msaa-parallel-groups](scene-msaa-parallel-groups/README.md) | Accepted | 144 accepted/8 rejected runs: Bistro2/4 FPS +6.31/+10.83%; 108 exact views, 757 tests, sanitizer/WASM and 12 live browser cases pass (2.65 GiB). |
| [scene-msaa-partial-cell-hiz](scene-msaa-partial-cell-hiz/README.md) | Finding / not adopted | Extra partial-cell rejection did not reduce final depth writes or improve Bistro. |
| [scene-msaa-rebased-edges](scene-msaa-rebased-edges/README.md) | Accepted V3 | Exact sample-edge recurrences: 4× FPS Bistro +2.63%, Sponza +2.01%, BMW +2.41%, T-80 noise; 108 native + 108 browser views identical, 760 tests, SIMD128/WASM. |
| [scene-msaa-small-triangles](scene-msaa-small-triangles/README.md) | Accepted | Short exact SIMD128 MSAA kernel for ≤8×8 triangle boxes: Bistro 4× frame -3.89% / FPS +4.05%; 144 quiet runs, native/WASM sample planes exact, live browser updated. |
| [scene-msaa-uniform-metadata](scene-msaa-uniform-metadata/README.md) | Adopted | Bistro 4× -1.93% time/+1.97% FPS, 2× flat; exact native/WASM gates, 757 tests and 12 browser modes pass; T-80 4× +1.45% cost recorded. |
| [scene-msaa-visibility](scene-msaa-visibility/README.md) | Accepted adaptive variant | Three AB/BA blocks: Bistro 2× FPS +76%, 4× +59%; other controls -2.4…+1.2% frame time; exact coverage, 757 tests, sanitizer and 12 live WASM cases pass (2.65 GiB). |
| [scene-opaque-alpha-sharing](scene-opaque-alpha-sharing/README.md) | Accepted V2 | Explicit opaque alpha enables more intrapixel sharing: Bistro 4× +11.70% FPS, other scenes similar; exact depth/alpha, quantified RGB approximation, 108 native/browser pairs, SIMD128/WASM. |
| [scene-parallel-bins](scene-parallel-bins/README.md) | Accepted | Stable parallel references: off BMW/T-80/Sponza/Bistro -7.4/-13.6/-4.9/-7.0%; 108 exact images, 752 tests; MSAA within ±0.9%. |
| [scene-perceptual-frequency-budget](scene-perceptual-frequency-budget/README.md) | Research / evaluator validated | Visual frequency/masking and motion guide separate luma/chroma/lighting budgets; FLIP runs offline only; runtime policy unimplemented. |
| [scene-position-visibility](scene-position-visibility/README.md) | Accepted | Native off BMW/T-80/Sponza/Bistro -2.6/-8.2/-19.3/-47.4%; 108 exact coverage comparisons, max color delta 1, 750 tests; Sponza MSAA +2% tradeoff. |
| [scene-quantized-visibility](scene-quantized-visibility/README.md) | Accepted | Opt-in 16.4 SIMD32: off BMW/T-80/Sponza/Bistro -6.0/-8.6/-5.8/-1.9%; documented image differences, 754 tests, scalar/sanitizer/context gates; live WASM updated. |
| [scene-ray-visibility](scene-ray-visibility/README.md) | Finding / not adopted | Cached BVH visibility helped some scenes but regressed Sponza. |
| [scene-shading-planes](scene-shading-planes/README.md) | Finding / not adopted | Attribute planes added more preparation and gathering than they saved. |
| [scene-shared-material-uv](scene-shared-material-uv/README.md) | Accepted | Exact canonical UV reuse: off BMW/T-80/Sponza/Bistro -1.9/-3.1/-3.7/-2.8%; 108 exact views, 755 tests, sampler/worker/sanitizer/context gates; live WASM updated. |
| [scene-simd-coverage](scene-simd-coverage/README.md) | Accepted | Exact rolling SIMD128 coverage: native off BMW/T-80/Sponza/Bistro -9.6/-9.5/-4.5/-4.6%; 108 exact images, 751 tests, unchanged interpolation; MSAA within ±1.3%. |
| [scene-simd128-policy](scene-simd128-policy/README.md) | Applied | Native AVX512 removed; ISA audit, 756 native tests, 108 exact views, sanitizer/WASM contracts and 12 live browser cases pass; current native comparison remains 4.2–6.7× slower than GLimpSW. |
| [scene-temporal-shading-reuse](scene-temporal-shading-reuse/README.md) | Finding / not adopted | High shading-cache hit rates did not repay lookup and validation. |
| [scene-temporal-visibility-priority](scene-temporal-visibility-priority/README.md) | Finding / not adopted | Previous visibility reduced depth writes but slowed Bistro. |
| [scene-tiled-4x4](scene-tiled-4x4/README.md) | Finding / not adopted | A 4×4 depth layout was exact but substantially slower. |
| [scene-triangle-packets](scene-triangle-packets/README.md) | Accepted combined variant | SIMD128 SoA packets + mask16 bins: independent OFF −5.2/−6.9/−7.9/−9.4%; MSAA controls −0.2…+1.1%; 756 tests, exact native/WASM planes, live browser updated. |
| [shared-vertex-uv](shared-vertex-uv/README.md) | Accepted | Identical resolved UV streams reuse the original raw attribute value. |
| [simd-index-range](simd-index-range/README.md) | Accepted | Exact unsigned SIMD index scanning gives modest repeated BMW gains in all modes. |
| [standard-gl-integration](standard-gl-integration/README.md) | Platform separation accepted; rendering integration in progress | Separate headless/SDL host boundary; 247 WASM and 12 native MSAA4 frame hashes unchanged, automatic GL integration still pending. |
| [static-cluster-culling](static-cluster-culling/README.md) | Adopted | 640x360 off/2x/4x: Sponza -13.13/-12.27/-11.38%, Bistro -19.29/-18.83/-17.50% frame time; BMW/T-80 mixed within 1%; tested RGB exact. |
| [validation-protocol](validation-protocol/README.md) | Protocol | Bistro > Sponza > BMW F31 > T-80; double-digit complex-scene gains can justify ~2% BMW cost; 640×360 native AB/BA OFF/2×/4×, SIMD128/WASM and live updates. |
| [visible-vertex-attributes](visible-vertex-attributes/README.md) | Accepted | Worker attributes after culling: Bistro -11–12%, other scenes -3–8%, all twelve images identical. |
| [wasm-four-contexts](wasm-four-contexts/README.md) | Applied configuration | Defaults to at most three helpers plus the computing caller; no speed claim. |
| [wasm-pseudo-clamps](wasm-pseudo-clamps/README.md) | Accepted | Uses direct WASM pseudo-min/max for the validated clamp path. |
