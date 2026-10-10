# Model assets

BMW F31, T-80, Sponza and Bistro use one glTF preparation pipeline and the same
`wasm/model_wrap.c` renderer adapter. The registry in [models.json](models.json)
contains preparation limits and cameras. Renderer comparisons must use identical
prepared geometry, textures and cameras.

| Asset | Source and rendering notes | Provenance |
| --- | --- | --- |
| BMW F31 | [README](bmw/README.md) | [source.json](bmw/source.json) |
| T-80 | [README](t80/README.md) | [source.json](t80/source.json) |
| Sponza | [README](sponza/README.md) | [source.json](sponza/source.json) |
| Bistro | [README](bistro/README.md) | [source.json](bistro/source.json) |

## Preparation

Use the project virtual environment for all Python asset tools:

```sh
python3 -m venv .venv
.venv/bin/pip install -r tools/requirements-assets.txt
.venv/bin/python tools/fetch_gltf_assets.py sponza bistro
.venv/bin/python tools/prepare_assets.py bmw t80 sponza bistro
```

BMW and T-80 use the supplied Sketchfab archives. Sponza and Bistro are fetched
at pinned upstream revisions; their large archives and download caches remain
local. Each asset keeps the same `source.json` schema: source, credit, license,
archive size and SHA-256, plus repository/revision when applicable. Original
license texts remain beside it. Attribution is documented here in the repository.

`prepare_assets.py` applies the registered settings through `pack_gltf.py`.
The pinned [meshoptimizer helper](../tools/third_party/meshoptimizer/README.md)
uses a C++11 compiler for offline simplification and is built under `build/tools/`.
The renderer remains C11. Generated packs, textures and preparation receipts live
under `build/assets/`; no source mesh is modified.

Bistro also produces a geometry pack and a texture manifest for bounded browser
uploads. Both represent the same prepared asset as the native pack. Texture
limits and simplification limits are explicit in the registry and resulting JSON.

## Validation

After building the native library, the shared model upload probe checks UV
orientation and pixel identity between packed and streamed texture uploads:

```sh
clang-22 -O3 -msse4.1 -ffast-math -fno-associative-math -fsigned-zeros \
  -fno-finite-math-only -Ilibsoftgl/include tools/model_upload_check.c \
  wasm/model_wrap.c build/native-clang22/libsoftgl/libsoftgl.a -lm -pthread \
  -o build/model-upload-check
.venv/bin/python tools/asset_pack_check.py --driver build/model-upload-check
```

CTest registers three camera views for every prepared model using the common
image harness. Reconfigure the native and WASM builds after preparing assets.
