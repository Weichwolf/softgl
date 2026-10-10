# Single transparent material pass

Status: accepted outlined shader; enabled in the native comparison candidate and
live WASM viewer. BMW complete-frame time falls 12.92% / 8.60% / 10.41% with
off/2×/4× MSAA. Independent six-block off confirmation gives -13.36%.

The viewer formerly transformed/rasterized every transparent part twice: a
diffuse SRC_ALPHA/ONE_MINUS_SRC_ALPHA pass, then additive specular SRC_ALPHA/ONE.
This implementation computes both tangent-space vectors once, samples the normal
once and emits premultiplied RGB in one GL_ONE/ONE_MINUS_SRC_ALPHA pass.
For a single covered layer, `source = diffuse*A + specular*materialAlpha` and
`destination = source + previous*(1-A)`. Clamping a nonnegative source before
blending preserves final RGB saturation. Scalar and SIMD128 shaders share this
equation. A separate noinline packet helper keeps its math out of the opaque
shader. No wider ISA, extra image storage or asset changes are introduced.

The model wrapper opts in through SOFTGL_MODEL_TRANSPARENT_FUSION, together with
SOFTGL_MODEL_VERTEX_ATTRIBUTES. The public softgl_set_fused_dot3_transparent API
copies the tint/exponent into draw state; NULL resets material fusion. It expects
the existing full DOT3 material chain, the viewer's full-attribute callback for
the half vector, and GL_ONE/ONE_MINUS_SRC_ALPHA blending. General GL applications
and wrappers without the opt-in retain their former rendering path.

Quality changes: one final byte quantization; attenuation of earlier highlights
on overlapping triangles inside the same part; conventional premultiplied output
alpha instead of two-pass alpha accumulation. Part sorting, albedo masks, studio
reflection, normal maps and specular exponents remain. Zero albedo alpha may still
carry the former additive highlight; fused transparent draws disable alpha-test
discard to preserve it. BLEND is not converted to CUTOUT.

108 paired images across four assets, nine angles and off/2×/4× preserve every
depth/stencil/sample-depth/sample-stencil plane exactly. T-80 and Sponza RGB are
exact. BMW worst mean RGB error is 0.0181 byte/channel, maximum 11; at most four
pixels per image differ by more than eight. Bistro worst mean is 0.0144, maximum
four. Inspected BMW angle45 and Bistro angle270 show no new missing geometry or
broken materials; this is bounded evidence from the checked views.

The full native suite passes 753 tests with unchanged tolerances. Its existing
Mesa image comparisons retain the two-pass wrapper: the approximate mode is
explicitly opted into the benchmark and viewer, and validated separately by the
108 comparisons and an independent exact analytical 72-frame blend oracle.
The initial unguarded adoption failed three BMW/Mesa image checks; that output
is retained in validation/initial-native-failure.txt, not hidden by tolerances.

The analytical oracle covers zero/partial/full alpha, quadratic/quartic specular,
serial/1/3/8 helpers, off/2×/4×, unchanged depth and draw-state snapshots. It passes
AddressSanitizer, UndefinedBehaviorSanitizer and leak detection. 288 resident/fresh
complete-plane comparisons pass. The initial fixture omitted the half-vector
callback; correcting its input changed no expected byte or tolerance.

[Asset work](asset-work.json), parsed directly from the unchanged SGLM packs:
BMW has 22 transparent parts / 6980 triangles; Bistro 3 / 381; T-80 and Sponza
none. Thus only BMW has a substantial direct saving here. Small T-80/Sponza
changes in the final trial are binary/timing variation, not transparency wins.
The final all-mode trial retains 144 quiet measurements and one rejected
four-request block. T-80/Sponza/Bistro MSAA changes range from -0.94% to +1.15%.

Sources: [accepted material fusion](../fused-material-pass/README.md),
[viewer](../../wasm/model_wrap.c), libsoftgl fragment_write.c blend equations and
frag_packet.h/rasterizer.c DOT3 shader at 29ebccb. Algebra and C11 implementation
are original extensions of that pipeline.

Evidence: [inline screening](inline/README.md), [outlined screening](outlined/README.md),
[independent BMW confirmation](bmw-confirmation/README.md), and
[final native/quality/browser validation](validation/README.md).
The live HTTP module matches the rebuilt bytes; all twelve model/MSAA browser
combinations pass with three helpers. Peak heap: 2,824,536,064 bytes (2.631 GiB).

Reproduce at 640×360, using Clang 22.1.8 for native timing:

```sh
python3 experiments/fused-transparent-pass/prepare.py --shader outlined
cmake -S experiments/fused-transparent-pass -B build/fused-transparent-pass/native \
  -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=clang-22
cmake --build build/fused-transparent-pass/native -j4
build/fused-transparent-pass/native/transparency_contract
.venv/bin/python experiments/fused-transparent-pass/check_quality.py --samples 0,2,4
python3 experiments/fused-transparent-pass/resident_trial.py --pairs 3 --samples 0,2,4
python3 experiments/fused-transparent-pass/check_resident.py
node experiments/fused-transparent-pass/browser-smoke.cjs
```
