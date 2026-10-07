# SIMD two-sample resolve (2026-10-04)

The two-sample resolve now handles four pixels per iteration. Two 16-byte
loads contain their RGBA sample pairs; unsigned rounded byte averages and
shuffles produce four resolved pixels. Sample-zero depth/stencil readback
is unchanged, and remaining pixels use the existing scalar loop. Both native
SSE and WASM SIMD paths share this implementation. The actual WASM module
1fce9677 contains two native i8x16.avgr_u opcodes. No framebuffer representation,
sample locations, shading, coverage rules or sample writes change.

Two independent three-pair quiet 2x audits against 2da59ac9 give BMW
-7.70 / -8.60%, T80 -12.48 / -14.76%, and the lit icosphere
-56.77 / -54.62% frame time. Every pair improves all three scenes.
Candidate times are BMW 45.14 / 44.87ms, T80 17.03 / 16.88ms and
icosphere 2.10 / 2.23ms. A three-pair 4x control gives BMW -0.97% and
T80 -1.35%, at 22.52 / 61.17 FPS; this single series is regression control,
not proof of a new useful 4x gain. A no-MSAA/readback control gives BMW
+0.18% and T80 -1.15%, without repeated regressions. All twelve complete
AB/BA pairs pass the quiet guard on attempt one, using 640x360, three workers
plus caller, 80 warm-up and 100 measured frames per arm, resolve/readback
every frame. No builds, tests or profiles run during timings. BMW's 4x
30 FPS goal remains open, and other 2x scalar paths still need optimization.

The extended multisample contract checks all 65,536 byte pairs independently
in each RGBA channel, sample-zero depth/stencil and the scalar tail on an odd
31x23 framebuffer. Native and WASM pass with direct rendering and 1/3/8
workers, along with all existing 2x/4x coverage, state and query checks.
All 234 rendering cases are byte-identical to baseline for both 2x and 4x;
each model matches 100 hashes plus four raw frames in both modes.
Full regression/browser results and publication status are recorded in
`build/diagnostics/msaa2-resolve-simd/validation.json`. Raw timings:
`build/perf/tigerlake-20261004/msaa2-resolve-simd*-summary.json`.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
