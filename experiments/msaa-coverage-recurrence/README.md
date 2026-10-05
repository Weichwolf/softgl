# Exact SIMD coverage-edge recurrence

Rejected. Production remains `ede8ee8`, WASM `58132377`.
Candidate WASM is `eeb749e4`; the patch, module/source identities, all fifteen
paired comparisons, every guard attempt and full regression evidence are
published here. The main research checkout during timing is `41174ff`.

The [current work census](../raster-work-census/README.md) observes approximately
1.60 million/1.48 million BMW row pixel candidates per 2x/4x frame, all in the
guarded signed-32 coverage path. Production forms three SIMD sample-edge
vectors by broadcasting scalar bases and adding fixed offsets for each pixel.
The trial initializes those vectors at each row's first candidate and advances
them with constant vector additions. It applies to 2x, ordinary 4x and capture
4x kernels; the off-mode source remains unchanged.

The existing rectangle proof bounds every final biased sample value. SIMD
addition wraps modulo 2^32, so recurrence reproduces each original sample sum
exactly, including intermediate wrapping. The final unused increment is never
interpreted as a signed coverage value. Existing i64 edge accumulators,
centroid selection, exceptional-range fallback, coefficient conversion and
floating-point grouping remain. This removes repeated broadcasts in the source
but adds row initialization and loop-carried vectors. It does not eliminate
the scalar edge updates or the remaining setup, depth and shader work.

Negative paired frame-time changes mean faster:

| Mode | BMW, % | T-80, % |
| --- | ---: | ---: |
| Off | -1.114 | +0.401 |
| 2x, audit 1 / 2 | +3.208 / +1.637 | -3.203 / -0.077 |
| 4x, audit 1 / 2 | +0.574 / -0.050 | +0.353 / +0.503 |

All six BMW 2x pairs are slower. Four-sample BMW splits three faster and three
slower; its faster pairs are only -0.026%, -0.176% and -0.050%. This does not
establish a reproducible BMW gain. T-80's two-sample benefit does not outweigh
the BMW regression under the project's scene priority. Off-mode observations
are controls; unchanged source does not establish an off-mode optimization or
statistical equivalence. No confirmation or threshold sweep follows this
rejection. The production renderer and `bench_report.md` remain unchanged.

Every audit comprises three fresh independently guarded AB/BA pairs, two
rounds per pair, 80 warm-up/100 measured frames, 640x360, three helpers plus
caller, and resolve/readback every frame. The reported audit changes are
medians of geometric per-pair frame-time ratios, not ratios of pooled medians.
Fifteen accepted comparisons require sixteen attempts. The first off-mode
pair's first attempt is discarded after the unchanged 0.10-core guard records
a foreign Codex process at 0.138 cores; its log and monitor remain published.
All other pairs pass on their first attempt. No builds, profilers or UI tests
run concurrently with these timings. Linux process checks do not prove
Windows-host idleness.

Fresh gates pass 743 native tests plus the benchmark, 23 ASan/UBSan/leak
contracts, 240 WASM/Mesa images, and 234 byte-exact control images in each
off/2x/4x mode. Both models match 100 dual integer hashes and four complete
RGBA frames per mode against `58132377`. All 22 additional standalone WASM
contracts pass, linked to the actual twenty production objects, with strict
sampler-producer replacements where the native fixtures require them. Existing
HZ, query, cache/epoch, worker, ordered queue and depth-replay contracts are
included. Prepared geometry, textures and tolerances do not change.

The actual production-flag rasterizer observer and independent strict i64
sample oracle report identical native/WASM results:

```text
4480 frames, 62251008 exact sample masks, 12431040 exact coefficient lanes
ordinary/capture reused=331735/323456
packed fallback=649/948 wide fallback=457591/439501 wrapped bases=0
```

All three four-sample arithmetic paths are observed in both kernel modes.
The observer is absent from the timed module. Forced capture in this fixture
tests arithmetic, not API capture eligibility. There are no observed wrapped
covered bases; the modulo proof does not replace that coverage limitation.
Browser UI checks and a normal production rebuild are not repeated for this
unretained trial; the accepted viewer remains served.

Static emitted WASM body sizes, bound to the exact modules and symbol maps:

| Root | Reference bytes | Candidate bytes |
| --- | ---: | ---: |
| 2x | 22,401 | 22,575 |
| 4x ordinary | 25,643 | 26,007 |
| 4x capture | 25,719 | 26,105 |

Both modules have 256 function imports. Absolute indices 417/420/421 map to
Binaryen defined-function labels 161/164/165. Complete disassemblies remain
under `build/diagnostics/msaa-coverage-recurrence/codegen`; their root hashes
and metadata are attached. These are static WASM sizes, not V8 native-code
sizes, dynamic instructions, cycles or register-spill evidence. More live
state, row setup or code layout could offset the saved broadcasts; the actual
cause of the regression is not established by these measurements.

`source.patch` applies independently to `41174ff` (renderer `ede8ee8`). Build
reference/candidate checkouts beneath `build/` with matching toolchain flags
and immutable model packs. The attached builder preserves the production
wrapper/test-object link order and emits the candidate symbol map. Its fixed
diagnostic paths are recorded explicitly; host/toolchain differences produce
their own module identities. Run correctness separately from timing, then:

```sh
NODE_PATH="$PWD/build/node/node_modules" \
TMPDIR="$PWD/build/tmp" XDG_CACHE_HOME="$PWD/build/browser-cache" \
python3 tools/wasm_research_compare.py \
    --reference build/research/reference/wasm-build \
    --candidate build/research/coverage-recurrence/wasm-build \
    --output-dir build/perf/reproduction --label coverage-recurrence
```

The native/ASan/WASM drivers, exact image/model checks and standalone contract
builder are included. Existing compiler and pthread/memory-growth warnings
remain visible in the logs. Two initial receipt-parser errors treated the
Mesa image array as a dictionary; aggregation was corrected to verify all
240 per-image `passed` values. They occurred after successful image gates
and did not alter renderer inputs, tolerances, tests or timing data.
`results.json` binds all artifacts, producer/fixture sources and raw pairs.
