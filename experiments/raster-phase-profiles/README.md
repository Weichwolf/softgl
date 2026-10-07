# 2026-10-05: profile of byte-identical production and outlined phase state

A fresh link requests only a symbol map. Its WASM bytes exactly match accepted
`c4e565e0`; no profiling function boundaries or diagnostic counters are added.
CDP samples 300 rotating frames per model at 640x360, 4x MSAA, three helpers
plus caller, resolving/reading back each frame. All eight prestarted worker
profiles are retained; exactly three have rendering samples. Across the four
active contexts, BMW raster self samples total 22.220s, cube sampling 3.502s,
and the MSAA writer 2.378s; T80 raster samples total 6.433s. Self samples include
inlined code, waits and preemption, rather than measured CPU busy time or
acceptance frame timings.

Chromium 154 is separately forced to compile with TurboFan. Its packaged V8
prints code addresses/sizes but lacks instruction disassembly. The diagnostic
parent reads only the known executable byte range of the selected compiled
WASM function in its owned renderer; objdump decodes those saved bytes.

| 4x raster machine code | Accepted | Inline phase trial | Outlined phase trial |
| --- | --- | --- | --- |
| Instruction bytes | 121,512 | 130,776 | 122,072 |
| Initial native-stack reservation, bytes | 1,480 | 1,656 | 1,264 |
| Disassembly sites referencing RBP/RSP | 2,519 | 2,869 | 2,437 |
| 128-bit vector stack-move sites | 577 | 612 | 569 |

These are static code/disassembly quantities, including all branches; no
instruction-cache miss rate or dynamic spill traffic is measured. Forced
compilation is diagnostic and is not used during acceptance timing.

The new private phase revision outlines initialization and row bounds/update
into two retained used/noinline functions. Five SIMD values, three direction
signs and two bounds occupy one 112-byte transient, aligned state per triangle.
The pixel/shader loop carries its address. The same exact quotient identities,
whole-height guards and original i64 fallback remain. Width>=8 / area>=64
eligibility matches production. Moving the phase update before shading is safe
because no sample coverage, depth or color operation reads that state. Emitted
WAT confirms two initialization and two row-helper call sites (2x/4x).

| Outlined state, against accepted `c4e565e0` | Audit 1 | Audit 2 |
| --- | --- | --- |
| BMW frame-time change | +0.98% | +0.11% |
| BMW FPS | 27.05 | 26.96 |
| T80 frame-time change | -0.75% | -0.30% |
| T80 FPS | 67.00 | 66.81 |

Six quiet 4x AB/BA pairs follow the existing 80 warm-up / 100 measured-frame
protocol; all activity guards pass on attempt one. Five BMW pairs regress,
one improves. Smaller native-stack reservation and fewer disassembly stack
references do not yield a reproducible BMW gain, so this revision is rejected.
Off/2x timing and full retention gates do not follow the rejection.

Fresh native/WASM/ASan full-frame coverage oracles each pass 4,480 frames /
46,688,256 exact masks, with ASan/UBSan/leaks. WASM passes 51 renderer checks
and 135 queue hashes. Both models retain 100 exact rotating hashes and four
byte-identical frames at 4x. Production code and served assets remain unchanged.
Evidence: build/diagnostics/current-c4e565e-profile/{validation.json,summary.json,
machine-code-comparison.json,native-*.{json,bin,asm}} and
build/diagnostics/msaa-simd-span-outlined/{validation.json,experiment.patch,
phase-proof.md}; raw quiet arms under build/perf/tigerlake-20261004/.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
