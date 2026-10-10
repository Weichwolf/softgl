# One material pass for diffuse and specular light

Status: accepted. Fixed 640x360, same prepared assets, cameras and four-thread
budget. Against frozen 93e2356, 144 quiet accepted native timings (none rejected),
six timings per scene/mode in three balanced AB/BA blocks.
[Timings](timings.json), [source/binary/asset receipt](receipt.json).

The viewer currently submits opaque/masked geometry twice: normal-mapped diffuse
light plus the studio reflection, then normal-mapped specular light with additive
blending. This experiment emits both tangent-space light and half vectors in one
vertex preparation, samples the normal once, and combines both contributions in
one raster pass. Base textures, normal maps, metallic tint, roughness-dependent
specular exponent, clearcoat and the studio cube remain. Transparent materials
retain their two ordered draws and original blend equations.

The library adds a pure full-attribute callback and a copied per-context
material configuration. Ordered raster snapshots copy its constants by value;
the half vector travels in texture coordinate 1 and must survive compact vertex
packing, even though that unit's white texture contributes no sample. The fused
shader is selected only for the existing complete diffuse DOT3 combiner chain.
The normal OpenGL path remains the default.

Differences to the prior viewer: one final byte quantization instead of
two; one depth winner for coplanar opaque surfaces; masked specular follows the
albedo mask. These are quality changes to inspect, not grounds for relaxing
unrelated regression tests. All calculations retain 128-bit SIMD and require no
additional image buffers or wider native instructions.

Sources: the existing [viewer](../../wasm/model_wrap.c),
[complete DOT3 shader](../../libsoftgl/src/frag_combine_hot.h),
[worker attributes](../visible-vertex-attributes/README.md), and
[GLimpSW](https://github.com/dubiousconst282/GLimpSW/tree/2f915606d50b70fef8859ef29adc9d53f9aee887)
as a local reference for combining lighting after a single visibility pass.
This prototype is an independent change to libsoftgl's forward renderer.

Frame-time change, off / 2x / 4x: BMW -27.16 / -21.37 / -22.82%;
T-80 -25.21 / -25.95 / -24.61%; Sponza -30.22 / -29.81 / -27.24%;
Bistro -39.73 / -40.14 / -38.62%. Off-mode medians are respectively
16.151, 12.469, 43.109 and 102.099 ms. These are complete-frame measurements
with the retained RGBA readback copy, not isolated shader timings.

[108 paired images](quality.json) cover angles 0/45/90/135/160/180/225/270/315
in all three sample modes. Opaque depth, stencil and sample planes remain
identical in every pair. Worst mean absolute channel errors are 0.037 / 0.043 /
0.240 / 0.234 of 255 for BMW/T-80/Sponza/Bistro. Individual maximum channel
errors are 12 / 1 / 16 / 41; the worst Bistro off frame has five pixels above
32. Inspected the four angle-160 image pairs and the worst Bistro angle-45
pair; no new missing surfaces or broken material appearance was observed.
Existing edge/color speckles are present in both versions.

Validation: all 748 native CTests pass with unchanged image tolerances;
the new full-attribute/material contract checks 372 serial/worker paired frames,
including original source indices through dense culling, buffer changes,
all four coordinates, constant-white half-vector packing and queries.
Four contracts also pass Clang 19 ASan/UBSan with the native Clang 22 arithmetic
options supplied by [the launcher](asan_launcher.sh). All performance results
use Clang 22. The live SIMD128 WASM build passes all twelve scene/sample-mode
browser load/render checks. [Checks](checks.json), [browser checks](browser-checks.json).

Prepare private sources from a frozen commit, then build with Clang 22:

```sh
python3 experiments/fused-material-pass/prepare.py --baseline 93e2356
cmake -S experiments/fused-material-pass -B build/fused-material-pass/native \
  -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=clang-22
cmake --build build/fused-material-pass/native -j4
python3 experiments/fused-material-pass/run_trial.py --pairs 3 --samples 0,2,4 \
  --output tmp/fused-material-pass/validation
.venv/bin/python experiments/fused-material-pass/check_quality.py
```

The frozen baseline executable, archive and wrapper come from
[packed queue admission](../packed-queue-admission/README.md), prepared from
4c31bde and built before this experiment. The final preparation recipe adds
guards preserving Mesa's eager two-pass wrapper; rebuilding leaves the measured
SoftGL candidate binary byte-identical. Receipts retain the original measured
wrapper hash and checks bind the guarded adopted source.
