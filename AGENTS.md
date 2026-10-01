# Repository Guidelines

## Project Structure & Module Organization

softgl implements an OpenGL 1.5 software renderer in C11.

- `libsoftgl/include/GL/softgl.h`: public API.
- `libsoftgl/src/`: state, transforms, clipping, rasterization, textures, and pthread workers; internal headers stay here.
- `tests/cases/`: numbered rendering cases; `tests/harness/`: softgl/WGL adapters and image comparator.
- `tests/bench/`: benchmarks and `tank_data/` assets; `tools/pack_tank.py`: asset packing.
- `wasm/`: Emscripten build, SDL2 viewer, browser UI, and local server.

## Build, Test, and Development Commands

Native correctness tests require Windows/MSYS2 UCRT64, CMake 3.20+, and `mingw-w64-ucrt-x86_64-mesa`. Run from the UCRT64 shell:

```sh
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build -j4
ctest --test-dir build --output-on-failure -j1
```

These configure, compile, and run the suite. Verify Mesa DLL deployment: falling back to system OpenGL invalidates llvmpipe comparisons. The reference harness is WGL-specific; the full native suite is not portable to Linux.

With Emscripten activated, build and serve the browser preview:

```sh
emcmake cmake -S wasm -B wasm/build
cmake --build wasm/build -j4
cp wasm/build/softgl.js wasm/build/softgl.wasm wasm/
bash wasm/serve.sh 8000
```

Open `http://localhost:8000`. The server supplies COOP/COEP headers required by pthreads. Run native benchmarks from `build/bench/`, for example `./bench_raster.exe`.

## Coding Style & Naming Conventions

Use four-space indentation, same-line braces, and `snake_case`. Preserve `gl*` API names, `softgl_*` integration functions, `sg_*` internals, and `SG_*` constants. Keep helpers `static` where possible. Follow adjacent code; no formatter or linter configuration is tracked. Resolve compiler warnings. Preserve SSE4.1/native and SIMD128/WASM paths, vertex alignment, and bottom-origin framebuffer coordinates.

## Testing Guidelines

CTest runs each case against Mesa and softgl, then compares generated images. Name additions `test_<number>_<description>.c`, include `harness.h`, implement `run_test(int w, int h)`, and register them in `SG_TEST_CASES` in `tests/CMakeLists.txt`. Select related tests with `ctest --test-dir build -R '217_' --output-on-failure`. Inspect images and diffs in `build/out/`. Add regression cases for behavior changes; no numeric coverage target is configured. Do not loosen pixel tolerances merely to hide failures.

## Commit & Pull Request Guidelines

History uses concise, descriptive subjects, often with a subsystem prefix: `WASM viewer: ...` or `Worker bins: ...`. Follow that pattern. PRs should explain the problem, resulting behavior, and validation commands/platforms. Link relevant issues; include before/after images for rendering or viewer changes and benchmark evidence for performance claims. Exclude generated binaries and build directories.
