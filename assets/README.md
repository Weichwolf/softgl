# Registered glTF scenes

BMW, T-80, Sponza and Bistro use the same `tools/pack_gltf.py` preparation and
`wasm/model_wrap.c` OpenGL 1.5 renderer. Their source archives are stored beneath
`assets/<name>/`; `models.json` records attribution, preparation settings and
normalized camera coordinates. Prepared packs and numerical receipts go into
`build/assets/<name>.pack` and `.json`.

```sh
python3 -m venv build/python
build/python/bin/pip install -r tools/requirements-assets.txt
build/python/bin/python tools/fetch_gltf_assets.py sponza bistro
build/python/bin/python tools/prepare_assets.py bmw t80 sponza bistro
emcmake cmake -S wasm -B build/wasm
cmake --build build/wasm -j4
bash wasm/serve.sh 8000
```

The supplied Sketchfab BMW and T-80 ZIPs are preserved, including their license
files. Their temporary signed download credentials are never committed.
Sponza and Bistro are downloaded from pinned upstream revisions; `source.json`
records the local archive hash. Their large archives and intermediate downloads
stay local and are reproducible using the fetch tool.

BMW uses its 50,000-vertex detail budget; T-80 and Sponza retain source geometry
and texture dimensions. Bistro uses a nominal 750,000-vertex budget with a 0.005
relative weighted error cap and a 2048-pixel texture limit. The cap preserves
detail even if it requires more vertices than the budget. Every renderer receives
the same prepared geometry, texture dimensions and camera. These settings are
asset preparation, not renderer speedups. Original ZIPs remain in `assets/`.

Bistro uses a streamed SGLM v3 browser pack derived from the identical native v2
pack. Effective material textures are uploaded individually; identical uploads
are shared. No additional mesh or texture reduction occurs in the browser.
The module has a 4 GiB memory limit. `tools/check_prepared_assets.py` checks the
registered geometry settings and error bounds.

The fixed-function material approximation reduces metallic/roughness textures
to channel averages and maps specular/glossiness to scalar parameters. Normal
maps are derived/procedural and studio reflections are prefiltered offline.
The JSON preserves both source and effective material parameters and records
approximations. Bistro retains DDS alternate texture sources in its glTF ZIP;
Pillow decodes them during preparation. Its initial unskinned animation pose is
used. The fetch tool retains the original glTF and binary animation data.

`tests/bench/tank_data/tank.pack` retains the original OBJ reference workload
for regression tests. The single `T-80` viewer entry uses the supplied glTF through the same
model path as the other three scenes; timings for the two workloads are distinct.
Each scene's README and source license identify the asset owner and terms.

Packing regression check (Clang 22 native library already built):

```sh
clang-22 -O3 -msse4.1 -ffast-math -fno-associative-math -fsigned-zeros \
  -fno-finite-math-only -Ilibsoftgl/include tools/model_upload_check.c \
  wasm/model_wrap.c build/native-clang22/libsoftgl/libsoftgl.a -lm -pthread \
  -o build/model-upload-check
build/python/bin/python tools/asset_pack_check.py --driver build/model-upload-check
```

The asymmetric four-color texture detects UV mirroring; the probe also requires
byte-identical rendered pixels from native and streamed material uploads.
