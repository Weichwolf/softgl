# Profiles after common post-depth stores

Six warmed diagnostics profile the accepted production module `7cc38593`
from renderer commit `23d18f4`. BMW F31 and T-80 each run without MSAA and
with 2x/4x at 640x360: 80 warm-up frames, then 240 rotating views and resolve/
readback every frame. Caller plus three helpers render; all nine CDP profiles
are preserved, including five unused prestarted pthreads. Sampling interval
is 1000 microseconds. Every first quiet-host attempt passes the unchanged
0.10 foreign-core guard; the original driver finished with exit 0.

## Current sampled locations

| Scene / mode | Capture root | Ordinary root | New post-depth root | General writer |
| --- | ---: | ---: | ---: | ---: |
| BMW off | 27.975 | 15.200 | 1.111 | 0.941 |
| BMW 2x | 34.414 | 20.009 | 1.748 | 2.307 + 0.146 |
| BMW 4x | 38.995 | 22.386 | 2.613 | 4.671 |
| T-80 off | 0 | 13.640 | 0 | 0.074 |
| T-80 2x | 0 | 16.807 | 0 | 0 |
| T-80 4x | 0 | 20.345 | 0 | 0 |

These are sampled self milliseconds per frame summed over selected threads,
including inlined work, preemption and blocked locations. They are not frame
latency, CPU busy time, hardware cycles, cache misses or saved cycles. For
MSAA, ordinary/capture roots exclude their prepared-entry wrapper; 2x general
writer shows its specialized root and generic dispatcher separately. A zero
means no sampled location here, not proof that the function was never called.

All three new post-depth roots are observed in actual BMW production renders.
The capture and ordinary raster kernels remain prominent. The accepted
[post-depth-store trial](../post-depth-common-store/README.md) supplies paired
performance evidence; these unpaired diagnostic runs establish no additional
speedup or hardware-ceiling percentage. Do not subtract these samples from
[earlier e7 profiles](../accepted-e7-profiles/README.md) to predict frame savings.

The next hypothesis is to cache common-store eligibility for an immutable
worker draw/bin, rather than reload alpha/stencil/blend/mask/query/sample state
per triangle. Source inspection shows exclusively claimed bins and immutable
snapshot state. Every new queued command must recompute eligibility from its
own snapshot; immediate and manually prepared paths need a fresh fallback.
Bin scratch may be reused only after completion. This is an unmeasured
architecture hypothesis, requiring actual state-transition oracles, complete
regressions and repeated off/2x/4x comparisons before adoption.

## Reproduction and verification

Exact profiling driver/tool sources, module symbol map, input identities,
raw records and all guard attempts are archived. The map matches the accepted
trial's exact 7cc map hash. Generated binaries and packs are not committed.
Original local paths are preserved: frozen 7cc build, matching assets/browser
and native CTest manifest are required to rerun `run-profiles.py`.

Run `python3 experiments/current-7cc-profiles/verify_artifacts.py` to verify
all artifact hashes and independently recompute per-thread/combined self
samples from raw profiles. This portable standard-library check needs no
browser, binaries or original paths; it checks recorded consistency, not
rendering correctness, native costs or Windows-host idleness. The production
renderer, live server and compact benchmark report are unchanged by profiling.
