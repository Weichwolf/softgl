# Two-sample transient depth capture and replay

Retained. BMW two-sample frame time decreases by 5.184%/4.718% in two
independent audits, with all six pairs faster. The reference is renderer
`ede8ee8`, WASM `58132377`; the candidate is WASM `4d73c88f`. The independent
six-file patch applies to research baseline `b80e10b`.

The existing four-sample architecture records strictly hidden geometry
references in an epoch-bound bitmap and avoids replaying them in subsequent
ordered material passes. This trial extends that architecture to two samples.
A separate static capture kernel shares ordinary two-sample coverage and
scalar depth arithmetic. For each covered sample it retains weak visibility
when the depth test passes or the computed depth is less than or equal to the
actual stored sample depth. A LESS equality failure therefore remains available
to a later LEQUAL/EQUAL pass. Only references with every covered sample strictly
hidden enter the bitmap. Existing conservative HZ rejection can supply the same
strict classification; weak HZ rejection cannot.

Capture eligibility, position keys, geometry stamps, flush epochs, publication
after joined jobs, ordered execution and existing capacity guards remain.
There are no new context/bin/framebuffer fields or cache budgets. Capture is
limited to the existing ordered multitexture queue with depth testing,
LESS/LEQUAL, no stencil and no polygon offset. Replay retains existing
LESS/LEQUAL/EQUAL guards. Ordinary off/four-sample raster arithmetic is
unchanged, although module layout and code generation can change. Geometry,
textures, float operation order, image tolerances and renderer semantics remain.

Negative paired frame-time changes mean faster:

| Mode | BMW, % | T-80, % |
| --- | ---: | ---: |
| Off | -1.479 | -0.553 |
| 2x, audit 1 / 2 | -5.184 / -4.718 | -0.783 / +1.895 |
| 4x, audit 1 / 2 | -0.170 / -1.339 | -0.136 / +0.170 |

BMW two-sample pair changes are -4.529%, -6.640%, -5.184%, -4.718%,
-4.751% and -4.476%. Candidate audit medians are 31.423/31.144 ms per frame,
including resolve/readback, or 31.824/32.109 FPS. Four-sample BMW has four
faster and two slower pairs, including a +2.356% cost; no reproducible
four-sample gain is claimed. T-80 does not consume this capture path and its
two-sample observations are mixed, including a +1.895% second audit cost.
The BMW priority justifies retention. Off/four-sample observations are controls,
not evidence of a newly optimized off path or statistical equivalence. Absolute
FPS across historical datasets does not establish a regression or improvement.

Each audit comprises three independently guarded fresh-browser AB/BA pairs,
two rounds per pair, 80 warm-up/100 measured rotating frames, 640x360, three
helpers plus caller and resolve/readback every frame. Reported changes are
medians of geometric per-pair frame-time ratios, not ratios of pooled medians.
All fifteen comparisons pass the unchanged 0.10-core foreign-load guard on
their first attempt. No builds, profilers or UI tests run concurrently with
timings. Linux process monitoring does not prove Windows-host idleness.
No additional confirmation or threshold sweep was needed for this consistent
two-sample result.

A separate untimed diagnostic replaces only the actual candidate's worker
object and adds caller-only counters at replay/publication, with no helper
writes, atomics or pixel instrumentation. Module `f652cee6` matches the
uninstrumented candidate's 100 dual hashes and four full RGBA frames for each
model in every mode. Per-frame mean observations:

| Mode / model | Eligible replay references | Skipped references | Publications | Captured hidden references |
| --- | ---: | ---: | ---: | ---: |
| BMW 2x | 54,799.09 | 37,601.59 | 7.99 | 37,601.59 |
| BMW 4x, existing path | 58,522.77 | 38,482.09 | 7.99 | 38,482.09 |
| Off / T-80, all modes | 0 | 0 | 0 | 0 |

These are reference visits across bins/material passes, not unique triangles,
pixels, memory transactions, instructions, saved cycles or predicted FPS.
They prove actual consumption but do not attribute the measured benefit to
one CPU stage. The new weak-visibility comparisons also have a cost. The
diagnostic is absent from the timed and canonical module.

Fresh correctness gates pass 743 native tests plus the benchmark, 23
ASan/UBSan/leak contracts, 240 WASM/Mesa images, and 234 byte-exact reference
images in each off/2x/4x mode. Both models match 100 dual hashes and four
complete RGBA frames per mode against `58132377`. All 22 standalone WASM
contracts pass with the actual twenty production objects and strict sampler
producer replacements where required by the corresponding native fixtures.
Existing HZ, worker, ordered queue, query, cache/epoch and replay checks remain.

The strengthened replay fixture requires actual filtering and restoration
after flush for both two and four samples. Its 216 queued API cases cover
color/depth/stencil/query results, two framebuffer sizes and 1/3/8 helpers.
A new actual-render classification oracle checks 8,192 cases per native/WASM
engine against ordinary LEQUAL and ALWAYS rendering with immutable sample
depth. It covers LESS/LEQUAL capture, enabled/disabled multisampling, thin,
empty, mixed and adjacent-float planes, and preserves 416 LESS ties per engine.
Native visible/empty/hidden distributions are 2496/768/832 in both modes;
WASM reports 2896/768/432 at 2x and 2912/768/416 at 4x. Each backend satisfies
its own actual-render oracle; distribution identity across production
compiler flags/backends is not claimed or explained by this experiment.
The existing four-sample observer also passes 4,480 frames, 62,251,008 exact
sample masks and 12,431,040 exact coefficient lanes.

The initial native full run fails only a legacy hierarchy assertion that
expects unsupported two-sample capture to return ordinary class -1. The new
oracle verifies intended strict class 2; the fixture now requires it in both
modes. Ordinary capture-disabled rejection stays -1, near-limit LESS ties
stay -1 and LEQUAL visibility stays 0. Failed logs and the old fixture are
archived; image tolerances are unchanged. The complete suite then passes.

Both Chromium and Firefox verify 234 displayed tests, 18 sequential benchmark
rows across six scenes/off/2x/4x, cancellation and MSAA switching. Nine reported
CPUs still produce three helpers plus caller. These loaded UI timings are
functional checks, not acceptance evidence. The first Chromium start served
a directory listing because the frozen timing root lacked UI files; that
setup failure is archived. Exact accepted UI/model assets were copied before
the complete retry. The normal canonical JS/WASM rebuild is byte-identical
to the timed module, and the normal public-source native build independently
passes all 743 tests plus the benchmark.

`results.json` binds producer/fixture sources, the patch, modules, all timing
pairs and guard attempts, complete gates and the consumption diagnostic.
Generated executables and model packs are not committed. Reproduce in
checkouts below `build/` with the documented matching compiler flags and
immutable model packs; different toolchains produce their own identities.
The attached historical drivers record their fixed build paths. Prepare the
candidate snapshot at `build/diagnostics/depth-replay-two/source-root`, including
the test pack assets, configure the normal WASM wrapper/test objects, then run
`build-wasm.py`. This preserves the wrapper/test-object response-file link
order. Run all correctness checks separately from measurement, freeze both
builds, and compare with the reusable driver:

```sh
NODE_PATH="$PWD/build/node/node_modules" \
TMPDIR="$PWD/build/tmp" XDG_CACHE_HOME="$PWD/build/browser-cache" \
python3 tools/wasm_research_compare.py \
    --reference build/research/reference/wasm-build \
    --candidate build/research/depth-replay-two/wasm-build \
    --output-dir build/perf/reproduction --label depth-replay-two
```

Existing pthread/memory-growth compiler warnings remain visible in logs.
This result improves one demonstrated workload/mode; it does not establish
an OpenGL-wide speedup, a hardware-limit percentage or completion of research.
