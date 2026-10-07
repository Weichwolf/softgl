# Strict hierarchical rejection reused across material passes

The separate 4x capture root now distinguishes ordinary LESS rejection from
strict occlusion by every fully written 4x4 depth cell. Only a conservative
lower bound strictly greater than every cell maximum publishes a hidden bit.
A LESS rejection at equality remains an unsupported early return, so later
LEQUAL/EQUAL surfaces remain available. The existing 2e-6 bound, clamping,
finite-depth guards, stencil fallback, caller-owned publication tickets and
monotonic depth epochs are unchanged. The ordinary 2x/4x roots retain their
original depth predicate. No extra payload, coordinator or worker-bin growth.

A separate instrument of the new source reports BMW 38,482.09 skipped bin
references from 58,522.77 considered per frame (65.76%), versus 12,002.01
skipped in f58faf17. It observes 7.99 valid depth publications/frame; T80
still has zero capture publications and zero replay consumers. All 100 model
hashes and four raw frames per model match f58faf17. These are logical counts,
with perturbed scheduling, rather than cache/DRAM transactions or FPS evidence.

Two fresh guarded 4x audits, each three complete AB/BA pairs with 80 warm-up
and 100 measured frames per round, improve paired BMW time by 1.340% and
2.233%. All six independent BMW pairs improve. Candidate medians are
28.996 / 28.676 FPS, 34.487 / 34.872 ms. T80 remains at 67.679 / 67.089 FPS,
but paired time regresses 1.248% / 1.243%. Retained under the user's explicit
BMW priority. The BMW 30 FPS target remains unmet.

Fresh 2x audits give BMW 27.825 / 27.477 FPS with +0.338% / +1.958% paired
time, and T80 70.738 / 70.092 FPS with +1.565% / -1.656%. The off audit gives
BMW 33.559 FPS (+1.412%) and T80 87.997 FPS (-0.400%). These small regressions
are preserved in the report. All 15 pairs pass the local guard on attempt one;
no builds or profiles run during timing. The guard cannot prove that the
Windows host has no load. Changes use per-pair geometric crossover ratios,
not ratios of the pooled medians used for FPS. Viewer benchmarks performed
concurrently with correctness work establish UI behavior only, not performance.

Fresh gates: 741 native tests plus the single native benchmark; 21
ASan/UBSan/leak contracts; 240 WASM/Mesa comparisons; 234 exact control images
in each off/2x/4x mode; both models with 100 hashes and four raw frames per
mode. Renderer/queue/triangle/default-pool bundles pass 51/135/54/18; strict
clamp/sampler/shader/DOT3, additive writer, cube and scanline oracles pass
again. HZ passes 131,072 tracked writes, 1,048,576 numeric bounds and 1,536
exact HZ-on/off frame/query pairs on native/WASM/ASan, with additional strict
capture and clamped-equality assertions. Depth replay now tests both the
unaligned 47x31 fallback and fully written 128x32 HZ cells: 216 actual queued
state/sample-plane cases on each platform. Intrinsic-cache replay passes
84 cases per platform. Chromium and Firefox each pass 234 viewer tests,
18 sequential off/2x/4x benchmark rows, cancellation and MSAA switching.
One initial private HZ fixture used 48 pixels, whose 32 bins are unaligned;
it correctly failed the active-HZ assertion. The fixture was corrected to
128 pixels; its failed log remains saved. Existing unrelated display-list
sanitizer-build warnings and the post-success Firefox mozprofile destructor
message remain visible in logs.

Canonical JS/WASM match the timed frozen candidate byte-for-byte:
WASM 031038cfba1043eb5560de8016611b86910125ca8ffda4b78efa08536d95eddb.
Assets, vertex counts, texture/depth arithmetic and image tolerances are
unchanged. Evidence: build/diagnostics/depth-replay-hz/{validation.json,
publication-proof.json}, depth-replay-hz-consumption/, frozen controls, and
build/perf/tigerlake-20261004/depth-replay-hz{-ms0,-ms2}-audit-*.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
