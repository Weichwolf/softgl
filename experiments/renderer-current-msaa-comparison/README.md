# Current complete-frame comparison with genuine MSAA

Status: completed native comparison of accepted `6e5ed5c`; no renderer change
or new optimization gain claimed.

Freeze accepted libsoftgl `6e5ed5c` (including the Sponza density hint) and
measure all four original packs/cameras at 640×360 with four total threads.
Compare native SIMD128 libsoftgl OFF/2×/4×, Mesa llvmpipe OFF/4× and GLimpSW OFF.
Probe true Mesa2 separately and include it only if the actual color/depth
renderbuffers and framebuffer all report exactly two samples. Requested two
samples rounded to four must not be mislabeled. GLimpSW has no native MSAA.

Keep the existing glTF exports and reference driver from the
[three-renderer provenance](../glimpsw-mesa-comparison/README.md). They are
derived from these same packs with exact geometry and documented texture and
PBR/quantized/cutout differences. This compares renderer implementations, not
identical shading pipelines. All models retain original prepared geometry and
texture dimensions. Imports/JIT warm-up are outside complete-frame timing;
clear, transforms, rasterization, shading, completion, resolve and observable
RGBA copy are included. Native and WASM libsoftgl use SIMD128 exclusively.

Rotate three forward/reverse blocks per model across all supported profiles.
Reject entire blocks with more than 0.1 foreign CPU cores. Record all raw,
accepted/rejected and source/binary/asset identities. This software gate
includes import and warm-up and does not detect hypervisor or frequency noise.
No compilation or correctness jobs overlap timing. No executable or image
files are added to git. This is measurement, not a production change.

Sources: our [original verified FBO comparison](../renderer-msaa4-comparison/README.md),
[accepted Sponza selection](../scene-msaa-density-hint/README.md) and original
reference adapters. The exact pinned GLimpSW revision and reference identities
are recorded in each receipt. Its OFF values are a separate target, never 4×.

## Completed measurements

The campaign retains 204 raw runs: 144 selected and 60 rejected. Each scene
has three rotated forward/reverse blocks and six selected runs per profile.
Timing jobs ran alone, with 60 warm-up and 30 timed rotating-view frames.
The rows below are medians of complete frame times, in milliseconds. Scene
order follows the current user priority, not a ranking of renderer costs.

| Scene | GLimpSW OFF | Mesa OFF | libsoftgl OFF | libsoftgl 2× | Mesa 4× | libsoftgl 4× |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| Bistro | 6.441 | 176.720 | 35.375 | 51.867 | 415.362 | 59.200 |
| Sponza | 3.866 | 67.555 | 22.849 | 39.226 | 167.883 | 39.987 |
| BMW F31 | 2.155 | 36.548 | 9.889 | 16.264 | 101.136 | 18.162 |
| T-80 | 1.881 | 30.462 | 6.751 | 13.060 | 74.087 | 14.715 |

With genuine 4× MSAA, libsoftgl is 7.02× Mesa's FPS in Bistro, 4.20× in
Sponza, 5.57× in BMW and 5.03× in T-80. OFF libsoftgl is 2.96–5.00× Mesa's
FPS, but still takes 3.59–5.91× GLimpSW's OFF time. libsoftgl4 takes
7.82–10.34× GLimpSW's OFF time. These comparisons establish the current large
remaining gap; they are not a claim of progress over the previous softgl build.
The individual raw ranges show host variation even when the software load
guard passes; use matched native AB/BA trials to accept future optimizations.

The Mesa capability probe reports actual color/depth/framebuffer counts:
requested OFF gives zero; requested 4× gives four with 1125 fractional triangle
edge pixels; requested 2× rounds to four. Consequently no Mesa2 timing is
present. Mesa is `25.0.7-2+deb13u1`, llvmpipe LLVM19.1.7 with its reported
256-bit width. The libsoftgl archive is byte-identical to production
`b36345fc1129012ee4b821712934e6e2c278b89e5682a2fb4b02e7d0960144b8`.
Its actual SIMD128/no-AVX audit passes. GLimpSW is the original pinned
`2f915606d50b70fef8859ef29adc9d53f9aee887` reference; source adapter, CMake
recipe and binary digests match the previously archived provenance exactly.

The full source/asset identities, actual sample-count output, original
reference adapters, build caches, selected/rejected runs and frame medians are
retained in `validation/`. Executables, exports, packs and images stay outside
git. This campaign does not rerun the prior native/WASM correctness suite:
production library sources and its live WASM are unchanged.

The acceptance priority is **Bistro > Sponza > BMW F31 > T-80**. Confirmed
complex-scene double-digit gains can justify roughly 2% BMW cost, rather than
being vetoed by a small control change. See the
[current agreement](../validation-protocol/README.md).
