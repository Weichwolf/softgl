# Conservative depth replay without MSAA

Retained, with an explicit performance trade-off. Against accepted renderer
`a2ec6bb` / WASM `4d73c88f`, BMW frame time without MSAA falls by
**9.481% / 9.064%** across two predeclared audits; all six pairs are faster.
BMW with 4x MSAA costs **1.640% / 0.891%**, with all six pairs slower.
The strong off-mode gain is retained under the open-research objective;
the four-sample regression is a cost to investigate, not a claimed gain.
Two-sample BMW results and most T-80 controls are mixed.

## Hypothesis and implementation

An ordered multi-texture draw may visit geometry that previous draws have
already hidden. Off-mode capture now classifies those bin references using
actual existing packet early-depth loads and a conservative minimum-vertex
depth bound. It also enables existing intrinsic empty-coverage compaction
without MSAA. Capture and ordinary off-mode rasterization are compiled from
one shared header with a compile-time capture flag; ordinary off-mode code
contains no capture bookkeeping. The new capture root is kept separate and
is not inlined. The MSAA inner-loop arithmetic remains unchanged in source,
although common dispatch, module layout and generated code may change.

The bound is `min(vertex_depth) - 2e-6f`, without a depth clamp. It is used
only for finite vertex depths in [0,1], enabled LESS/LEQUAL depth testing,
without stencil or polygon offset. An actual passing pixel or a stored depth
at least as large as the bound keeps the reference. Quad and scalar capture
paths retain nonempty references. Later LESS/LEQUAL/EQUAL consumers may use
other shader paths. [conservative-bound.md](conservative-bound.md) states the
rounding assumptions and restrictions; actual-render oracles supplement this
argument. Unsupported states retain references.

Reuse still requires the existing position/matrix/viewport keys, monotonic
framebuffer depth epochs, storage revisions and ordered publication. The
bitmap occupies the reclaimed entry tail within the existing shared 4 MiB
budget. No framebuffer/context/bin fields, model vertices, textures, floating
precision, image tolerances or OpenGL state semantics were changed.

## Repeated measurements

640x360, three helpers plus the caller, Emscripten 3.1.69, Chromium on the
same i5-1135G7 host. Each fresh browser comparison runs two AB/BA rounds,
80 warm-up and 100 rotating measurement frames per model and variant,
including resolve/readback every frame. Audit changes are the median of
three geometric paired time ratios, not a ratio of pooled medians.
Negative changes mean less frame time. FPS are medians of raw candidate
frame-time samples converted as 1000/ms, not relative-gain estimates.

Two audits in **each** mode, eighteen pairs total, were declared before any
timing because off mode is the target. All eighteen comparisons completed
with nineteen guard attempts. Four-sample audit 1, pair 2, attempt 1 was
rejected: foreign PID 755 consumed 0.118261 cores, above the unchanged
0.10-core limit. Attempt 2 passed and is the accepted measurement. Rejected
attempt records and output are archived. The guard observes Linux activity;
it does not prove that the Windows host had no other load.

| Scene | Samples | Audit 1 time change | Audit 2 time change | Faster / slower pairs | Candidate FPS, audits 1 / 2 |
| --- | --- | ---: | ---: | ---: | ---: |
| BMW | off | -9.481% | -9.064% | 6 / 0 | 36.09 / 35.88 |
| BMW | 2x | +0.519% | -1.329% | 3 / 3 | 32.22 / 32.09 |
| BMW | 4x | +1.640% | +0.891% | 0 / 6 | 28.88 / 28.60 |
| T-80 | off | +0.630% | -0.329% | 2 / 4 | 83.77 / 83.88 |
| T-80 | 2x | +0.265% | +0.939% | 2 / 4 | 71.74 / 69.90 |
| T-80 | 4x | -0.668% | +0.317% | 3 / 3 | 65.94 / 65.88 |

No improvement is claimed for BMW 2x or T-80. In particular, T-80 2x has
positive audit medians in both audits and four slower pairs. All individual
pair samples and quiet-monitor attempts are in [timings/](timings/) and
embedded in [results.json](results.json).

## Actual consumption, separate from timing

The diagnostic replaces only `workers.c.o` in the actual candidate link.
Five caller-only counters are read after workers join; there are no helper
writes, extra atomics or pixel-loop counters. Its exported getter and counters
are absent from the timed module. Eighty warm-up and one hundred rotating
frames per model/mode retain one hundred dual hashes and four full RGBA
frame comparisons against the uninstrumented candidate.

| Scene / mode | Eligible replay visits | Skipped replay visits | Publications | Captured hidden visits | Intrinsic visits removed |
| --- | ---: | ---: | ---: | ---: | ---: |
| BMW off | 35027.91 | 20463.80 | 8.00 | 20463.80 | 13745.40 |
| BMW 2x | 54799.09 | 37601.59 | 7.99 | 37601.59 | 12976.02 |
| BMW 4x | 58522.77 | 38482.09 | 7.99 | 38482.09 | 9252.34 |
| T-80 off | 0 | 0 | 0 | 0 | 0.50 |
| T-80 2x | 0 | 0 | 0 | 0 | 381.30 |
| T-80 4x | 0 | 0 | 0 | 0 | 244.83 |

Values are means per frame. These are logical reference visits, not unique
primitives, pixel counts, memory transactions, cache misses or saved cycles.
Intrinsic compaction and replay skipping are separate event types; adding
them does not count unique geometry. See [consumption/](consumption/) for the
source patch, link/source/object hashes, drivers, full records and logs.

## Correctness and retention gates

- 743 native checks plus the benchmark contract; 23 ASan/UBSan contracts
  with leak detection.
- 240 WASM/Mesa image comparisons; 234 exact prior-renderer image comparisons
  separately without MSAA, with 2x and with 4x.
- Each model in each mode: 100 dual hashes and four full frames exactly match
  the accepted reference; the prepared BMW pack remains `fae69ce4`.
- 22 standalone WASM contracts using actual production objects, with strict
  sampler replacements where required.
- Existing edge oracle: 4480 frames, 62251008 exact sample masks and 12431040
  exact floating coefficient lanes.
- Off capture: 4608 cases per native/WASM engine against actual packet,
  scalar and quad LEQUAL/ALWAYS rendering; 232 LESS ties preserved. Classes
  are 3376 visible, 816 intrinsically empty and 416 hidden on both engines.
  Conservatively retained hidden cases differ: 416 native, 208 WASM.
- Existing MSAA capture: 8192 actual-render cases and 416 LESS ties per
  engine; backend class distributions differ, and each satisfies its own
  actual-render oracle. No cross-backend pixel/depth identity claim is made.
- 348 queued API cases per engine compare full color, depth, stencil and
  query planes against forced cache misses, including switching packet
  capture to untextured quad, single-texture LINEAR, generic combiner and
  scalar fog consumers. Actual filtering and post-flush restoration are
  required in off/2x/4x modes.
- Chromium and Firefox: 234 displayed tests, 18 benchmark rows spanning all
  modes, cancellation, MSAA switching, cross-origin isolation and three
  renderer helpers despite nine reported processors.
- The normal CMake JS/WASM rebuild is byte-identical to the timed candidate;
  native checks and benchmark contract are repeated from the public sources.

The first 4096-case off oracle passed all safety checks in WASM but failed
its observability assertion: no conservative hidden case happened to remain,
where native had 208. All original cases were kept; 512 explicit near-bound
and binary-tie cases were added. No renderer or image/classification tolerance
was changed. Initial logs, the initial fixture, probe and partial contract
results are archived in [failed-off-oracle-domain/](failed-off-oracle-domain/).
All full gates were rerun with the expanded fixture before timing.

## Reproduction and evidence

The research baseline is commit `a2ec6bb6b767221cc6d50afa588359d189e7c163`.
[source.patch](source.patch) independently reconstructs all five changed files,
including the new raster header, from that baseline. The manifest binds
production sources, fixtures, module identities, raw measurements, gate logs
and every archived file, including nested contract result manifests.
Generated executables, object files, JS/WASM and model packs are not committed.

Candidate WASM: `e7ea52b2583d0f66c98ad1fd4e1de8566bccd56beffb04443edce6c11a89595e`.
Reference WASM: `4d73c88f345856bf4a0c07ffca7ecffeb2485ff8dac84906405f68795ca22bd2`.
Diagnostic WASM: `9df8187b79c23abff911f43ad69af4a533fb2e9b62f3c203bf472fc4a8e9f2cc`.

Run `python3 experiments/depth-replay-off-bound/verify_artifacts.py` from a
checkout to check all archived hashes and recompute the paired summaries and
consumption counters. This portable verifier requires no browser or renderer;
it checks archived consistency, not a fresh rendering run or host-idle proof.

Full reproduction uses [build-wasm.py](build-wasm.py),
[run-gates.py](run-gates.py), [full-regressions.py](full-regressions.py),
[wasm-contracts.py](wasm-contracts.py), [compare-off.py](compare-off.py), the
browser and canonical gate drivers, and the consumption drivers. These are
archived execution recipes with the original local `build/` layout and paths;
recreating builds requires matching toolchain/assets/browser setup and frozen
baseline/candidate directories. Source and link identities are recorded so
other environments can distinguish algorithm results from changed inputs.

The next hypothesis is to reduce common dispatch/code-layout costs while
preserving the off gain and MSAA arithmetic. The current data do not identify
the cause of the 4x regression: no V8 native-code, register-spill or PMU cache
measurement has established one. Nor do these results establish a percentage
of a theoretical hardware limit or a fixed FPS completion criterion.
