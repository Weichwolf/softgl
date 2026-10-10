# T-80 MBT

## Source

- Source: [T-80 MBT](https://sketchfab.com/3d-models/t-80-mbt-main-battle-tank-2daa7c41afbb4778af59d74acb26356c).
- Credit: Muhamad Mirza Arrafi.
- License: CC-BY-4.0.
- Provenance: [source.json](source.json), including the archive hash and pinned revision where available.
- Original terms: [license.txt](license.txt).

`source.zip` is the preserved glTF input. Preparation writes generated files
under `build/assets/` and leaves the source archive unchanged.

## Preparation

From the repository root, with the shared [asset environment](../README.md):

```sh
.venv/bin/python tools/prepare_assets.py t80
```

Preparation settings and the camera are registered in
[models.json](../models.json). Resulting geometry, material and texture counts
are recorded in `build/assets/t80.json`.

## Rendering notes

Preparation retains source geometry and original texture dimensions. It uses
the same glTF/SGLM packer, material approximation and `wasm/model_wrap.c` adapter
as the other scenes. There is no separate OBJ pack format or tank renderer.
