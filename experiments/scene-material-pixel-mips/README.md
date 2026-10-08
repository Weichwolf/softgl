# Perspective-correct pixel footprints for coherent mip sampling

Status: held private follow-up. Independent three-block off frame-time changes
BMW/T-80/Sponza/Bistro: +0.90/-2.40/-3.14/-8.42%. All 36 views preserve
exact depth/stencil/sample planes. Worst per-view mean RGB error is
0.070/0.199/3.505/3.877 of 255; discrete LOD floor sharpness patches remain
visible in Sponza/Bistro. Initial screen was noisy and is not the gain claim.
384 independent finite-difference gradient checks and 216 paired rendering
checks pass (192 exact base/reset/mask/legacy/MSAA controls, six enabled
rollbacks). Native all-mode confirmation and sanitizer/WASM gates are still
outstanding; no production change or deployment. Receipts are in validation/.

The centroid LOD trial shows gains but visibly changes floor sharpness at
triangle boundaries. This variant derives UV/W plane gradients once per final
visible canonical record and evaluates perspective quotient derivatives for
all four actual pixel positions in SIMD128. UV0/UV2 share normalized gradients;
unit dimensions select separate normal/color LODs. A packet uses its lowest
requested LOD to retain coherent sampling. Magnification, masked materials,
ordinary GL, MSAA and transparent/cube paths remain as accepted.

Keep the 320-byte surface: explicit-mode canonical records store six gradients
in otherwise unused UV1.w/UV3.w slots. Color alpha, UV0/UV2 and cube UV3.xyz
remain intact; a flag in existing padding says all six gradients are valid.
Defaults/legacy preserve their complete attributes and cannot consume this
payload. Texture upload derives mip pyramids from unchanged level-zero assets
outside measured frames. Color uses nearest minification and normals linear;
this remains a sampling approximation, with discrete LOD transitions and packet
coherence that can affect detail. No geometry/depth/coverage reduction is used.

Sources: original C11 follow-up to
[centroid mip sampling](../scene-material-mip-sampling/README.md), which links
locally inspected pinned GLimpSW Shading.cpp/CalcMipLevel/SampleLevel; accepted
[scene shader](../../libsoftgl/src/scene_visibility.c) and
[canonical attributes](../../libsoftgl/src/geometry.inc).
All native work: 640×360, four identical prepared packs/cameras and four total
threads. resident_trial.py uses 60 warm frames (two complete 30-frame camera
orbits) before 30 measured frames. check_quality.py reports exact coverage and
RGB differences. Promising results require enabled-mode gradient/sampling/
rollback/default-reset contracts, independent off/2/4 repeats, sanitizer and
actual WASM heap/browser checks below 4 GiB before adoption.
