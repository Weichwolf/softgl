# Exact local MSAA raster/capture for small triangles

Status: accepted against `0c46e95`: repeated Bistro 4× frame time -3.89%,
FPS +4.05%; native and actual-WASM independent sample-plane controls exact.

The general four-sample kernel prepares int64 range proofs, arbitrary sample
controls, shading dispatch and wide-triangle row spans even for subpixel
geometry. A new admitted-scene path handles triangles whose original bounding
box spans at most eight pixels in each direction. All other triangles retain
the accepted general path. No geometry, samples or material tests are removed.

The small original box proves exact signed-32 edge arithmetic without general
rectangle range analysis. Preserve 16.8 positions, all four rotated samples,
top-left ownership, float depth expression grouping/clamping and GL_LESS. A
local inline copy of the existing capture callback retains captured alpha,
record allocation/rollback, selected shading point and real current-frame HZ
writes. Avoid extra packet arrays and their per-frame preparation/memory cost.

This is a distinct approach from the rejected full-precision
[triangle packets](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/scene-msaa-triangle-packets/README.md), which regressed
despite exact output. Native SIMD128 only; any adoption requires independent
sample-plane/image checks, actual fast/fallback dispatch, repeated all-four
OFF/2×/4× timing, sanitizer, WASM and browser validation.

Sources: [Pineda, SIGGRAPH 1988](https://doi.org/10.1145/54852.378457),
[A4 section 6](https://fileadmin.cs.lth.se/graphics/research/papers/2013/a4/a4.pdf),
[EDXRaster SSE MSAA kernel](https://github.com/behindthepixels/EDXRaster/blob/9e72ba5abdd07635f554fae14f3093bbe6aa954a/EDXRaster/Core/Rasterizer.h)
and the existing [general MSAA kernel](../../libsoftgl/src/raster_msaa_impl.h).
Upstream performance is not evidence for this prototype.

The first four-pixel screen gave Bistro OFF +0.14%, 2× +0.59%, 4× -1.76%
frame time. Eight pixels gave -3.75% in the first 4× screen and was selected
for full confirmation. The generator/CMake default remains four to reproduce
that first trial; explicitly configure `-DSOFTGL_SMALL_MSAA_EXTENT=8` for the
accepted variant. Production defaults to eight. Its compiled native archive
is byte-identical to the measured eight-pixel candidate despite that inactive
preprocessor-default difference.

Three quiet balanced AB/BA blocks for every asset/mode accepted 144 runs and
preserved eight rejected foreign-CPU attempts (limit 0.10 cores). Four total
threads, 640×360, identical packs/cameras, 60 warmup and 30 orbit frames, real
finish/readback included. Bistro 4× medians are 67.025→64.418 ms,
14.920→15.524 FPS. Every block improves: -3.53/-2.49/-4.89% mean frame time.

| Asset | OFF frame time change | 2× | 4× |
|---|---:|---:|---:|
| BMW | +1.13% | +0.47% | -0.65% |
| T-80 | -8.47% | -0.76% | +1.15% |
| Sponza | -2.33% | -1.19% | -0.53% |
| Bistro | -0.44% | -0.31% | **-3.89%** |

OFF/2× retain their algorithms, and the density hint keeps BMW/T-80/Sponza
MSAA on their existing forward path; do not attribute their fluctuations to
this kernel. Controls include larger outliers (T-80 OFF and one Sponza 4×
candidate run). The small T-80 4× measured cost is retained in the assessment;
the repeated complex-scene benefit takes priority. No GLimpSW parity,
double-digit gain or second Bistro doubling is claimed.

Validation: 216 original independent native hashes, 576 new independent
small/boundary/clipped/overlapping/large/alpha hashes, actual fast dispatch
(870 triangles, 7,116 tested pixels, 11,046 passing samples), tiny coverage,
mixed captured alpha, rollback and subsequent ordinary near-occluder draw.
All 108 model-view exported RGBA/depth/stencil/sample-depth/sample-stencil
hashes and 288 resident/fresh-context comparisons are exact. ASan/UBSan/leak
checks pass. The native archive has 65,461 XMM references and zero AVX/YMM/ZMM.
All 757 production CTests pass; the production archive exactly matches the
timed candidate (`ebbe3a36f9db6fc76e2c87699d7239c39cd66e98407a36627c138df66386f2eb`).

Actual WASM independently matches 216 original plus 576 new fixture hashes
on its own platform, including real fast dispatch and rollback/tiny-sample
controls. The production browser passes all 12 models/modes at a real 640×360
framebuffer, three helpers plus caller, zero JavaScript errors, isolated shared
memory and a peak heap of 2,844,917,760 bytes (2.65 GiB). The Bistro 4× screenshot
was inspected with no obvious missing major geometry or broken materials.
Browser timing under concurrent checks is not native performance evidence.
Built/copied/served WASM bytes match; live WASM SHA-256 is
`50093b5968ad988a08673b28a4f070547af02021bae9214dc2a68149f89b7567`.

Raw timing attempts, source/binary identity and validation receipts are kept
in [validation](validation/metadata.json). Only the new four-sample admitted
scene path is adopted; the rejected full-precision packet arrays are absent.
