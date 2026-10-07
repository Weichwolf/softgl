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
| [native-cpu-profiles](native-cpu-profiles/README.md) | Diagnostic | Current 640x360 profiles complete for all four scenes; vertex/clipping and queue wakeups motivate cluster culling; no speedup claimed. |
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
| [texture-tiled-storage](texture-tiled-storage/README.md) | Research / rejected first trial | Fixed direct-2D 4x4 trial lacks an overall gain; broader layout work remains open. |
| [texture-tiles4](texture-tiles4/README.md) | Rejected | BMW off regresses in all six pairs; BMW4 slows in both audits; doubled eligible storage and costly updates. |
| [transient-depth-visibility](transient-depth-visibility/README.md) | Diagnostic / superseded trials | Identifies strictly hidden replay references and preserves the initial timing limitations. |
| [triangle-size-histogram](triangle-size-histogram/README.md) | Diagnostic | Separates full triangle area from actual visited work; no timing gain is claimed. |
| [validation-protocol](validation-protocol/README.md) | Protocol | Current agreement: all four scenes at 640x360, documented approximations allowed, native AB/BA off/2x/4x, update live WASM on adoption. |
| [visibility-buffer-architecture](visibility-buffer-architecture/README.md) | Held / research | Primary GitHub/HPG sources reviewed; four previous opaque-deferred prototypes already regressed BMW, so ordinary retry is superseded. |
| [visibility-byte-select](visibility-byte-select/README.md) | Rejected | Byte-group visibility selection regresses BMW off; small 4x gains do not justify it. |
| [wasm-four-contexts](wasm-four-contexts/README.md) | Applied configuration | Defaults to at most three helpers plus the computing caller; no speed claim. |
| [wasm-phase-conversion](wasm-phase-conversion/README.md) | Held | Native WASM proposal conversion remained correct but did not reproduce a BMW gain. |
| [wasm-pseudo-clamps](wasm-pseudo-clamps/README.md) | Accepted | Uses direct WASM pseudo-min/max for the validated clamp path. |
| [whole-pipeline-static-kernels](whole-pipeline-static-kernels/README.md) | Proposed | Bounded C11 kernels specialize complete hot draw pipelines beyond rejected eligibility/DOT3 helpers; no measured gain. |
| [glimpsw-mesa-comparison](glimpsw-mesa-comparison/README.md) | Native baseline | 640x360: SoftGL beats Mesa on BMW/T-80, trails on Sponza/Bistro; GLimpSW faster with different rendering; 72 quiet accepted timings. |
