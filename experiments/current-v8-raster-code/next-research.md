# Pass cube coordinates as vectors; prepare scalar fallback only when needed

Six current quiet D4 native/profile captures identify a concrete memory round
trip. The TurboFan cube target stores three coordinate vectors and four zero
vectors into WASM linear memory before its coherent call. This is seven static
16-byte stores (112 logical source bytes). The coherent entry loads the xyz
vectors again. Source and actual native pre-call sites agree in every capture;
this does not measure physical cache traffic or dynamic call frequency.

The warmed BMW cube-coherent sampled self values are 6.722/7.087 ms per frame
off, 3.559/3.565 at2x and4.881/4.477 at4x. These cross-thread profile deltas
include scheduling/inlining and are not CPU busy time, frame latency or saved
milliseconds. Native code sizes repeat across audits, while static stack access
sites are not necessarily spills. Region sizes include data and padding.

The next independent candidate should pass x/y/z directly as SIMD values to
an internal coherent core, preserving the original arithmetic, masks and
sampler. Keep the existing pointer entry as a thin compatibility/test wrapper
with its original no-live/no-texture early guards. Move scalar coordinate arrays
and the zero-initialized fallback result table below coherent rejection in the
target. Keep coherent and fallback outputs and all sampler states exact. This
removes a specific source-level intermediate instead of reclassifying shaders,
changing texture storage, projection precision, geometry or worker ownership.

Check the actual new native/WASM entry bodies and cold fallback after building:
LLVM/V8 may still materialize data or preserve vectors on the native stack.
The intended seven linear-memory stores being removed is not a performance
prediction; an extra internal entry/call or code layout may offset the saving.
Run complete native/sanitizer/WASM/Mesa/model/edge gates, existing exact cube
oracles, then all eighteen fresh BMW-priority off/2x/4x comparisons against D4.
Publish and reject the joint module if benefit does not reproduce. No such
candidate has yet been built or measured.
