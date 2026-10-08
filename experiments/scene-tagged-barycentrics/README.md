# Tagged narrow barycentric edges

Status: neither scalar nor vector variant adopted after native screening. Baseline: `91ab0d1`.

The accepted quantized coverage producer bounds vertices to [-1,641] ×
[-1,361], with 16 subpixels per pixel. Its edge origins and pixel steps
are already int32. Deferred shading nevertheless promotes them to int64,
then converts int64 to float. This experiment records a per-triangle tag
in the existing four bytes of alignment padding, and computes only tagged
records in int32. Legacy, unquantized and out-of-gate records retain int64.
Global scene quantization does not prove that any individual record is narrow.
Record size and color alignment are asserted unchanged.

`prepare.py` freezes both variants from the named commit. Default: scalar
int32 arithmetic per tagged lane. `--vector`: gather coefficients into
SIMD128 packets, and sixteen lanes in the optional native SIMD512 target.
The latter is compiled out in WASM. Both paths keep runtime framebuffer
width and the original float operation order. No asset, projection, depth,
coverage, texture, material or MSAA policy changes are intended.

Run preparation, configure with Clang 22, build, then run the balanced
`resident_trial.py` at 640×360. Preserve each variant's sources and
receipts before switching. `check_quality.py` compares nine views of each
of the four assets including full depth/stencil/sample planes. Production
adoption additionally requires independent numeric edge checks, actual
SIMD128/WASM execution, sanitizer and enabled/fallback contracts, repeated
AB/BA all-mode measurements, the native suite and the live browser preview.

## Sources

- Accepted producer and shader: [scene_visibility.c](../../libsoftgl/src/scene_visibility.c),
  frozen baseline `91ab0d1`; quantization bounds are established before capture.
- Previous guarded-vector experiment:
  [scene-vector-barycentrics](../scene-vector-barycentrics/README.md).
  This experiment replaces its per-pixel range checks with a producer tag.
- SIMD128 abstraction: [simd.h](../../libsoftgl/src/simd.h).
- Native wide dispatch and WASM fallback:
  [scene-native-wide-materials](../scene-native-wide-materials/README.md).

## Findings

One balanced AB/BA block per asset, 60 warm-up and 30 measured frames,
640×360/off, caller plus three helpers. Frame-time changes, BMW/T-80/Sponza/Bistro:
scalar +0.18/-1.98/+2.59/-1.75%; vector -2.00/+3.66/+4.63/-0.99%.
Neither supplies a broad gain; these one-block results are screening evidence.
Both have 36 byte-exact RGB/full-plane asset comparisons. Scalar passes the
2,024-frame native wide contract with six rollbacks. An independent numeric
oracle checks eight million scalar32/SIMD128/int64 edge values, including
extreme coordinates, with ASan/UBSan enabled. Maximum observed magnitude is
59,356,416, and all intermediate signed sums/products fit int32.

The instrumented vector contract passes 2,024 native frame pairs and six
rollbacks; actual SIMD128 narrow/legacy executions 2,374,635/2,769,077, native
wide 593,793/593,558. Its actual WASM SIMD128 build passes the same 2,024
pairs, using 256 MiB heap, native-wide disabled, 4,749,270 narrow and 5,142,850
legacy executions. The Emscripten pthreads/growing-memory diagnostic remains
in the build log; no code warnings remain. No WASM speedup is claimed.
Repeated all-mode native performance, renderer sanitizer/full-suite and browser
gates were not run for these unadopted variants. Production remains 91ab0d1.

[Scalar receipts](scalar-screening/summary.json),
[vector receipts](vector-screening/summary.json),
[WASM execution](vector-screening/wasm.txt).
