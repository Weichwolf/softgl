# 2014 BMW 3 Series (F31)

## Source

- Source: [2014 BMW 3 Series (F31)](https://sketchfab.com/3d-models/2014-bmw-3-series-f31-71746440f98d48ca9ea41ceeaa3504c7).
- Credit: DisneyCars.
- License: CC-BY-4.0.
- Provenance: [source.json](source.json), including the archive hash and pinned revision where available.
- Original terms: [license.txt](license.txt).

`source.zip` is the preserved glTF input. Preparation writes generated files
under `build/assets/` and leaves the source archive unchanged.

## Preparation

From the repository root, with the shared [asset environment](../README.md):

```sh
.venv/bin/python tools/prepare_assets.py bmw
```

Preparation settings and the camera are registered in
[models.json](../models.json). Resulting geometry, material and texture counts
are recorded in `build/assets/bmw.json`.

## Rendering notes

The source contains 939,641 triangles and 614,139 vertices. Preparation targets
50,000 vertices with attribute-aware quadric simplification, retains all 23
materials and original texture dimensions, and preserves small parts such as
badges and number plates. Shared material boundaries, normals and UVs contribute
to the error metric; tangents are rebuilt afterwards.

The GL 1.5 material approximation uses DOT3 lighting, generated normal maps and
128-sample GGX-filtered studio cube maps. The source provides no normal maps.
Glass is blended after opaque geometry and sorted by part centers. The fixed
combiners and part sorting approximate glTF PBR; source parameters and generated
counts remain in `build/assets/bmw.json`.
