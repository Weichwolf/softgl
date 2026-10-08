# Optional native SIMD512 material resolve with portable fallback

Status: accepted in production; all adoption gates pass. Independent off BMW/T-80/
Sponza/Bistro frame-time reductions: 2.05/6.44/6.98/5.95%. All 108 coverage
views are exact; additional RGB rounding is at most one value. 756 native tests,
2,024 enabled sanitizer pairs, 288 resident/fresh comparisons, 2,024 actual
WASM fallback pairs and twelve live-browser asset/MSAA cases pass. Live
WASM is rebuilt and updated, peak heap 2,824,339,456 bytes (about 2.63 GiB).
Initial contraction-off screening remains a separate historical build.

GLimpSW uses native sixteen-lane vectors on this AVX512-capable host. The user's
WASM SIMD128 requirement and repository SSE4.1 minimum remain: this trial adds
an optional runtime-checked native shader backend while retaining the accepted
SSE4.1 and WASM SIMD128 implementation. It does not globally raise the compiler
ISA or require AVX512 to load/use the library. Explicit scene activation checks
AVX512F/DQ/BW/VL; unsupported native CPUs and WASM retain four-lane resolve.

Process sixteen final winning pixels from the same material task. Keep existing
scalar int64 edge barycentrics and interpolation structure;
use wide vectors for material interpolation, 2D addressing/filtering/combining,
masked texture gathers and final RGBA8 scatter. Cube sampling bridges four
existing SIMD128 groups. The Clang pragma scopes contraction for ordinary expressions but intrinsic
definitions still produce FMA; this trial permits the resulting measured
one-unit RGB rounding differences. The original global contraction-off screen
was color-exact but raised override warnings and is a different build. Geometry, visibility,
alpha, textures, assets, camera, sampling frequency and four-thread budget
remain; no mipmap trial is combined. Defaults and MSAA keep accepted paths.

Sources: original C11 expansion of accepted d5e79c7
[scene material shader](../../libsoftgl/src/scene_visibility.c),
[packet sampler](../../libsoftgl/src/frag_packet.h) and
[RGBA packing](../../libsoftgl/src/raster_store.h).
Primary batching inspiration: locally inspected pinned
[GLimpSW SIMD.h](https://github.com/dubiousconst282/GLimpSW/blob/2f915606d50b70fef8859ef29adc9d53f9aee887/src/SwRast/SIMD.h).
No upstream implementation is copied. Native code uses per-function target
attributes guarded out of WASM; its generic compile flags remain SSE4.1.

All measurements stay 640×360, identical four prepared packs/cameras and
caller plus three helpers. Warm-up covers two full 30-frame camera orbits.
The completed adoption checks cover enabled execution/fallback/legacy/tail
contracts, full-plane assets, independent off/2/4 repeats, sanitizers, full
native suite and actual WASM SIMD128/browser execution.

Clean-build enabled execution: the private audit build actually executes the
wide shader (availability=1 on this host). Its 2,015 paired full-plane frames
include all sixteen lane lengths using independently checked one-row rectangles,
canonical and legacy producers, constant/nearest/bilinear POT and NPOT sampling,
repeat/clamp, both quantization modes, one/three/eight helpers, frame reset,
MSAA fallback and six enabled rollbacks. The production/performance binaries
exclude all atomic instrumentation. Asset quality: 108 paired views have exact
depth/stencil/sample planes; all 72 MSAA views are RGB-exact, off RGB maximum
difference is one and worst mean is 0.000531 of 255. No fixed-size address
specialization is included. Independent three-block all-mode confirmation completed. Off changes are
BMW/T-80/Sponza/Bistro -2.05/-6.44/-6.98/-5.95%. MSAA2: -1.89/+0.09/-1.12/-1.24%;
MSAA4: -0.10/+4.64/-1.55/-0.57%. The backend is inactive in MSAA; an independent three-block T-80 4×
recheck measures +0.35%, so the earlier +4.64% control was not reproduced.
All attempts are preserved in validation/. All adoption gates below passed.

The accepted API is `softgl_scene_native_wide`: explicit opt-in after begin,
actual enablement returned, reset every frame. The common model wrapper requests
it after scene begin; unsupported CPUs/WASM return zero and retain SIMD128.
Native requires no wider global ISA flags. The root scene source matches the
measured candidate byte for byte. The root wrapper differs only by removing
the trial macro around the same request; it is rebuilt from production for
the current three-renderer comparison. The inherited scene frontend's 360p
fast path keeps ordinary GL fallback for other sizes; standard-format variants
are permitted by the user, and variable frontend sizes are a separate trial.
The source is not specialized to constant 640 division in this shader.

Full evidence: validation/checks.json and original attempts; production native
regression `tests/scene_native_wide.c` covers 2,024 frames and explicit reset/
disable/unsupported/MSAA behavior. Private instrumentation proves actual wide
execution and all packet lengths. Emscripten's standard pthreads+memory-growth
note is retained in build logs; the module uses SIMD128 and shared linear memory
with a 4-GiB maximum. Real browser tests use the same four prepared assets,
three helpers plus caller and actual 640×360 framebuffers. The two-pixel canvas
border is presentation only. No high-resolution asset workload is run.

[Current three-renderer measurements](../glimpsw-mesa-comparison/current-native-wide-materials/README.md) match production sources and wrapper hashes; GLimpSW remains faster.
The existing shadePackets diagnostic counts logical SIMD128 groups; actual native sixteen-lane dispatch is established by the private audit counters.
