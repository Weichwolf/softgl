# Direct native SIMD512 gathers for winning material attributes

Status: private follow-up; pending enabled execution, quality and timing gates.

The first optional native wide shader still gathers each attribute channel
with scalar loops into stack arrays. Repeatedly traversing sixteen independent
surface records can dominate the widened arithmetic. Load the sixteen valid
surface pointers once and use two eight-lane hardware gathers of float channels
through full 64-bit addresses, joining their halves into sixteen-lane values.
Keep the existing 320-byte records and interpolation/texture/visibility policy.

This extends scene-native-wide-materials, with runtime framebuffer width. There
is no 640-specific specialization, narrower pointer assumption, geometry/asset
change or wider mandatory ISA. The per-function AVX512F/DQ/BW/VL backend is
runtime checked; the accepted SSE4.1 and WASM SIMD128 shader remains available.
The Clang contraction pragma does not prevent intrinsic FMA, so small RGB
rounding differences must be measured rather than claiming exact color.

Sources: original C11 implementation based on accepted d5e79c7
[scene records and scalar gathers](../../libsoftgl/src/scene_visibility.c),
[first wide trial](../scene-native-wide-materials/README.md) and locally
inspected pinned [GLimpSW SIMD.h](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/SIMD.h).
No upstream source is copied. Native performance work uses four unchanged
packs/cameras at 640×360, four total threads, 60 warm/30 measured frames.

Initial one-block off screen: BMW/T-80/Sponza/Bistro -3.59/-12.41/-10.34/-6.58%;
T-80 baseline is elevated versus earlier runs, so this is not a confirmed gain.
36 asset views preserve all coverage planes and show the same max-one RGB
rounding as the first wide trial. An instrumented native fixture actually
executes 1,187,305 canonical and 46 legacy wide packets and completes 2,024
paired frames, all sixteen tail lengths, explicit disable/default reset/MSAA
fallback and six rollbacks. Initial receipts/fixture are in initial-screening/.
Independent all-mode measurement and WASM/sanitizer gates are pending.

Independent all-mode trial vs d5e79c7 completed: off -3.30/-5.94/-5.21/-4.23%;
2× -0.91/-4.54/-3.11/+0.27%; 4× +0.28/+0.51/+0.73/+0.60%. Separate three-block
off comparison against the first runtime-width wide backend isolates the gather
change: BMW/T-80/Sponza/Bistro -0.58/+7.38/+4.99/+0.08%. It regresses T-80 and
Sponza and is not adopted. Native 2,024-pair ASan/UBSan/leak checks pass;
WASM 2,024 fallback pairs pass with actual SIMD128 code and 256 MiB heap.
Its optional native code is excluded from WASM; no separate live deployment
is made for this rejected variant. Complete attempts are in validation/.
