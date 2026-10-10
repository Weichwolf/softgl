# SIMD128 integer bilinear filtering in canonical material resolve

Status: three native filters held after screening; no useful gain established and no product change.

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

## Implemented variants

Freeze accepted `52aff7b`, Clang 22.1.8 and original 640×360 packs/cameras.
The private model opt-in resets at every scene begin; ordinary GL and default
scene tests keep their accepted shader. Select the filtered resolver once per
callback, without a per-packet opt-in branch. Shader duplication changes code
layout as well as arithmetic, so total-frame timing must judge the whole trial.

`albedo8` filters only albedo RGB with eight fractional bits and final byte
rounding. `albedo10` uses ten bits and a continuous float result; `both10`
uses that result for normal and albedo RGB. All three preserve original
bilinear alpha and cube sampling. Ten-bit weights keep the weighted sum
below signed-int32 overflow; no texture cache or derived level is added.

Independent POT/NPOT/one-dimensional, repeat/clamp, nearest/linear and all
nonempty live-mask checks compare against scalar address/uint64-weight
oracles. Each tested header executes 1,658,880 RGB checks and 1,036,800
bit-exact comparisons to the original float-alpha lanes. All three gates pass:
4,976,640 RGB checks and 3,110,400 exact-alpha lanes in total. Maximum RGB deviations from float interpolation are
1.04584 and 0.13661 of an 8-bit unit respectively. Final-frame normal/DOT3
errors are not bounded by those sampler numbers.

The copied quality driver additionally exports real resolved/sample alpha
planes. Compare those bytes, not an unchanged-alpha assumption from a source
review. Physical depth/stencil remains independently checked as before.

## Native findings

All variants pass the four original native contracts and the actual-library/
resident-driver SIMD128/no-AVX audit. Those contracts use the default shader;
the enabled filters are separately exercised in 36 actual-model 4× views per
variant, nine angles for all four original scenes. Across all 108 pairs, raw
resolved and sample alpha bytes, their expected lengths, and physical depth
buffers match. Stencil hashes match. Maximum observed RGB error is one byte in
every variant/scene. This is finite model evidence, not a universal RGB bound
for arbitrary normal maps or a temporal-stability study.

| Variant | Bistro time change | Sponza | BMW | T-80 |
|---|---:|---:|---:|---:|
| Albedo8, rounded | +0.30% | −0.78% | −0.70% | +0.42% |
| Normal/albedo10, continuous | +1.14% | −9.72% | +0.72% | +0.78% |
| Albedo10, continuous | −1.38% | +4.17% | +1.34% | −3.42% |

Each row is one quiet all-four-scene 4× AB/BA screening block: 640×360,
caller plus three helpers, 60 warm-up and 30 rotating measured frames,
complete finish/resolve/readback and the same original assets/cameras.
All observations, including rejected attempts, remain in the receipts.
Negative time change is faster. These are not repeated acceptance results.
The normal/albedo10 Sponza baseline changes from 40.26 to 33.20 ms while the
candidate stays near 33.16 ms; its apparent gain is not reliable. Albedo10
Sponza also spans 33–44 ms. BMW's sub-percent changes and the small Bistro
effects do not establish a route to its 100 FPS target. No useful gain is
adopted; no sanitizer, actual WASM/browser or OFF/2× acceptance is claimed.

The retained `validation/` binds four frozen source/recipe snapshots, compiler
flags, native libraries, raw timing blocks, numeric/default-contract logs and
all 108 enabled model comparisons. Separate alpha audits bind the actual raw
plane lengths and SHA256 hashes. Run `python3 verify.py` from this folder to
check the archive; packs, binaries and raw framebuffer dumps stay outside git.
