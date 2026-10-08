# SIMD128 exclusively on native and WASM

Status: required policy change validated; native and WASM use SIMD128 exclusively.
This is not a performance gain. Fresh three-renderer timings are pending.
User constraint: native libsoftgl must use SIMD128 too. Remove the
AVX512 implementation, native capability detection, wide scene state and model
wrapper opt-in. Keep the public opt-in symbol as an unsupported compatibility
shim returning zero. Native CMake explicitly disables AVX/AVX2/AVX512 even if
caller flags include `-march=native`; the SIMD wrapper rejects AVX-enabled
translation units. WASM remains SIMD128.

The former native-wide experiment and measurements are historical, superseded
by this policy. Do not use those timings as current SIMD128 performance.
All future renderer variants must start from the new SIMD128-only baseline.

Reference: accepted pre-wide `d5e79c7`; root candidate library and wrapper.
Compare 108 paired views (four unchanged assets, nine angles, off/2×/4×), exact
RGBA/depth/stencil/sample-plane hashes. Independently check the archived
library machine code for YMM/ZMM registers and AVX instructions. Run all native
regression tests, the 2,024-frame compatibility contract, actual WASM contract,
resident/fresh checks, and the twelve live-browser model/MSAA cases. Fresh
three-renderer comparisons stay native 640×360/off, four total threads,
60 warm/30 measured frames, three balanced blocks per model. Performance is
measured separately from builds and correctness/browser workloads.

Sources: [scene_visibility.c](../../libsoftgl/src/scene_visibility.c),
[native build policy](../../libsoftgl/CMakeLists.txt),
[SIMD128 wrapper](../../libsoftgl/src/simd.h),
[historical native-wide experiment](../scene-native-wide-materials/README.md).

## Completed policy validation

756 native tests pass. All 108 full RGBA/depth/stencil/sample planes exactly
match the pre-wide SIMD128 renderer. Native, ASAN/UBSAN/leak and actual WASM
contracts each pass 2,024 pairs and six rollbacks with availability zero.
288 resident/fresh frame comparisons pass. Twelve actual localhost:8000
browser model/MSAA cases pass; peak shared heap 2,807,169,024 bytes, under 4 GiB.
All instructions in the native archive are audited: 103,204 instructions,
59,952 XMM references, no AVX instructions or YMM/ZMM registers. A separate
CMake caller with `-march=native` also builds and passes the complete-library
ISA audit. Live HTTP artifacts, build artifacts and ignored wasm snapshots
match by SHA256. See [checks](validation/checks.json).

The original `tests/scene_native_wide.c` filename is retained for archived
experiment recipes; the current contract checks that the former opt-in stays
unsupported on all CPUs and rendering remains SIMD128. Historical experiments
that froze an AVX512-enabled renderer need rebasing before future execution.
