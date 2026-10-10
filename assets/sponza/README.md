# Sponza

## Source

- Source: [Sponza](https://github.com/KhronosGroup/glTF-Sample-Assets/tree/edc7c9e67c639d230715049ee31f9a96a6babbbe/Models/Sponza).
- Credit: Crytek; Khronos glTF conversion.
- License: LicenseRef-CRYENGINE-Agreement (model); CC-BY-4.0 (metadata).
- Provenance: [source.json](source.json), including the archive hash and pinned revision where available.
- Original terms: [license.txt](license.txt), [upstream-LICENSE.md](upstream-LICENSE.md), [upstream-metadata.json](upstream-metadata.json).

`source.zip` is the preserved glTF input. Preparation writes generated files
under `build/assets/` and leaves the source archive unchanged.

## Preparation

From the repository root, with the shared [asset environment](../README.md):

```sh
.venv/bin/python tools/prepare_assets.py sponza
```

Preparation settings and the camera are registered in
[models.json](../models.json). Resulting geometry, material and texture counts
are recorded in `build/assets/sponza.json`.

## Rendering notes

Preparation retains source geometry and original texture dimensions. The
normalized interior camera is registered in `assets/models.json`. Metallic and
roughness texture averages become scalar material parameters for the common
GL 1.5 material approximation.

The CRYENGINE Limited License Agreement applies to the model. CC BY 4.0 applies
to the Khronos metadata, not to the model as a whole. The upstream terms are
preserved in `upstream-LICENSE.md`, `upstream-metadata.json` and `license.txt`.
