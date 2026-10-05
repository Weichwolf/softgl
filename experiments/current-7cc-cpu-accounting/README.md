# Scheduled renderer CPU time, unchanged 7cc

Two guarded observations of BMW F31 and T-80 in every sample mode reproduce
scheduled CPU occupancy, using the unchanged accepted renderer. The dominant
renderer process leader occupies nearly a full core. Three active
`DedicatedWorker` threads have closely matched CPU costs: about 0.697–0.764
cores each for BMW, and 0.552–0.598 for T-80. This is an observation of scheduled
CPU time, including polling and stalls; it does not establish a renderer speedup,
a serial critical path or a percentage of the hardware maximum.

| Samples | Scene | Total scheduled cores, audit 1 / 2 | Dominant renderer leader, audit 1 / 2 |
| --- | --- | --- | --- |
| 0 | BMW F31 | 3.147616 / 3.118527 | 0.995460 / 0.996473 |
| 0 | T-80 | 2.686076 / 2.668386 | 0.999407 / 0.996269 |
| 2 | BMW F31 | 3.245300 / 3.258225 | 0.990297 / 0.996022 |
| 2 | T-80 | 2.767745 / 2.778212 | 0.996115 / 0.997726 |
| 4 | BMW F31 | 3.255194 / 3.299884 | 0.995201 / 0.994030 |
| 4 | T-80 | 2.736839 / 2.767019 | 0.997871 / 0.995610 |

## Measurement

Six Chromium windows, two audits each off/2x/4x, both models in each window,
640x360, three helpers plus caller, one round, 80 warm-up and 240 rotating
render/resolve frames per scene. The second audit reverses sample-mode order.
The interval includes warm-up, render/resolve and the control roundtrip; the
reported CPU figures are not the benchmark's timed-frame latency. Raw snapshots
cover only renderer processes owned by this observer, not unrelated Chromium
processes. Process and task birth identities match across both snapshots, with
no dropped/new tasks or read errors in all twelve recorded scene windows.

Task `utime+stime` counters use the observed 100Hz clock. Divide their increments
by 100 and the snapshot-midpoint wall interval to obtain scheduled cores. Raw
PID/task births, clocks, thread names and both counter readings are retained;
`analyze-accounting.py` independently recomputes every row, aggregate and group.
The observation scans take approximately 7–10ms around windows lasting several
seconds. Tick rounding, startup/control work and scheduled stalls remain part of
the scope. Thread names identify observed groups, not SoftGL worker indices.
Eight DedicatedWorker threads exist; three dominate the measured worker CPU.

The observer preserves the original page/render loop byte-for-byte and adds
host-side snapshots around its unchanged `perfRun` call. It adds no calls to the
rendered frame loop, does not rebuild or instrument the renderer, and uses no
CPU profiler. Accepted WASM fingerprint:
`7cc38593ef399417a3ab4497dae40a162f9ae9550ad2181140d5d0f3c8df3b77`.
Renderer commit: `23d18f4b43c8d40d578e825dc36f166f4433b5b3`.
All six valid diagnostic windows passed their first unchanged 0.10-core quiet
host guard. The driver session 94151 returned exit 0. These are diagnostics,
not paired acceptance comparisons. The guards do not prove Windows host idleness.

## Failure evidence and reproduction

The first two observer launches (34608 and 3162) exited 1 after rejecting zero
CPU tasks. The initial claim of overescaped regular expressions was incorrect:
the two observer scripts are byte-identical and correctly escaped. Live Chromium
inspection showed that `/proc/cmdline` was rewritten as one space-joined string;
matching a separate `--type=renderer` array element therefore failed. Selection
now matches the joined command. The unsupported assumption of exactly one owned
renderer was also removed. Both failures, raw outputs, guards, scripts and the
corrected diagnosis remain in `failed-overescaped-proc-parser` and
`failed-command-item-match`. No CPU conclusion is drawn from those zero-task runs.

`probe-observer.cjs` first validates the exact observer against an actual owned
Chromium renderer doing 300ms of JavaScript work. Its positive CPU-tick result is
a parser/counter check, not a SoftGL performance result. The controlled browser
probe and all diagnostic browsers close before subsequent comparisons.

To reproduce rendering, rebuild the accepted source and assets with the recorded
Emscripten 3.1.69 toolchain, place them at the frozen reference path recorded by
`run-accounting.py`, and copy the generation/runner scripts to a fresh directory
under `build/diagnostics/`. `create-observer.py` generates the isolated observer
from `tools/wasm_perf.cjs`; `run-accounting.py` supplies the project Node/cache
environment and retains every quiet-guard attempt. Running it creates a fresh
`runs/` directory. The original binaries/build directories are not published.
To check this archive without browsers, binaries or original absolute paths,
run `python3 verify_artifacts.py`; it verifies artifact/protocol identities,
reconstructs the unchanged original benchmark body and independently checks all
twelve raw CPU records. This establishes consistency of the archived evidence.

## Next hypothesis

Full main-thread occupancy can include waiting. The installed 3.1.69 futex source
and [Emscripten's pthread documentation](https://emscripten.org/docs/porting/pthreads.html#blocking-on-the-main-browser-thread)
confirm that the browser main thread cannot block in `Atomics.wait` and uses busy
waiting instead. SoftGL also polls explicitly while no queue bin is claimable and
at geometry/worker joins. Moving the unchanged module to a worker alone would
leave those explicit loops intact. The source identities and locations are
recorded in `runtime-source-identities.json`; the
[versioned futex implementation](https://github.com/emscripten-core/emscripten/blob/3.1.69/system/lib/pthread/emscripten_futex_wait.c)
provides the runtime context.

The next observation should measure actual caller wait intervals and counters
before changing their synchronization. A future caller may help when work is
claimable and block only when no useful work is available, with proven wakeup
ownership. No such renderer change is accepted or implemented by this diagnostic.
Any proposed change still needs repeated off/2x/4x comparisons and full regressions.
