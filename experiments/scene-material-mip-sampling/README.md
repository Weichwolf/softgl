# Minification-aware material sampling from derived mip pyramids

Status: proposed after local GLimpSW sampler inspection; not implemented or
measured. No performance or quality claim is made.

GLimpSW computes UV gradients, selects a mip level and uses nearest minification
for color data, while normal/material data retains linear minification. The
accepted softgl viewer uploads only level zero and its scene packet sampler
always uses the magnification filter. This is a concrete algorithmic difference:
far/small surfaces can read four widely separated full-resolution texels when
smaller texture levels and fewer taps would suffice.

Trial design: keep the identical prepared source assets and level-zero textures;
generate ordinary RGBA8 mip pyramids during load, outside measured frames.
Explicitly opt canonical scene material resolve into approximate minification.
After final visible attributes, estimate UV footprint per primitive at its
centroid from the existing edge gradients and perspective weights. Store two
unit LODs in the four-byte padding before color (preserve the 320-byte surface).
For each material packet choose its lowest requested LOD to retain SIMD128
coherence; use a copied texture-unit context for the selected level, nearest
color minification and linear normal minification. Keep masked materials on
level zero to preserve existing alpha/coverage and keep cube/reflection,
transparent draws, ordinary GL and MSAA on their accepted paths.

This changes texture and lighting frequency, can blur or alias details, and
must be compared visually with both the accepted renderer and GLimpSW. It must
retain exact geometry/depth/stencil and avoid broken materials. Derived mip
memory (up to about a third of level zero for large square textures) requires
real WASM heap checks below 4 GiB; allocation failure must fall back completely.
No prepared asset reduction, mesh change or wider ISA is proposed. A centroid
LOD is approximate and neither a complete derivative implementation nor a
promise of GLimpSW-equivalent output. Per-pixel LOD/coherent bucketing remains a
follow-up only if this first native implementation establishes real headroom.

Primary source: locally inspected pinned
[GLimpSW Shading.cpp at 2f915606](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/Shading.cpp),
ColorSampler/AttribSampler and CalcMipLevel/SampleLevel calls. Local basis:
[model texture upload](../../wasm/model_wrap.c),
[scene material shader](../../libsoftgl/src/scene_visibility.c),
[packet sampler](../../libsoftgl/src/frag_packet.h) and texture-level storage in
[types.h](../../libsoftgl/src/types.h). This original C11 integration should use
native SSE4.1 and WASM SIMD128. Start with all four common packs/cameras at
640×360, four total threads, native exact coverage/quality metrics and balanced
AB/BA screening; validate any gain independently off/2/4 before adoption.
