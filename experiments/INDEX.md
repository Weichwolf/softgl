# Experiment index

| Experiment | Status | Finding |
| --- | --- | --- |
| [accepted-e7-profiles](accepted-e7-profiles/README.md) | Diagnostic | Warmed e7 caller/worker profiles; no additional speedup. |
| [bilinear-tap-pairs](bilinear-tap-pairs/README.md) | Accepted | Bounded 64-bit loads fetch adjacent horizontal RGBA8 taps exactly. |
| [bin-store-state](bin-store-state/README.md) | Rejected | Caching common-store eligibility did not improve BMW in both audits of any mode. |
| [bulk-prepared-bins](bulk-prepared-bins/README.md) | Rejected | Bulk reservation/emission regressed BMW in every mode across both audits. |
| [caller-producer-phases](caller-producer-phases/README.md) | Diagnostic | Separates caller production scopes; reservation includes useful raster work and waiting. |
| [caller-strip-bounds](caller-strip-bounds/README.md) | Diagnostic / rejected variants | Caller scopes were measured; tighter depth bounds did not repay their cost. |
| [caller-wait-intervals](caller-wait-intervals/README.md) | Diagnostic | Separates eight polling categories without claiming removable frame time. |
| [cooperative-stage-handoffs](cooperative-stage-handoffs/README.md) | Not retained | Returning bins between triangle blocks did not justify adoption. |
| [cross-triangle-fragment-packets](cross-triangle-fragment-packets/README.md) | Research / first trial rejected | Exact cross-triangle packing remains an architecture hypothesis; the bounded copying FIFO is tested separately below. |
| [cross-triangle-packets](cross-triangle-packets/README.md) | Rejected | Full gates pass, but BMW off/2x regress +3.096%/+1.155% across twelve pairs; 4x -0.589% remains within descriptive uncertainty. |
| [cube-cold-fallback](cube-cold-fallback/README.md) | Rejected | BMW 4x regresses +3.500%/+1.395% in both audits (5/6 pairs); off/2x change direction despite exact scratch movement. |
| [cube-packets](cube-packets/README.md) ([historical note](cube-packets/historical-notes/README.md)) | Accepted | Coherent cube packets improve BMW 4x, with other modes and controls explicitly mixed. |
| [cube-simd-initial](cube-simd-initial/README.md) | Rejected | Initial coherent cube packets passed correctness but lacked an acceptable renderer gain. |
| [cube-vector-core](cube-vector-core/README.md) | Rejected | Direct vector coordinates remove copies but regress BMW off and give mixed all-mode results. |
| [current-7cc-cpu-accounting](current-7cc-cpu-accounting/README.md) | Diagnostic | Records scheduled caller/worker CPU time, including polling and stalls. |
| [current-7cc-profiles](current-7cc-profiles/README.md) | Diagnostic | Locates common-store/raster work; the proposed eligibility cache was subsequently rejected. |
| [current-producer-phases](current-producer-phases/README.md) | Diagnostic | Separates D4 replay, packing and submit scopes; no saved frame time is established. |
| [current-texture-access](current-texture-access/README.md) | Diagnostic | D4 hardware counters do not isolate texture traffic or a hardware ceiling. |
| [current-v8-raster-code](current-v8-raster-code/README.md) | Diagnostic | D4 JIT records expose cube-prefix stores; their removal was later tested in cube-vector-core. |
| [deferred-opaque-visibility](deferred-opaque-visibility/README.md) | Historical 1080p census / prototype pending | Duplicate eligible opaque writes: BMW 32.6%, T-80 45.3%, Sponza 55.3%, Bistro 41.8%; optimistic work bounds, no speedup yet. |
| [depth-replay-four](depth-replay-four/README.md) | Accepted | Specialized four-sample capture/replay improves BMW with an explicit small T-80 cost. |
| [depth-replay-hz](depth-replay-hz/README.md) | Accepted | Strict HZ rejection supplies hidden bits reusable across later material passes. |
| [depth-replay-off-bound](depth-replay-off-bound/README.md) | Accepted trade-off | BMW off improves about 9%; BMW 4x regresses about 1%, retained under BMW priority. |
| [depth-replay-two](depth-replay-two/README.md) | Accepted | BMW 2x frame time improves 5.184%/4.718%, with all six pairs faster. |
| [depth-visible-vertices](depth-visible-vertices/README.md) ([historical note](depth-visible-vertices/historical-notes/README.md)) | Rejected | Skipping depth-hidden vertex preparation did not reproduce a BMW 4x gain. |
| [dot3-compact-queue](dot3-compact-queue/README.md) | Accepted | Stores only exact attributes consumed by recognized ordered DOT3 draws. |
| [dot3-sampler-alpha](dot3-sampler-alpha/README.md) | Rejected | Unused-alpha elision regresses BMW off and 4x. |
| [dot3-stage-stream](dot3-stage-stream/README.md) | Rejected | Immediate stage consumption improves some modes but regresses BMW 4x in all six pairs. |
| [draw-raster-overlap](draw-raster-overlap/README.md) | Accepted | Overlaps next-draw preparation with one immutable raster draw under the 2 MiB budget. |
| [draw-state-specialization](draw-state-specialization/README.md) | Held proposal | Eligibility-only caching was already rejected; a new specialization needs a distinct measured mechanism. |
| [empty-sample-filter](empty-sample-filter/README.md) | Rejected variants / diagnostics | Exact empty-reference removal reduced logical work but did not justify adoption. |
| [four-context-architecture](four-context-architecture/README.md) | Rejected variants | Packing, tickets, texture interning and coarse coverage trials lacked reproducible BMW gains. |
| [fragment-geometry-replay](fragment-geometry-replay/README.md) | Proposed / priority | F-buffer-inspired replay has an exact codec census; integrated rendering, budget/fallback and speed remain untested. |
| [fragment-mask-replay](fragment-mask-replay/README.md) | Rejected | Exact bounded MSAA mask replay regresses BMW 2x/4x by +2.936%/+3.639% frame time across all twelve pairs; full gates passed, D4 retained. |
| [fragment-stream-census](fragment-stream-census/README.md) | Diagnostic | 1200 D4-exact frames and repeated geometry counts; BMW replay wire averages 1.18/1.63/1.96 MB, full 4x storage exceeds 4 MiB, T-80 has no hits; no speed claim. |
| [geometry-bin-cache](geometry-bin-cache/README.md) | Accepted | Reuses qualified ordered triangle bins while refreshing attributes. |
| [geometry-claim-batches](geometry-claim-batches/README.md) | Rejected | Fewer geometry reservations did not improve BMW in both audits of any mode. |
| [hierarchical-coverage](hierarchical-coverage/README.md) | Proposed | Coarse exact coverage traversal needs eligible-box diagnostics; no implementation or timing. |
| [hz-equal](hz-equal/README.md) | Not adopted | The conservative GL_EQUAL extension removed no work in the target scenes. |
| [hz-masked-summary](hz-masked-summary/README.md) | Proposed | Conservative masked depth summaries need refresh-cost and sample-aware correctness analysis. |
| [hz2-basic](hz2-basic/README.md) ([historical note](hz2-basic/historical-notes/README.md)) | Not retained | Shared helpers improve 2x but regress BMW 4x. |
| [hz2-static](hz2-static/README.md) ([historical note](hz2-static/historical-notes/README.md)) | Accepted | Static 2x/4x helpers improve BMW 2x by 9.843%/10.789%; no 4x speedup is claimed. |
| [hz4-depth](hz4-depth/README.md) | Accepted | Rejects fully hidden boxes using conservative 4x4-cell depth summaries. |
| [hz4-span](hz4-span/README.md) | Rejected | Extra row-span HZ checks regress BMW 4x in all six pairs. |
| [hz4-span-loop](hz4-span-loop/README.md) | Rejected | Outer-span traversal still regresses BMW 4x in all six pairs. |
| [immutable-cube-sharing](immutable-cube-sharing/README.md) | Rejected | Viewer-side whole-cube sharing did not improve the renderer reproducibly. |
| [intrinsic-coverage-retirement](intrinsic-coverage-retirement/README.md) | Accepted | Prunes sample-empty cached references using coverage already computed by rasterization. |
| [large-triangle-depth-planes](large-triangle-depth-planes/README.md) | Rejected | Restricting depth planes to larger triangles still regressed BMW. |
| [main-raster-participation](main-raster-participation/README.md) | Accepted | Caller shares the raster-bin queue; historical BMW audits improved 7.90%/7.10%; original patch is preserved. |
| [native-cpu-profiles](native-cpu-profiles/README.md) | Diagnostic | Fresh 4b58896 BMW/Bistro profiles after fusion: Bistro raster entry 37% cumulative CPU samples, broadcast 7.6%; BMW only 315 samples; no new timing gain claimed. |
| [msaa-additive-bytes](msaa-additive-bytes/README.md) | Accepted variant | Exact guarded saturated-byte blending uses a separate WASM writer root. |
| [msaa-coverage-recurrence](msaa-coverage-recurrence/README.md) | Rejected | Exact vector edge recurrence regresses BMW 2x and gives mixed 4x results. |
| [msaa-edge-reuse](msaa-edge-reuse/README.md) ([historical note](msaa-edge-reuse/historical-notes/README.md)) | Accepted | Reuses four-sample coverage coefficients; three audits support a BMW 4x gain. |
| [msaa-finer-bins](msaa-finer-bins/README.md) | Accepted | Uses 32 MSAA X-stripes to reduce the active sample region and distribute work. |
| [msaa2-fragment-writer](msaa2-fragment-writer/README.md) | Accepted variant | A separate two-sample SIMD writer avoids the earlier four-sample regression. |
| [msaa2-post-depth-opaque](msaa2-post-depth-opaque/README.md) | Accepted | Reuses two-sample depth masks for exact bounded opaque stores. |
| [msaa2-raster-depth](msaa2-raster-depth/README.md) | Rejected | SIMD two-sample early depth did not reproduce a BMW benefit. |
| [msaa2-resolve](msaa2-resolve/README.md) | Accepted | Resolves four two-sample pixels using exact rounded byte averages. |
| [msaa4-additive-post-depth](msaa4-additive-post-depth/README.md) | Rejected | Additional additive post-depth stores did not show a reproducible primary-scene gain. |
| [msaa4-partial-shader-packets](msaa4-partial-shader-packets/README.md) | Rejected | Masked triangle-tail packets did not yield a reproducible BMW improvement. |
| [msaa4-post-depth-opaque](msaa4-post-depth-opaque/README.md) | Accepted | Reuses four-sample depth masks for exact opaque stores. |
| [off-capture-dispatch](off-capture-dispatch/README.md) | Rejected | Relocating capture selection regresses BMW MSAA modes. |
| [off-edge-mask](off-edge-mask/README.md) | Rejected | Two fewer bitmask calls per off root do not reproduce BMW off gains; BMW4 slows +0.650%/+2.177% across audits. |
| [off-pixel-bound](off-pixel-bound/README.md) | Not retained | A small BMW off gain does not justify BMW 4x and T-80 off costs. |
| [off-pixel-packing](off-pixel-packing/README.md) | Rejected | Within-triangle packing improves BMW off/2x but regresses its 4x mode. |
| [ordered-draw-queue](ordered-draw-queue/README.md) | Accepted | Queues ordered immutable multitexture draws with independent stripe progress. |
| [ordered-packed-capacity](ordered-packed-capacity/README.md) | Rejected | Capacity buckets give conflicting BMW audit directions in MSAA modes. |
| [packed-oversized-draws](packed-oversized-draws/README.md) | Accepted variant | Exact compact vertices admit oversized draws to bounded asynchronous raster jobs. |
| [packet-channel-shuffle](packet-channel-shuffle/README.md) | Rejected | Byte shuffles do not reproduce all-mode BMW gains and regress T-80 off. |
| [packet-lane-occupancy](packet-lane-occupancy/README.md) | Diagnostic | BMW off packet shaders use 48.672125% live lanes; MSAA scalar tails are outside the counter scope. |
| [packet-specialization-replay](packet-specialization-replay/README.md) | Rejected | DOT3 specialization and visible-vertex replay trials were not adopted. |
| [packet-texture-addressing](packet-texture-addressing/README.md) | Accepted | Vectorizes texel addressing and shares row products without changing filtering. |
| [parallel-triangle-preparation](parallel-triangle-preparation/README.md) | Accepted / mixed follow-ups | Parallel descriptors preserve emission order; later visibility and span trials have separate outcomes. |
| [position-page-cache](position-page-cache/README.md) | Accepted | Caches position pages while refreshing lighting and other attributes. |
| [post-depth-common-store](post-depth-common-store/README.md) | Accepted | Common post-depth stores improve BMW off by 5.131%/5.432%, with mixed controls. |
| [prepack-uptake](prepack-uptake/README.md) | Diagnostic | Early packing adopts about seven of ten eligible BMW draws; no frame-time gain is established. |
| [prepared-vertex-inputs](prepared-vertex-inputs/README.md) | Accepted | Resolves vertex streams once per joined job. |
| [queue-cost-priority](queue-cost-priority/README.md) | Rejected | A small BMW off benefit does not justify the 4x regression. |
| [queue-geometry-help](queue-geometry-help/README.md) | Accepted | Workers and caller share finite next-draw vertex preparation slices. |
| [queue-geometry-priority](queue-geometry-priority/README.md) | Accepted | Prioritizes ready finite geometry slices before claiming another raster bin. |
| [raster-input-noalias](raster-input-noalias/README.md) | Rejected | Read-only raster restrict qualifiers leave all20 WASM objects and final module byte-exact; native +112B is unmeasured. |
| [raster-mode-entry](raster-mode-entry/README.md) | Rejected | Outer mode separation does not reproduce BMW gains and regresses T-80 off. |
| [raster-mode-packing](raster-mode-packing/README.md) | Rejected | Combined mode separation/packing improves BMW off but regresses BMW 4x and T-80 off. |
| [raster-phase-profiles](raster-phase-profiles/README.md) | Diagnostic | Byte-identical production and outlined phase-state profiles establish no additional speedup. |
| [raster-profile-20261004](raster-profile-20261004/README.md) | Diagnostic | Four-sample caller/worker profiles locate work but establish no speedup. |
| [raster-profile-20261005](raster-profile-20261005/README.md) ([historical note](raster-profile-20261005/historical-notes/README.md)) | Diagnostic | Module-bound BMW profiles locate raster work; following row-span trials were rejected. |
| [raster-work-census](raster-work-census/README.md) | Diagnostic | Counts coverage, depth rejection and tails; fewer logical candidates do not predict a speedup. |
| [rectangular-worker-bins](rectangular-worker-bins/README.md) | Rejected | Replacing X-stripes with rectangular bins did not justify adoption. |
| [replay-path-census](replay-path-census/README.md) | Diagnostic | Most BMW replay input uses visibility filtering; publication already swaps bin ownership. |
| [research-context](research-context/README.md) | Archive | Preserves former overview summaries, early notes and their historical measurement scope. |
| [sample-depth-locality](sample-depth-locality/README.md) | Rejected | Depth alignment, layout and finer-bin variants did not justify adoption. |
| [sample-depth-planes](sample-depth-planes/README.md) | Rejected | Anchored depth-plane variants were slower and changed some production pixels. |
| [sample-plane-layout](sample-plane-layout/README.md) | Rejected | Tiled sample planes and bin-alignment variants did not improve the target renderer. |
| [sampler-footprints](sampler-footprints/README.md) | Diagnostic | 1200 exact frames, 600 repeated tables; 4x4 lowers logical groups but loses pair loads; no FPS claim. |
| [screen-coordinate-reuse](screen-coordinate-reuse/README.md) | Not retained | Exact fixed-coordinate reuse across stages did not demonstrate an acceptable gain. |
| [shader-texture-trials](shader-texture-trials/README.md) | Mixed historical results | Records outlined shader diagnostics, held sampler variants and a retained exact sampler revision. |
| [shared-packet-uv](shared-packet-uv/README.md) | Rejected | Sharing packet UV interpolation across units did not justify adoption. |
| [shared-vertex-uv](shared-vertex-uv/README.md) | Accepted | Identical resolved UV streams reuse the original raw attribute value. |
| [simd-index-range](simd-index-range/README.md) | Accepted | Exact unsigned SIMD index scanning gives modest repeated BMW gains in all modes. |
| [simd-scanline-phases](simd-scanline-phases/README.md) | Held / rejected variants | Exact row recurrences did not confirm a BMW gain; SIMD proposal variants were slower. |
| [simd-triangle-setup](simd-triangle-setup/README.md) | Proposed | Four independent descriptor lanes need uncached-work and gather-cost diagnostics. |
| [slice-vertex-packing](slice-vertex-packing/README.md) | Rejected | Packing during geometry slices gives opposite BMW audit directions in every mode. |
| [static-cluster-culling](static-cluster-culling/README.md) | Adopted | 640x360 off/2x/4x: Sponza -13.13/-12.27/-11.38%, Bistro -19.29/-18.83/-17.50% frame time; BMW/T-80 mixed within 1%; tested RGB exact. |
| [texture-tiled-storage](texture-tiled-storage/README.md) | Research / rejected first trial | Fixed direct-2D 4x4 trial lacks an overall gain; broader layout work remains open. |
| [texture-tiles4](texture-tiles4/README.md) | Rejected | BMW off regresses in all six pairs; BMW4 slows in both audits; doubled eligible storage and costly updates. |
| [transient-depth-visibility](transient-depth-visibility/README.md) | Diagnostic / superseded trials | Identifies strictly hidden replay references and preserves the initial timing limitations. |
| [triangle-size-histogram](triangle-size-histogram/README.md) | Diagnostic | Separates full triangle area from actual visited work; no timing gain is claimed. |
| [validation-protocol](validation-protocol/README.md) | Protocol | Bistro > Sponza > BMW F31 > T-80; double-digit complex-scene gains can justify ~2% BMW cost; 640×360 native AB/BA OFF/2×/4×, SIMD128/WASM and live updates. |
| [visibility-buffer-architecture](visibility-buffer-architecture/README.md) | Held / research | Primary GitHub/HPG sources reviewed; four previous opaque-deferred prototypes already regressed BMW, so ordinary retry is superseded. |
| [visibility-byte-select](visibility-byte-select/README.md) | Rejected | Byte-group visibility selection regresses BMW off; small 4x gains do not justify it. |
| [wasm-four-contexts](wasm-four-contexts/README.md) | Applied configuration | Defaults to at most three helpers plus the computing caller; no speed claim. |
| [wasm-phase-conversion](wasm-phase-conversion/README.md) | Held | Native WASM proposal conversion remained correct but did not reproduce a BMW gain. |
| [wasm-pseudo-clamps](wasm-pseudo-clamps/README.md) | Accepted | Uses direct WASM pseudo-min/max for the validated clamp path. |
| [whole-pipeline-static-kernels](whole-pipeline-static-kernels/README.md) | Proposed | Bounded C11 kernels specialize complete hot draw pipelines beyond rejected eligibility/DOT3 helpers; no measured gain. |
| [glimpsw-mesa-comparison](glimpsw-mesa-comparison/README.md) | Historical packet comparison | SIMD128 8085056, 640×360/OFF: SG −63.8…−78.6% versus Mesa, still 4.1–6.4× GLimpSW; 72 balanced runs with exact source/asset/budget provenance. |
| [visible-vertex-attributes](visible-vertex-attributes/README.md) | Accepted | Worker attributes after culling: Bistro -11–12%, other scenes -3–8%, all twelve images identical. |
| [bounded-queue-wakeup](bounded-queue-wakeup/README.md) | Accepted | Bounded generation/queue polling: BMW/Bistro -5–7%, T-80 -3–4%, Sponza -1.5%; all images identical. |
| [packed-queue-admission](packed-queue-admission/README.md) | Accepted | Sponza -12–15%, T-80 -6.5–10.3%, Bistro -3.5–5%, BMW mixed within 0.25%; all images identical. |
| [fused-material-pass](fused-material-pass/README.md) | Accepted | One material pass: BMW -21–27%, T-80 -25–26%, Sponza -27–30%, Bistro -39–40% frame time across off/2x/4x; 108 identical coverage comparisons, small documented color differences. |
| [scene-material-visibility](scene-material-visibility/README.md) | Accepted | Scene visibility/material buckets: native off BMW/T-80/Sponza/Bistro -1.6/-15.0/-22.0/-11.3%; exact images, 749 tests; Bistro MSAA +1–2% tradeoff. |
| [scene-position-visibility](scene-position-visibility/README.md) | Accepted | Native off BMW/T-80/Sponza/Bistro -2.6/-8.2/-19.3/-47.4%; 108 exact coverage comparisons, max color delta 1, 750 tests; Sponza MSAA +2% tradeoff. |
| [scene-simd-coverage](scene-simd-coverage/README.md) | Accepted | Exact rolling SIMD128 coverage: native off BMW/T-80/Sponza/Bistro -9.6/-9.5/-4.5/-4.6%; 108 exact images, 751 tests, unchanged interpolation; MSAA within ±1.3%. |
| [scene-hierarchical-depth](scene-hierarchical-depth/README.md) | Not adopted | 4×4/8×8 maxima regress; repeated bucket sorting BMW/T-80/Sponza/Bistro -0.2/-3.2/+2.8/-1.9%, with exact off-depth planes but color ties. |
| [scene-ray-visibility](scene-ray-visibility/README.md) | No adoption | Cached BVH setup: repeated off BMW/T-80/Bistro -8.1/-13.2/-5.6%, Sponza +10.4%; 108 exact views; held. |
| [scene-prepared-primitives](scene-prepared-primitives/README.md) | Rejected | 96-byte inline and 56-byte sidecar setup have 36 exact off views each but regress Bistro or Sponza/BMW. |
| [scene-simd-positions](scene-simd-positions/README.md) | Rejected | SIMD position postprocessing has 36 exact off views, but Sponza/Bistro +3.0/+2.3%; tail/non-finite contract passes. |
| [native-vector-registers](native-vector-registers/README.md) | Not adopted | Native extended registers preserve 36 exact off views, but give no broad full-frame gain. |
| [scene-parallel-bins](scene-parallel-bins/README.md) | Accepted | Stable parallel references: off BMW/T-80/Sponza/Bistro -7.4/-13.6/-4.9/-7.0%; 108 exact images, 752 tests; MSAA within ±0.9%. |
| [fused-transparent-pass](fused-transparent-pass/README.md) | Accepted | BMW frame time -12.9/-8.6/-10.4% off/2×/4×; independent off -13.36%; small documented RGB changes, 753 tests, 108 images, 288 resident checks; live WASM updated. |
| [scene-compact-surfaces](scene-compact-surfaces/README.md) | Not adopted | Dense and direct-vertex storage each preserve 36 exact views and three geometry contracts; both lack a broad full-frame gain. |
| [scene-static-groups](scene-static-groups/README.md) | Not adopted | Frustum/cone/unique-reference screens each have 36 exact views and epoch contract; fewer indoor vertices do not establish a broad frame-time gain. |
| [scene-coarse-shading](scene-coarse-shading/README.md) | Not adopted | 36 exact coverage views each; coarse RGB details differ; outlined Sponza -8.65% screen falls to -2.02% in independent three-block confirmation. |
| [scene-phase-accounting](scene-phase-accounting/README.md) | Diagnostic | Accepted native phase clocks, 480 frames and four exact final images; visibility dominates T-80/Sponza/Bistro, not position transforms. |
| [scene-single-pixel](scene-single-pixel/README.md) | Not adopted | 36 exact views and three contracts pass; independent off/2×/4× confirms no off gain: BMW/T-80/Sponza/Bistro +0.2/+1.4/+0.9/-0.2%. |
| [scene-vector-barycentrics](scene-vector-barycentrics/README.md) | Not adopted | 36 exact views and three contracts pass; extra guarded SIMD conversion regresses BMW/Sponza/Bistro in screening. |
| [scene-quantized-visibility](scene-quantized-visibility/README.md) | Accepted | Opt-in 16.4 SIMD32: off BMW/T-80/Sponza/Bistro -6.0/-8.6/-5.8/-1.9%; documented image differences, 754 tests, scalar/sanitizer/context gates; live WASM updated. |
| [scene-shared-material-uv](scene-shared-material-uv/README.md) | Accepted | Exact canonical UV reuse: off BMW/T-80/Sponza/Bistro -1.9/-3.1/-3.7/-2.8%; 108 exact views, 755 tests, sampler/worker/sanitizer/context gates; live WASM updated. |
| [scene-quantized-specialization](scene-quantized-specialization/README.md) | Not adopted | 36 exact off views and 216-pair contract pass; separate kernels regress BMW/Sponza by +1.5/+4.4% in screening. |
| [scene-primitive-winners](scene-primitive-winners/README.md) | Not adopted | 36 exact off views; serial final surfaces regress all four scenes by +7.7–22.1% in screening. |
| [scene-primitive-winners-parallel](scene-primitive-winners-parallel/README.md) | Not adopted | 36 exact off views; parallel shared final surfaces regress all four scenes in screening (+13–21%). |
| [scene-simd-triangle-setup](scene-simd-triangle-setup/README.md) | Held | 36 exact views, 216-pair old/240-frame new contracts; mixed Sponza and unstable MSAA controls prevent adoption. |
| [scene-vector-material-gather](scene-vector-material-gather/README.md) | Not adopted | 36 exact views and 216-pair contract; vector gathers give mixed +0.6/+1.6/-1.5/-2.7% screening. |
| [scene-guardband-clipping](scene-guardband-clipping/README.md) | Not adopted | Expanded-plane guardband gives no broad gain; 36 coverage masks exact, RGB/depth changes documented. |
| [scene-selective-guardband](scene-selective-guardband/README.md) | Not adopted | Confirmed off Sponza/Bistro -4.5/-2.4%, but T-80 +3.7%; 36 masks exact, inspected RGB changes. |
| [scene-selective-guardband-outlined](scene-selective-guardband-outlined/README.md) | Not adopted | Full-orbit warm-up confirms only Bistro -2.0%; T-80 +4.9%, Sponza +0.9%; no broad gain. |
| [scene-material-mip-sampling](scene-material-mip-sampling/README.md) | Held | Centroid LOD shows floor seams; off +0.3/-3.2/-5.3/-7.7%, 36 exact coverage views; all-mode audit terminated before final Bistro4 result. |
| [scene-material-pixel-mips](scene-material-pixel-mips/README.md) | Held | Pixel footprints: off +0.9/-2.4/-3.1/-8.4%; 384 numerical and 216 render checks pass, exact coverage in 36 views, visible discrete floor LOD changes. |
| [scene-native-wide-materials](scene-native-wide-materials/README.md) | Superseded | Historical native SIMD512 gains 2–7%; removed because native and WASM must both use SIMD128. |
| [scene-fixed-width-addressing](scene-fixed-width-addressing/README.md) | Not adopted | Mixed off screen -0.2/-2.1/+4.6/+1.1%; 36 exact views. User now permits standard-format variants alongside a general path. |
| [scene-native-wide-fixed-width](scene-native-wide-fixed-width/README.md) | Not adopted | Fixed-width combination gives no additional confirmed gain; 2,015 enabled comparisons and 36 views max RGB error 1; standard-format permission now allows future generic-backed variants. |
| [scene-variable-viewport](scene-variable-viewport/README.md) | Private trial | Runtime dimensions pass 2,106 small even/odd-size frame pairs, 216 quantization pairs and 36 exact asset views; performance/WASM gates pending. |
| [scene-native-wide-attribute-gathers](scene-native-wide-attribute-gathers/README.md) | Not adopted | Direct gathers regress T80/Sponza +7.4/+5.0% versus wide shader; 2,024 native/sanitized/WASM pairs pass, 36 exact coverage views/max RGB 1. |
| [scene-tagged-barycentrics](scene-tagged-barycentrics/README.md) | Not adopted | Scalar/vector screens lack broad native gain; both 36 exact views, 8M numeric checks; vector actual 2,024-frame SIMD128/WASM contract passes. |
| [scene-quantized-row-spans](scene-quantized-row-spans/README.md) | Not adopted | Geometry-only row bounds screen BMW/T-80/Sponza/Bistro -0.83/+3.56/+3.36/-0.12%; 36 exact views and 16M independent int64 sample checks pass. |
| [scene-current-phase-accounting](scene-current-phase-accounting/README.md) | Historical diagnostic | Superseded SIMD512 renderer: visibility 39.5–47.5% of elapsed frame, preparation 6.3–13.1%; reprofile SIMD128 before current cost claims. |
| [scene-vertical-coverage](scene-vertical-coverage/README.md) | Held | Vertical SIMD128: confirmed off +0.5/-2.2/-3.4/-1.2%; 8,568 native/WASM pairs pass; Bistro2 +2.37%, independent recheck +1.43%; no adoption. |
| [scene-quantized-affine-depth](scene-quantized-affine-depth/README.md) | Not adopted | Two-weight depth confirmation +4.3/+3.4/-2.5/-0.5%; 36 exact masks and 4M numeric checks pass; sparse RGB tie changes, no broad gain. |
| [scene-simd128-policy](scene-simd128-policy/README.md) | Applied | Native AVX512 removed; ISA audit, 756 native tests, 108 exact views, sanitizer/WASM contracts and 12 live browser cases pass; current native comparison remains 4.2–6.7× slower than GLimpSW. |
| [scene-meshlets-soa](scene-meshlets-soa/README.md) | Private combined variant | Scalar emission OFF +1.5/+3.9/+4.7/+2.2% rejected; SIMD128 emission/clip bounds: 36 exact views and independent native/WASM 216 hashes plus controlled inside pair pass; combined timing pending. |
| [scene-triangle-packets](scene-triangle-packets/README.md) | Accepted combined variant | SIMD128 SoA packets + mask16 bins: independent OFF −5.2/−6.9/−7.9/−9.4%; MSAA controls −0.2…+1.1%; 756 tests, exact native/WASM planes, live browser updated. |
| [scene-packet-bin-masks](scene-packet-bin-masks/README.md) | Isolated variant not adopted | SIMD128 mask16 screen -0.03/-1.18/+2.69/+0.63%; 36 exact views, 55-pair audited oracle; combine with triangle packets next. |
| [scene-tiled-4x4](scene-tiled-4x4/README.md) | First standalone variant rejected | Actual tiled depth/winners + SIMD128 4×4 coverage: 36 exact asset planes and 216 native/WASM baseline hashes, but OFF +27/+65/+28/+15%; direct-address/combined variants remain open. |
| [scene-meshlet-occlusion](scene-meshlet-occlusion/README.md) | Research | Masked coverage plus locally inspected EmberGL/Meshlete: cluster bounds before lazy vertex/triangle processing; no performance claim. |
| [scene-opacity-micromaps](scene-opacity-micromaps/README.md) | Research | Conservative opaque/transparent cutout classification; CPU raster adaptation unmeasured. |
| [renderer-msaa4-comparison](renderer-msaa4-comparison/README.md) | Measured | 120 accepted/20 rejected runs: libsoftgl 4× is 65–82% less time than Mesa 4× but 8.3–21.1× GLimpSW OFF; GLimpSW lacks native MSAA, verified Mesa sample count/coverage. |
| [scene-msaa-visibility](scene-msaa-visibility/README.md) | Accepted adaptive variant | Three AB/BA blocks: Bistro 2× FPS +76%, 4× +59%; other controls -2.4…+1.2% frame time; exact coverage, 757 tests, sanitizer and 12 live WASM cases pass (2.65 GiB). |
| [glimpsw-resource-audit](glimpsw-resource-audit/README.md) | Diagnostic / research | Resources mapped to actual implementation: hierarchy/LUT/cache work remains; user-only perf works in WSL, PCM lacks a required reference counter. |
| [msaa-scaled-coverage](msaa-scaled-coverage/README.md) | Validated / no adoption | Exact native/WASM hashes and 108 asset views; 4× -0.6/-4.9/-3.3/-1.0% screen but OFF controls regress, no broad gain. |
| [scene-msaa-occlusion](scene-msaa-occlusion/README.md) | Accepted | Current-frame MSAA occlusion: Bistro2/4 frame time -7.6/-7.0% vs accepted deferred; 144 runs, 108 exact views, 757 tests, sanitizer/WASM/browser and rollback mutation pass. |
| [scene-msaa-compact](scene-msaa-compact/README.md) | Not adopted | Exact native views/contracts; Bistro2/4 scalar +0.9/-1.2%, packed +1.3/+1.0%, aligned +3.0/-2.1% screens; no confirmed broad gain. |
| [scene-compact-triangles](scene-compact-triangles/README.md) | Not adopted | Native snapshots 320→256B, 108 exact views; Bistro2/4 screen −0.9/−1.5%; OFF −11.4% outlier-driven/unconfirmed; WASM layout pending. |
| [scene-msaa-exact-kernel](scene-msaa-exact-kernel/README.md) | Not adopted | Exact native planes; fresh 144-run repeat after user-reported interference: Bistro4 −2.53% time (+2.6% FPS), Bistro2 +3.30%; no broad gain, shared-setup isolation pending. |
| [scene-depth-order](scene-depth-order/README.md) | Private / screened | Near-first Bistro OFF/2×/4× −0.88/−3.55/−5.09% preliminary; 108 coverage-identical views with sparse changed winners, 99 enabled controls; no adoption. |
| [scene-phase-profile](scene-phase-profile/README.md) | Diagnostic | Current 84041db Bistro4: bare 62.21 ms; instrumented raster 28.32, shading 17.44, grouping/list 3.04 ms; all planes exact, +4.63% instrumentation overhead. |
| [a4-sparse-aa](a4-sparse-aa/README.md) | Research / locally reviewed | A4 paper and pinned SimdRast: sparse edge AA and tiled fragment resolve; hybrid timings do not predict CPU-only 4× speed. |
| [scene-msaa-parallel-groups](scene-msaa-parallel-groups/README.md) | Accepted | 144 accepted/8 rejected runs: Bistro2/4 FPS +6.31/+10.83%; 108 exact views, 757 tests, sanitizer/WASM and 12 live browser cases pass (2.65 GiB). |
| [scene-msaa-surface-merge](scene-msaa-surface-merge/README.md) | Census | Bistro adjacency-only opportunities: 5.74% fewer 2× / 10.96% fewer 4× shading jobs across nine views; no color sharing or FPS gain yet. |
| [scene-msaa-triangle-packets](scene-msaa-triangle-packets/README.md) | Rejected screen | Exact full-precision SIMD128 packets regress Bistro 2× +4.64% / 4× +9.09% frame time; 108 model views and independent sample-plane fixtures exact. |
| [scene-msaa-small-triangles](scene-msaa-small-triangles/README.md) | Accepted | Short exact SIMD128 MSAA kernel for ≤8×8 triangle boxes: Bistro 4× frame -3.89% / FPS +4.05%; 144 quiet runs, native/WASM sample planes exact, live browser updated. |
| [scene-msaa-pixel-occlusion](scene-msaa-pixel-occlusion/README.md) | Not adopted screen | Conservative four-depth test: general-only Bistro 4× +0.30%, including small kernel -1.20% frame time; both 216+48 independent hashes exact, repeat/WASM gates unrun. |
| [scene-msaa-between-samples](scene-msaa-between-samples/README.md) | Accepted | Exact empty-sample geometry culling: Bistro 2×/4× FPS +7.11/+1.94%; 144 quiet runs, native/WASM sample planes exact, 757 tests, live browser updated. |
| [scene-msaa-packet-occlusion](scene-msaa-packet-occlusion/README.md) | Adopted | SIMD128 Bistro 2×/4× -2.74/-2.48% time (+2.82/+2.54% FPS); exact native/actual WASM planes, 757 tests and 12 live browser cases pass. |
| [scene-msaa-uniform-metadata](scene-msaa-uniform-metadata/README.md) | Adopted | Bistro 4× -1.93% time/+1.97% FPS, 2× flat; exact native/WASM gates, 757 tests and 12 browser modes pass; T-80 4× +1.45% cost recorded. |
| [scene-compact-attributes](scene-compact-attributes/README.md) | Not adopted screen | Exact 320→80B shared records: combined Bistro OFF -1.95%, 2× +0.34%, 4× +0.17% time; initial MSAA gain not retained. |
| [scene-packet-coordinate-decode](scene-packet-coordinate-decode/README.md) | Not adopted | 9.757M native/WASM numeric checks and 216/576 render hashes exact; full repeat Bistro4 +0.21%, Sponza OFF +1.84% time, no broad gain. |
| [cpu-rasterizer-msaa-audit](cpu-rasterizer-msaa-audit/README.md) | Research | Pinned local CPU-Rasterizer and SIGGRAPH 2011 sources reviewed; pixel-frequency MSAA reuse already implemented, no new gain. |
| [scene-msaa-lazy-depth-summary](scene-msaa-lazy-depth-summary/README.md) | Not adopted screen | Exact 216/576 hashes; fixture scans 16→1 but Bistro4 +1.39% time, 2× +2.01% control cost; no production change. |
| [scene-msaa-quantized-packets](scene-msaa-quantized-packets/README.md) | Held prototype | Bistro4 −2.94% time but T-80 OFF repeat cost +10.73%; guarded variants only −1.50/−1.46% screening time, no adoption. |
| [scene-msaa-reconstructed-depth](scene-msaa-reconstructed-depth/README.md) | Research | Own DCAA/AGAA-inspired uniform depth-plane reconstruction; retain four genuine samples, unimplemented and unmeasured. |
| [scene-bin-private-state](scene-bin-private-state/README.md) | Adopted | Exact bin state separation: Bistro OFF/2×/4× +5.31/+4.79/+6.37% FPS, all OFF modes improve; Sponza2 −1.05%, SIMD128/sample planes unchanged. |
| [scene-cache-aligned-stripes](scene-cache-aligned-stripes/README.md) | Not adopted screen | Exact ownership/planes, but 4× BMW/T-80/Sponza +1.50/+2.72/+1.95% time; Bistro4 −0.66% mixed, alignment-only control also unconfirmed. |
| [scene-msaa-opaque-commit](scene-msaa-opaque-commit/README.md) | Held screen | Exact native sample/rollback and 36 model pairs; Bistro4 −1.55% time with mixed directions, T-80 OFF +5.00% control cost; no adoption. |
| [scene-msaa-local-setup](scene-msaa-local-setup/README.md) | Not adopted screen | Exact native/forced-fallback planes and 36 model pairs; Bistro4 +2.26% time in both directions, cache does not pay off. |
| [scene-depth-order-cached-keys](scene-depth-order-cached-keys/README.md) | Adopted V7 | Opaque/near-first parallel order: Bistro4 FPS +6.61/+8.30%, OFF time +0.54/+1.50% tradeoff; 758 tests, actual SIMD128 WASM and 12 live browser cases pass. |
| [scene-lazy-cluster-frontend](scene-lazy-cluster-frontend/README.md) | Rejected screens | Lazy cluster V2–V6 Bistro4 time +10…+22%; 48% fewer prepared triangles, exact all-bin oracle planes, enabled sanitizer/SIMD128 WASM pass; no adoption. |
| [scene-msaa-current-phase-accounting](scene-msaa-current-phase-accounting/README.md) | Diagnostic complete | Current SIMD128: Bistro4 visibility/shading 35.92/30.53%, setup 15.94%; 360 measured frames, 12 exact original images; other models use forward MSAA. |
| [scene-msaa-density-hint](scene-msaa-density-hint/README.md) | Adopted V2 | Isolated general cost hint: Sponza2/4 FPS +35…37/+45…47%; 288 quiet runs, 108 quantified views, 759 tests, actual SIMD128 WASM and 12 live browser cases pass; Bistro4 time +0.8%. |
| [scene-msaa-low-density](scene-msaa-low-density/README.md) | Private screen | Current lower-density deferred MSAA: T-80 ~12% FPS gain, BMW ~1–2% cost; 72 quality pairs preserve depths/stencil; identical-binary controls expose large OFF noise; final gates pending. |
| [renderer-current-msaa-comparison](renderer-current-msaa-comparison/README.md) | Measured 6e5ed5c | 144 selected/60 rejected native runs: libsoftgl 4× is 4.20–7.02× Mesa4 FPS; OFF still 3.59–5.91× GLimpSW time; Mesa2 rounds to four and is excluded. |
| [scene-alpha-plane](scene-alpha-plane/README.md) | Held screens | Exact native/WASM alpha planes: Bistro4 −0.49/−2.61% screening time, other modes uneven; 54-view census/profile locate limited cutout work and 36 MiB cache cost; no adoption. |
| [scene-attribute-transpose](scene-attribute-transpose/README.md) | Not adopted | Exact native/WASM helpers and 216 paired views; 144-run V1 repeat shrinks Bistro OFF gain to −0.14%, 4× −1.65%, Sponza OFF +17.14% with large variability; no broad gain. |
| [scene-shading-planes](scene-shading-planes/README.md) | Native prototypes / not adopted | In-place numerator planes, packed loads and ≥4-group preparation: repeated Bistro/Sponza 4× +0.63/+1.03% time; 234 exact-depth view pairs, ≤1 RGB byte, native/sanitizer/WASM mixed-record checks. |
| [scene-msaa-grid-reduction](scene-msaa-grid-reduction/README.md) | Exact fallback validated / packet backend pending | 108 native views exact; SIMD128/WASM arithmetic exact; new coverage path reaches only 0.014% of Bistro 4× general setups, versus 1.386% in Sponza; no timing gain established. |
| [scene-temporal-shading-reuse](scene-temporal-shading-reuse/README.md) | Native material cache / not adopted | UV normal/albedo memoization: up to 55% quality-sequence hits but Bistro4 +7.03% time; 54 model pairs and 1,440 sanitizer/WASM fixture pairs; reverse reprojection still queued. |
| [scene-codec-luma-chroma](scene-codec-luma-chroma/README.md) | Native prototype / held | Repeated coarse shading cuts Bistro/Sponza 4× frame time 9.91/12.22%; BMW +3.16%, visibly blocky; native sanitizer and SIMD128 WASM fixtures pass, browser/motion pending. |
| [scene-perceptual-frequency-budget](scene-perceptual-frequency-budget/README.md) | Research / evaluator validated | Visual frequency/masking and motion guide separate luma/chroma/lighting budgets; FLIP runs offline only; runtime policy unimplemented. |
| [scene-temporal-sample-reconstruction](scene-temporal-sample-reconstruction/README.md) | Queued alternative path | Jittered 1×/2× plus validated history and causal keyframes may reduce visibility work; distinct from genuine 4× MSAA; unimplemented/unmeasured. |
| [scene-shutter-budget](scene-shutter-budget/README.md) | Queued alternative path | Motion/focus sampling and footprint filtering target useful softness from less shading; physical blur and runtime gain unmeasured. |
| [scene-error-budget-profiles](scene-error-budget-profiles/README.md) | Offline calibration evaluated | 2,304 sparse-probe cases: 6.25% uniform probes estimate global MSE but miss ~51% of above-threshold Bistro/Sponza chroma tiles; boundary/confidence repair needed; runtime unimplemented. |
| [scene-motion-compensated-residual](scene-motion-compensated-residual/README.md) | Queued alternative path | Surface motion transports prediction/detail; fresh residuals and disocclusion repair target flicker without ghost trails; unimplemented/unmeasured. |
| [scene-temporal-geometry-proxies](scene-temporal-geometry-proxies/README.md) | Native LOD / held | Automatic part/spatial LOD: 432 paired views, 80 screening records; fewer Sponza triangles but no clear priority-scene 4× gain; material reuse/WASM validation pending. |
| [scene-screen-error-lod](scene-screen-error-lod/README.md) | Removed / retained | Optional mesh LOD and viewer selector withdrawn; historical 4× FPS gains Bistro +3.86%, Sponza +10.05% remain archived. |
| [scene-coarse-direct-scatter](scene-coarse-direct-scatter/README.md) | Removed / retained | Coarse 2×2 selector, API and renderer withdrawn; historical 4× FPS Bistro +15.92%, Sponza +20.87% with coarser material colors. |
| [scene-coarse-representative-stream](scene-coarse-representative-stream/README.md) | Removed / retained | Coarse stream withdrawn with its path; historical additional 4× FPS Bistro +6.41%, Sponza +9.59%; complete frozen validation retained. |
| [scene-layered-keyframe-cache](scene-layered-keyframe-cache/README.md) | Native prototype / held | Repeated full-pixel material reuse: Bistro 4× keys 55.016→11.762 ms, Sponza 37.922→11.195 ms; approximate coverage, startup/motion/browser pending; no product path. |
| [scene-full-msaa-control](scene-full-msaa-control/README.md) | Diagnostic / validated | Coarse/LOD removed: 759 tests, 108 exact native + 108 browser pairs; genuine 4× BMW 57.53 FPS, target 100; fresh BMW/Bistro CPU profiles, no new gain. |
| [scene-cube-footprint-packing](scene-cube-footprint-packing/README.md) | Not adopted | Exact 16-byte cube cells: all/scalar/packet screens lack a BMW gain; 108 exact views for combined variant. |
| [scene-mixed-face-cube-packets](scene-mixed-face-cube-packets/README.md) | Not adopted | Mixed-face SIMD128 cube sampling: no confirmed gain; 108 exact views; current glTF T-80 uses cubes. |
| [scene-msaa-pixel-depth-bound](scene-msaa-pixel-depth-bound/README.md) | Not adopted | Per-pixel conservative 4× depth bound: no useful screen gain; 108 exact views. |
| [scene-constant-cube-footprints](scene-constant-cube-footprints/README.md) | Not adopted | Exact constant-tap shortcut: both BMW screens regress; logical cell census and 108 exact views retained. |
| [scene-msaa-material-pixel-merge](scene-msaa-material-pixel-merge/README.md) | Accepted V6 | 640×360/4× MSAA FPS: Sponza +14.23%, BMW +3.91%, T-80 +24.49%, Bistro within noise; original samples/depth, approximate intrapixel RGB, V4/V5 alpha faults rejected. |
| [scene-msaa-rgb-alpha-split](scene-msaa-rgb-alpha-split/README.md) | Held native V2 | Exact sample alpha with shared pixel RGB: Bistro 4× −2.08% time, extra RGB approximation; nine Bistro views only, no sanitizer/WASM adoption. |
| [scene-msaa-bounded-spans](scene-msaa-bounded-spans/README.md) | Rejected screen | Extend small 4× kernel to 64 pixels: BMW +0.22%, Bistro −0.12%, Sponza +20.22%, T-80 +3.19% time; no useful gain. |
| [scene-msaa-rebased-edges](scene-msaa-rebased-edges/README.md) | Accepted V3 | Exact sample-edge recurrences: 4× FPS Bistro +2.63%, Sponza +2.01%, BMW +2.41%, T-80 noise; 108 native + 108 browser views identical, 760 tests, SIMD128/WASM. |
| [scene-msaa-microtriangle-pixels](scene-msaa-microtriangle-pixels/README.md) | Held V1/V2 | Four-triangle × four-sample inner kernels: sparse compact groups, no useful repeatable gain; 396/594 exact independent plane pairs, SIMD128, no adoption. |
| [scene-opaque-alpha-sharing](scene-opaque-alpha-sharing/README.md) | Accepted V2 | Explicit opaque alpha enables more intrapixel sharing: Bistro 4× +11.70% FPS, other scenes similar; exact depth/alpha, quantified RGB approximation, 108 native/browser pairs, SIMD128/WASM. |
| [scene-msaa-guarded-depth-planes](scene-msaa-guarded-depth-planes/README.md) | Held native trials | Guarded V4: 108 exact views but no useful all-scene gain; direct planes show sparse rounding/winner errors and no confirmed priority-scene gain; native SIMD128 and identity/profile controls retained. |
| [scene-msaa-group-fastpaths](scene-msaa-group-fastpaths/README.md) | Held exact native screen | 108 views and four contracts exact; Bistro −1.61%, Sponza +12.44%, BMW +0.88%, T-80 +0.55% time in one noisy AB/BA screen; no adopted gain. |
| [scene-msaa-raw-edge-recurrence](scene-msaa-raw-edge-recurrence/README.md) | Held exact native trials | Three variants pass independent contracts; V3 has 108 exact views; no useful gain, Sponza launch-scope discrepancy retained (+23.38% resident / +2.07% fresh-process time). |
| [scene-msaa-four-pixel-interiors](scene-msaa-four-pixel-interiors/README.md) | Held approximate native trials | 36 views per variant preserve depth masks; tiny mean/sparse local RGB changes; no screen gain, only ~10% of BMW specialized candidate visits batched; exact-depth fixture failure retained. |
| [scene-msaa-packet-depth-bounds](scene-msaa-packet-depth-bounds/README.md) | Held exact native prototypes | Pending depth + covered-pixel intervals: three screens regress BMW/Bistro; V1–V3 have 108 exact views each, V1–V4 pass four contracts, V2–V4 pass 16M sample arithmetic checks; no adoption. |
