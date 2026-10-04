# softgl

GL 1.5 software renderer in C11 — fixed-point SIMD rasterizer, pthread tile pool,
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
- Optional 2x/4x MSAA: sample coverage, alpha-to-coverage and alpha-to-one
- Sutherland-Hodgman frustum clipping, back-face cull, clip planes
- Pixel transfer (`glDrawPixels`/`ReadPixels`/`CopyPixels`/`PixelStore`/`PixelZoom`/`RasterPos`)
- Occlusion queries, `glMapBuffer`, comprehensive `glGet*` state readback
- Evaluators (`glMap1`/`glMap2`), accumulation buffer, selection / feedback modes

323 entry points, 234 test cases plus three Tank and three BMW camera views. Each runs
against softgl and Mesa llvmpipe, followed by a pixel comparison
(720 image correctness checks plus eighteen renderer contracts when the
BMW asset is prepared; `ctest -C Bench` also includes the native benchmark).

## Model preparation

SoftGL renders the geometry supplied by the application with normal OpenGL 1.5
semantics. There is no runtime mesh simplification, LOD cache or Performance
mode. Model complexity is chosen offline during asset preparation.

The BMW packer targets approximately 50,000 vertices using attribute-aware
quadric simplification with meshoptimizer. It protects interfaces between parts,
retains small parts such as badges and number plates, and includes normals and
UVs in its error metric. Tangents are rebuilt for the prepared geometry; all
materials and original texture dimensions remain available. Use
`--target-vertices 0` to prepare full detail for appearance comparisons.

## Architecture

- **Pineda edge functions** in 16.8 fixed-point with i64 accumulator; 2×2-quad SIMD via SSE4.1 / `wasm_simd128`
- **Early-Z** before scalar texture shading when depth testing is enabled and stencil is disabled; the SIMD path also requires alpha testing disabled
- **Packed 2-row 64-bit framebuffer I/O** for depth load / blend-dst load / color write
- **AoS 16-byte aligned vertex** with vec4 clip / ndc / color / normal / eye + per-unit UVs
- **Separate RGBA8 color + f32 depth planes**, row 0 = bottom (GL convention)
- **Optional MSAA sample buffers**, with color/depth/stencil per sample and one texture/combiner evaluation per covered pixel; SIMD resolves four pixels at a time in both 2x and 4x modes
- **Exact four-sample coverage SIMD** bounds all sample edges over each triangle rectangle before testing four sample lanes together; larger ranges retain i64 coverage
- **Direct WASM pseudo-min/max color clamps** preserve each combiner stage, NaN payloads and signed zero; native SSE4.1 retains its existing path
- **SIMD texture addresses** wrap/clamp four pixels together and share bilinear row offsets; full packets coalesce adjacent tap pairs into bounded 64-bit loads; prepared power-of-two masks shorten REPEAT addressing while filtering arithmetic stays unchanged
- **Exact additive 2×/4× MSAA blending** uses native saturated byte addition when a conservative rounding guard proves parity with the float writer; boundary and exceptional values retain the float path
- **Separate 2× MSAA sample writer** vectorizes depth tests and common opaque/blended writes with bounded 64-bit loads/stores; alpha/stencil/logic/query/color-mask states retain the scalar fallback
- **Opaque 2×/4× MSAA stores** reuse the rasterizer's tested sample mask and convert RGBA with SIMD; other fragment states retain the general writer
- **Hierarchical 4× sample depth** rejects fully hidden triangles with conservative 4×4-cell bounds; the optional table is capped at 256KiB, and WASM keeps the 2×/4× raster loops separate from the common rasterizer
- **Packed large raster draws** retain exact float NDC, front color, eye.z and every active UV set (64 bytes with one UV set); a 64-entry collision-safe vertex cache feeds the existing rasterizer, allowing formerly oversized draws to overlap preparation within the 2MiB submitted-vertex budget
- **Pthread tile worker pool** with X-stripe bins; a four-slot queue overlaps filled multitexture draws while preserving order within each stripe, with a shared 2MiB budget for retained raw and packed vertex arrays; ordinary full/packed draws retain their bounded snapshots, and the caller helps drain outstanding bins
- **Compact DOT3 queue payloads** retain exact float raster fields and UVs consumed by nonconstant samplers, using 48–96 bytes per vertex and a private 64-entry decoded cache per rendering thread; small and other-state draws retain raw ownership swaps
- **Position and ordered-bin cache** shares a 4MiB payload budget; VBO storage revisions and matrix/viewport keys preserve fresh attributes and lighting across draws
- **Prepared vertex inputs** resolve array/VBO addresses once per joined vertex job; bounded SIMD loads serve float arrays, with the original conversions for other types; identical enabled UV arrays share one fetch within the job
- **Parallel triangle preparation** shares the same workers and caller for 128-triangle slices; exact culling, bounds and bin descriptors use at most 224KiB retained scratch (448KiB during growth), then the caller appends in primitive order; clipping and small/ineligible jobs retain the original path
- **Automatic WASM pool** uses at most three workers plus the calling thread, capped at the reported logical CPU count; explicit worker counts remain available, and a one-CPU browser renders without raster workers
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
GGX-filtered studio cube maps. The source contains 939,641 triangles; the
prepared pack targets approximately 50,000 vertices. See
[asset preparation and attribution](assets/bmw/README.md) for fidelity limits.
Selecting BMW before **Run Benchmark** adds it to the interactive benchmark.
The benchmark runs MSAA off, 2× and 4× sequentially, appends all three passes
to the log, then restores the selected MSAA setting. It yields between frames
and can be stopped. Scene switches
release the active render context before starting the next one.

### Native (test suite)

Requires an x86 CPU with SSE4.1, GCC or Clang, CMake 3.20+, pthreads,
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
live Tank demo with pthread tile workers. Its **MSAA** selector switches the
model viewer and interactive benchmark between off, 2x and 4x. Correctness tests
use single-sample contexts. Applications select samples through
`softgl_create_multisample(w, h, samples)` at context creation; the default
`softgl_create` remains single-sample. `GL_MULTISAMPLE` starts enabled and controls
sample coverage within a multisample context. The GL states and
`glSampleCoverage` follow [OpenGL 1.5 sections 3.2.1 and 4.1.3](https://registry.khronos.org/OpenGL/specs/gl/glspec15.pdf).

Threads require a secure browser
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
node tools/wasm_perf.cjs --bench-only --samples 4 --scenes bmw,tank \
  --output build/perf/msaa4.json
```

`--samples` selects 0, 2 or 4 samples for benchmarks and profiles. Multisample
timings include resolve on every frame; the Mesa image gate uses single samples.

Compare prepared model appearance against full source geometry with the same
renderer (C++11 is required only for the offline simplifier):

```sh
build/python/bin/python tools/pack_gltf.py assets/bmw/source.zip \
  --target-vertices 0 --output build/assets/bmw-original.pack
node tools/wasm_model_check.cjs build/model-check build/wasm \
  build/assets/bmw-original.pack build/assets/bmw.pack
```

The appearance tool captures twelve original/prepared views, reports image and
silhouette differences and verifies that runtime simplification APIs are absent.
These asset diagnostics are separate from the unchanged Mesa regression gate.

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
Comparisons require equal worker counts by default. For pool-sizing changes,
pass both `--candidate-workers N` and `--reference-workers N` to assert the
expected counts for each build. These options validate the observed counts;
they do not set the renderer's pool size. Results record `workerCounts` and
each scene's actual worker count on both sides.
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

Drawing uses standard GL 1.5. Sample-buffer selection through
`softgl_create_multisample` is specific to SoftGL context creation.

## Tank demo

`wasm/tank_wrap.c` drives a T-80 MBT with approximately 44k triangles,
51k vertices, six textured materials, lighting, and a rotating camera.
The native image harness uses the same scene at 0°, 120°, and 240° so the
browser demo is covered by the Mesa comparisons.

Model: "T-80 MBT [MAIN BATTLE TANK]" by Muhamad Mirza Arrafi
(@nazidefenseforceofficial) on Sketchfab, licensed under CC BY 4.0.

## Directory layout

```
libsoftgl/        renderer API, C pipeline; pinned MIT dependency for offline preparation
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
