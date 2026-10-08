# Parallel primitive winners and globally shared final surfaces

Status: not adopted. All 36 off views match RGB/depth/stencil/sample planes
exactly. One quiet balanced screening block regresses BMW/T-80/Sponza/Bistro
by +13.07/+17.48/+21.22/+16.59%. Sponza baseline timings vary significantly
(29.06/23.34 ms); no precise regression magnitude is claimed from this screen.
Other scenes also regress clearly, so no adoption/full validation was pursued.
Attempts and source/binary/asset hashes are preserved in screening/.

Follow-up to [serial primitive winners](../scene-primitive-winners/README.md).
Keep stable primitive IDs throughout rasterization. After the raster join,
workers scan disjoint 512-pixel spans and atomically claim one dense surface
index per final visible primitive. The claiming worker computes metadata;
other pixels share that index. All workers join before attributes/shading read
metadata. Rare lost CAS reservations remain unused and attributes skip them.
Surfaces are preallocated to at most framebuffer pixel count (640×360), so
reservation count cannot overflow; cached record capacities share the accepted
128 MiB triangle budget. Atomic per-task maps retain the 32 MiB cap. Existing
pure per-vertex attribute caching and clipped interpolation remain unchanged.

This removes the serial metadata preparation that regressed the first trial.
It introduces no new geometry, assets, precision, sampling or wider ISA.
Mode remains explicitly opt-in for canonical quantized off-MSAA scenes;
ordinary/MSAA paths retain the accepted implementation. Allocation or unsupported
producer failure restores the scene and asks the caller to replay.

Sources: original C11 implementation based on accepted d5e79c7
[scene visibility](../../libsoftgl/src/scene_visibility.c),
[geometry](../../libsoftgl/src/geometry.inc), and the serial experiment above.
Prepare/build using this folder with Clang22 Release, check_quality.py --samples
0 and resident_trial.py --pairs 1 --samples 0. Both variants keep accepted UV
reuse and render the same four packs/cameras at 640×360 with four total threads.
Screening is not adoption; enabled-mode rollback, independent all-mode repeats,
sanitizers and WASM checks remain required for a promising candidate.
