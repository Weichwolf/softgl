# Current D4 renderer hardware counters

Twelve guarded observations of the unchanged accepted D4 module: two audits
of BMW and T-80 without MSAA and with 2x/4x. All quiet guards pass on attempt
one, with the unchanged .10-core foreign-load threshold. Every observation
retains its full renderer thread snapshot, raw event counts, event IDs,
enabled/running times and software task-clock readout. Exactly three
DedicatedWorker threads retire instructions in each interval. All active
hardware groups have running/enabled =1, so scaling leaves the counts unchanged.
This diagnostic makes no renderer change. process-completion.json records
terminal exit 0; observation-process.json preserves the historical launch marker.

## Results

Values below show audit 1 / audit 2. Each interval renders 240 rotating frames at
640x360 after 80 warmup frames, with three helpers plus caller and resolve/readback
per frame. Initialization, upload and warmup are outside the counter interval.
The observer also performs one ordinary benchmark before the separate warmed
hardware interval. Those single-run timings are not acceptance comparisons.

| Scene | Samples | Million native instructions/frame | IPC | Task-clock/render-window | L1D read misses/k instructions | General cache misses/k instructions |
|---|---|---|---|---|---|---|
| bmw | 0 | 409.214 / 410.792 | 2.265 / 2.284 | 3.207 / 3.163 | 4.357 / 4.334 | 1.060 / 1.060 |
| bmw | 2 | 497.759 / 498.900 | 2.263 / 2.291 | 3.331 / 3.315 | 4.521 / 4.501 | 1.106 / 1.093 |
| bmw | 4 | 566.462 / 566.830 | 2.303 / 2.313 | 3.319 / 3.306 | 4.597 / 4.569 | 1.172 / 1.167 |
| tank | 0 | 161.208 / 161.220 | 2.353 / 2.362 | 2.691 / 2.663 | 4.865 / 4.830 | 1.464 / 1.431 |
| tank | 2 | 195.630 / 195.742 | 2.361 / 2.348 | 2.804 / 2.737 | 4.967 / 4.980 | 1.535 / 1.537 |
| tank | 4 | 210.084 / 209.847 | 2.300 / 2.313 | 2.736 / 2.720 | 5.586 / 5.594 | 1.823 / 1.821 |

BMW native instruction totals reproduce within about 0.4% between audits:
409–411 million/frame without MSAA, 498–499 million at 2x, 566–567 million at 4x.
The thread task-clock/render-window ratios are about 3.16–3.33 for BMW and
2.66–2.80 for T-80. These are guest Linux scheduled task-clock equivalents
for the measured renderer snapshot, including browser and spin work. They
are not useful-core utilization, available cycles, freed capacity or a ceiling.
IPC is native retired instructions divided by measured user CPU cycles,
not FLOPS, WASM opcodes, SIMD lanes or a percentage of processor peak.

Misses per thousand instructions are normalization against instruction count,
not a cache miss rate: read-reference denominators were not collected.
The aggregate miss counters include textures, framebuffer, geometry, stacks
and renderer runtime traffic. They cannot isolate texture misses, assign
stall cycles, establish DRAM bandwidth or validate a tiled-storage speedup.
T-80 has more normalized misses despite shorter frames; cross-scene ratios
therefore do not identify a texture bottleneck. A future optimization should
have a distinct mechanism and its own all-mode paired acceptance evidence.

## Collector and boundaries

A Linux C helper uses perf_event_open on every pre-existing thread of Chromium
renderer processes proven to descend from the browser launched by this driver.
Five grouped events collect user CPU cycles, retired instructions, branch misses,
L1D read misses and general cache misses. Hardware kernel/hypervisor execution
is excluded. Events are reset and enabled after warmup; IDs map each returned
value to its requested event. A separate software TASK_CLOCK event records
thread CPU task time. Both event kinds request exclude_kernel/exclude_hv to
satisfy the current paranoid setting, but TASK_CLOCK must not be described as
exclusive user instruction time. Upstream Linux v6.18 updates it from scheduled
context time: [kernel implementation](https://github.com/torvalds/linux/blob/v6.18/kernel/events/core.c).
The raw observer's generic kernel-exclusion note applies to the hardware events;
this paragraph clarifies the software clock interpretation. General cache misses
are a platform-dependent event; the precise LL-read-miss request is unsupported
here. Event definitions and group read formats follow the
[Linux perf_event_open manual](https://man7.org/linux/man-pages/man2/perf_event_open.2.html).

After the render interval the helper disables counters and preserves every raw
row. Boundary handshakes, JS/V8/CDP activity and background renderer threads
are included when they run inside the external counter window. All visible
renderer thread birth identities match before and after. This does not rule
out transient threads born and gone entirely within that interval; other
browser process classes are outside the scope. Events and TASK_CLOCK have
slightly staggered enable/disable boundaries, recorded in raw nanoseconds.
Largest enable/disable spreads are 4.2582/5.8336 ms across all attached threads;
intervals span hundreds of frames. No synchronous in-fragment counters,
clocks, callbacks, runtime fields, extra renderer threads or code changes.

A 32-MiB stride 64 Python sanity check proves grouped open/reset/enable/read,
ID mapping and positive counts for instruction/miss events; it is an
availability/coexistence check, not a quantitative hardware oracle. Initial
LL-read-miss group setup fails with errno 6 before enabling any interval;
its source/logs remain under failed-ll-read-event/. An unbuilt task-clock
generator rejected an ambiguous printf pattern before writing source;
failed-task-clock-generator/ records it. Default kernel inclusion on the
software clock then fails with errno 13 in the selfcheck and browser setup,
before any renderer counter interval. failed-task-clock-permission/ retains
that actual attempt. The final flags and full grouped selfcheck pass.
Earlier valid five-event-only and final 12-frame BMW preflights are retained;
preflights are unguarded and excluded from the twelve observations.

## Fidelity and reproduction

The measured browser WASM is byte-identical to accepted D4. Current renderer
source and test hashes match its full fidelity receipts: 744 native + Bench 1,
24 sanitizer contracts, 23 WASM contracts, all-mode image/model checks and
MSAA edge oracles. baseline-fidelity.json binds those original full receipts
and unchanged live assets. No new renderer regression suite is run because
no source, module or flags changed. The external collector is tested by its
native selfcheck and actual browser preflights. This archive does not certify
all graphics behavior from hardware counts or replace future regression tests.

```sh
python3 experiments/current-texture-access/verify_artifacts.py
python3 experiments/current-texture-access/reproduce.py --work build/diagnostics/pmu-reproduction
```

The verifier checks retained evidence closure, reversible observer edits,
original full-renderer receipts and the linked accepted D4 archive,
every observation's scope, unchanged guard,
and all raw normalization arithmetic. It does not authenticate hardware counts,
rerun render tests or establish a performance ceiling. The fresh recipe
preparation was executed with --prepare-only: compilation,
JavaScript syntax checks and native PMU selfcheck passed. Its newly compiled
collector is byte-identical to the original measurement helper. recipe-check/
retains those actual receipts. The fresh twelve-browser-observation loop has
not been rerun; all twelve original observations, selfchecks and preflights
were executed. Reproduction needs Linux PMU
access, compatible event groups, C compiler, Playwright/Chromium, Emscripten,
the source benchmark's native catalog and a matching browser build/model packs.
Baseline defaults use local frozen D4; use arguments for another complete build.
Different kernels, paths, browsers and compilers alter identities/counter values.
All generated output remains under build/; binaries are excluded from publication.
