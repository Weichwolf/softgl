# Repository Guidelines

## Project Structure & Module Organization

softgl implements an OpenGL 1.5 software renderer in C11.

- `libsoftgl/include/GL/softgl.h`: GL rendering API; the remaining explicit rendering integrations are being replaced by automatic internal paths.
- `libsoftgl/include/softgl/platform.h`: separate platform-neutral context and framebuffer API for SDL and headless hosts.
- `libsoftgl/src/`: state, transforms, clipping, rasterization, textures, scene batching and pthread workers; internal headers stay here.
- `tests/cases/`: rendering cases numbered `001` through `235`; `tests/harness/`: softgl/OSMesa adapters and image comparator.
- `tests/bench/`: native benchmarks and the shared model image driver.
- `assets/<model>/`: original sources, `source.json`, README and license metadata; `assets/models.json`: common preparation settings and cameras.
- `tools/`: shared glTF preparation, browser validation and measurement tools; `tools/experiment_support/`: shared experiment drivers.
- `wasm/`: Emscripten build, SDL2 viewer, browser UI and local server. All models use `model_wrap.c`.
- `experiments/`: adopted improvements, useful findings and relevant research. `INDEX.md` has one row per experiment with status and finding; details and sources belong in each subfolder README.

## Build, Test, and Development Commands

Native tests currently use Linux and headless Mesa OSMesa, not WGL. Install CMake 3.21+, a C11 compiler and OSMesa development headers/libraries. The native comparison preset uses Clang 22:

```sh
cmake --preset native-clang22
cmake --build --preset native-clang22
ctest --preset native-clang22
```

An ordinary compiler build can use `cmake -S . -B build/native -DCMAKE_BUILD_TYPE=Release`, followed by `cmake --build build/native -j4` and `ctest --test-dir build/native --output-on-failure -j1`. The reference harness requires llvmpipe and rejects other GL renderers.

Use `.venv/` for the project Python environment. Prepare all models through the same tools before configuring model tests:

```sh
python3 -m venv .venv
.venv/bin/pip install -r tools/requirements-assets.txt
.venv/bin/python tools/fetch_gltf_assets.py sponza bistro
.venv/bin/python tools/prepare_assets.py bmw t80 sponza bistro
```

With Emscripten activated, build and serve the browser preview:

```sh
export EM_CACHE="$PWD/build/emscripten-cache"
export EM_FROZEN_CACHE=0
emcmake cmake -S wasm -B build/wasm
cmake --build build/wasm -j4
bash wasm/serve.sh 8000
```

Open `http://localhost:8000/`. The server supplies COOP/COEP headers required by pthreads. Build products and copied assets belong under `build/wasm/`; no source-directory binary copies are required. Reconfigure after asset or test catalog changes. Update the WASM build after accepted changes so the running viewer reflects the current source. Keep model attribution in the repository rather than the viewer UI.

## Coding Style & Naming Conventions

Use four-space indentation, same-line braces and `snake_case`. Preserve `gl*` API names, `softgl_*` platform functions, `sg_*` internals and `SG_*` constants. Keep helpers `static` where possible. Follow adjacent code; no formatter or linter configuration is tracked. Resolve compiler warnings. Rendering optimizations belong inside the GL pipeline and must not require application-specific hooks. Keep context/framebuffer declarations in the separate platform header; the core must not depend on SDL. Remove obsolete interfaces and rejected experimental implementations from `libsoftgl/`.

Native and WASM libsoftgl must both use SIMD128 exclusively. Do not add AVX2/AVX512 paths or wider auto-vectorization. Preserve SSE4.1/native and SIMD128/WASM paths, vertex alignment and bottom-origin framebuffer coordinates. WASM must fit within its 4 GiB memory limit. Asset reductions happen through the common offline tools; compare renderers using identical prepared assets, texture dimensions and cameras. Avoid model-specific adapters or test infrastructure.

## Testing Guidelines

CTest renders each case through Mesa and softgl, then compares generated images. Name additions `test_<three-digit-number>_<description>.c`, include `harness.h`, implement `run_test(int w, int h)` and register them in `SG_TEST_CASES` in `tests/CMakeLists.txt`. WASM dispatch is generated from the same case files in numerical order.

Select related tests with `ctest --test-dir build/native-clang22 -R '217_' --output-on-failure`. Inspect images and diffs in that build's `out/`. Every available prepared model gets the same three-angle test registration through `model_image.c` and the registry camera. Add regression cases for behavior changes; no numeric coverage target is configured. Do not loosen pixel tolerances to hide failures. Preserve historical experiment receipts and hashes; current drivers may be relocated without rewriting measured snapshots.

Performance work uses 640×360 natively, with the same SIMD width as WASM. Verify changes with repeated paired runs; prioritize complex scenes in the order Bistro > Sponza > BMW > T-80. Resume paused optimization work only when the user requests it.

## Commit & Pull Request Guidelines

Use concise descriptive subjects, often with a subsystem prefix such as `WASM viewer:` or `Worker bins:`. PRs should explain the problem, resulting behavior and validation commands/platforms. Link relevant issues; include before/after images for rendering changes and benchmark evidence for performance claims. Exclude generated binaries, build directories and `.venv/`. Commit and push accepted improvements as requested by the user.
