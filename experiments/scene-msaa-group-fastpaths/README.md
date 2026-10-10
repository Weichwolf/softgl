# Direct grouping of full 4× sample pixels

Status: held exact native prototype; no useful first all-scene screen gain, no production adoption.

The accepted uniform-winner marker and material-sharing hint already identify pixels that need one shading group. The current grouping loop still visits all four samples and checks matching state. Specialize the uniform function's sample count to its actual four-sample caller, directly emit one group for the uniform marker, and directly emit one group when four valid material IDs match and the existing material-sharing conditions are satisfied. Partial pixels, cutouts and unsupported materials retain the original loop. The first sample, selected winner/shading point, count/prefix order and visibility marking stay unchanged; no new approximation is introduced.

This is an own control-flow simplification of [the current grouping kernel](../../libsoftgl/src/scene_visibility.c), building on [compact uniform winners](../scene-msaa-uniform-metadata/README.md) and [opaque material sharing](../scene-opaque-alpha-sharing/README.md). The native profiles retained in [the depth-plane experiment](../scene-msaa-guarded-depth-planes/README.md) put grouping near 7% of BMW cycles and 4% of Sponza cycles. Those shares are diagnostic, not an FPS prediction.

Freeze at `52aff7b`, keep original four assets, 640×360 and three helpers plus caller. Require independent exact grouped/cutout/partial-pixel/rollback controls and all-model planes. A useful repeated native gain across off/2×/4× must precede sanitizer, real SIMD128 WASM/browser, production adoption, commit/push and live preview refresh. No new buffer, asset change, resolution specialization or wider SIMD is needed.

All four independent measured-library fixtures pass: material sharing, canonical positions, mixed MSAA/admission/rollback and serial/worker coverage. All 108 original-model views at off/2×/4× preserve every exported RGBA, depth, stencil and physical sample-plane hash. Disassembly of the measured library and timed driver contains SIMD128 only.

One complete four-thread AB/BA screen, 60 warmup/30 rotating measured frames per request, gives Bistro 49.249→48.456 ms (−1.61%), Sponza 36.880→41.468 ms (+12.44%), BMW 16.272→16.415 ms (+0.88%) and T-80 11.328→11.389 ms (+0.55%). Bistro's apparent gain includes a slower retained control request; the candidate stays around 48.5 ms, similar to other controls. Sponza's two candidate requests differ substantially (43.514/39.423 ms). The screening does not establish a reproducible useful gain or isolate the cause of the slower Sponza result. No extra repetition, sanitizer, WASM or product gate is claimed.

The closed [manifest](artifacts.json) retains the frozen unchanged control, actual candidate sources and recipes, raw timing observations, exact 108-view receipt and independent native contracts. Run `python3 verify.py` to verify the source, timing and fixture bindings. No generated executable or model pack is tracked.
