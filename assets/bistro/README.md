# Amazon Lumberyard Bistro

[Amazon Lumberyard Bistro, NVIDIA ORCA](https://developer.nvidia.com/orca/amazon-lumberyard-bistro)
by Amazon Lumberyard (2017), licensed
[CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).
The glTF conversion is [Arseny Kapoulkine's Niagara Bistro](https://github.com/zeux/niagara_bistro),
pinned revision `2bdb6a410f8ebd475d3737e7c8e038ed2b00b02e`.
The conversion repository's own license is retained as `upstream-LICENSE`;
it does not replace the original scene attribution.

Fetch with `python3 tools/fetch_gltf_assets.py bistro`; prepare with
`python3 tools/prepare_assets.py bistro`. The local source ZIP retains glTF,
geometry, animation data and DDS textures. The large ZIP is not committed.
Preparation uses the initial unskinned node pose, a nominal 750,000-vertex
budget, a 0.005 relative weighted error cap and textures up to 2048 pixels.
The error cap can retain more vertices than the nominal budget. The source
glTF exterior camera is used. All three comparison renderers receive the same
prepared geometry and base-texture dimensions. Browser textures are streamed
at those dimensions to limit temporary allocations under the 4 GiB WASM cap. Specular/glossiness materials are approximated
by diffuse color and scalar metallic/roughness values. The source is unchanged;
all approximation parameters are recorded in `build/assets/bistro.json`.
