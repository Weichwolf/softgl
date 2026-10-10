# SIMD128 integer bilinear filtering in canonical material resolve

Status: queued follow-up; not implemented, tested or timed.

The accepted [packet sampler](../../libsoftgl/src/frag_packet.h) already has an
integer bilinear path, but the final captured material shader passes
`integer_filter=0`. Test its paired 16-bit multiply-add work against the
current float path, rather than adding mip levels or lowering output/shading
resolution. Start with albedo alone and normal/albedo together; compare 8-bit
fractional weights with higher precision and a continuous float result before
the final framebuffer conversion.

Normal interpolation errors can be amplified by DOT3 and specular powers;
do not infer a final 1/255 bound from a sampler error. Measure full-frame RGB
error and temporal stability on the four actual scenes. Keep original float
alpha/coverage tests, physical MSAA samples/depth, cube sampling, ordinary GL
and simple reference scenes. Any private opt-in is internal to the model
experiment and does not restore the removed Shading/Meshes UI.

Sources: original follow-up to the locally retained float/integer sampler in
[packet texture addressing](../packet-texture-addressing/README.md) and
[current canonical shading](../../libsoftgl/src/scene_visibility.c).
The native `_mm_madd_epi16` operation has an existing SIMD128 WASM adaptation
through Emscripten's installed `emmintrin.h`; inspect and execute that actual
path before claiming a browser benefit. No wider ISA, AVX or native-only
reciprocal approximation is proposed.

Freeze the accepted parent and actual compiler flags. Require independent
scalar filtering/combiner oracles, original native contracts and quantified
original-model image/sample-plane checks before screening. A useful gain needs
three quiet all-four-scene OFF/2×/4× AB/BA blocks and a fresh confirmation,
sanitizer and actual WASM/browser gates, commit/push and a live module refresh.
