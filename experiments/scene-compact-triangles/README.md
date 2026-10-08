# Compact triangle attribute snapshots

Status: native exactness validated against accepted `da48afd`; not adopted.
The first Bistro MSAA screen shows only a small change, insufficient for the
next twofold FPS target.

The scene shading snapshot stores three colors and four full vec4 texture
coordinates for each triangle. Its current consumer reads color RGBA, UV0/UV2
XY, encoded half-vector UV1 XYZ and reflection UV3 XYZ. No texture Q component
is read, and 2D units never read Z. Store exactly those ten texture floats per
vertex in a compact array, preserving every numeric value/expression actually
consumed. Keep UV0 and UV2 independent for ordinary captured legacy draws;
canonical shared-UV validation remains unchanged. No approximation is intended.

Move material into the four-byte alignment gap after the inverse-W triplet.
Triangle snapshots measure **256 bytes native**, against 320 bytes previously.
The WASM layout is predicted to be 240 bytes but has not been compiled/measured
in this trial. The 128 MiB allocation budget and original internal ID width
remain unchanged. The size-reporting fixture is separate from the ordinary
timed binary. A smaller record can reduce
allocation/cache/attribute-copy traffic, but does not itself prove a speedup.
Legacy vertex objects, shader callbacks and public ABI retain full coordinates.

Both ordinary records and canonical clipped/unclipped late attribute snapshots
write the same compact coordinates. Shader gathers decode unit/channel offsets;
texture sampling, barycentric grouping, draw-time sample point, cutout coverage,
MSAA depth/resolve and rollback are unchanged. Both native and WASM stay SIMD128.

Require independent native full-plane/canonical/mixed-alpha/near-occluder-rollback
contracts, 108 paired common-asset views, then quiet native 640×360/four-thread
AB/BA. A selected variant must additionally pass three-block all-four
OFF/2×/4× confirmation, sanitizers, native suite, actual WASM size/contracts,
context reuse and <=4 GiB live browser checks, then commit/push/live refresh.
Bistro carries higher priority, while simple-scene controls remain required.

```sh
python3 experiments/scene-compact-triangles/prepare.py
cmake -S experiments/scene-compact-triangles -B build/scene-compact-triangles/native \
  -DCMAKE_C_COMPILER=clang-22 -DCMAKE_BUILD_TYPE=Release
cmake --build build/scene-compact-triangles/native -j4
```

For the separate layout audit set `SOFTGL_COMPACT_TRIANGLE_AUDIT=ON` in a
separate build, then run `record_contract`. Freeze a new output directory when
regenerating a variant; preserve prior sources/receipts rather than overwrite.

Sources: the current [scene shader field reads](../../libsoftgl/src/scene_visibility.c)
and [late clipped/canonical attribute storage](../../libsoftgl/src/geometry.inc),
plus the [sample metadata compression results](../scene-msaa-compact/README.md).
This field-liveness/layout change is developed directly from our implementation;
no upstream code is copied and no external performance result is claimed.

## Native evidence

216 independent full-plane hashes, 162 canonical pairs, mixed-alpha/tiny and
six ordinary draws after failed near-occluder rollback pass. All 108 paired
common-asset views have identical RGBA, depth, stencil and sample depth/stencil
planes. The ordinary timed archive contains XMM operations and no AVX/YMM/ZMM.
[Receipts and control outputs](validation/).

The one-block Bistro screen retains 12 accepted/zero rejected runs, 60 warm-up
and 30 orbit frames per trial, 640×360 and four total threads. Frame-time change:
2× **−0.91%**, 4× **−1.55%**. OFF reports −11.41%, but its two baseline trials
are 42.39 and 34.00 ms; candidates are 33.40 and 34.28 ms. That OFF result is
outlier-driven and does not establish an 11% improvement. There is no repeated
gain, full-suite/sanitizer/WASM/browser/adoption claim. Production remains the
accepted current-frame MSAA occlusion implementation.
