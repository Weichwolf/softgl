# SIMD128 cube packets across different faces

Status: native screen completed, not adopted; no confirmed product gain.

The current cube packet kernel handles four fragments together only when their
directions select the same face. Different faces fall back to four scalar
samplers. This variant retains the coherent kernel and adds a SIMD128 fallback
for four finite live directions whose selected faces have matching dimensions.
It projects and filters each lane independently and gathers texels from four
face pointers. Partial packets, missing faces or different face dimensions keep
the existing scalar fallback. There is no additional texture storage, changed
filter, reduced resolution or changed MSAA coverage.

Freeze the current Full renderer, compile with native SSE4.1 and AVX disabled,
then screen original BMW/Bistro at 640×360 with four total threads and resolved
readback. A useful screen needs repeated off/2×/4× timings and independent
native/WASM sampler, rendering and memory checks before adoption.

Sources: our [current CPU profiles](../scene-full-msaa-control/README.md),
[accepted coherent cube packets](../cube-packets/README.md),
[scalar face rules](../../libsoftgl/src/fragment.c), and
[paired tap gathers](../../libsoftgl/src/frag_packet.h).
This is our extension of the current CPU sampler; no upstream performance
number is claimed for it.

## Native observations

Against frozen Full `c4cb731`, one balanced AB/BA block per asset at genuine
4× MSAA, 60 warmup/30 orbit frames, four total threads, original assets/cameras
and resolved readback. BMW time changes +1.23%, Bistro −1.22%, Sponza +28.48%,
T-80 −11.48%. These are screening estimates, not established algorithm gains.
The T-80 baseline has a 17.976 ms outlier against 14.281 ms in the other half,
making that apparent gain unsuitable for attribution. This trial uses the
current glTF T-80 wrapper with cube maps; older no-cube census results from
the historical tank driver do not describe this workload. All accepted/rejected
raw timing records are retained.

All 108 independent native original-model pairs match RGBA/depth/stencil/
sample-depth/sample-stencil exactly across off/2×/4× and nine angles. No sampler
fixture proving all mixed-face boundary cases, sanitizer, actual WASM or browser
adoption gates were run. The small Bistro point estimate does not justify
adoption or a performance claim. The existing coherent and scalar kernels
remain in the product and live preview.

The closed `validation/` archive retains frozen sources/recipes, build flags,
native ISA checks, accepted/rejected raw timings and independent quality
receipts. Verify it with `python3 tools/scene_trial_archive.py verify experiments/scene-mixed-face-cube-packets`.
These exact sampler/depth trials are separate from the subsequent
[within-pixel material merge](../scene-msaa-material-pixel-merge/README.md).
