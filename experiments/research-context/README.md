# Historical research context and early optimization notes

Migrated from the former central README on 2026-10-07. Summaries refer to
their historical modules and acceptance criteria, not new measurements.
Current experiment outcomes are listed in [INDEX.md](../INDEX.md).

The [current D4 native-code/profile diagnostic](../current-v8-raster-code/README.md)
completes six first-attempt quiet captures with Chromium 154/V8 15.4.80.19,
actual complete native code-load records, owned PID/TID births and all nine
warmed profiles per capture. Three workers show observable renderer work in
every capture. Native region sizes repeat; they include data/padding and do
not establish an instruction-cache or hardware ceiling. The cube-target prefix
repeats seven 16-byte linear-memory stores before its coherent call: 112 logical
source bytes, not physical traffic or saved cycles. Partial file suffixes and
two generator/analyzer failures are retained. Selected records/disassembly,
source, guards, profiles and reproduction recipes are published; renderer and
accepted FPS stay D4. [Next](../current-v8-raster-code/next-research.md): pass cube
coordinates as vectors and defer scalar fallback scratch to rejection.

The [combined static raster modes/off pixel packing trial](../raster-mode-packing/README.md)
improves BMW off in both audits (-2.550%/-1.816%, all six pairs), but regresses
BMW 4x in both (+0.662%/+0.333%, all six pairs). BMW 2x is mixed; T-80 off
also regresses in all six pairs (+2.116%/+0.956%). The joint module is rejected.
All eighteen quiet comparisons pass on their first attempt, and all full
regression gates pass, including 12288 exact original-route packing pairs per
engine. Actual normalized MSAA outer/inner bodies match the previous split;
this does not prove JIT/spill/cache costs or frame performance equivalence.
Source, selected WAT, recipes and raw data are published. D4/live/report remain
active. [Next](../raster-mode-packing/next-research.md): inspect actual native JIT
instruction/access costs before another specialization.

The [outer raster-mode entry trial](../raster-mode-entry/README.md) is rejected
as a standalone change. BMW audit time changes do not repeat: off
+0.174%/-0.182%,2x +0.134%/-0.192%,4x +0.098%/-0.034%. T-80 off regresses
+2.232%/+0.457%. This is not a statistical equivalence claim. All eighteen
pairs pass their quiet guards on the first attempt and full regression gates
pass. Actual retained function/call graphs confirm the split: a77-byte
dispatcher,22710-byte off body and822-byte2x/4x setup entries. Inner MSAA/off-
capture bodies match after numeric function-label normalization; this does not
prove native JIT/spill/cache costs. Source, selected WAT, recipes and raw data
are published; D4/live/report stay active. [Next](../raster-mode-entry/next-research.md)
tests a separate combined split-plus-off-packing module against D4.

The [within-triangle off pixel-packing trial](../off-pixel-packing/README.md)
improves BMW off by -1.781%/-2.378% and 2x by -1.286%/-0.581% in two audits,
but BMW 4x changes +1.510%/+0.488%, with four of six pairs slower. The joint
module is rejected. All eighteen comparisons pass their quiet guards on the
first attempt; complete native/sanitizer/WASM/image/model/edge gates pass.
A new original-route oracle checks 12288 exact raster pairs, all three tails,
color/depth/stencil/query/capture outputs and lower packet counts. Native/WASM
packet partitions differ and are reported separately. Initial fixture-link
and archive-closure failures, source, recipes and all raw data are retained;
D4/live/report stay active. [Next](../off-pixel-packing/next-research.md): measure
separate outer raster entry points for off/2x/4x before combining optimizations.

The [logical packet-lane diagnostic](../packet-lane-occupancy/README.md) measures
48.672125% live SIMD pixel lanes for BMW off. Its two audits repeat all 600
paired-angle aggregate histograms and frame hashes exactly. MSAA full packets
have 100% live lanes, while their scalar triangle tails are outside this scope;
T-80 off uses the legacy quad shader and is unobserved. All six fixed commands
pass their quiet guards on the first attempt. Full native/sanitizer/WASM/image/
model/edge gates and the new four-producer counter contract pass. Two checker
assumption failures, all original captures, source and reproduction recipes
are retained. The diagnostic never replaces D4 or accepted FPS numbers.
[The next experiment](../packet-lane-occupancy/next-research.md) tests packing
BMW off pixels within each triangle before considering cross-triangle gathers.

The [streamed DOT3 stage trial](../dot3-stage-stream/README.md) is rejected as a
common all-mode implementation. BMW off improves -0.904%/-0.260% and 2x
-0.619%/-0.513%, but all six BMW 4x pairs are slower (+0.852%/+1.358% audit
geometric means). T-80 4x changes +0.614%/+1.446%. Complete native/sanitizer/
WASM/image/model/edge gates and all eighteen first-attempt quiet comparisons
pass. Only the packet-shader header changes; original samplers remain exact.
The source result table shrinks, while actual raster bodies and SIMD local
counts grow; those static observations do not prove the cause. Code, recipes,
raw observations and gate receipts are published; D4/live/report stay active.
Its [proposed diagnostic](../dot3-stage-stream/next-research.md) is now measured in
the lane package above. The proposal reviewed primary SIGGRAPH/OpenGL sources;
no cross-triangle work-packing candidate has been built.

The [unused-alpha DOT3 sampler trial](../dot3-sampler-alpha/README.md) is rejected.
Full native/sanitizer/WASM/image/model/edge gates pass and all eighteen planned
comparisons pass the quiet guard on their first attempt. BMW off is slower in
all six pairs (+1.505%/+1.411% audit geometric means); 2x is mixed
(+0.775%/-0.398%) and 4x regresses (+0.397%/+0.959%). T-80 2x/4x audit means
improve but do not justify the BMW costs. Source, the initial generator failure,
full receipts, raw comparisons, bound raster WAT and reconstruction recipes are
published. D4/live/report stay unchanged. The
[next hypothesis](../dot3-sampler-alpha/next-research.md) examines consuming each
classified texture stage immediately; no such candidate has been built yet.

The [constant packet-channel shuffle trial](../packet-channel-shuffle/README.md)
is rejected. Complete native/sanitizer/WASM/image/model/edge gates pass, but
BMW gains do not replicate across modes: off -0.412%/+0.259%, 2x
-0.295%/-0.339%, 4x about 0.000%/-1.213%. T-80 off is slower in all six pairs
(+0.601%/+0.735%). All eighteen comparisons finish; one Codex-load rejection
and its successful repeat are retained. The actual raster roots replace
24 mask/shift sites with 16 byte shuffles and change 16 conversions from unsigned
to signed, without proving native JIT costs. Source, recipes and all evidence
are published; D4/live/report remain unchanged. The next unbuilt hypothesis
examines consumed sampler channels rather than another shuffle/layout change.

The [current D4 hardware-counter diagnostic](../current-texture-access/README.md)
completes twelve quiet observations: two audits, both models, off/2x/4x.
BMW retires 409–411 / 498–499 / 566–567 million native instructions per frame;
all active hardware groups run without multiplexing. Raw thread identities,
event IDs, counts and task-clock boundaries are retained. Aggregate misses do
not isolate texture traffic or a hardware ceiling. The external collector,
fresh observation recipe and verifier are published; the renderer and accepted
benchmark timings stay unchanged.

The [fixed ordered packed-capacity trial](../ordered-packed-capacity/README.md)
is rejected. 64-KiB allocation buckets reduce unused reservation within the
unchanged shared 2-MiB vertex budget, but BMW gains do not reproduce across
MSAA modes: off -0.109%/-0.288%, 2x -0.734%/+0.771%, 4x +0.472%/-0.677%.
T-80 4x improves -1.575%/-2.119%, although its large packed allocation path is
unchanged; the cause is unproven. All 745 native + Bench 1, 25 sanitizer /
24 WASM and image/model/edge checks pass. After a test-only signedness fix,
native/sanitizer suites and the changed WASM fixture are checked again.
All 18 comparisons have passed quiet guards; the last needed a second attempt
because Codex CPU activity contaminated its first. Both attempts are retained.
D4/live and the compact benchmark report stay unchanged. The linked
[next-research note](../ordered-packed-capacity/next-research.md) examines exact
texture-block storage, pair-gather boundaries and lifetime requirements;
that texture candidate has not been built or measured.

The [early-packing uptake diagnostic](../prepack-uptake/README.md) measures the
rejected candidate rather than accepted D4. BMW has ten eligible/ordered packed
draws and 5,076,400 logical output bytes in every observed frame. About 7.00–7.09
draws adopt early storage, 2.91–3.00 refuse the occupied 2MiB budget, and
61.086–62.328% of logical output bytes move into the geometry stage. There are
no completed-ready discards or allocation failures. Reuse is rare: 7.00–7.08
new allocation calls, zero retained caller buffers and 0.00–0.02 idle borrows
per frame. Early preparation costs 0.086–0.098 caller wall ms/frame; late packing
remains 0.302–0.350 ms. These are instrumented scopes, not allocator-only CPU
time, physical traffic, saved time or proof of a ceiling. All 1200 frame
partitions and six first quiet guards pass, with full 745 native + Bench1,
25 sanitizer / 24 WASM and image/model/edge fidelity gates. Disabled worker,
JS and WASM match the rejected candidate exactly. D4/live and accepted FPS
remain unchanged. This diagnostic motivated the fixed-capacity-bucket trial
above, which did not demonstrate a reproducible BMW benefit.

The [geometry-slice vertex packing trial](../slice-vertex-packing/README.md) is
rejected. BMW audit directions disagree in every mode: off +0.628%/-0.580%,
2x +0.234%/-0.038%, 4x -0.980%/+0.708%. There is no reproducible BMW benefit;
T-80 controls are mixed. The candidate packs eligible vertices inside existing
geometry partitions in 128-item chunks, preserves full vertices and late
clipping, and transfers packed buffer ownership after the original join and
reservation. Early allocation never waits and shares the existing ordered
2MiB vertex budget; pending payloads remain immutable. All twenty library
objects are rebuilt, nineteen match D4 exactly. Final 745 native + Bench1,
25 sanitizer / 24 WASM contracts and all-mode image/model/edge gates pass;
all eighteen comparisons pass the unchanged quiet guard on their first attempt.
Fixture export and archival/resume script failures are retained with their
corrections. Complete source, producer identities, raw timings and independent
verification are published. D4/live and the accepted FPS report stay unchanged.
Before a direct packed-vertex architecture trial, measure actual early-packing
uptake and stage costs: these timings do not isolate budget misses, extra early
work or displacement of raster work.

The [current D4 caller/packing diagnostic](../current-producer-phases/README.md)
separates nine outer scopes and four disjoint submit subscopes across two quiet
all-mode audits. BMW replay is only 0.187–0.302 wall ms/frame; packing is
0.848–0.918 ms and index scanning 0.095–0.113 ms. Ten ordered draws pack
83,746 transformed vertices into 5,076,400 logical bytes in every observed BMW
frame; these packed draws have no clipped output. All eighteen counters match
at all 600 paired scene/mode/angle rows. Queue reservation costs 11.291–17.516
BMW wall ms/frame but includes caller raster helping and waiting. It is not
removable metadata time. Full fidelity gates and all six first quiet guards pass;
source, producer identities, 1200 raw frames and independent parent/nested time
checks are published. The disabled caller objects and JS/WASM match accepted D4
exactly. Numeric current phase rows replace older CPU observations in the compact
report; accepted FPS and the live renderer are unchanged. The geometry-slice
packing proposal is tested in the trial above and does not show a reproducible
BMW benefit. The diagnostic itself does not implement that proposal.

The [byte-group visibility selection trial](../visibility-byte-select/README.md)
is rejected. BMW off is slower in both audits (+1.096%/+1.367%) and all six
pairs. BMW 2x aggregates cost +2.220%/+1.531%, with four faster/two slower
pairs and two large slower observations; no uniform 2x regression is claimed.
BMW 4x small benefits (-0.217%/-0.357%) have three faster/three slower pairs
and do not justify the repeatable off cost. T-80 controls are mixed. Aligned
eight-record bitmap groups skip hidden groups, copy visible groups and select
mixed records with ascending ctz, preserving exact order and payload bits.
Full 745 native + Bench1, 25 sanitizer / 24 WASM contracts and all-mode
image/model/edge gates pass. All eighteen quiet guards pass on their first
attempt. Native/WASM initially passed different random fixture inputs because
C argument order is unspecified; explicit sequencing and repeated full gates
produce identical counts. Original receipts, the correction, complete source,
raw comparisons, actual opcode observations and portable verification are
published. The accepted D4 renderer and live preview remain unchanged.
The current D4 phase diagnostic above now separates replay and packing costs;
logical replay counts alone do not rank those costs.

The [current D4 cache-replay census](../replay-path-census/README.md) observes two
quiet guarded audits per scene/mode. Only 7.472% of BMW replay input off, 10.126%
at 2x and 9.543% at 4x uses complete-bin copies; the rest enters the captured
visibility filter. All matching-angle counter rows agree across both audits;
T-80 has no cache replays in its 600 observed frames. Source inspection confirms
that ordered/raw/packed publication already swaps bin ownership, so a second
publication copy does not exist. Borrowing cached data would need protection
against coverage compaction and entry replacement. The disabled diagnostic
worker object and JS/WASM match accepted D4 exactly. Full fidelity gates and
all six first quiet guards pass. Source, raw 1200 scene frames, the producer
routing correction and portable verification are public. These logical counts
and observer-affected outer times establish no FPS gain or ceiling. The byte-group trial above evaluates stable selection through aligned
eight-record bitmap groups without adding cache-borrowing lifetimes.

The [stable bulk prepared-bin trial](../bulk-prepared-bins/README.md) is rejected.
BMW paired frame time is slower in both audits of every mode: +1.197%/+0.731%
off, +1.347%/+1.144% at 2x and +0.271%/+0.813% at 4x; sixteen of eighteen
BMW pairs are slower. T-80 is slower off/4x and mixed at 2x. The candidate
counts bin-range endpoints, reserves each affected bin once and emits stable
records, stopping at GENERAL clipping barriers and retaining the missing-map
fallback. Native and WASM pass 6,600 independent interval/order/capacity cases
and 89,676 actual run calls, alongside full 745 native + Bench1, 25 sanitizer
and 24 WASM contracts, all-mode image/model comparisons and the edge oracle.
All eighteen paired comparisons pass the unchanged quiet guard on their first
attempt. Code, raw data, original recipes, the receipt-finalizer correction and
portable verification are public. The accepted D4 renderer and live preview
remain unchanged. This measures one combined implementation; it does not
isolate scan overhead or establish a hardware limit.

The [exact unsigned SIMD index scan](../simd-index-range/README.md) is retained as
module `d4dd244c`. BMW frame time improves -1.072%/-0.637% off, -0.931%/-1.241%
at 2x and -0.600%/-0.922% at 4x; all six off pairs and five of six pairs in
each MSAA mode are faster. T-80 improves in both audits of every mode, with
larger but variable gains. One Codex CPU-load window is discarded by the
unchanged guard; all nineteen attempts and eighteen valid comparisons are
retained. The scan dispatches once on BYTE/SHORT/INT and uses four exact
unsigned SIMD reduction chains, bounded loads and scalar tails. Both engines
pass 1,007,307 range cases, alongside the full fidelity gates; the fixture's
empty-span compiler warning and its isolated correction are documented.
Seventeen of eighteen inspected WASM roots remain byte-identical. Canonical
JS/WASM match the measured candidate, final native tests and both browser UI
gates pass, and the live preview serves the new version. Benchmark 4x audit
medians are BMW 30.33/30.49 FPS and T-80 70.21/68.54 FPS; these are milestones
within the open research goal. Code, raw data, recipes and portable verification
are public.

[Caller producer phases](../caller-producer-phases/README.md) separate nine scopes
and seventeen actual counters in two guarded audits per scene/mode. BMW scans
180,081 indices per frame in 1.0582–1.0749 ms; triangle emission takes
1.4894–2.0188 ms, with only 0.02–0.05 actual bin-growth allocations per frame
after warmup. Twenty-three of 46 parallel draws hit the geometry cache.
Stream submission includes caller raster helping and waiting, so its larger
wall time is not a removable metadata cost. Full fidelity gates and all six
first quiet guards pass; 1200 raw frames, reversible observer edits, source
patch, actual producer and an independent verifier are public. The accepted
WASM root contains no unsigned SIMD extrema opcodes of the six inspected lane
kinds; the initial disassembly-label mapping error and correction are retained.
The next trial will specialize the exact unsigned index scan for SIMD, before
attempting bulk or parallel bin assembly. These diagnostic times include
observer effects and do not establish an FPS gain. Production remains `7cc38593`.

The [adaptive geometry reservation trial](../geometry-claim-batches/README.md)
is rejected: no BMW mode improves in both audits. Off changes +0.331%/+0.015%,
2x +0.237%/-0.462%, and 4x +1.239%/+0.080%. T-80 controls are mixed. Reserving
1/2/4 existing 128-item slices per mutex leaves layouts, inner computation and
stage publication/join intact. Both engines pass 558 concurrent reservation
cases with 4,951,980 exactly-once marked items and 12,822 reservations versus
38,880 original slices; these are artificial properties, not model lock timings.
All full regressions and eighteen first quiet-guarded pairs pass. Source patch,
raw comparisons, unchanged-layout/lifecycle proof and portable verifier are
public. Production remains accepted `7cc38593`; neither fewer reservations nor
lower coordination counts establish faster frames.

The [four-tier queue priority trial](../queue-cost-priority/README.md) is rejected:
BMW off improves -0.518%/-0.127% with five of six pairs faster, but BMW 4x
costs +1.499%/+0.409% with five of six slower. BMW 2x and T-80 controls are
mixed. Choosing high triangle-count bins first preserves per-bin draw order;
its priority masks and larger queue layout are evaluated together. Both engines
pass 40960 actual scheduler cases, and full regressions plus all eighteen first
quiet-guarded pairs pass. Source patch, raw comparisons, original producer,
codegen inspection failure/correction and portable verifier are public.
Production remains accepted `7cc38593`; the small off gain does not justify
this MSAA cost.

[Caller polling intervals](../caller-wait-intervals/README.md) directly measure
seven polling sites in eight categories, using a private diagnostic module.
BMW explicit polling takes 2.243/1.979 ms per frame off, 0.968/0.963 ms at 2x,
and 1.074/1.069 ms at 4x in two audits. Most BMW wait time has no claimable
queue bin; T-80 mostly waits for async raster completion. All six first quiet
guards and complete fidelity gates pass. Raw 1200-frame observations, counts,
source patch, original producer recipes and a portable independent verifier
are public. These wall intervals include preemption and observer effects;
they do not establish removable frame cost or predict an FPS gain. Production
remains accepted `7cc38593`. The cost-priority trial above evaluates one packet-order hypothesis; its MSAA tradeoff is rejected.

[Scheduled CPU accounting](../current-7cc-cpu-accounting/README.md) observes the
unchanged `7cc38593` renderer in two guarded windows per scene/mode. BMW uses
3.119–3.300 scheduled cores, T-80 2.668–2.778. The dominant renderer leader is
nearly continuously scheduled; three active workers have closely matched CPU
costs and lower occupancy. This includes stalls and polling, not just useful
rendering. All twelve raw thread windows reproduce with matched births and no
missing tasks. Methods, both failed selections and the corrected Chromium
command matching are public; these diagnostics are not an acceptance speedup
or a hardware-ceiling estimate. The caller interval diagnostic above now separates its explicit polling sites.

The [immutable-bin common-store state trial](../bin-store-state/README.md) is
rejected: no BMW mode improves in both repeated audits. BMW frame time changes
-0.284%/+0.107% off, -1.119%/+0.804% at 2x, and +1.542%/-0.470% at 4x;
paired observations are mixed. T-80 2x improves -1.762%/-0.411% with five of
six faster pairs, a secondary signal that does not meet BMW priority. All
full regressions and eighteen valid paired comparisons pass. The complete
six-file patch, both corrected fixture versions, failed initial tooling attempt,
all nineteen guard attempts and portable verifier are public. Production
remains the accepted `7cc38593` renderer.

[Current 7cc profiles](../current-7cc-profiles/README.md) observe all three new
post-depth roots in actual BMW renders. Raster kernels remain prominent;
these profiles motivated the now-evaluated immutable draw/bin state trial.
All six first quiet-host guards pass. Raw profiles, exact map and independent
self-sample recomputation are published; these diagnostics do not establish an
additional speedup or quantify native hardware costs.

The [common post-depth store architecture](../post-depth-common-store/README.md)
is retained as module `7cc38593`: BMW off frame time falls by 5.131%/5.432%,
with all six pairs faster. BMW 2x changes -0.697%/-0.580% and 4x
-0.095%/-0.669%, each with five faster and one slower pair; these smaller
effects do not establish a strong all-mode gain. T-80 controls are mixed,
including 4x +0.564%/-0.053% with four of six pairs slower. Eligibility is
selected once per triangle, while supported blend stores consume already
tested depth masks. Exact blend arithmetic and general fallbacks are preserved.
All eighteen pairs pass their first guard attempts; expanded store oracles,
full regressions, both browser UI gates and canonical byte identity pass.
Raw measurements, an independent six-file patch and portable verifier are public.

[Fresh accepted-e7 profiles](../accepted-e7-profiles/README.md) cover BMW and
T-80 in all three modes with the unchanged production module. The BMW's
general fragment writers remain visible in every mode, motivating a guarded
post-depth blend-store trial. Raw profiles, exact symbol map, tool sources
and independently recomputed summaries are public; sampled cross-thread self
time is diagnostic evidence, not frame latency or a speedup claim.

The [per-pixel depth-bound trial](../off-pixel-bound/README.md) improves BMW
without MSAA by 0.970%/1.203%, with all six pairs faster, but is not retained:
BMW 4x costs 0.535%/0.894% (five of six pairs slower), and T-80 off costs
1.035%/2.760% (all six slower). It skips 2065.73 additional logical BMW off
replay visits per frame on average. Eighteen comparisons, full regressions,
an expanded 7680-case actual-render oracle, a rational rounding budget and
independent diagnostic/renderer patches are published. The portable verifier
recomputes paired audits and counter differences; production remains `e7ea52b2`.

[Conservative off-mode depth replay](../depth-replay-off-bound/README.md) is
retained with an explicit trade-off: BMW without MSAA takes 9.481%/9.064%
less frame time, with all six pairs faster; BMW 4x costs 1.640%/0.891%,
with all six pairs slower. BMW 2x is mixed; T-80 2x costs 0.265%/0.939%
with four of six pairs slower. Eighteen comparisons, nineteen quiet-guard
attempts, full regression/browser/canonical gates and a separate five-counter
consumption diagnostic are published. That trial's frozen module `e7ea52b2` is
byte-identical to the timed candidate. The portable verifier recomputes
all paired audits and checks every archived artifact hash.

The [off-capture dispatch trial](../off-capture-dispatch/README.md) is rejected:
BMW 2x frame time increases by 2.235%/0.371% (all six pairs slower), and 4x
by 1.007%/1.688% (five of six slower); off results are mixed. The ordinary
prepared root is 40 static WASM bytes smaller, while caller code grows and
all MSAA kernel bodies remain byte-identical. This is no renderer gain or
proof of a native-code cause. All eighteen paired records/guard attempts,
full gates, independent patch and codegen parser/results are public.

The preceding [two-sample transient depth replay](../depth-replay-two/README.md)
remains part of the renderer: BMW 2x frame time fell by 5.184%/4.718%
against its own `58132377` baseline, with all six pairs faster. Its full
measurements and gates remain available. Those historical gains are not
additional gains against the current off-trial reference `4d73c88f`.

Fresh profiles of the current renderer and a repeated logical-work census
for BMW/T-80 in all three MSAA modes are published in
[raster-work-census](../raster-work-census/README.md). Every counter and model
hash record reproduces byte-for-byte. These diagnostics motivate exact SIMD
coverage-edge recurrence; they establish no accepted performance gain.

The ensuing [coverage recurrence trial](../msaa-coverage-recurrence/README.md)
passes all regression gates but is rejected: BMW 2x frame time increases by
3.208%/1.637%, while 4x changes by +0.574%/-0.050% with three faster and three
slower pairs. All fifteen off/2x/4x comparisons and sixteen quiet-guard attempts
are published. Reducing broadcasts alone does not establish a renderer gain.

SoftGL's current objective is open, reproducible research into the fastest
practical OpenGL 1.5 implementation in WebAssembly. BMW F31 has priority;
T-80 is the second demanding reference. Image quality, prepared geometry and
OpenGL semantics remain fixed. FPS milestones guide comparisons rather than
define completion. Historical acceptance decisions below retain the criteria
that applied when those experiments were measured.

Research references include Intel's
[Masked Software Occlusion Culling implementation](https://github.com/GameTechDev/MaskedOcclusionCulling),
which separates coverage from depth and supplies SSE4.1 kernels; its 1/w depth
and default DirectX conventions require adaptation before any use in SoftGL.
[Laine and Karras, HPG 2011](https://research.nvidia.com/publication/2011-08_high-performance-software-rasterization-gpus)
study software rasterization with ordering constraints and MSAA on GPUs.
[Mesa LLVMpipe](https://docs.mesa3d.org/drivers/llvmpipe.html) uses LLVM-generated
CPU code. These are sources of hypotheses for conservative depth bounds,
staged raster work and state specialization. Their published performance
does not establish a speedup or hardware-limit percentage for this WASM renderer.

The renderer uses normal OpenGL 1.5 geometry. BMW simplification runs only in
`tools/pack_gltf.py`, targeting approximately 50,000 vertices. The runtime LOD
cache, Performance mode, preparation thread and their APIs were removed.



The two subsequent vertex-participation trials were not adopted. The first
regressed Shadow Volume by 6.07%/5.54%; the second was stopped when the requested
architecture changed to offline asset preparation.

Current offline preparation, correctness, appearance, browser and profile
artifacts are under `build/perf/tigerlake-20261003/`, with `offline-*` names.
`bench_report.md` contains only the current essential numbers.

For renderer optimization comparisons, freeze both modules and the same
prepared model pack under `build/controls/`. Run warmed fresh-browser AB/BA
pairs through `tools/wasm_quiet_audit.py` and `tools/wasm_perf.cjs --crossover`.
Retain raw samples, current module/pack hashes and quiet-host monitors. Test
BMW, Tank, DOT3/multiple-texture cases and the broader scene set; retain only
reproducible gains, reporting costs in other modes and scenes. A small T80 cost
may be accepted for a reproducible BMW gain under the user's current priority.
Native/Mesa and WASM
image tolerances must remain unchanged. Validate asset appearance separately
with `tools/wasm_model_check.cjs`; changing geometry is not renderer speedup.

Generic 2D texture addressing and exact empty pixel-center bounds are accepted
together. Two model audits, each aggregating three individually guarded complete
AB/BA crossover pairs, improved BMW by 4.76%/4.25%; Tank changed by +0.23%/+0.35%.
The guard remains unchanged at 0.10 foreign CPU cores. Both variants use the
approved `fae69ce4` model pack. All 719 native checks pass and all 239 WASM images
are byte-identical. Frozen builds and raw pair evidence use `empty-bounds-*`.

Caller participation in dense vertex jobs of at least 1,024 vertices is also
accepted. The caller fills a disjoint tail while the unchanged workers fill
the prefix. Two model audits improved BMW by 2.46%/2.35% and Tank by
5.47%/4.74% against the accepted texture/bounds version. Evidence is in
`dense-caller-*`; 719 native tests, 239 byte-identical WASM images, both browser
checks and two sanitizer checks pass. Current user priority is BMW and Tank;
slower trivial benchmarks are acceptable while image tolerances remain fixed.
The broader eleven-scene screen passes: changes range from -4.52% to +3.82%,
with Shadow Volume at +0.13%. Raw results are `dense-caller-broad-*.json`.

Optional 2x/4x MSAA is implemented with sample color, depth and stencil storage,
sample coverage controls and one color/texture evaluation per covered pixel.
The normal context still has no sample buffers. Validation: 723 native checks,
240 WASM/Mesa images (all previous 239 hashes unchanged), two sanitizer contracts,
eight WASM sample/worker configurations and both browsers. Raw evidence uses
`msaa-*`; frozen module `build/controls/msaa-candidate` is `bbc7aad1`.
Actual four-sample Mesa FBO comparisons exactly match triangle coverage,
blending, depth, stencil and disabled multisampling. The eight-scene diagnostic
also records differences with modern Mesa for circular point coverage,
two line-boundary pixels and alpha-to-one before alpha testing. The contracts
follow OpenGL 1.5 sections 3.3.3, 3.4.4 and 4.1.3; no image tolerances changed.

The quiet-host monitor now recognizes its ancestor Codex app server and that
server's daemon bookkeeping helper as session overhead, retaining their CPU
samples in the audit record. The foreign-load threshold stays at 0.10 cores;
compilers, other Codex CLI processes and unrelated workloads remain checked.
Earlier attempts rejected due to the app server remain in the raw evidence.

The combiner source-pointer experiment passed 719 native checks and all 239
WASM hashes, but was not adopted before the MSAA request. It removes source
copies and unused arguments without changing the float operation order.
The frozen build is `build/controls/combiner-pointer-candidate`; performance
validation remains pending.

Packed four-sample coverage/depth, common sample writes/blends and SIMD resolve
are accepted. Two audits, each three individually guarded warmed AB/BA pairs,
improved BMW by 14.14%/13.35% and Tank by 24.53%/21.30% against `bbc7aad1`.
The driver now accepts `--samples 0|2|4`; multisample timings resolve every frame.
Candidate `build/controls/msaa-packed-candidate` (`9dc975e0`) is live. Validation:
723 native checks, 240 unchanged WASM image hashes, 100 matching four-sample
model-frame hashes per vehicle (four representative frames byte-compared), eight
WASM sample/worker contracts, two sanitizer contracts and both browser previews.
All eight native MSAA diagnostic scenes remain byte-identical to the accepted
MSAA implementation; the pre-existing modern-Mesa differences remain recorded.
New contracts compare common sample writes with the ordered query path across
all depth comparisons, coverage masks and common blend modes, and check resolve
rounding/readback on an odd-sized framebuffer. No image tolerances changed.
The latest user targets are >60 FPS Tank and >30 FPS F31 **with 4x MSAA**; both remain
unmet. Current medians are BMW 127.03/127.22 ms and Tank 36.98/37.59 ms at 640x360.
Raw evidence: `build/perf/tigerlake-20261003/msaa-packed-*`.

Contiguous SIMD multisample clears are accepted against `9dc975e0`. Two
three-pair audits improved BMW by 8.92%/8.97% and Tank by 32.02%/28.93%.
Color channels, depth masks and partial stencil masks apply over each scissor
row; common clears use contiguous vector stores. Masked/scissored odd-sized
sample-buffer contracts were added. All 723 native checks, 240 unchanged WASM
images, 100 matching four-sample frame hashes per model, eight WASM contracts,
two sanitizer contracts and both browser previews pass. Current live module
is `3f078581`; current four-sample medians are BMW 115.85/115.87 ms and Tank
26.21/26.20 ms, including resolve every frame. Targets remain unmet.
Raw evidence uses `msaa-clear-*`. Accepted four-sample workload counters and
profiles are in `build/diagnostics/workload/result-msaa4.json` and
`build/perf/tigerlake-20261003/msaa-packed-profile*.json`. Sleep samples are
not CPU work; the measured clear hotspot motivated this change.

WASM opcode mapping trials (not adopted): explicit RGBA float bilinear SIMD
(`01e5f016`) passed 723 native checks, 240 identical WASM images and both
100-angle model hash comparisons. One quiet AB/BA screen showed BMW -1.46%
and Tank +9.05%; it did not establish a useful gain. Exact integer bilinear
using three signed i16 dot products (`9cdc926e`) passed 1,256,784 strict
comparisons, the same correctness gates and identical model images. Its one
quiet screen showed only about -0.6% Tank frame time. Both source changes were
restored, with candidates and raw `rgba-sampler-*`/`i16-bilinear-*` evidence
retained under `build/`.

Relaxed SIMD FMA and explicit four-component color/UV interpolation
(`11381f06`) were not adopted after repeated performance evaluation. Native SSE4.1
retains separate multiply/add; WASM uses relaxed FMA without global fast-math.
The candidate emits 17 relaxed SIMD multiply-add instruction sites and passes
723 native checks, all 240 unchanged-tolerance Mesa image comparisons, eight
WASM multisample contracts, two sanitizer contracts and both browser checks.
Of 100 angles per model, 65 BMW and 87 Tank frames remain byte-identical; four
changed views per model differ at only one or two pixels by one channel step.
Node 20 contracts require `--experimental-wasm-relaxed-simd`; both tested
browsers support the feature directly. A three-pair quiet audit found BMW +0.51% and Tank -0.26% frame time, so
the initial positive screen did not reproduce. The second audit was stopped
after this rejection. FMA remains explicitly allowed for future measured
optimizations. Evidence: `fma-interpolation-*`.

Current 4x-MSAA profiles (`msaa-clear-profile-bmw/tank-functions.json`)
identified main-thread active polling in worker synchronization: 38.3% of BMW
and 28.3% of Tank main-thread sample locations. These are sampled elapsed
locations, not exact CPU-cycle counts; sleeping worker samples are separate.
The caller now claims exclusive raster bins for every draw instead of only
batches with at least 4096 bin records. Draw order, state and query merging
remain unchanged. Candidate `1553d949` passed 723 native checks, 240 identical
WASM images, 100 identical model-angle hashes and four exact representative
frames per model, eight WASM sample contracts, two sanitizer contracts and
both browser checks (234 cases, six benches, cancellation, eight workers and
MSAA context switches). Two independent three-pair quiet audits showed BMW
-4.05%/-4.14% and Tank -2.15%/-2.76% frame time. Current live module is
`build/controls/caller-all-raster-candidate`; 4x-MSAA render+resolve is about
9 FPS BMW and 39 FPS Tank. Targets are still unmet. Evidence:
`build/perf/tigerlake-20261003/caller-all-raster-*`.

Prepared four-stage DOT3 chains are accepted against `1553d949`. Exact GL-state
classification replaces four general combiner calls with one inlined sequence;
all stage clamps and alpha operations remain, and other states use the general
combiner. Arbitrary constants and texture targets are supported; no material or
model identity enters classification. Profiles identified the general combiner
as a significant BMW hotspot. Two independent three-pair quiet audits found BMW
-9.26%/-8.92% frame time and Tank +1.07%/+0.11%, with no relevant repeated Tank
regression. Current four-sample render+resolve is about 10 FPS BMW and 39 FPS
Tank; both targets remain unmet. Candidate `fad35ca4` passes 724 native checks,
240 unchanged WASM image hashes, 100 identical model-angle hashes and four exact
frames per model, eight WASM multisample contracts, three sanitizer contracts
and both browser previews. The new differential contract checks 300,000 exact
float results against the original general combiner, including stage saturation,
alpha, out-of-range constants and ignored arguments, in strict native, native
Release and standard SIMD128 WASM builds. No tolerances or geometry changed.
Evidence: `build/perf/tigerlake-20261003/dot3-chain-*`; frozen module:
`build/controls/dot3-chain-candidate`.

Packed MSAA edge conversion is accepted against `fad35ca4`. After verifying pixel
coverage, a per-triangle bound proves that all sample edges fit signed 32 bits:
`area + 256*(abs(dx)+abs(dy)) <= INT32_MAX`. Four sample edges then use one native
WASM SIMD integer-to-float conversion instead of four scalar i64 conversions.
Large triangles retain the original i64 path. No coverage, barycentric grouping,
sample selection, depth or shading operations change. Two independent three-pair
quiet audits found BMW -1.14%/-0.84% and Tank -2.70%/-3.14% frame time. Current
4x-MSAA render+resolve is about 10.3 FPS BMW and 40.6–40.9 FPS Tank; targets remain
unmet. Candidate `90947461` passes 724 native checks, 240 identical WASM image
hashes, 100 identical model-angle hashes and four byte-compared frames per model,
eight WASM multisample contracts, three sanitizer contracts and both browser
previews. An additional million exact conversion comparisons pass on native and
WASM; 1,152 native scenes, including viewport sizes on both sides of the bound
and large viewports, match the prior sample-color, sample-depth and resolved
buffers byte for byte. Evidence: `build/perf/tigerlake-20261003/msaa-edge32-*`;
diagnostics: `build/diagnostics/msaa-edge32/`; frozen module:
`build/controls/msaa-edge32-candidate`.

The automatic WASM pool now reserves one reported logical CPU for the caller,
which participates in both vertex and raster work. Native sizing and explicit
worker counts remain unchanged; a one-CPU browser uses the serial renderer.
Current warmed profiles (`msaa-edge32-profile-*-functions.json`) located 23.6%
of BMW and 17.9% of Tank main-thread samples in active raster waiting. These are
sampled locations, not exact CPU-cycle counts. Candidate `5fd00d4f` is accepted
against `90947461`: two independent three-pair quiet audits found BMW
-2.32%/-3.49% and Tank -2.33%/-3.69% frame time, at about 10.5/42 FPS with 4x MSAA
and resolve each frame. The benchmark explicitly asserts and records three
candidate versus four reference workers through `--candidate-workers 3
--reference-workers 4`; without both expectations it still requires equal
worker counts. Negative checks confirm both mismatch guards reject bad counts.
Validation: 724 native checks, 240 unchanged-tolerance WASM/Mesa checks, eight
explicit MSAA contracts, three sanitizer contracts and both browser previews.
The previews still exercise all eight active workers, using nine reported CPUs
to fill the preloaded pool, including 234 cases, six benchmarks, cancellation
and sample-mode/context switches. Eighteen additional browser contracts verify
automatic pools for 1/2/4/8/9/16 reported CPUs with zero/two/four samples, coverage
and occlusion queries. All 100 four-sample angle hashes and four full byte frames
per model match the reference. Of 240 single-sample images, 213 hashes match;
27 change solely by one channel step because bin boundaries select different
scalar/SIMD rounding paths. The two changed single-sample Tank views each differ
at one pixel by one channel step. No image tolerances or geometry changed.
Evidence: `build/perf/tigerlake-20261003/caller-core-*` and
`build/diagnostics/caller-core-reservation/`; frozen module:
`build/controls/caller-core-candidate`.

Prepared constant one-texel 2D sampling is accepted against `5fd00d4f`. With
REPEAT/CLAMP_TO_EDGE and NEAREST/LINEAR magnification, a 1x1 texture has a
coordinate-independent color. A fresh per-draw cache skips UV interpolation,
wrapping and four equal bilinear taps. Other targets/wraps use the existing
sampler; no model or material identifiers select this path. Two independent
three-pair quiet audits found BMW -8.56%/-8.95% and Tank -1.42%/-0.30% frame
time. Current 4x-MSAA render+resolve is 11.29/11.42 FPS BMW and 41.37/41.40 FPS
Tank; targets remain unmet. Candidate `cd7998be` passes 725 native checks, all
240 byte-identical WASM images, 100 matching angle hashes and four byte-compared
frames per model, eight explicit sample/worker contracts, eighteen default-pool
contracts, four sanitizer contracts and both browser previews. An additional
131,072 comparisons per native/WASM match the original texture sampler exactly
(maximum delta zero), covering both filters, wraps, varied UVs and four colors;
upload/deletion and ineligible-state cases also pass. No image tolerances or
geometry changed. Evidence: `build/perf/tigerlake-20261003/constant-texture-*`,
`build/diagnostics/constant-texture/`; frozen module:
`build/controls/constant-texture-candidate`.

Four-pixel SIMD shading and fixed-count MSAA raster functions are accepted
against `cd7998be`. MSAA2 and MSAA4 compile the shared raster implementation
with constant sample counts; sample-count branches and loops can specialize
outside the pixel shader. A triangle-local queue batches four surviving pixels
for perspective-correct color/UV interpolation, 2D texture addressing/filtering
and complete DOT3 chains. SIMD lanes now represent separate pixels. Integer
bilinear filtering uses native signed-i16 dot instructions for four pixels'
tap/weight pairs; float multi-texture sampling preserves its original grouping
and every combiner-stage clamp. Cubemaps/1D/3D sample via existing scalar
functions with SIMD-interpolated coordinates. Remainders and unsupported GL
shader states retain the scalar path; all fragment tests/writes stay ordered.
The single-sample DOT3 path also uses the shared SIMD shader on existing quads.

Two independent three-pair quiet audits found BMW -10.37%/-9.46% and Tank
-14.49%/-14.67% frame time. Current 4x-MSAA render+resolve is 12.79/12.68 FPS BMW
and 48.98/49.20 FPS Tank; both targets remain unmet. A separate single guarded
no-MSAA AB/BA screen found BMW -0.85% and Tank +0.003%, at 56.84/14.32 ms. This
one screen establishes neither a substantial BMW no-MSAA gain nor 60 FPS.
A warmed no-MSAA profile locates ~19.06 ms/frame on the caller in index/draw
processing and cached primitive preparation. These are sampled function
locations, not CPU-cycle counts; reducing this serial work is a next priority.

Candidate `d02a6367` passes 726 native checks, 240 byte-identical WASM images,
100 matching angle hashes and four exact byte frames per model with BOTH 2x
and 4x MSAA, eight explicit sample/worker contracts, eighteen default-pool
contracts, five ASan/UBSan/leak contracts and both browser previews. Per native
strict-oracle/WASM, 331,447 texture comparisons and 128,054 complete shader
comparisons are bit-exact, including partial lane masks, non-power-of-two sizes,
wrap modes, constant textures, cube/1D/3D targets, alpha and saturated DOT3
stages. Native image tests still exercise the optimized production library;
the differential arithmetic contract compiles its scalar sampler oracle without
fast-math. The module emits 26 native WASM signed-i16 dot opcode sites.
Geometry, image tolerances and OpenGL state semantics are unchanged. Evidence:
`build/perf/tigerlake-20261003/pixel-packet-*`,
`build/diagnostics/pixel-packet/`; frozen module:
`build/controls/pixel-packet-candidate`. Private next-design files under
`build/diagnostics/parallel-triangle-prep/` are not implemented or accepted.

Historical publication scripts and bound receipts may still record the former
`experiments/README.md` path. Those archived files retain their original bytes;
they are not the current documentation entry point.
