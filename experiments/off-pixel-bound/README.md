# Conservative depth bound at each covered pixel

Not retained in production, despite a reproducible BMW off-mode improvement.
Against accepted `e7ea52b2`, BMW without MSAA takes **0.970% / 1.203%** less
frame time, with all six pairs faster. BMW 4x costs **0.535% / 0.894%**,
with five of six slower; T-80 off costs **1.035% / 2.760%**, all six slower.
The modest off gain does not justify these costs across the reference modes
and scenes. The current renderer stays e7. This is a useful algorithm result,
not a claim that the approach failed to improve any path.

## Algorithm and numerical argument

The preceding off replay renderer compares actual stored depth with
`min(vertex_depth)-2e-6`. On a slope, that global minimum can lie well below
the depth at the covered pixel and keep an otherwise hidden bin reference.
This variant reuses the **already computed packet pixel depth** zc and its
existing stored-depth load. It retains actual passing lanes and any lane
with `fl(zc-4e-6)<=stored`. Scalar/quad capture retains nonempty references.
Min-vertex setup disappears, while failed covered lanes can do more bound
work before weak visibility is established. Almost flat geometry can retain
more references under the larger margin; consumption gain is not guaranteed.

No rendering interpolation, precision, vertex count, texture, mask, tolerance
or OpenGL state semantics changes. The lower bound is unclamped. Supported
capture still requires finite vertex depths in [0,1], LESS/LEQUAL depth test,
no stencil/polygon offset/scissor; existing position/matrix/viewport keys,
monotonic depth epochs, storage revisions and ordered publication govern reuse
by later LESS/LEQUAL/EQUAL consumers. The existing reclaimed bitmap tail and
shared 4 MiB cache budget are used, with no new framebuffer/bin fields.

[conservative-pixel-bound.md](conservative-pixel-bound.md) derives the error
model. For covered nonoverflowing integer edges and round-to-nearest binary32
operations, one producer's coefficient/product/sum error is bounded by about
13.00000525 unit roundoffs. Retain the existing conservative 32u budget for
each producer; their difference plus one bound subtraction costs at most 65u.
The actual float32 `4e-6` constant is 67.10886383u. The bound therefore stays
below every supported consumer's depth, including ties and shader switches.
This is an argument under explicitly stated operation assumptions, supplemented
by actual-render oracles; it does not exhaust every compiler flag/input domain.

[rounding-budget.py](rounding-budget.py) checks the formulas using exact rational
arithmetic and the actual binary32 constant. Native assembly records show
CVTSI2SS/DIVSS at capture inverse-area setup. They do not measure cycles,
register spills or cache traffic. No rendering precision is reduced.

## Actual consumption, separate from timing

The diagnostic replaces only `workers.c.o` in the actual dacc production link;
remaining 19 production objects and wrapper/test objects are bound by hashes.
Five caller-only counters are read after joined resolves; no helper writes,
extra atomics or pixel-loop counters are introduced. Getter/counters are
absent from the timed module. Each model/mode uses 80 warm-up and 100 rotating
frames and retains 100 dual hashes plus four complete RGBA comparisons against
the uninstrumented candidate.

| BMW off, reference visits per frame | Accepted e7 | Candidate dacc |
| --- | ---: | ---: |
| Eligible replay visits | 35027.91 | 35027.91 |
| Skipped replay visits | 20463.80 | 22529.53 |
| Valid publications | 8.00 | 8.00 |
| Captured hidden visits | 20463.80 | 22529.53 |
| Intrinsic visits removed | 13745.40 | 13745.40 |

All 100 BMW off frames skip more visits: mean additional **2065.73**, range
1253 to 2621. Every counter in every frame matches the e7 diagnostic for
BMW 2x/4x and T-80 in all modes. T-80's first four counters remain zero,
but intrinsic means are 0.50 / 381.30 / 244.83 for off/2x/4x.
These are logical bin-reference visits, not unique triangles, pixels, memory
transactions, cache misses or saved cycles. Intrinsic and replay events must
not be summed into unique geometry. Reduced visits alone cannot predict FPS.

[consumption-comparison.json](consumption-comparison.json) binds and compares
every row; both [baseline records](baseline-consumption/) and
[candidate records/patch/link recipe](consumption/) are archived so the
portable verifier can reproduce this comparison without other packages.

## Predeclared complete measurements

Eighteen pairs: two audits in EACH off/2x/4x mode, declared before timing.
Each audit has three fresh-browser comparisons, each with two AB/BA rounds,
80 warm-up and 100 rotating measurement frames per model/variant. 640x360,
three helpers plus caller, Emscripten 3.1.69 and Chromium on the same
i5-1135G7 host. Resolve/readback occurs every frame. No builds, profiles or
UI gates ran concurrently. All 18 guard attempts passed first time at the
unchanged 0.10 foreign CPU core threshold; no attempts were discarded.
The Linux guard does not prove the Windows host was idle.

Changes are medians of three geometric paired time ratios, not ratios of
pooled medians. Negative means faster. FPS are 1000 divided by the median
raw candidate frame time; they do not estimate relative speedup.

| Scene | Samples | Audit 1 time change | Audit 2 time change | Faster / slower pairs | Candidate FPS, audits 1 / 2 |
| --- | --- | ---: | ---: | ---: | ---: |
| BMW | off | -0.970% | -1.203% | 6 / 0 | 35.80 / 35.81 |
| BMW | 2x | +0.581% | -0.710% | 3 / 3 | 31.71 / 32.08 |
| BMW | 4x | +0.535% | +0.894% | 1 / 5 | 28.52 / 28.57 |
| T-80 | off | +1.035% | +2.760% | 0 / 6 | 83.14 / 82.08 |
| T-80 | 2x | +0.978% | -2.661% | 3 / 3 | 69.98 / 72.09 |
| T-80 | 4x | +0.080% | -0.373% | 4 / 2 | 65.31 / 64.97 |

BMW off is a reproducible improvement. BMW 2x and T-80 MSAA controls are mixed.
BMW 4x and T-80 off costs are explicitly reported, not called mixed or hidden
by pooled averages. No conditional confirmation or parameter sweep was run.
The original timing process disappeared after all 18 records and the final
results were written; its tool session had expired when polled. Completion
was verified from the process absence, final driver output, all accepted
monitor records and the full results, without restarting the job.
All raw samples and guard output are in [timings/](timings/).

## Correctness and static codegen

- 743 native checks plus benchmark contract; 23 ASan/UBSan contracts with
  leak detection. Native suite 49.04 s; sanitizer suite 91.40 s. Those elapsed
  times are gate receipts, not performance comparisons.
- 240 WASM/Mesa image comparisons; 234 exact prior-renderer images separately
  in each of off/2x/4x modes.
- Both models in every mode: 100 dual hashes and four full frame comparisons
  match the accepted e7 reference exactly; prepared BMW pack `fae69ce4`.
- 22 standalone WASM contracts using actual production objects and strict
  sampler replacements where needed.
- Existing edge oracle: 4480 frames, 62251008 exact sample masks and 12431040
  exact coefficient lanes.
- Expanded off oracle: keeps all 4608 previous cases and adds 3072 cases with
  large raw-i64 edges/areas, slopes, stored planes obtained from actual
  packet/scalar/quad depth writes, one-ULP shifts and offsets around 4e-6.
  Actual LEQUAL/ALWAYS comparisons for all three consumers and immutable
  depth-plane checks pass all 7680 cases per native/WASM engine. Classes:
  6064 visible / 816 empty / 800 hidden; 424 LESS ties. Conservative hidden
  references retained: 1952 native, 1744 WASM; no cross-backend identity claim.
- Existing 8192 MSAA actual-render cases and 416 LESS ties per engine pass;
  each backend satisfies its own oracle despite differing class distributions.
- 348 actual queued API cases per engine compare complete color/depth/stencil/
  query planes against forced cache misses, including producer switches;
  actual filtering and post-flush restoration are required in all modes.

The off capture body shrinks from 22815 to 22603 static WASM bytes and loses
one f32 local. All seven other inspected roots are byte-identical: ordinary
prepared entry, four MSAA ordinary/capture roots, queued packed consumer and
packed drain. [inspect-codegen.py](inspect-codegen.py) and bound JSON/symbol
maps document this. Static identity does not prove V8 machine-code/address
identity or explain the MSAA/T-80 costs. No causal cache/spill claim is made.

Retention-only browser UI and normal canonical public-source rebuild gates
are not run for this rejected patch. The accepted e7 sources, canonical/live
module and compact benchmark report are unchanged; their earlier complete
gates remain [published](../depth-replay-off-bound/README.md).

## Reproduction

Research baseline `91d2897d8f42030e0176af689dacbdb1a082a90b`, renderer e7 from
`b07a4a1`. [source.patch](source.patch) independently reconstructs the two changed
files and is checked byte-for-byte. The manifest hashes every archived file,
including nested contract results, source/fixture bindings, formal math,
static codegen, diagnostics, raw measurements and all monitor attempts.
Generated binaries, objects, JS/WASM and model packs are not committed.

Reference WASM: `e7ea52b2583d0f66c98ad1fd4e1de8566bccd56beffb04443edce6c11a89595e`.
Candidate WASM: `dacc75f633e7fe7f65aa3a85a60f4bfa391e7974956340788c5886401e5741cc`.

Run `python3 experiments/off-pixel-bound/verify_artifacts.py` to check the
archive hashes, recompute every audit/counter comparison and verify the
rational budget and codegen bindings. This uses no browser, compiled renderer
or original absolute build paths; it checks archived consistency rather than
rerunning rendering or proving idle conditions.

Full reproduction recipes include [build-wasm.py](build-wasm.py),
[first-gates.py](first-gates.py), [run-gates.py](run-gates.py),
[finalize-gates.py](finalize-gates.py), [compare-off.py](compare-off.py) and
the subordinate/consumption drivers. They preserve original local build paths;
matching toolchain, assets, browsers and frozen modules are required. The
separate mathematical certificate explicitly records its assumptions.
The next work should test an independently justified architecture or numerical
refinement, preserving complete comparisons and reporting all mode costs.
