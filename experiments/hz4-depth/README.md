# Hierarchical four-sample depth and retained MSAA functions (2026-10-04, accepted)

Four-sample rendering now rejects triangles whose entire clamped bounding box
is already hidden. Each 4x4-pixel cell tracks all 64 actual depth writes, the
maximum depth, and its sample index. LESS/LEQUAL writes rescan only when they
lower that maximum sample. A conservative vertex-depth lower bound includes
floating-point error and polygon offset; unsupported depth functions, incomplete
cells and stencil side effects retain normal rasterization. Nonmonotonic writes,
depth clears and direct DrawPixels/CopyPixels depth transfers invalidate affected
metadata. Queries retain their exact original sample counts.

Column-major metadata uses padded, cache-line-aligned planes, with complete
cells owned by one X-stripe worker. The optional table and its 64-byte header
share a 256KiB limit; 640x360 uses 235,584 bytes. Unsupported widths, allocation
failure, unaligned bin boundaries or larger tables fall back. The header prefixes
the four-sample color allocation and is shared by immutable draw snapshots;
framebuffer/context size and field offsets stay unchanged. Position/bin and
asynchronous geometry budgets remain 4MiB and 2MiB.

Initial implementations repeatedly slowed BMW without MSAA by about 2.5%.
Fresh byte-matched WASM profiling localized additional sampled work in the common
rasterizer. LLVM noinline alone did not preserve separate functions: Binaryen
inlined both sample loops again. The two MSAA functions are retained WASM module
roots, with native static noinline counterparts; no public GL API changes.
The common function shrinks from 65,988 to 21,065 encoded WASM bytes versus
the private unsplit hierarchy. These are code sizes, not native instructions or
cycle counts. Private rejected variants and byte-matched profile maps remain
under build/diagnostics/msaa-hierarchical-depth*.

Two independent three-pair quiet AB/BA audits against accepted 5f2835f4 give
BMW 19.15/19.13 FPS, frame time -9.09%/-9.12%; T80 55.23/55.37 FPS,
-2.27%/-2.27%. Every frame includes resolve, 640x360, three workers plus caller,
80 warm-up and 100 measured frames. All six retained pairs pass the activity
guard on their first attempt, without parallel tests/builds/profiling. Both FPS
targets remain unmet. Two independent three-pair no-MSAA readback audits give
BMW +0.83%/-0.66% and T80 -0.48%/+0.06%, with no reproducible regression.

Production WASM is byte-identical to measured 2a926624. Passes: 731 normal
native checks plus the Bench-only benchmark (732), eleven ASan/UBSan/leak
contracts, 240 unchanged-tolerance Mesa comparisons and 240 exact baseline
hashes, all 234 four-sample test images exact, both models at 0/2/4 with 100
hashes plus four raw frames per mode/model, 49 WASM contracts and 18 default
pool checks. Chromium and Firefox each pass 234 displayed tests, six benchmarks,
responsive cancellation, eight workers and sample switching. The new strict
hierarchy oracle covers 131,072 writes, 1,048,576 actual rejection predicates,
and 1,536 exact HZ-on/off sample/query frames with 1/3/8 workers, all depth
functions and relevant alpha/stencil/blend/scissor/mask/offset states. Geometry,
materials, image tolerances and framebuffer precision are unchanged.

Frozen module: build/controls/msaa-hierarchical-depth-kept-split-candidate.
Evidence: build/diagnostics/msaa-hierarchical-depth-kept-split/validation.json,
canonical-proof.json, map-proof.json, function-sizes.json and production logs;
build/perf/tigerlake-20261004/msaa-hierarchical-depth-kept-split-*. Earlier first
screens are preliminary; the independent multi-pair audits are acceptance data.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
