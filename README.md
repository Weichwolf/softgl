# softgl

GL 1.5 software renderer in C, with a C++11 geometry preparation helper — fixed-point SIMD rasterizer, pthread tile pool,
WASM + native, Mesa-referenced.

## Scope

API-level compatibility with real OpenGL 1.5:

- VBOs (`glGenBuffers`/`glBufferData`/`glDrawArrays`/`glDrawElements`) + client arrays
- Immediate mode (`glBegin`/`glEnd` with every `glVertex*`/`glColor*`/`glNormal*`/`glTexCoord*` variant, `glArrayElement`, `glEdgeFlag`, `glRect*`)
- Display lists
- Matrix stacks for `GL_MODELVIEW`, `GL_PROJECTION`, `GL_TEXTURE`
- Up to 4 texture units; `GL_TEXTURE_1D`/`2D`/`3D`/`CUBE_MAP`; nearest + bilinear filtering
- Fixed-function Gouraud lighting with 8 lights, color material, light model
- Tex-env: `MODULATE` / `REPLACE` / `DECAL` / `COMBINE` including `DOT3_RGB`, `INTERPOLATE`, `SUBTRACT`, `ADD_SIGNED`
- Fog (`LINEAR`/`EXP`/`EXP2`), alpha test, alpha blending, color logic op
- Stencil, depth test, scissor, polygon stipple, line stipple
- Sutherland-Hodgman frustum clipping, back-face cull, clip planes
- Pixel transfer (`glDrawPixels`/`ReadPixels`/`CopyPixels`/`PixelStore`/`PixelZoom`/`RasterPos`)
- Occlusion queries, `glMapBuffer`, comprehensive `glGet*` state readback
- Evaluators (`glMap1`/`glMap2`), accumulation buffer, selection / feedback modes

322 entry points, 233 test cases plus three Tank and three BMW camera views. Each runs
against softgl and Mesa llvmpipe, followed by a pixel comparison
(717 image correctness checks plus worker-pool and internal LOD cache contracts when the
BMW asset is prepared; `ctest -C Bench` also includes the native benchmark).

## Rendering modes

Contexts default to **Compliance**: SoftGL processes the submitted geometry
without approximation, and the complete Mesa regression suite uses this mode.
The browser preview offers an explicit **Performance** option for model scenes.
Applications can enable it once, without changing their OpenGL draw calls:

```c
softgl_set_mode(ctx, SOFTGL_PERFORMANCE);
softgl_set_frame_budget(ctx, 1000.0f / 30.0f); /* default: 30 FPS */
```

Performance mode seeks maximum geometry quality within the render-time budget.
It smooths completed-frame measurements, reduces detail above the budget and
restores detail when there is at least 15% headroom. Browser idle time and cold preparation
are excluded. The budget is a target, not an FPS guarantee: rasterization and
application work can remain limiting. The preview displays the current error,
measured time and whether the geometry or error limit was reached. At the
geometry floor it retains the smallest error selecting that cut rather than
continuing to increase the threshold. For reproducible fixed
quality, `softgl_set_lod_error(ctx, 1.0f)` disables feedback; it accepts
0.125–128 estimated pixels. Automatic mode caps error at 8 pixels to limit panel deformation. If the
budget cannot be reached within that quality limit, the preview reports the
limit rather than promising the target FPS.

Performance mode permits approximate geometry. Internally, SoftGL snapshots
large indexed static-VBO draws and prepares a cluster hierarchy on one background
worker, protecting hard normal edges, UVs and colors. It selects detail using the current matrix and
viewport. It retains the application's VBO/EBO bytes and transforms only the
selected source vertices. `glBufferData`, `glBufferSubData`, writable unmapping
and deletion invalidate affected caches. Full detail renders until preparation
finishes. This is an initial CPU implementation inspired by clustered LOD,
using a pinned MIT-licensed meshoptimizer subset; it does not implement all
of Unreal Nanite.

Static attributes currently require float components; other formats keep full
detail. Unsupported draws, active queries, selection/feedback, wireframe, flat shading,
alpha testing, nonadditive blending, stencil and user clipping use full geometry.
Returning to Compliance restores
full geometry immediately. The error estimate guides quality; Performance mode
does not promise exact OpenGL images. Image regressions and approximate-mode
appearance comparisons are validated separately, without loosening existing
tolerances. The preparation worker is additional to the unchanged render pool.
The triangle statistics count indexed `GL_TRIANGLES` draws across material
passes and reset at color-buffer clears; cache statistics are per context.

## Architecture

- **Pineda edge functions** in 16.8 fixed-point with i64 accumulator; 2×2-quad SIMD via SSE4.1 / `wasm_simd128`
- **Early-Z** before scalar texture shading when depth testing is enabled and stencil is disabled; the SIMD path also requires alpha testing disabled
- **Packed 2-row 64-bit framebuffer I/O** for depth load / blend-dst load / color write
- **AoS 16-byte aligned vertex** with vec4 clip / ndc / color / normal / eye + per-unit UVs
- **Separate RGBA8 color + f32 depth planes**, row 0 = bottom (GL convention)
- **Pthread tile worker pool** for X-stripe binning; shared vertex pool for parallel transform
- **Single rasterizer** (`rasterizer.c::sg_raster_triangle`); per-lane scalar fallback only for stencil / polygon stipple / color logic op / occlusion queries (pixel-serial state)

## Building

### Build layout and BMW preparation

All generated files live under the single `build/` tree: `native/`, `wasm/`,
`assets/`, `perf/` and the optional Emscripten `emscripten-cache/`.
Historical measurements and control builds are preserved in `build/archive/`;
old paths in their metadata describe the original runs.

Prepare the supplied, attributed BMW asset before configuring the builds:

```sh
python3 -m venv build/python
build/python/bin/pip install -r tools/requirements-assets.txt
build/python/bin/python tools/pack_gltf.py assets/bmw/source.zip
```

Select **BMW F31** in the preview. Its material lighting uses OpenGL 1.5 DOT3
combiners, authored metallic/roughness parameters, prepared normal maps and
GGX-filtered studio cube maps. The asset retains all 939,641 triangles;
Performance mode chooses a subset internally. See
[asset preparation and attribution](assets/bmw/README.md) for fidelity limits.
Selecting BMW before **Run Benchmark** adds it to the interactive benchmark.
The benchmark yields between frames and can be stopped. Scene switches
release the active render context before starting the next one.

### Native (test suite)

Requires an x86 CPU with SSE4.1, GCC or Clang with C++11 support, CMake 3.20+, pthreads,
Mesa OSMesa development libraries. On Debian/Ubuntu:

```sh
sudo apt install build-essential cmake libosmesa6-dev
cmake -S . -B build/native -DCMAKE_BUILD_TYPE=Release
cmake --build build/native -j4
ctest --test-dir build/native -C Bench --output-on-failure -j1
```

The OSMesa harness renders without a display server, requests RGBA8 color,
24-bit depth, 8-bit stencil, and a 16-bit accumulation buffer, and verifies
that the reference renderer is Mesa llvmpipe. Raw images and PPM diffs are
written to `build/native/out/`. The comparator uses the per-case tolerances in
`tests/CMakeLists.txt`, typically a ~2 % pixel budget at triangle edges.

Each test includes `harness.h`, which selects `<GL/gl.h>` and extension
prototypes for the Mesa reference build, or `<GL/softgl.h>` for softgl.
The same `.c` test file compiles against both backends unchanged.

The scene benchmark is separate from the correctness suite:

```sh
ctest --test-dir build/native -C Bench -L bench --output-on-failure
```

### WASM (browser preview)

On Debian, use the distribution's `emscripten` package (validated with
`3.1.69+dfsg-3`). Run these commands from the repository root:

```sh
sudo apt install emscripten cmake python3
export EM_CACHE="$PWD/build/emscripten-cache"
export EM_FROZEN_CACHE=0
emcmake cmake -S wasm -B build/wasm
cmake --build build/wasm -j4
bash wasm/serve.sh 8000
```

The cache settings let Emscripten build its SDL2 and pthread dependencies in
the writable `build/` tree. Keep them exported for subsequent WASM builds.

Open http://localhost:8000. The preview page cycles the tests and runs a
live Tank demo with pthread tile workers. Threads require a secure browser
context (HTTPS or localhost) and COOP/COEP headers; `serve.sh` sets the headers
and listens on all IPv4 interfaces. For access over a LAN IP, supply a TLS
certificate and key outside the served `build/wasm/` directory:

```sh
SOFTGL_TLS_CERT=/absolute/path/cert.pem SOFTGL_TLS_KEY=/absolute/path/key.pem \
  bash wasm/serve.sh 8443
```

Open `https://<server-ip>:8443`. The certificate must cover the server IP
or hostname; for a local self-signed certificate, accept its browser warning.
CMake copies the preview files and prepared packs into `build/wasm/`.

### WASM performance and image validation

Requires Node.js 20+, Chromium, and the native/Mesa and WASM builds above:

```sh
npm ci --prefix tools
ctest --test-dir build/native -C Bench --output-on-failure -j1
node tools/wasm_perf.cjs --output build/perf/current.json
```

Compare internal approximate mode to full detail using the same module:

```sh
node tools/wasm_perf.cjs --render-mode performance --reference-mode compliance \
  --reference-build build/wasm --scenes bmw --frame-budget 33.333333 \
  --rounds 8 --warmup 60 --frames 12 \
  --crossover --output build/perf/bmw-lod.json
node tools/wasm_lod_check.cjs build/lod-check
```

The image gate always uses Compliance. Approximate-mode measurements wait for
background preparation before warm-up, record preparation cost and actual
triangle counts and controller state, and exclude that one-time cost from
steady-state frame time. The benchmark driver defaults to fixed one-pixel
quality; `--frame-budget` enables feedback and needs enough warm-up to settle.
The appearance check compares twelve views, verifies a reversible switch,
fills all eight render workers and checks browser responsiveness.

The tool renders every WASM test, three Tank views and the prepared BMW views in headless Chromium,
then compares RGBA output against Mesa using the unchanged CTest tolerances.
An image failure produces a nonzero exit status. It also measures twelve scenes plus the prepared BMW at 640×360, with 20 warm-up frames and seven rounds of 60 timed frames.
Context creation, model asset loading, image comparison, and display upload
are outside the timed region; test scenes execute their complete `run_test`
including per-frame setup. A final framebuffer read waits for all workers.

For optimization comparisons, preserve the reference build's `softgl.js`
and `softgl.wasm` in another directory and pass `--reference-build DIR`.
The tool interleaves reference/candidate measurements in alternating AB/BA
order and records raw samples, paired ratios, browser/CPU/compiler metadata,
worker count, and WASM hashes. Increase `--warmup`, `--frames`, and `--rounds`
to confirm a result; `--bench-only` skips image checks for an already validated
binary. Keep test catalogs and compiler flags identical across builds.
For further confirmation, use `--crossover --rounds 10`: the modules swap
browser pages and loading order between rounds. Each reported comparison
combines two rounds geometrically to reduce a consistent page/instance bias.
Both pages are brought to the foreground before their measurements.
Use `--scenes 98_city_block,tank` for focused follow-up measurements.
Measured results and remaining candidates are recorded in
[`bench_report.md`](bench_report.md).

Each sample also records `heapBytes` after rendering, outside the timer.
This is the whole module's linear memory, including worker stacks and
earlier scenes on that page; it does not shrink when a context is freed.
The driver hash records which measurement implementation produced a run.

For quiet-host comparisons on Linux, wrap the same command with
`python3 tools/wasm_quiet_audit.py OUTPUT`, keeping its `--output OUTPUT`
argument. The wrapper waits for three seconds without compiler/test activity
or foreign CPU use of at least 0.10 cores per polling interval. It excludes its own
benchmark descendants, discards interrupted attempts and preserves their logs
and monitor JSON. It records the monitor hash and checks process birth identities
before stopping only its own audit processes. It waits while other work is active.

For CPU sampling, link a separate diagnostic build with
`--profiling-funcs` to retain WASM function names, then pass
`--wasm-build DIR --profile-scene tank --scenes tank --rounds 1`.
The tool writes a separate `.profiles.json` with main-thread and Web-Worker
profiles from an additional render run. Profiling includes setup and is
excluded from the reported benchmark samples; use the ordinary build for
performance decisions.

## Consumer API

```c
#include <GL/softgl.h>

softgl_ctx *ctx = softgl_create(640, 360);
softgl_make_current(ctx);

glMatrixMode(GL_PROJECTION); /* ... all the GL 1.5 stuff ... */

const uint8_t *rgba = softgl_read_rgba8(ctx);   /* row 0 = bottom */
softgl_destroy(ctx);
```

Drawing uses standard GL 1.5. The optional context policy and LOD statistics
are SoftGL-specific functions described under Rendering modes.

## Tank demo

`wasm/tank_wrap.c` drives a T-80 MBT with approximately 44k triangles,
51k vertices, six textured materials, lighting, and a rotating camera.
The native image harness uses the same scene at 0°, 120°, and 240° so the
browser demo is covered by the Mesa comparisons.

Model: "T-80 MBT [MAIN BATTLE TANK]" by Muhamad Mirza Arrafi
(@nazidefenseforceofficial) on Sketchfab, licensed under CC BY 4.0.

## Directory layout

```
libsoftgl/        renderer API, C pipeline, C++ LOD helper, pinned MIT dependency
tests/            harness + test cases + Tank views (both backends + compare)
wasm/             Emscripten preview: CMakeLists, SDL2 blit layer, index.html
```

For a focused BMW browser baseline (asset loading excluded from timing):

```sh
node tools/wasm_perf.cjs --scenes bmw,tank,100_showcase,70_heightfield \
  --rounds 7 --warmup 8 --frames 12 --output build/perf/bmw-baseline.json
node tools/wasm_preview_check.cjs http://localhost:8000/
```

The preview check exercises a full eight-worker pool, all test controls,
benchmark completion/cancellation and context recycling. Render threads
follow the browser's reported processor count, capped at eight.
