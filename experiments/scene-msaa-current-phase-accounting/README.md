# Current SIMD128 production: joined scopes with OFF/2×/4×

Status: diagnostic completed against `c83e18f`; 360 measured frames across
all four models and three sample modes. All 12 final angle160 RGB images match
a separately compiled original production renderer byte-for-byte. No speedup
or production change is claimed.

Freeze the accepted C11/SIMD128 renderer and add monotonic caller clocks around
joined scene phases. Clock storage is caller TLS, preserving every context,
scene, bin, task and mesh layout. Clocks include callback execution and waits;
these are elapsed scopes, not CPU counters or independently removable costs.
Use the original packs/cameras, 640×360, caller plus three helpers, 60 warm-up
and 30 measured orbit frames. Readback/copy remain inside the complete frame.
Import, final image and JSON output are outside each measured frame timer.

The original density hint intentionally keeps BMW/T-80/Sponza forward with
MSAA; only Bistro uses deferred MSAA. For forward frames the joined scene
scopes are unavailable and the entire frame appears under `outsideScene`.
This is renderer work, not idle time or measured overhead. Do not force scene
capture merely to obtain a profile of a different pipeline.

| Model/mode | Mean complete frame ms | Position % | Triangle % | Visibility % | Shading % |
| --- | ---: | ---: | ---: | ---: | ---: |
| BMW OFF | 9.695 | 2.68 | 8.38 | 29.03 | 13.13 |
| T-80 OFF | 6.490 | 5.17 | 10.01 | 32.15 | 21.00 |
| Sponza OFF | 19.382 | 4.29 | 11.46 | 29.00 | 37.04 |
| Bistro OFF | 31.336 | 10.32 | 16.81 | 26.84 | 28.13 |
| Bistro 2× | 54.366 | 6.69 | 10.37 | 41.04 | 25.95 |
| Bistro 4× | 54.581 | 6.01 | 9.93 | 35.92 | 30.53 |

Remaining modes use forward rendering: BMW2/4 15.730/17.268 ms, T-802/4
12.761/13.959 ms, Sponza2/4 64.691/53.460 ms. Their forward subphases are not
separated by this diagnostic. These instrumented single-process values are
not three-renderer benchmark results or an AB/BA gain campaign.

Bistro4 visibility is 19.61 ms and shading 16.67 ms in the corrected profile;
position plus fine triangle setup totals about 8.70 ms. Removing only frontend
work therefore cannot plausibly double the frame rate in this measured
configuration. This is an inference from joined scopes, not proof against
all cluster architectures. The rejected
[lazy cluster implementations](../scene-lazy-cluster-frontend/README.md) saved
roughly half the fine input preparation but introduced projection/sharing
costs. Prioritize visibility and shading as well.

Another concrete follow-up is to remeasure the generic density heuristic:
Sponza remains on the old forward MSAA choice despite improvements to deferred
MSAA. Test a general threshold without asset names or altered inputs; see
[density hint trial](../scene-msaa-density-hint/README.md).

## Validation and observations

All measured processes observed less than 0.1 foreign CPU cores during the
whole process, including import and warm-up. This software observation does
not provide isolated measured-frame hardware counters. Native diagnostic
archive passes the actual no-AVX/YMM/ZMM audit. No sanitizer, WASM timing or
full production CTest claim is made for the added diagnostic clocks; the
production engine remains unchanged.

The first adapter incorrectly required every frame to produce a deferred
scene profile. It stopped on Sponza2 after four valid model/mode results. The
corrected driver reports whether scene capture actually occurred. A second
runner assumed every model had an explicit camera; T-80 uses the standard
default camera. Six valid Bistro/Sponza results were preserved, and only the
remaining BMW/T-80 modes were run with the corrected camera adapter. Both
failures and their exact harness sources are archived; no image threshold was
loosened and no renderer failure is inferred from those adapter mistakes.

The full current campaign consists of the six rows in `v2/summary.json` and
six rows in `v2-default-camera/summary.json`, with independent receipts and
runner hashes. `first-forward-adapter` remains historical and is excluded from
the current 360-frame totals. All 12 final original-renderer image comparisons
pass. Historical SIMD512 accounting under `scene-current-phase-accounting`
is not reused as evidence for current SIMD128 costs.

Sources: our [current scene renderer](../../libsoftgl/src/scene_visibility.c),
[geometry frontend](../../libsoftgl/src/geometry.inc),
[earlier joined-scope instrumentation](../scene-current-phase-accounting/README.md)
and original native resident/quality drivers. For a separate shading hypothesis,
[SIGGRAPH 2010 fragment merging](https://graphics.stanford.edu/papers/fragmerging/)
suggests sharing work across compatible adjacent triangles; our
[surface-merging census](../scene-msaa-surface-merge/README.md) is opportunity
counting, not an implemented shader or frame-rate result.

```sh
python3 experiments/scene-msaa-current-phase-accounting/prepare.py \
  --output-root build/scene-msaa-current-phase-accounting/reproduce
cmake -S experiments/scene-msaa-current-phase-accounting \
  -B build/scene-msaa-current-phase-accounting/reproduce/native \
  -DSCENE_TRIAL_ROOT="$PWD/build/scene-msaa-current-phase-accounting/reproduce" \
  -DCMAKE_C_COMPILER="$HOME/.local/bin/clang-22" -DCMAKE_BUILD_TYPE=Release
cmake --build build/scene-msaa-current-phase-accounting/reproduce/native -j4
python3 experiments/scene-msaa-current-phase-accounting/run.py \
  --root build/scene-msaa-current-phase-accounting/reproduce \
  --output tmp/scene-msaa-current-phase-accounting/reproduce
```

The original baseline binary argument may point to another frozen `c83e18f`
resident driver. Preserve the exact source/archive identity in its receipt.
