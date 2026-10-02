# softgl

GL 1.5 software renderer in C — fixed-point SIMD rasterizer, pthread tile pool,
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

322 entry points, 218 test cases. Each case runs against softgl and Mesa
llvmpipe, followed by a pixel comparison (654 correctness checks).

## Architecture

- **Pineda edge functions** in 16.8 fixed-point with i64 accumulator; 2×2-quad SIMD via SSE4.1 / `wasm_simd128`
- **Early-Z** active when `depth_test && !alpha_test`
- **Packed 2-row 64-bit framebuffer I/O** for depth load / blend-dst load / color write
- **AoS 16-byte aligned vertex** with vec4 clip / ndc / color / normal / eye + per-unit UVs
- **Separate RGBA8 color + f32 depth planes**, row 0 = bottom (GL convention)
- **Pthread tile worker pool** for X-stripe binning; shared vertex pool for parallel transform
- **Single rasterizer** (`rasterizer.c::sg_raster_triangle`); per-lane scalar fallback only for stencil / polygon stipple / color logic op / occlusion queries (pixel-serial state)

## Building

### Native (test suite)

Requires an x86 CPU with SSE4.1, GCC or Clang, CMake 3.20+, pthreads,
Mesa OSMesa development libraries. On Debian/Ubuntu:

```sh
sudo apt install build-essential cmake libosmesa6-dev
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build -j4
ctest --test-dir build --output-on-failure -j1
```

The OSMesa harness renders without a display server, requests RGBA8 color,
24-bit depth, 8-bit stencil, and a 16-bit accumulation buffer, and verifies
that the reference renderer is Mesa llvmpipe. Raw images and PPM diffs are
written to `build/out/`. The comparator uses the per-case tolerances in
`tests/CMakeLists.txt`, typically a ~2 % pixel budget at triangle edges.

Each test includes `harness.h`, which selects `<GL/gl.h>` and extension
prototypes for the Mesa reference build, or `<GL/softgl.h>` for softgl.
The same `.c` test file compiles against both backends unchanged.

The scene benchmark is separate from the correctness suite:

```sh
ctest --test-dir build -C Bench -L bench --output-on-failure
```

### WASM (browser preview)

```sh
emcmake cmake -S wasm -B wasm/build
cmake --build wasm/build -j4
cp wasm/build/softgl.js wasm/build/softgl.wasm wasm/
bash wasm/serve.sh 8000
```

Open http://localhost:8000. The preview page cycles the 218 tests and runs a
live Tank demo with pthread tile workers (requires COOP/COEP headers —
`serve.sh` sets them).

## Consumer API

```c
#include <GL/softgl.h>

softgl_ctx *ctx = softgl_create(640, 360);
softgl_make_current(ctx);

glMatrixMode(GL_PROJECTION); /* ... all the GL 1.5 stuff ... */

const uint8_t *rgba = softgl_read_rgba8(ctx);   /* row 0 = bottom */
softgl_destroy(ctx);
```

That's the full integration surface. Everything else is standard GL 1.5.

## Tank demo

`tests/harness/tank_wrap.c` drives a ~190k-triangle T-80 MBT with multi-unit
texturing, DOT3 bump, fog, and a rotating camera — end-to-end exercise of the
pipeline.

Model: "T-80 MBT [MAIN BATTLE TANK]" by Muhamad Mirza Arrafi
(@nazidefenseforceofficial) on Sketchfab, licensed under CC BY 4.0.

## Directory layout

```
libsoftgl/        the renderer (include/GL/softgl.h, src/*.c)
tests/            harness + 218 test cases (build both backends + compare)
wasm/             Emscripten preview: CMakeLists, SDL2 blit layer, index.html
```
