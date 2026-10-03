# 2014 BMW 3 Series (F31)

Source: [DisneyCars on Sketchfab](https://sketchfab.com/3d-models/2014-bmw-3-series-f31-71746440f98d48ca9ea41ceeaa3504c7).
License: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/); the original attribution is in `license.txt`.
`source.zip` is the supplied glTF export, preserved as the reproducible input.

Prepare it with NumPy and Pillow installed:

```sh
python3 tools/pack_gltf.py assets/bmw/source.zip --output build/assets/bmw.pack
```

The pack retains all 939,641 triangles, node transforms, 23 materials and
five original textures at their original dimensions. It batches opaque parts
by material and welds only bitidentical complete vertex records, preserving
normals, UV seams, tangents and handedness. This produces 614,066 vertices and
41 parts from the original 614,139 vertices and 258 parts. Transparent parts
keep their separate centers for sorting. Local indices keep each draw's
vertex range small. Tangent frames are prepared offline from authored normals
and UVs. Use `--preserve-parts` to reproduce the original draw layout.
No geometry LOD or approximate mesh simplification is applied.

The renderer uses OpenGL 1.5 VBOs, DOT3 texture combiners, two lighting passes,
alpha blending and cube maps. Diffuse colors and dielectric/metallic reflection
tints use the glTF material parameters. Studio cube maps use the exact material
roughness values with a 128-sample GGX prefilter. Normal maps are derived from
color textures or procedural grain; the archive supplies no normal maps.
Glass parts are drawn after opaque parts, sorted by their view-space centers.

This is an approximation of glTF's material model with fixed texture combiners.
The environment prefilter assumes N=V. Half-vector lighting, finite texture
resolution, clearcoat weighting and part-level transparency sorting cannot
reproduce every aspect of a shader-based glTF PBR renderer. The source
parameters remain recorded in `build/assets/bmw.json`.

The viewer shows the attribution alongside the BMW. Prepared geometry,
normal maps and studio reflections are generated under `build/`.
