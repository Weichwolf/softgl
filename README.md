# softgl

softgl is an OpenGL 1.5 software renderer written in C11. It runs natively and
in the browser through WebAssembly, with the same SIMD128 rendering kernels.
Native x86 uses SSE4.1; WASM uses `simd128`. Neither build uses AVX2 or AVX512.

The browser viewer renders BMW F31, T-80, Sponza and Bistro at 640×360 with
MSAA off, 2× or 4×. All four scenes use the same model adapter and asset tools.
The renderer also has 235 numbered GL rendering cases, checked against Mesa
llvmpipe through a headless OSMesa harness.

## Rendering

The GL pipeline supports vertex arrays and VBOs, immediate mode, display lists,
lighting, multitexturing and DOT3 combiners, 2D/cube textures, fog, depth/stencil,
blending, clipping, pixel transfer, queries, evaluators and selection/feedback.
Color, depth and stencil use bottom-origin framebuffers. Context creation selects
single sampling, 2× MSAA or 4× MSAA.

GL declarations live in `GL/softgl.h`; host context creation and resolved
framebuffer access live separately in `softgl/platform.h`. The core has no SDL
dependency and supports headless rendering. The browser's SDL2 adapter presents
the CPU framebuffer through a streaming texture. Explicit rendering hooks are
being migrated into automatic GL-state-driven optimizations.

Several optimizations are shared by the native and WASM implementations:

- SIMD128 edge coverage, depth tests, texture filtering and MSAA resolve.
- A persistent pthread worker pool with ordered stripe bins; geometry preparation
  and vertex transforms share the workers, and the calling thread helps render.
  The default uses at most three helpers plus the calling thread.
- Conservative hierarchical depth rejection and revision-checked geometry caches.
- Bounded packed draw queues that overlap preparation with rasterization.
- A model scene path that batches triangle packets and material work, shades
  visible samples together and fuses the model's DOT3 material operations.
- Four-sample material sharing that reduces repeated shading within one pixel
  while retaining freshly computed physical coverage and sample depths.

The scene path accepts only supported states and replays through the ordinary
GL path after a failed batch. Pure attribute callbacks supply fresh material
lighting while canonical position/UV arrays permit geometry reuse. Model
materials approximate glTF PBR with GL 1.5 combiners and prepared textures;
rendering differences and asset-specific limits are documented in the
[asset READMEs](assets/README.md). The model path can use approximate shading;
general GL correctness tests retain their established tolerances.

Adopted changes, useful measurements and research references are indexed in
[experiments/INDEX.md](experiments/INDEX.md). Each retained experiment documents
its own result, scope and evidence. Rejected implementations are absent from
`libsoftgl/`; historical archives remain retrievable from Git.

## Prepare assets

Use one project virtual environment and the registered preparation settings:

```sh
python3 -m venv .venv
.venv/bin/pip install -r tools/requirements-assets.txt
.venv/bin/python tools/fetch_gltf_assets.py sponza bistro
.venv/bin/python tools/prepare_assets.py bmw t80 sponza bistro
```

Original sources and provenance live under `assets/<model>/`. Generated packs,
textures and counts live under `build/assets/`. The offline mesh simplifier
requires a C++11 compiler; it is not linked into libsoftgl. Preparation limits
are recorded in [assets/models.json](assets/models.json). All comparison
renderers must receive the same prepared assets and cameras.

## Build and test natively

Linux requires CMake 3.21+, a C11 compiler, pthreads and Mesa OSMesa development
headers/libraries. The Clang 22 preset is used for reproducible native work:

```sh
cmake --preset native-clang22
cmake --build --preset native-clang22
ctest --preset native-clang22
```

For a different installed compiler:

```sh
cmake -S . -B build/native -DCMAKE_BUILD_TYPE=Release
cmake --build build/native -j4
ctest --test-dir build/native --output-on-failure -j1
```

CTest renders every numbered case through Mesa and softgl, then compares the
images. Prepared models add views at 0°, 120° and 240°, with cameras from the
asset registry. Contract tests cover sample planes, SIMD tails, rollback,
worker ordering and state transitions. Output images and diffs live in the
selected native build's `out/` directory. The reference harness verifies that
Mesa actually reports llvmpipe.

The expanded model checks currently exceed the existing pixel budget for Sponza
and Bistro at 0° (5,557 and 4,889 pixels above delta 4; budget 4,608). Both
softgl images match the pre-cleanup renderer byte for byte. These existing Mesa
differences remain visible as failing checks; the tolerance is unchanged.

Run a related case or the optional native benchmarks explicitly:

```sh
ctest --test-dir build/native-clang22 -R '217_' --output-on-failure
build/native-clang22/bench/bench_raster
ctest --test-dir build/native-clang22 -C Bench -R benchmark_fp6
```

Measure all prepared models at 640×360 with 4× MSAA and three helpers plus the
calling thread. Loading and image writes are outside the complete-frame timing;
the first round saves images at 0°, 120° and 240°:

```sh
.venv/bin/python tools/model_bench.py --output build/perf/native-models.json
```

Use `--reference /path/to/previous/model_bench` for alternating paired runs.

## Build and serve WASM

With Emscripten activated:

```sh
export EM_CACHE="$PWD/build/emscripten-cache"
export EM_FROZEN_CACHE=0
emcmake cmake -S wasm -B build/wasm
cmake --build build/wasm -j4
bash wasm/serve.sh 8000
```

Open <http://localhost:8000/>. The server supplies COOP/COEP headers for pthreads.
The generated module, UI and prepared assets live together under `build/wasm/`.
No copying into the source directory is needed. Reconfigure after changing
assets or adding/renaming test cases. WASM memory is capped at 4 GiB; Bistro's
texture uploads avoid keeping a second complete pack inside that address space.

The viewer provides model selection, MSAA selection, the GL test cycle and an
interactive benchmark. Model sources and licenses are documented in `assets/`.

## Browser validation and measurements

The browser tools require Node.js, Playwright and Chromium:

```sh
npm ci --prefix tools
node tools/wasm_preview_check.cjs http://localhost:8000/
node tools/wasm_perf.cjs --native-build build/native-clang22 --images-only \
  --output build/perf/wasm-images.json
```

`wasm_perf.cjs` reads the native CTest tolerance manifest and compares WASM
frames with the same Mesa references. The same model loader, registry cameras
and prepared packs apply to all four model scenes. The current WASM build passes
all 235 GL cases; nine model views (BMW, Sponza and Bistro) exceed that same
Mesa budget with the viewer's optimized material/quantization path. These
comparisons still report failure rather than silently widening tolerances.
Model image checks honor `--samples`; GL cases keep their single-sample reference
contexts. Use `--samples 4 --save-images` to save model snapshots alongside the
JSON result for before/after comparisons.
The existing OSMesa image references use single sampling, so 4× model snapshots
are suitable for comparisons with another 4× build; their differences against
those Mesa references include the different sampling mode.

For focused browser measurements, resolve cost is included and asset loading
is outside the timed interval:

```sh
node tools/wasm_perf.cjs --native-build build/native-clang22 --bench-only \
  --scenes bmw,t80,sponza,bistro --samples 4 --rounds 7 --warmup 20 --frames 60 \
  --output build/perf/models-msaa4.json
```

Performance work uses 640×360 and SIMD128. Judge results from repeated paired
measurements, with complex scenes weighted Bistro > Sponza > BMW > T-80.
Do not infer gains from counters, reduced triangle counts or a single FPS readout.

## Layout

| Directory | Purpose |
| --- | --- |
| `libsoftgl/` | Public GL API and the C11 renderer |
| `tests/cases/` | Rendering cases numbered `001` through `235` |
| `tests/harness/` | softgl/OSMesa adapters and image comparison |
| `tests/bench/` | Native benchmark and shared model image drivers |
| `wasm/` | Build recipe, viewer and COOP/COEP server |
| `assets/` | Model registry, source archives and provenance |
| `tools/` | Shared asset, validation and measurement tools |
| `experiments/` | Retained improvements, findings and research |
| `build/` | Generated artifacts; ignored by Git |
| `.venv/` | Python environment; ignored by Git |
