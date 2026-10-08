# Vector loads for material attribute gathers

Status: not adopted. All 36 off views have byte-identical RGB/depth/stencil/
sample planes and the 216-pair quantized/16-rollback contract passes. One
balanced off screening block gives BMW/T-80/Sponza/Bistro +0.59/+1.58/-1.51/
-2.69% frame time: no broad advantage, no independent full adoption checks.
Attempts and source/binary/asset hashes are preserved in screening/.

Load complete aligned color and half-vector attributes from the four winning
triangle records, then transpose each group to four pixel lanes. Preserve
(a*w0+b*w1)+c*w2 and final reciprocal multiplication independently per channel.
This replaces repeated scalar channel gathers in the scene material shader;
UV interpolation, accepted shared UV0/UV2, geometry, depth, textures and all
arithmetic remain unchanged. It applies equally to canonical and legacy scene
records and leaves ordinary GL/MSAA shading paths unchanged.

Sources: original C11 restructuring of accepted d5e79c7
[scene_gather_lerp](../../libsoftgl/src/scene_visibility.c) using its existing
[SSE4.1/WASM SIMD128 abstraction](../../libsoftgl/src/simd.h).
No wider ISA, approximation or asset change is introduced.

Prepare/build Clang22 Release with this folder, then check_quality.py --samples
0 and resident_trial.py --pairs 1 --samples 0. Four shared packs/cameras,
640×360, caller plus three helpers. Screening is provisional; promising results
require independent off/2/4 repeats, exact image/contracts, sanitizer and WASM
checks before adoption.
