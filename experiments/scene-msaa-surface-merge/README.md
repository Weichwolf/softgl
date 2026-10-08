# Share MSAA shading across compatible adjacent triangles

Status: read-only native opportunity census implemented; color sharing remains
unimplemented and no performance gain is claimed.

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

The census freezes accepted `0c46e95` and inspects final per-pixel MSAA groups
after winning attributes are available. Same material means the same captured
mesh/program/state. It joins only pairs with exactly two shared vertex indices,
and excludes alpha-tested and clipped triangles. Connected components give an
adjacency-only opportunity bound before stricter normal/UV-footprint/error
criteria. Material-only grouping is a deliberately loose ceiling that also
joins disconnected geometry; it is not an admissible implementation.

For nine Bistro orbit views (0…320° in 40° steps), 2× has 2,716,185 groups and
would save 5.74% with this adjacency rule; 4× has 3,308,547 groups and would
save 10.96%. The loose material-only ceilings are 16.45% and 27.67%. These are
job counts, not FPS gains; connectivity/normal tests cost time and material
costs differ. The clipped exclusion also leaves some legitimate opportunities
unclassified, so this does not prove every surface-sharing approach ineffective.

The instrumented diagnostic changes no pixels, masks, depths or winners. Its
final 160° full-plane hashes match the independent accepted renderer for both
sample counts. Diagnostic times are not performance evidence. Counts and
source/binary identity are archived in [validation](validation/receipt.json).
