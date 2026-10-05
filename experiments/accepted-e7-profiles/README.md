# Fresh profiles of accepted e7 renderer

Six warmed diagnostics profile the unchanged production module `e7ea52b2`
from renderer commit `b07a4a1`, following the rejected per-pixel depth-bound
trial. BMW F31 and T-80 each run without MSAA and with 2x/4x MSAA at 640x360:
80 warm-up frames, then 240 rotating views, with resolve/readback every frame.
The caller and three helpers perform rendering; all nine CDP profiles are
preserved, including five unused prestarted pthreads. Chromium samples at
1000 microseconds. All six first quiet-host attempts pass the unchanged
0.10 foreign-core guard. The original profile driver completed with exit 0.

## Findings and next hypothesis

| Scene / mode | Capture raster root | Ordinary raster root | General writer |
| --- | ---: | ---: | ---: |
| BMW off | 27.828 | 17.019 | 7.174 |
| BMW 2x | 35.589 | 20.482 | 5.745 + 0.471 |
| BMW 4x | 40.224 | 23.158 | 8.116 |
| T-80 off | 0 | 14.561 | 0.043 |
| T-80 2x | 0 | 19.467 | 0 |
| T-80 4x | 0 | 21.151 | 0 |

Values are sampled self milliseconds divided by 240 frames and summed over
selected threads. They include inlined work, preemption and blocked locations;
they are neither frame latency, busy CPU time, cycles nor predicted savings.
For MSAA, the ordinary/capture roots exclude their prepared-entry wrapper;
2x writer shows both its specialized root and the generic dispatch root.
Sampling attribution does not provide exact per-stage cost. No fresh accepted
speedup or percentage of theoretical hardware capacity is established here.

Source inspection shows BMW uses opaque base passes, SRC_ALPHA/ONE additive
passes and SRC_ALPHA/ONE_MINUS_SRC_ALPHA transparent passes. Raster depth
filtering precedes the packet writer; blended fragments still enter general
fragment writers which recheck bounds, state and depth. Existing opaque MSAA
post-depth stores already bypass this dispatch. A new hypothesis is to extend
that architecture to supported blending and off-mode packets: select the
eligible state once per triangle, preserve the exact existing blend arithmetic
and conservative fallback guards, and consume already tested depth masks.
It must pass complete regression gates and repeated off/2x/4x comparisons;
this profile does not prove that a larger specialized path will run faster.
The cache-line/stripe alignment hypothesis remains unmeasured and secondary.

## Reproduction and verification

`run-profiles.py` drives `wasm_perf.cjs`, `wasm_quiet_audit.py` and
`wasm_profile_summary.py`. Their exact sources are archived. The symbol map
is from the exact e7 module and matches the accepted renderer experiment's
published map hash. Input identities bind modules, packs, tools and research
commit; generated modules and assets are not committed. Original absolute
local paths are preserved in the run recipes. Matching Emscripten/browser,
model packs, frozen e7 build and native CTest manifest are required to rerun.

Run `python3 experiments/accepted-e7-profiles/verify_artifacts.py` to verify
all artifact hashes and independently recompute per-thread and combined
self-sample summaries from raw profiles. This portable standard-library check
uses no browser, original paths or binary; it verifies recorded consistency,
not rendering correctness, native cycles or Windows-host idle conditions.
The previous accepted renderer's complete correctness evidence remains in
[depth-replay-off-bound](../depth-replay-off-bound/README.md). No renderer,
prepared geometry, live server or compact benchmark report is changed.
