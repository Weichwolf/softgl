# Two-sample hierarchical depth with static specialization

Retained for a reproducible 2x improvement. Reference renderer:
`1ae2abb219e1cd9f991c4945233541576d3a082a`, WASM
`f08378ee7640b80c020be43ac50bb816a853eca04c71b2567e4f421695b80898`.
Candidate WASM:
`902bcf8cdbde85fc1f8b172503c06f00090f8ebc423b2d1b8b186a1aa4d4b9af`.
The canonical CMake JS/WASM match the timed frozen candidate byte-for-byte.

The [shared-helper trial](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/hz2-basic/README.md) improves 2x but repeatedly
costs BMW time with 4x. This successor uses separate, statically selected
state, write and occlusion helpers. The 4x paths keep their constant 64-bit
coverage masks and four-sample indexing. Two-sample cells track 32 actual
sample writes, with two adjacent pixels per SIMD load during maximum refresh.
No sample values are duplicated to imitate 4x. The ordinary raster kernels
select their helpers at compile time; generic state dispatch remains outside
those loops for clears and control operations.

Fully written 4x4 cells use an actual maximum sample and the existing
conservative triangle-depth bound. Clears, depth pixel transfers,
nonmonotonic writes, partial cells and unsupported dimensions retain safe
fallbacks. Stencil effects prevent early rejection. The optional table keeps
the 256 KiB budget and exclusive cache-line-aligned worker columns. The
64-byte state prefix now applies to both multisample allocations; context
and vertex layouts remain unchanged. Depth capture/replay still uses 4x only.

Negative paired frame-time changes mean faster:

| Mode | BMW, % | T80, % |
| --- | ---: | ---: |
| Off | -0.589 | +1.478 |
| 2x, audit 1 / 2 | -9.843 / -10.789 | -6.047 / -5.034 |
| 4x, audit 1 / 2 | -0.153 / +0.227 | -1.224 / -0.028 |

All six BMW 2x pairs improve, with pooled-median candidate FPS
30.975 / 31.304. BMW 4x has three faster and three slower pairs, with
29.439 / 29.654 FPS. The measurements support retaining the large 2x gain;
they do not demonstrate a 4x speedup or establish statistical equivalence.
The T80 off cost is reported under BMW priority. Comparisons against the
same reference do not directly measure the difference between the two trials.

Each audit contains three fresh independently guarded AB/BA crossover pairs,
two rounds per pair, 80 warm-up/100 measured frames, 640x360, three helpers
plus caller and resolve/readback every frame. All fifteen pairs pass the
unchanged Linux guard on their first attempt. That guard cannot establish
Windows-host idleness. Paired changes use the median of per-pair geometric
ratios; FPS use pooled-median candidate frame time. Complete raw measurements,
guard decisions, source/module/asset identities and regression bindings are
published in `results.json`.

The production variant passes 742 native tests plus the benchmark,
22 ASan/UBSan/leak contracts, 240 WASM/Mesa comparisons and 234 exact control
images in each off/2x/4x mode. Both models match 100 hashes and four raw
frames per mode. Separate and combined native/WASM/ASan HZ contracts cover
131,072 randomized pixel-write calls, 1,048,576 numerical bounds and 1,536
exact color/depth/stencil sample-plane and query comparisons per sample
count, with 1/3/8 workers. The public combined contract additionally checks
allocation-prefix overflow for both sample counts on 32-bit WASM.
Geometry, textures, arithmetic rules and pixel tolerances remain unchanged.

Chromium and Firefox each pass 234 viewer tests, 18 sequential off/2x/4x
benchmark rows, cancellation, MSAA switching and the three-helper default
on nine reported CPUs. Those loaded UI timings are functional checks and
are excluded from performance evidence. Firefox's existing post-success
profile-cleanup message remains saved alongside its passed result.

The public contract is `tests/hierarchical_depth.c`. The source patch includes
it and applies independently to the reference commit. The measured private
renderer had the same production sources, with the old four-sample fixture
updated for the new two-sample table. The final expanded public fixture is
verified separately; it does not enter the viewer module. The measurement
driver’s checkout commit/diff fields describe the main checkout, while the
patch and production-source hashes identify the private candidate.

Build reference and candidate checkouts under `build/` with the same
toolchain, flags and prepared packs as described in the root README. Apply
`hz2-static.patch` to the reference source for the candidate, then run:

```sh
python3 tools/wasm_research_compare.py \
    --reference build/research/reference/wasm-build \
    --candidate build/research/hz2-static/wasm-build \
    --output-dir build/perf/reproduction --label hz2-static
```

Run full native/Mesa and WASM regressions separately from timing. Existing
display-list compiler warnings and Emscripten's pthread/memory-growth warning
remain visible in the logs. Host/toolchain differences may change identities
and timings.
