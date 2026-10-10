# Packet depth intervals with lossless final sample reconstruction

Status: four native variants tested; no useful speed gain, no adoption.

Collect covered pixels of one opaque canonical triangle before depth evaluation, including non-adjacent pixels. Use four SIMD128 lanes for their conservative center-depth intervals. A full pixel whose upper bound is below the previous lower bound passes all four original samples; a lower bound beyond the previous upper bound rejects all four. Partial coverage, overlapping intervals and unsupported states retain original exact sample arithmetic. This reaches pixels that the adjacent-four-interior trial could not group.

For a definitely passing full pixel, retain its original triangle reference and center shading point. Store the conservative upper bound in the four physical depth slots, and reuse an otherwise unused compressed-winner slot for its lower bound. Hi-Z therefore continues to read conservative maxima. Materialize the original four distinct depths before partial/uncertain updates, masked/legacy raster reads, final grouping or ordinary framebuffer observation. Failure restores the original sample backup. No persistent buffer, geometry/texture reduction, sample-count change or frame history is added.

First validate the depth representation independently using full exact computation at every write, then introduce four-pixel interval classification. Final exported sample depths and coverage target exact parent equality. Provisional interval guards need independent numerical validation; finite empirical trials are not a universal proof. Native and WASM use SIMD128 only. Require a useful repeated all-four off/2×/4× native gain before sanitizer, actual WASM/browser and production adoption.

This is an own architecture proposal combining [uniform winner metadata](../scene-msaa-uniform-metadata/README.md), [original geometry/sample arithmetic and Hi-Z](../../libsoftgl/src/scene_visibility.c), [failed guarded sample-depth comparisons](../scene-msaa-guarded-depth-planes/README.md) and [the limited adjacent-pixel batch](../scene-msaa-four-pixel-interiors/README.md). The distinction is interval classification across covered pixels before full depth evaluation, followed by exact final reconstruction, rather than four approximate depths computed for every visited pixel.

## Native findings

Parent engine `52aff7bda7d29f5af511b2938b02647d4025e7c1`, Clang 22.1.8,
640×360, original four packs/cameras, four total threads, 60 warmup/30
orbit frames. Each timing is one complete quiet AB/BA screening block,
including every rejected attempt in its receipt. Frame-time changes:

| Variant | Bistro | Sponza | BMW | T-80 |
| --- | ---: | ---: | ---: | ---: |
| V2 covered-pixel packets | +12.39% | +28.90% | +13.33% | +11.79% |
| V3 restricted pending stores and cheaper reconstruction | +10.18% | +36.82% | +12.19% | +10.28% |
| V4 aligned int32 center packets | +8.52% | +41.42% | +9.84% | +10.67% |

V1 first validates only the pending representation with exact original depth
calculation on every write; it was not timed. V2 adds interval classification.
V3 creates pending pixels only when a packet actually skips exact evaluation;
temporary canonical triangle color-alpha slots hold vertex depths until the
later attribute phase overwrites them. Its reconstruction uses admitted
int32 sample edges. V4 replaces the general pixel packet with compact aligned
int32 centers and removes scalar int64-to-float gathers.

V1/V2/V3 each pass all 108 independent original-model views across off/2×/4×
and nine angles with byte-identical RGBA, depth, stencil, sample depth and
sample stencil. All four variants pass the unchanged measured-library
material-merge, canonical-position, mixed-state MSAA and serial/worker
coverage fixtures, including partial/alpha coverage and rollback followed
by a farther ordinary draw. V4 has exact endpoint planes for every accepted
timing observation; its full 108-view model sweep was not run after the
failed screen. Actual library/timed-driver ISA audits cover V2/V3/V4.

For each V2/V3/V4 frozen calculation, the numeric fixture extracts the actual
interval preparation and SIMD center/bounds expression. Four million valid
full-pixel intervals cover sixteen million original sample expressions,
near ties, finite normalized depths, signed zero and small/large integer
edges without a false pass/reject. The finite fixture is empirical evidence;
it does not establish a universal floating-point proof.

A diagnostic V3 BMW cycle profile attributes 18.27% of sampled user cycles
to the new packet capture, 1.66% to packet preparation and 2.53% to standalone
pending reconstruction. Remaining reconstruction also runs inside final
grouping. This identifies new overhead; profiler wall times are not FPS
acceptance measurements. All three timing screens regress BMW and Bistro,
so no sanitizer, actual WASM or browser adoption gate was run. Product engine
and preview retain the accepted parent behavior.

The closed archive retains complete frozen recipes, changed sources, raw
accepted/rejected timings, exact quality receipts, original contract fixtures,
actual arithmetic extraction and profile text, excluding generated binaries.
Verify with `python3 experiments/scene-msaa-packet-depth-bounds/verify.py`.
