# Primitive IDs with globally shared final visible surfaces

Status: not adopted. One balanced native screening block regresses BMW/T-80/
Sponza/Bistro by +7.68/+11.89/+22.05/+16.69%. All 36 off views have identical RGB
and depth/stencil/sample planes. The 216-pair quantized contract passes with the
new primitive-winner API OFF; it does not validate enabled-mode rollback. No
all-mode confirmation or WASM adoption was pursued after this failed screen.
The serial post-visibility global surface preparation motivates a separate
parallel variant. Full attempts/source/binary hashes are in screening/.

The accepted scene renderer creates a 320-byte winning-triangle record per
raster bin whenever a triangle first passes depth, even when a later triangle
hides it. Large triangles get duplicate records in many stripes. This original
C11 architecture trial writes the already stable canonical primitive ID into
the visibility buffer, creates one shared surface only for each final visible
primitive after all raster work joins, and rewrites final pixel winners to a
dense surface index. The existing material shader then reads one shared record
directly, without an extra shader-time surface-map lookup. Late attributes and
clipped interpolation are prepared once per visible primitive across all bins.

Only explicitly opted-in canonical quantized scenes use this representation.
Unsupported producers/precision fail the scene transaction for complete caller
replay rather than mixing incompatible winner IDs. Ordinary/default/legacy and
MSAA retain their accepted paths. Shared surfaces use the original combined
128 MiB triangle budget; per-task primitive-to-surface maps have a separate
32 MiB cap. Current-frame geometry, depth/alpha math, strict LESS order, textures,
callbacks, cameras and final shading remain; no previous image or depth cache,
asset reduction, extra approximation or wider ISA is introduced.

Sources: original C11 extension of accepted d5e79c7
[scene visibility](../../libsoftgl/src/scene_visibility.c) and
[canonical geometry](../../libsoftgl/src/geometry.inc).
Unlike the rejected [compact surfaces](../scene-compact-surfaces/README.md),
this removes per-bin record creation/duplicates and shader-time indirection,
not merely splitting the same per-bin metadata and attribute payload.

Prepare/build with Clang22 Release using this folder, then check_quality.py
--samples 0 and resident_trial.py --pairs 1 --samples 0 at 640×360 with all four
shared packs/cameras and caller plus three helpers. Initial screening does not
establish adoption. Enabled-mode/rollback/quality/independent all-mode/sanitizer/
WASM gates are required before any production change.
