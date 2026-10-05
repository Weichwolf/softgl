# Current raster profiles and reproducible work counts

The production renderer is `ede8ee8`, WASM `58132377`. Six fresh profiles
cover BMW and T-80 with off/2x/4x MSAA. A separate instrumented module
(`ea2f8215`) counts logical raster work. No renderer optimization is accepted
by this experiment, and no percentage of the hardware ceiling is inferred.

Each profile follows 80 warm-up frames and records 240 rotating frames at
640x360, resolving/reading every frame, with 1 ms CDP sampling. All nine
thread profiles are preserved; the caller and three workers have observable
renderer work. All six unchanged 0.10-core quiet guards pass on attempt one.
The function map was emitted for the exact production module; byte identity
and the earlier emitted-map provenance are included. Setup, model loading,
hierarchy preparation and warm-up are excluded from the profiled interval.

Selected cross-thread sampled self milliseconds per frame:

| Model / MSAA | Main raster body | 2x body | 4x ordinary | 4x capture | Vertex processing | Coherent cube | Scalar cube | MSAA resolve |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| BMW / off | 56.094 | — | — | — | 4.578 | 6.709 | 0.356 | — |
| BMW / 2x | 5.375 | 62.211 | — | — | 4.580 | 3.706 | 3.892 | 1.010 |
| BMW / 4x | 4.468 | — | 24.473 | 44.719 | 4.546 | 4.626 | 4.172 | 1.094 |
| T-80 / off | 14.013 | — | — | — | 2.520 | — | — | — |
| T-80 / 2x | 1.128 | 17.949 | — | — | 2.424 | — | — | 0.895 |
| T-80 / 4x | 1.131 | — | 19.983 | — | 2.295 | — | — | 1.114 |

These samples include inlined work, preemption and blocked locations. Their
sums are not frame latency, CPU busy time, hardware cycles or cache misses.
The raster roots include setup, coverage, depth and inlined shading; this
table cannot isolate their individual costs. Waiting functions remain in the
complete summaries, rather than being counted as renderer arithmetic. The
single-variant timings collected before profiling are not acceptance pairs.
No comparison of these absolute samples with older profiles proves a speedup.

The census uses exclusively owned raster-bin rows, aligned to separate cache
lines; the caller has a separate row for synchronous fallback. Counters are
read only between completed framebuffer resolves. At 640 pixels and three
helpers, production uses 12 bins without MSAA and 32 with MSAA. The diagnostic
checks those actual boundaries before selecting a row. It changes no public
API or framebuffer/context layout, and replaces only the rasterizer object
in the production link. This additional code can change generated code and
scheduling, so its counts cannot establish baseline dynamic instruction
counts or elapsed stage costs. No instrumented timing is taken.

After 80 warm-up frames, each model is rendered at 100 angles spaced by
3.6 degrees. In **each of two runs**, both models match production in all
three modes: 100 dual integer hashes and four complete RGBA byte comparisons
per model/mode. Every counter and hash record, including each complete result
JSON, reproduces byte-for-byte in the second run. All per-frame conservation
assertions pass, including:

- Covered samples/pixels stay within the candidate counts.
- Passing samples/pixels stay within geometric coverage.
- Passing pixel requests equal four times full packets plus scalar tails and
  scalar inline requests.
- Four-sample coefficient reuse/packed/wide counts sum to covered pixels.
- Sample-kernel calls equal tile calls minus nonpositive-area and empty-box
  rejections; shader/store eligibility is counted after whole-triangle HZ.

Mean logical requests per frame, ordinary/capture groups combined:

| Model / MSAA | Sample-kernel calls | Whole-kernel HZ rejections | Row pixel candidates | Covered pixels | Passing pixels | Scalar tail pixels |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| BMW / 2x | 142,370.05 | 70,439.70 | 1,598,054.23 | 522,923.05 | 240,772.14 | 46,058.50 |
| BMW / 4x | 107,611.64 | 40,425.18 | 1,484,123.91 | 571,530.28 | 301,291.69 | 54,451.05 |
| T-80 / 2x | 28,092.16 | 10,781.55 | 427,477.87 | 184,563.00 | 116,662.64 | 15,506.52 |
| T-80 / 4x | 28,092.16 | 10,646.09 | 442,588.70 | 215,722.23 | 137,666.50 | 17,607.18 |

Counts include repeated primitive visits and overdraw; these are not unique
screen pixels or final fragment acceptance. `passingPixels` counts requests
after the rasterizer's early depth filter, before shader validity, alpha,
stencil, ordered late writes and other fragment operations. Full packets and
tails count shader requests, not guaranteed committed colors. Off-mode census
collects triangle entry/rejection counts only, not quad pixel work. Census
validation covers the model images and logical invariants, not a full
regression suite of the diagnostic module. The unchanged production module's
full correctness evidence is in [msaa-edge-reuse](../msaa-edge-reuse/README.md).

In the BMW observations, 67.278%/61.490% of 2x/4x row candidates have no
geometric coverage. Of the covered pixel visits, early depth completely
rejects 53.956%/47.283%. Scalar tails account for 19.129%/18.073% of passing
pixel requests. Every observed 2x/4x candidate uses the guarded 32-bit
coverage path; every covered four-sample pixel uses coverage-edge reuse.
The exceptional wide path remains necessary for other GL input ranges.

This changes the next experiment: exact SIMD coverage-edge recurrence can
replace three per-pixel scalar-to-vector broadcasts with vector additions,
using the existing rectangle range proof and modulo-2^32 arithmetic. Row
initialization, register pressure and retained i64 centroid edges may offset
the savings; only repeated paired timings can decide. The independent i64
sample/edge oracles and full regressions must still pass. Existing rejected
masked-tail shading and two-sample depth-SIMD trials are recorded in the
project experiment index and are not repeated solely because tails or depth
work are visible here.

An initial census run aborted in off mode because its diagnostic asserted
32 equal bins for every mode. Source inspection confirmed 12 off-mode bins
at three helpers; the mapping was corrected to check the actual boundaries.
The failed module/source identities, patch and logs remain in
`failed-off-bin-assumption/`. This was a diagnostic setup failure; it produced
no valid census or optimization result. The accepted renderer was unchanged.

Reproduce profiles from the repository root with a production build and its
own emitted symbol map (`--emit-symbol-map`). `NODE_PATH` must provide
Playwright and Chromium must be installed:

```sh
NODE_PATH="$PWD/build/node/node_modules" \
TMPDIR="$PWD/build/tmp" XDG_CACHE_HOME="$PWD/build/browser-cache" \
python3 experiments/raster-work-census/run-profiles.py \
    --wasm-build build/checks/msaa-wasm \
    --symbols build/checks/msaa-wasm/softgl.js.symbols \
    --output-dir build/diagnostics/reproduced-raster-profiles
```

Regenerate a published summary with the exact `58132377` module and the
relocated raw profile:

```sh
python3 tools/wasm_profile_summary.py \
    --result experiments/raster-work-census/profiles/bmw4.json \
    --profile experiments/raster-work-census/profiles/bmw4.attempt-1.pending.profiles.json \
    --wasm build/controls/msaa-edge-reuse-candidate/softgl.wasm \
    --symbols experiments/raster-work-census/baseline.symbols \
    --output build/diagnostics/reproduced-bmw4-summary.json
```

For the census, prepare an isolated source copy of `ede8ee8` under
`build/diagnostics/raster-work-census/source-root`, apply `diagnostic.patch`
there, and retain a normal production build with its objects and link response
file under `build/checks/msaa-wasm`. Freeze that production JS/WASM in
`build/controls/msaa-edge-reuse-candidate`. Then run:

```sh
python3 experiments/raster-work-census/build-wasm.py
NODE_PATH="$PWD/build/node/node_modules" node \
    experiments/raster-work-census/model-census.cjs \
    build/diagnostics/raster-work-census 0 \
    build/controls/msaa-edge-reuse-candidate
```

Use modes 2 and 4 with separate outputs as the supplied `run-census.py` does.
That runner expects `model-census.cjs` copied into the diagnostic directory;
`recheck.py` repeats it without changing the module and verifies every record.
Writable Emscripten cache variables and link/object/source hashes are recorded
in `build-wasm.py` and `build.json`. These drivers are fixed to this diagnostic
layout and four execution contexts. Different toolchains produce their own
module identities; the attached symbol maps apply only to the recorded
modules. Generated binaries remain under `build/`. `results.json` binds all
published artifacts and the production source files.
