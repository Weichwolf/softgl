# Finer MSAA bins (2026-10-03, accepted)

MSAA contexts use 32 independent X-range bins with the existing caller/worker
queue. At 640x360, each bin touches 225 KiB of sample color/depth instead of
~600 KiB with the default three-worker 12-bin layout. Framebuffer storage stays
unchanged; this describes the active regional set, not total resident memory.
More independent bins distribute narrow draws and keep active sample data
smaller. Single-sample contexts retain four bins per worker.

Two separate three-pair quiet AB/BA audits against geometry-cache `162bc25f`
confirm BMW -6.67%/-5.99%, at 14.84/14.85 FPS, and Tank
-3.16%/-3.42%, at 51.39/50.58 FPS with 4x render+resolve.
Both requested targets remain unmet. All six retained comparisons passed
the quiet-host guard; no build/test/profile ran during them.

The general 32-bin prototype was rejected after the 100-angle single-sample
Tank comparison detected a rare hash difference. The accepted change targets
MSAA storage, whose working set benefits from smaller regions, while keeping
the existing single-sample path. Candidate `fb8684b5` passes 727 native tests,
240 WASM/Mesa images (all byte-equal), 100 angle hashes and four exact frames
per model with EACH 0/2/4 mode, nine native/WASM geometry contracts, eight
explicit MSAA and eighteen default-pool contracts, six ASan/UBSan/leak checks,
and Chromium/Firefox previews with 234 tests, six benches, cancellation, eight
workers and sample-mode switching. Geometry, GL state semantics and image
tolerances are unchanged. Frozen build: `build/controls/fine-bins-scoped-candidate`;
evidence: `build/diagnostics/fine-bins/validation-scoped.json`,
`build/perf/tigerlake-20261003/fine-bins-scoped-*`.

Private, unaccepted trials: exact reciprocal-corrected MSAA row spans pass
a million native/WASM interval contracts and 100 model angles but one quiet
screen gives only BMW -0.52% and Tank -3.37%; not enough to adopt. Best-case
16-bit coordinate compression estimates BMW max screen displacement 0.00484
pixel with axis-scaled integers, versus 0.07831 with IEEE half; this is a
float64 projection diagnostic, not a renderer conformance/image/performance
result. No model/runtime precision or asset changes were made. A separate
private async-raster design considers bounded immutable draw snapshots to
overlap caller preparation with previous worker raster; it is unimplemented.
These files are under `build/diagnostics/msaa-row-spans/`, `geometry-i16/`,
and `async-raster/`; all stay unaccepted.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
