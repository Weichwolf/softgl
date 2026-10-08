# Share MSAA shading across compatible adjacent triangles

Status: own adaptation hypothesis; not implemented or measured.

Our deferred renderer already packs fragments from independent triangles into
SIMD128 lanes and shades only final winners. The remaining cost can include
multiple shading jobs within one pixel for triangles that belong to the same
smooth surface. Test merging those jobs, preserving every real sample's
coverage, triangle winner and depth while distributing one representative color
to their sample masks. This changes shading, not geometric sample coverage.

Candidate compatibility rules: same immutable material/program, proven mesh
adjacency, matching shared-edge UVs and sufficiently similar interpolated normal,
view direction and depth. Do not merge across texture seams, distinct objects,
cutout decisions or sharp normal boundaries. A normal/material-only comparison
is insufficient to establish connectivity. First census how many jobs qualify;
if few do, stop before paying connectivity/shader-input overhead.

The approximation needs explicit quality measurements at camera views and
silhouette/texture edges, including specular highlights. Compare total native
640×360 frame time, not merely fewer shading invocations. Both C11 SIMD128 and
WASM retain a strict fallback; no native wider SIMD. Uniform 4× sample depths
remain available. No factor-eight or double-digit speedup is claimed.

Sources: [Fatahalian et al., SIGGRAPH 2010](https://graphics.stanford.edu/papers/fragmerging/),
[A4 section 5.3.2](https://fileadmin.cs.lth.se/graphics/research/papers/2013/a4/a4.pdf)
and our [current shading stage](../../libsoftgl/src/scene_visibility.c).
The previous [cross-triangle FIFO](../cross-triangle-packets/README.md) only
repacked lanes while retaining independent shading; it did not implement this
surface-sharing proposal and was rejected on an older pipeline.
