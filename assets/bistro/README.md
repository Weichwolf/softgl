# Amazon Lumberyard Bistro

## Source

- Source: [Amazon Lumberyard Bistro](https://github.com/zeux/niagara_bistro/tree/2bdb6a410f8ebd475d3737e7c8e038ed2b00b02e).
- Credit: Amazon Lumberyard; NVIDIA ORCA; Arseny Kapoulkine glTF conversion.
- License: CC-BY-4.0.
- Provenance: [source.json](source.json), including the archive hash and pinned revision where available.
- Original terms: [upstream-LICENSE](upstream-LICENSE).

`source.zip` is the preserved glTF input. Preparation writes generated files
under `build/assets/` and leaves the source archive unchanged.

## Preparation

From the repository root, with the shared [asset environment](../README.md):

```sh
.venv/bin/python tools/prepare_assets.py bistro
```

Preparation settings and the camera are registered in
[models.json](../models.json). Resulting geometry, material and texture counts
are recorded in `build/assets/bistro.json`.

## Rendering notes

Preparation uses the initial unskinned node pose, a nominal 750,000-vertex
budget, a relative weighted simplification error cap of 0.005 and base textures
up to 2048 pixels. The error cap can retain more vertices than the nominal
budget. The source exterior camera is registered in `assets/models.json`.

Native comparisons use the same prepared geometry and texture dimensions.
The browser loads the same geometry and streams those textures in bounded
uploads to stay within the 4 GiB WASM address space. DDS alternate texture
sources remain in the archive. Specular/glossiness materials are approximated
with diffuse color and scalar metallic/roughness values; all preparation
parameters and resulting counts remain in `build/assets/bistro.json`.

The [original NVIDIA ORCA scene](https://developer.nvidia.com/orca/amazon-lumberyard-bistro)
is credited to Amazon Lumberyard and licensed CC BY 4.0. The conversion
repository's separate code license is preserved in `upstream-LICENSE`; it does
not replace the scene attribution.
