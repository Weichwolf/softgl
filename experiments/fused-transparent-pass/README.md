# Single transparent material pass

Status: BMW off gain confirmed independently; broader validation running, no production adoption.

The viewer still transforms/rasterizes every transparent part twice: a diffuse
SRC_ALPHA/ONE_MINUS_SRC_ALPHA pass, then additive specular SRC_ALPHA/ONE.
This trial computes both tangent-space vectors once, samples the normal once
and emits a premultiplied RGB source in one GL_ONE/ONE_MINUS_SRC_ALPHA pass.
For a single covered layer, `source = diffuse*A + specular*materialAlpha` and
`destination = source + previous*(1-A)`. Clamping a nonnegative source before
blending preserves its final RGB saturation. Existing scalar and SIMD128
shaders share this equation; opaque/deferred visibility remains unchanged.

Quality changes needing explicit inspection: one final byte quantization;
physically ordered attenuation of earlier highlights on overlapping triangles
inside the same part; conventional premultiplied output alpha rather than the
old two-pass alpha accumulation. Part sorting, albedo masks, studio reflection,
normal maps and material specular exponents remain. A zero albedo alpha may
still carry the old additive highlight, so the fused blend does not discard it.
No BLEND-to-CUTOUT conversion, asset reduction or missing geometry is intended.

Sources: [accepted material fusion](../fused-material-pass/README.md),
[viewer](../../wasm/model_wrap.c), libsoftgl fragment_write.c blend equations
and frag_packet.h/rasterizer.c DOT3 shader at 29ebccb. The algebra and C11
implementation are original extensions of that existing pipeline.
No wider ISA or additional image storage is introduced.

Run prepare.py, configure/build this folder with Clang 22.1.8 and Release,
then check_quality.py --samples 0 and resident_trial.py --pairs 1 --samples 0.
All assets/cameras/thread counts remain shared and fixed at 640×360.

Variants and evidence:

- [inline](inline/README.md): one initial AB/BA block per asset; no broad gain.
- [outlined](outlined/README.md): three off blocks per asset; BMW -13.9%, but
  baseline variation requires an independent confirmation. T-80 +1.9% and
  Sponza/Bistro gains below 0.4% give no general improvement.

[Asset work](asset-work.json) is read directly from the unchanged SGLM packs:
BMW has 22 transparent parts / 6980 triangles; Bistro 3 / 381; T-80 and Sponza
have none. The proposed work removal therefore cannot directly improve their
opaque/masked visibility pipeline. These counts, rather than the total scene
complexity, explain which assets this experiment can help.
The 72-frame analytical oracle passes with the viewer's full-attribute input
contract. The initial test used ordinary current UV1 without that callback and
did not supply the half vector through the model path; its failure was corrected
in test setup without changing any expected byte or relaxing tolerances.

The root renderer and live WASM remain on accepted parallel-bin commit b7c7c23.

[Independent BMW confirmation](bmw-confirmation/README.md): six AB/BA blocks
with 60 measured frames each yield 13.3048 → 11.5277 ms (-13.36%), 24 quiet
requests. Every candidate request is faster than every baseline request in
this series. A separate three-block off/2×/4× all-asset trial is now running.
The feature is still private until quality/performance and production gates
are complete; the published WASM continues to match the latest accepted code.
