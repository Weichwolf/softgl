# Sponza

[Crytek Sponza glTF from Khronos](https://github.com/KhronosGroup/glTF-Sample-Assets/tree/edc7c9e67c639d230715049ee31f9a96a6babbbe/Models/Sponza),
pinned revision `edc7c9e67c639d230715049ee31f9a96a6babbbe`.
The upstream identifies the model's license as the CRYENGINE Limited License
Agreement and the metadata as CC BY 4.0; see `upstream-LICENSE.md`,
`upstream-metadata.json` and `license.txt`. The metadata license is not a blanket
CC license for the model. Source data remain local under `assets/sponza/`.

Fetch with `python3 tools/fetch_gltf_assets.py sponza`; prepare with
`python3 tools/prepare_assets.py sponza`. Source geometry is normalized and
retained without simplification or texture resizing; scalar material values
include metallic/roughness texture averages. The source remains intact.
The normalized interior camera is registered in `assets/models.json`.
