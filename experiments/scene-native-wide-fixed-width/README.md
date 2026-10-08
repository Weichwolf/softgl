# Native sixteen-lane resolve plus portable fixed-width addressing

Status: not adopted; completed initial screening and enabled-mode tests give
no confirmed additional gain over the generic-width native shader.

Combine the [native wide material shader](../scene-native-wide-materials/README.md)
with the independent [640-pixel address specialization](../scene-fixed-width-addressing/README.md).
Both wide and accepted SIMD128 shaders use the proven scene width constant;
unsupported native CPUs and WASM retain the portable SIMD128 implementation.
Native wide activation checks AVX512F/DQ/BW/VL at runtime, with per-function
ISA attributes; intrinsic FMA produces measured one-value RGB rounding. No asset, sampling,
geometry, visibility, alpha or thread-budget change is combined.

Original C11 implementation; source links and inspected pinned GLimpSW batching
inspiration are in the two parent experiments. All tests and measurements
stay 640×360, four identical prepared packs/cameras and four total threads,
with two full warm camera orbits. Exact images and enabled wide/tail/legacy/
reset/fallback contracts, independent off/2/4 repeats, sanitizer, full native
suite and actual WASM SIMD128/browser verification remain adoption gates.

Initial off BMW/T-80/Sponza/Bistro changes were
+1.01/-2.97/-4.74/-4.41%; 36 coverage/depth/stencil/sample planes are exact,
RGB differs by at most one channel value after the scoped contraction pragma
(AVX512 intrinsics still emit FMA). The enabled dispatch fixture completed
2,015 full-plane comparisons, every tail length 1–16, canonical and legacy
rectangles, reset/MSAA fallback and six rollbacks. Performance binaries did
not contain audit instrumentation. These receipts are provisional screens.
Follow-up uses scene-native-wide-materials with runtime framebuffer width.

Later clarification on 2026-10-08: the user permits optional specialization
for established 360p/480p/720p/1080p formats, alongside a general-size path.
This supersedes the earlier broad exclusion of fixed dimensions. This trial
still has no confirmed performance case and remains unadopted; future format
variants must retain the generic path. Benchmarks remain only 640×360.
