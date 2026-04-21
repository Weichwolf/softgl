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

322 entry points, 217 test cases × 6 backend/compare variants (1296 total), 100 % green against Mesa llvmpipe.

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

Requires MSYS2 UCRT64 with `mingw-w64-ucrt-x86_64-mesa` for the Mesa llvmpipe reference:

```
cd build
C:/msys64/msys2_shell.cmd -ucrt64 -defterm -no-start -here -c \
  "cmake .. && cmake --build . -j4 && ctest --output-on-failure -j1"
```

The harness wraps OpenGL calls so each test runs once against Mesa llvmpipe
(reference) and once against softgl (both float and fixed-point backends). The
comparator tolerates ~2 % pixel budget at triangle edges (fill-rule diff is
unavoidable without replicating Mesa's exact top-left rule).

Each test case includes `harness.h`, which pulls either `<GL/gl.h>` (reference
build, via Mesa llvmpipe) or `<GL/softgl.h>` based on a build flag. VBO and
multitexture entry points are loaded through `wglGetProcAddress` into `hx_gl*`
pointers and redirected with `#define` macros in the reference build; the
softgl header defines them directly. Immediate-mode functions
(`glBegin`/`glVertex*` etc.) are exported from `opengl32.dll` and need no
proxying. The same `.c` test file therefore compiles against both backends
unchanged.

### WASM (browser preview)

```
cd wasm/cmake-build
cmake -G "MinGW Makefiles" ..
./build_debug.bat       # -O0 -g0, ~30 s; -O2 hangs binaryen on Windows
cp softgl.{js,wasm} ../
cd ../ && ./serve.sh 8000
```

Open http://localhost:8000. The preview page cycles the 217 tests and runs a
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
tests/            harness + 217 test cases (build both backends + compare)
wasm/             Emscripten preview: CMakeLists, SDL2 blit layer, index.html
```

