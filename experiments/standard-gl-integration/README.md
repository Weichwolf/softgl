# Standard GL integration

Status: platform separation accepted; automatic rendering integration in progress.

Applications should draw through ordinary OpenGL 1.5 calls. Material fusion,
visibility batching, deferred shading and MSAA policy belong in the renderer,
with no model-specific application hooks. SDL remains a host presentation layer;
the renderer must also work without SDL or a window.

## Accepted platform separation

Context creation, selection, destruction and resolved framebuffer access moved
from the GL header/state implementation to `softgl/platform.h` and `platform.c`.
The five host functions retain their names and behavior. Rendering integration
hooks remain temporarily while their caller-driven behavior is replaced;
moving declarations alone does not complete this work.

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

## Next rendering integration

The current viewer's pure callbacks compute tangent-space lighting inside
renderer workers. Standard color/texture-coordinate arrays must replace these
callbacks without serializing substantial application work. Opaque diffuse and
additive specular draws express the material through ordinary GL combiners;
automatic fusion must recognize compatible draw pairs and preserve barriers
for framebuffer reads, unsupported draws and storage changes. Captured VBO
data and GL state need explicit ownership until the internal batch completes.

## Sources

- [OpenGL 1.5 specification](https://registry.khronos.org/OpenGL/specs/gl/glspec15.pdf)
- [SDL context creation](https://wiki.libsdl.org/SDL2/SDL_GL_CreateContext)
- [SDL texture upload](https://wiki.libsdl.org/SDL2/SDL_UpdateTexture)
- [Shared model adapter](../../wasm/model_wrap.c)
- [Platform boundary](../../libsoftgl/include/softgl/platform.h)
- [Native measurement driver](../../tools/model_bench.py)
