# Share the exact hierarchical-depth refresh outside raster kernels

Status: exact native extraction rejected for adoption; no useful Bistro/BMW
screen gain and a slower Sponza screen. The production engine is unchanged.

Fresh accepted-parent CPU profiles put about 34% of BMW user-cycle samples
and 27% of Bistro samples in the specialized small/rebased MSAA kernels.
These are sampled CPU shares, not removable wall time. The
[packet-store scheduling trial](../scene-msaa-batched-hiz/README.md) did not
produce useful savings. The exact 4×4 maximum reducer is currently inlined
into several large kernels, duplicating its loads, comparisons and index
selection in their instruction streams.

Extract both 2× and 4× refresh bodies into one private implementation unit.
Keep the body text and its arithmetic unchanged, with the original inline
record/query logic calling these functions when a rescan is required. This
can reduce kernel code size, but calls and register spills may cost more than
they save; measure complete frames. No new bound representation, delayed
refresh, allocation, shader, asset, sample location or SIMD width is introduced.

Own code-layout proposal based on
[the original inline reducer](../../libsoftgl/src/raster_hz.h),
[the raster kernels](../../libsoftgl/src/scene_visibility.c) and
[the new actual-parent profiles](../scene-msaa-batched-hiz/README.md).
No upstream performance result is used.

Freeze accepted `52aff7b` with Clang 22 and explicit native SIMD128 flags.
Require unchanged material/position/MSAA/worker contracts, the unchanged
strict hierarchy fixture linked to the real measured library and ISA audit.
A useful quiet 640×360 four-scene screen needs repeated off/2×/4× AB/BA,
all-view quality, sanitizer, WASM and live-browser gates before adoption.

The extraction preserves both refresh bodies byte-for-byte after removing
the original `SG_INLINE` prefix. `verify.py` checks this against the archived
parent. Both library and measured driver pass actual no-AVX SIMD128 audits.
All four unchanged material/position/MSAA/worker contract families pass, as
does the unchanged strict hierarchy fixture linked to this measured library.
That fixture covers 131,072 writes, 1,048,576 numerical bounds and 1,536 exact
hierarchy-on/off frames and sample queries in each sample mode.

Native library text decreases from 597,259 to 576,684 bytes (20,575 bytes,
3.44%). The compiler also changes inlining decisions: the old separate small
and rebased kernels disappear as distinct symbols and are incorporated in
`sg_scene_visibility_triangle`. This is a combined code-layout consequence,
not an isolated measurement of call overhead or an FPS prediction.

One quiet balanced AB/BA screen uses both real original-model drivers
resident, 640×360, four total threads, 60 warmup and 30 rotating measured
frames. All accepted requests meet the existing foreign-CPU gate of 0.1
cores. A whole first T-80 block is rejected for load and retained; the retry
is complete. Negative time changes mean faster:

| Scene | Control ms | Shared refresh ms | Frame-time change |
| --- | ---: | ---: | ---: |
| Bistro | 48.290 | 48.123 | −0.34% |
| Sponza | 35.431 | 42.396 | +19.66% |
| BMW | 16.330 | 16.372 | +0.25% |
| T-80 | 11.659 | 11.360 | −2.56% |

All five endpoint-plane hashes match in every accepted condition. Large
Sponza and T-80 drift remains in the raw observations; the software load
gate cannot exclude hypervisor/frequency effects. No cause is assigned to
Sponza's full regression, and T-80's aggregate is not a confirmed gain.
The screens establish no useful improvement for the priority scenes. No
three-block repeat, off/2× timing, 108-view sweep, sanitizer, actual WASM
candidate test or browser deployment is claimed after this result.

`validation/` retains reconstructed sources/recipes, actual build/ISA
identities, raw timings, unchanged contract recipes/results and raw `nm`/`size`
diagnostics. `python3 experiments/scene-msaa-outlined-refresh/verify.py`
verifies their bindings. No experiment binary is committed.
