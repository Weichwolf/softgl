# Direct WASM pseudo-min/max clamps (2026-10-04, retained)

A named-function diagnostic linked from the accepted packed-draw objects shows
BMW sampled self wall time around 18.1ms/frame in the main MSAA raster loop
and 21.3–21.5ms in each active worker's loop. Cube sampling accounts for
2.6ms main and 3.1–3.4ms per worker. The three active workers have about
22–23ms/frame of sampled locations in timed waits; five unused pool workers
remain idle. These are location samples in a separate 160-frame warmed run,
not measured CPU cycles, cache traffic, acceptance timings or proof that
12.1ms in the main indexed-draw function is entirely geometry work. Evidence:
`build/diagnostics/accepted-packed-profile/bmw-functions.json`.

Emscripten 3.1.69 implements SSE min/max with compares and bitselects. The
WASM chain clamp now uses pmax(input, zero), then pmin(result, one) directly.
The first operand survives ties and unordered comparisons, preserving signed
zero and every NaN payload with the existing stage ordering. Native SSE4.1
is unchanged. A separately retained opaque test function actually emits both
instructions; an independent integer-bit oracle verifies 18,087,936 lanes,
including all signed NaN payloads, both infinities, small subnormals and zero/one
boundaries. Strict WASM sampler/shader/DOT3 comparisons pass 331,447/128,054/300,000.
The module has 118 additional pmin and 118 pmax sites, with fewer compares and
bitselects; whole-module opcode counts are not native instruction counts.

Two independent three-pair quiet four-sample audits give BMW -1.46%/-2.44%
frame time at 19.63/19.62 FPS. T80 results are mixed, +0.83%/-0.30%,
at 57.34/58.46 FPS, with no repeated regression. No-MSAA/readback audits
give BMW -0.14%/-0.08% and T80 +0.46%/-0.05%; these are effectively
neutral, not a demonstrated useful gain. All twelve complete AB/BA pairs pass
the activity guard on their first attempt. Each uses 640x360, three workers plus
caller, 80 warm-up and 100 measured frames per arm; four-sample frames resolve
every frame. No builds, tests or profiling run during retained measurements.

Acceptance: 734 native correctness/contract checks plus the benchmark;
14 ASan/UBSan/leak contracts; 240 unchanged-tolerance WASM/Mesa comparisons
and 240 images exact to b1f61553; all 234 four-sample tests exact; both models'
100 hashes plus four bytewise frames for each 0/2/4 samples; 51 worker/render
contracts, three direct numeric/shader contracts and 18 default-pool contracts;
Chromium and Firefox each run 234 tests, six benches, cancellation, eight
workers and MSAA switching. Canonical JS/WASM match the timed frozen candidate
byte for byte (532c4a5d). Geometry and image tolerances remain unchanged.
Both requested FPS targets remain unmet. Evidence:
`build/diagnostics/dot3-pseudo-clamp/validation.json` and corresponding
`build/perf/tigerlake-20261004/dot3-pseudo-clamp*-summary.json`.

Opcode semantics: [WebAssembly SIMD specification](https://github.com/WebAssembly/spec/blob/main/proposals/simd/SIMD.md).

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
