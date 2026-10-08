# Full-precision SIMD128 triangle packets for MSAA

Status: first private native SIMD128 implementation against accepted `0c46e95`
rejected after screening: Bistro 2× +4.64%, 4× +9.09% frame time, exact output.

The accepted OFF pipeline prepares four triangles together in SoA packets.
The 2×/4× path disables quantized packets and reconstructs three vertices for
each triangle before entering the general raster setup. In Bistro 4×, the
joined raster/capture stage cost about 32.4 of 72.5 ms in the diagnostic before
the parallel grouping gain. That historical breakdown is not a new phase
measurement of the current 65.7 ms renderer.

Prepare full 16.8 fixed coordinates, reciprocal W/depth and screen bounds for
four triangles in SIMD128, then directly dispatch admitted MSAA triangles with
that setup. Precompute real sample-position edge offsets once per triangle,
while retaining the accepted hierarchy, top-left rule, alpha sampling and depth
arithmetic. Reuse setup across all bin references instead of repeatedly
converting coordinates and computing areas in generic entry points.

Guard integer products with explicit bounds; large or clipped uncertain
triangles retain the int64/general path. The prior
[exact scaled kernel](../scene-msaa-exact-kernel/README.md) accelerated inner
coverage but left much of this entry/setup intact and did not supply an
acceptable broad gain. Measure setup elimination separately from changed
coverage precision. Avoid a variant that merely adds a branch to ordinary MSAA.

Require independent full sample/resolved plane comparisons, forced large-range
and clipping fallbacks, native SIMD128 ISA audit, all-four OFF/2×/4× repeated
AB/BA, sanitizer and WASM/browser validation before adoption.

Sources: [A4 section 6](https://fileadmin.cs.lth.se/graphics/research/papers/2013/a4/a4.pdf),
[SimdRast packet setup](https://github.com/rasmusbarr/simdrast/blob/e6a2a07fa92e55ba11107915455685f8ef7cd60c/SimdRast/TriangleSetup.cpp),
[GLimpSW](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/README.md)
and our [accepted OFF packets](../scene-triangle-packets/README.md).
Upstream speed figures and wider SIMD are not our performance evidence.

The first implemented variant keeps a separate 304-byte/four-triangle full
16.8 packet; the OFF packet retains its original 160-byte format. SIMD128
prepares coordinates, depth/reciprocal W and bounds once per geometry task.
Signed 32×32→64 SIMD products compute exact areas for all four lanes, including
large areas above INT32_MAX. Bounded eligible coordinates make the differences
exact. Unproved coordinate ranges use the original general entry; degenerate
and offscreen bounds retain the original geometric decision.

Packets and capacity growth count against the existing 128 MiB geometry budget.
They are retained between frames and freed at context destruction. Allocation
failure triggers the existing full scene restore/replay. No geometry is removed
to fit the budget. Clipped triangles use the already computed clipping results.

Each bin clamps the cached bounds and directly calls an admitted-state MSAA
kernel with prepared integer coordinates and area. It preserves original
integer edges, all 2×/4× sample locations, depth expression order/clamping,
selected shading point, captured alpha state and current-frame hierarchy. The
ordinary MSAA entry/template remain byte-for-byte unchanged in source. This
combines setup reuse with the earlier admitted-state specialization; it does
not use the rejected compressed-edge recurrence.

Original canonical UVs and reciprocal W are retained. Fixed XY round-trips
through the capture callback exactly because eligible integers are below 2^24.
No attribute approximation or shader sharing is introduced. A separate fixture
checks 1–9 triangle tails, large int64 areas, reversed facing, perspective/near
clipping, cutout state and 1/3/8 helpers against an independent accepted library.
Forced guard fallback is a separately compiled, untimed control.

Validation receipts are in [validation](validation/metadata.json): 216 original
independent hashes, 216 large-area/clipped/tail hashes and 216 genuinely forced
fallback hashes match. All 108 model views match RGBA, depth, stencil and
sample depth/stencil exactly; 162 canonical position pairs and post-failure
near-occluder replay pass. Native ISA audit finds 63,597 XMM references and no
AVX/YMM/ZMM. No sanitizer, actual-WASM or browser adoption was run for this
rejected variant.

One balanced AB/BA block at 640×360, three helpers plus caller, 60 warmup and
30 orbit frames measured Bistro OFF 34.573→34.200 ms, 2× 55.501→58.078 ms and
4× 65.878→71.867 ms. Twelve runs were accepted, four earlier OFF runs rejected
for foreign CPU activity; every attempt remains in the screening receipt.
The unchanged OFF algorithm's -1.08% is a control fluctuation, not a gain.
This is rejection screening, not three-block acceptance evidence or an
attribution of the regression to a single component. Separate cached setup,
extra packet storage and admitted-state specialization before retrying.

The first timed source is preserved in `validation/source.patch` and its
per-file hashes. The generator gained an inactive FORCE_FALLBACK guard after
that freeze, used only by a fresh independent forced-control build. Production
and the served WASM remain on the accepted renderer.
