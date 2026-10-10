# Standard GL integration

Status: accepted.

Applications should draw through ordinary OpenGL 1.5 calls. Material fusion,
visibility batching, deferred shading and MSAA policy belong in the renderer,
with no model-specific application hooks. SDL remains a host presentation layer;
the renderer must also work without SDL or a window.

## Accepted platform separation

Context creation, selection, destruction and resolved framebuffer access moved
from the GL header/state implementation to `softgl/platform.h` and `platform.c`.
The five host functions retain their names and behavior. This first step kept
rendering hooks temporarily; the automatic integration below removes them.

`platform_api_contract` verifies independent headless contexts, access to a
noncurrent framebuffer without changing the current context, invalid creation
parameters and sample counts 0, 2 and 4. The core does not link SDL.

## Baseline and checks

The pre-change renderer is Git commit
`1fdd639a4f98b56406d6483afa00d25c5e57fb68`. Frozen native library/model objects,
the benchmark executable, WASM module and image snapshots are saved locally
under `build/api-baseline/`. The tracked receipts identify the binaries, assets,
cameras, timing parameters and frame hashes.

Native checks: 781/783 passed. All 235 GL cases and all component contracts,
including the new platform contract, passed. The two existing Mesa differences
remain Sponza 0° (5,557 pixels) and Bistro 0° (4,889 pixels), above the unchanged
4,608-pixel budget. All 12 paired native model images at 640×360 with 4× MSAA
are byte-identical before and after the platform separation.

WASM checks: all 247 frame hashes are identical before and after the change,
including all 235 GL cases and three 4× MSAA views of each model. The GL cases
pass their Mesa image gates. The OSMesa model references are single-sample;
the saved 4× snapshots compare like-for-like with the frozen 4× WASM baseline.
Their differences from single-sample Mesa are not a 4× correctness oracle.

Timing uses 640×360, 4× MSAA, SIMD128 and three helpers plus the caller. Four
native paired rounds alternate execution order, with 12 warmup frames and 48
measured frames per run. The user confirmed exclusive machine availability
before these runs. Initial measurements during shared machine use are excluded.
The small observed timing changes do not establish a performance improvement.

| Scene | Baseline ms | Platform separation ms |
| --- | ---: | ---: |
| BMW | 17.961 | 17.948 |
| T-80 | 10.938 | 10.635 |
| Sponza | 33.020 | 32.318 |
| Bistro | 48.731 | 49.003 |

Receipts: `baseline.json`, `platform-native.json`, `baseline-wasm.json` and
`platform-validation.json`. Timings are medians of complete-frame run means.

The running SDL viewer serves the rebuilt module. Native disassembly contains
no AVX instructions or YMM/ZMM registers; WASM retains `simd128` and the 4 GiB
memory ceiling.

## Automatic rendering integration

Applications now submit ordinary indexed VBO draws, color arrays,
texture-coordinate arrays and GL texture combiners. The public GL header has
no softgl rendering hooks or callback types. The separate platform header
contains only the five host functions above. Default native library symbols
confirm this boundary; SDL remains outside the renderer.

The driver recognizes eligible diffuse/additive DOT3 draw pairs from geometry,
matrices, combiners, textures and depth/blend state. It captures immutable draw
state, forms triangle packets, resolves opaque visibility and fetches winning
attributes before shading. Four-sample sharing excludes uncertain alpha and
cutout boundaries. Unsupported state and failed capture use the ordered GL
pipeline; failed scene processing restores framebuffer state and replays the
captured commands inside the library. Reads, synchronization, buffer/texture
mutations and storage growth join pending work before changing its inputs.

Transparent material pairs stay in one ordered queue after opaque visibility
completes. Joining after every pair caused a roughly 19% WASM BMW slowdown;
retaining the queue removes that regression. Additive RGB contributions respect
RGBA8 rounding, and alpha preserves the two original framebuffer roundings.
A regression with three overlapping transparent layers passes the same
one-byte channel tolerance as the ordinary pipeline.

The common viewer computes tangent-space lighting into standard GL arrays.
Its SIMD128 producer and the renderer each use three helpers plus the caller
in separate phases, with at most four rendering threads active. There are no
model IDs or application callbacks in the renderer. Native disassembly has no
AVX instructions or YMM/ZMM registers. WASM uses SIMD128, with a shared memory
maximum of 65,536 pages (4 GiB).

All 788 native tests pass, including 236 GL cases, twelve model views and the
material/attribute/sampler/worker contracts. The shared model adapter now uses
equal depth for opaque/cutout specular passes, fixing the former Sponza/Bistro
Mesa failures without changing tolerances. WASM also passes all 248
single-sample Mesa gates; all 235 pre-existing GL frame hashes are unchanged.

Four-sample snapshots are compared with the frozen four-sample renderer rather
than the single-sample Mesa model references. Sponza and T-80 remain RGB-exact
in native and WASM. WASM BMW differs by at most one byte per RGB channel.
Corrected transparency rounding changes a small number of Bistro pixels by
up to three bytes against the former fused WASM path. Alpha differences reflect
the corrected two-pass GL blend semantics. Exact frame hashes and error counts
are recorded in `integration-validation.json`.

Native timing uses two independent renderer contexts in one process, alternating
the old/new order for every frame. Three rounds measure 96 frames after twelve
warmups, with identical assets/cameras, 640×360, 4× MSAA and SIMD128. All twelve
old-context snapshots match the original frozen reference byte for byte.
The median of paired run FPS ratios is BMW +14.2%, T-80 +2.1%, Sponza +6.0%
and Bistro -4.2%. Bistro remains an optimization target; this API transition
does not make every scene faster.

WASM timing uses four AB/BA page-crossover rounds with 36 measured frames after
twelve warmups, at the same resolution, sample count and worker count. All four
paired changes stay within one percent of the frozen WASM renderer. Maximum
observed module memory is below 3 GiB. The browser build now uses `-O3`; neither
the native nor browser build widens SIMD beyond 128 bits.

Receipts for this step: `native-paired.json`, `wasm-paired.json` and
`integration-validation.json`. Historical platform receipts above remain
unchanged. `native_pair.c` is the same-process comparison driver; it links the
current library/model adapter and a copy of the frozen objects whose defined
global symbols have a `baseline_` prefix. Run it with a prepared pack, measured
frame count, warmup count and output-image prefix; `SOFTGL_CAMERA` supplies the
registry's eight comma-separated camera values when present.

## Sources

- [OpenGL 1.5 specification](https://registry.khronos.org/OpenGL/specs/gl/glspec15.pdf)
- [SDL context creation](https://wiki.libsdl.org/SDL2/SDL_GL_CreateContext)
- [SDL texture upload](https://wiki.libsdl.org/SDL2/SDL_UpdateTexture)
- [Shared model adapter](../../wasm/model_wrap.c)
- [Platform boundary](../../libsoftgl/include/softgl/platform.h)
- [Native measurement driver](../../tools/model_bench.py)
