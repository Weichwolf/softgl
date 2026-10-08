# Genuine 4× MSAA comparison at 640×360

User requirement (2026-10-08): compare BMW, T-80, Sponza and Bistro with 4×
MSAA in all three renderers if supported, and make libsoftgl with MSAA approach
GLimpSW performance. Native libsoftgl and WASM remain SIMD128 only. No native
rendering above 640×360, no supersampling substitute, same prepared assets,
cameras and configured four-thread budget. The optimization objective remains
open; this experiment first establishes a reproducible MSAA baseline.

## Supported paths

The inspected GLimpSW revision `2f915606d50b70fef8859ef29adc9d53f9aee887`
implements a single visibility/depth value per screen pixel and has no MSAA
raster/resolve path or sample-count setting. `ShadowMap::SampleCount` concerns
shadow filtering, not framebuffer multisampling. Therefore its OFF result is
an explicitly different reference; a genuine three-way 4× comparison is
unavailable without implementing MSAA in GLimpSW. No GLimpSW source is changed.

OSMesa's default framebuffer is single-sample. The new comparison helper
allocates a same-size 4× RGBA8 renderbuffer and 4× depth24/stencil8 renderbuffer,
checks complete FBO status and verifies `GL_SAMPLES=4`, `GL_SAMPLE_BUFFERS=1`
and both attachment sample counts. All GL model calls are unchanged. Each
frame includes multisample color resolve by framebuffer blit, completion and
the same observable row-major RGBA copy as the old Mesa benchmark. Allocation
occurs before timing. OFF retains the original default-buffer path.

The probe renders one subpixel triangle at 640×360: OFF has zero fractional
edge pixels, 4× has 1,125. A BMW OFF smoke image is byte-identical to the old
Mesa executable. Sample positions queried from Mesa are (3/8,1/8), (7/8,3/8),
(1/8,5/8), (5/8,7/8). This is genuine multisampling at the requested resolution.

Libsoftgl uses the accepted production packet renderer (library/wrapper source
identical to `8085056`), including its existing multisample fallback. Its
scene-wide deferred visibility state gate currently rejects any MSAA context;
the recent OFF packet/meshlet gains therefore do not accelerate MSAA geometry
or visibility. Raster MSAA already shares shading across covered samples of
one triangle/pixel, so repeating “shade once per pixel” alone is not a new
optimization. A promising separate experiment is deferred per-sample visibility
with shading grouped by winning primitive/material and explicit edge handling.
It must preserve sample coverage, depth, cutouts and blending, and bound WASM
memory; no performance benefit is established yet.

## Reproduce

```sh
cmake -S experiments/renderer-msaa4-comparison -B build/renderer-msaa4-comparison \
  -DCMAKE_C_COMPILER="$HOME/.local/bin/clang-22" -DCMAKE_BUILD_TYPE=Release
cmake --build build/renderer-msaa4-comparison -j4
build/renderer-msaa4-comparison/mesa_probe
python3 experiments/renderer-msaa4-comparison/compare.py \
  --output tmp/renderer-msaa4-comparison/current-808
```

Five profiles (GLimpSW OFF, Mesa OFF, libsoftgl OFF, Mesa 4×, libsoftgl 4×)
run in rotated forward/reverse blocks, with three balanced blocks per asset,
60 warmup frames and 30 measured orbit frames per process. Entire noisy blocks
are retained and repeated if monitored foreign process CPU exceeds 0.1 core.
Imports/preparation and warmup are excluded; all per-frame work and resolve
are included. Reference lighting/material behavior already differs, as described
in the [common-asset experiment](../glimpsw-mesa-comparison/README.md).

120 accepted timing requests, 20 rejected requests retained (two noisy Sponza
blocks). Six accepted timings per profile/asset. Same-resolution 4× attachment
and framebuffer verification passes for every Mesa 4× request. The output contact
sheet for all four assets/five profiles was inspected; GLimpSW's lighting/cutout
differences remain visible. These are not identical-image renderer ratios.

Median complete-frame milliseconds:

| Asset | GLimpSW OFF | Mesa OFF | libsoftgl OFF | Mesa 4× | libsoftgl 4× | libsoftgl 4× / OFF |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| BMW | 2.158 | 37.075 | 10.538 | 102.217 | 18.159 | 1.72× |
| T-80 | 1.786 | 30.736 | 7.022 | 75.159 | 14.857 | 2.12× |
| Sponza | 4.055 | 69.408 | 24.327 | 169.780 | 59.450 | 2.44× |
| Bistro | 5.989 | 169.228 | 36.211 | 402.116 | 126.087 | 3.48× |

Libsoftgl 4× uses 82.24/80.23/64.98/68.64% less frame time than Mesa 4×,
but takes 8.42/8.32/14.66/21.05× GLimpSW OFF time. This is a new diagnostic
baseline, not a renderer gain or achievement of the GLimpSW objective. Full raw
attempts, source/binary/asset hashes, framebuffer queries, build/probe/smoke logs
and medians are in [results](results/checks.json). No higher resolution runs.

No production library/wrapper changes are adopted here. The live WASM artifacts
are refreshed from the accepted production build and verified against HTTP 8000.
The next MSAA architecture trial is
[per-sample deferred visibility](../scene-msaa-visibility/README.md).

## Sources

- [GLimpSW raster API and single-sample fragment variables](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Rasterizer.h)
- [GLimpSW raster implementation](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Rasterizer.cpp)
- [GLimpSW shadow filtering implementation](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Shading.cpp)
- [Khronos ARB_framebuffer_object, multisample allocation and explicit resolve](https://registry.khronos.org/OpenGL/extensions/ARB/ARB_framebuffer_object.txt)
- [Mesa OSMesa interface](https://docs.mesa3d.org/osmesa.html)
- Local implementation: `libsoftgl/src/scene_visibility.c`, `raster_msaa_impl.h`,
  `multisample.h`, `multisample.c`.
