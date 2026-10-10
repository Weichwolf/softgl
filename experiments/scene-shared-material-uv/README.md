# Canonical material UV interpolation reuse

Status: adopted; independent all-mode native confirmation and exact image,
ordinary/canonical, sanitizer, resident and live WASM browser gates pass.

The accepted 0bd845b scene shader gathers/interpolates UV0 and UV2 separately
for the normal map and albedo. Canonical attribute programs are required to
preserve identical raw UV0/UV2; the late attribute validator checks this and
rolls back violations. Clipped canonical triangles also explicitly assign the
same clipped UV to both fields. This original C11 change retains the two
interpolated SIMD128 vectors from a nonconstant unit0 for unit2, only when all
four packet winners come from the canonical producer. Legacy/mixed packets and
constant normal-map textures keep the existing interpolation path. Each texture
still uses its own sampler, dimensions, filtering and wrap modes. No asset,
precision, sample count, shading frequency or image-caching change is intended.

Both benchmark variants enable the accepted 1/16-pixel visibility and fused
transparent path; this experiment compares only UV reuse against the current
renderer, not against older 16.8 output. No additional image differences are
intended. The tradeoff is extra packet checks and longer vector lifetimes across
normal texture sampling, so removing operations need not improve frame time.

Sources: accepted [material shader](../../libsoftgl/src/scene_visibility.c),
[canonical attribute validation](../../libsoftgl/src/geometry.inc),
[quantized visibility](../scene-quantized-visibility/README.md) at 0bd845b.
The older [shared-packet UV trial](https://github.com/Weichwolf/softgl/blob/262f573c0cc0b664cb1be5dd4f0e9533bea5037b/experiments/shared-packet-uv/README.md) did not repay
its generic raster-path checks; this uses the different scene material resolver
and its explicit canonical UV contract, rather than retrying that old patch.
No upstream code is copied.

Prepare with prepare.py, build this folder with Clang22 Release, then run
check_quality.py --samples 0 and resident_trial.py --pairs 1 --samples 0.
All four shared packs/cameras use 640×360 and caller plus three helpers.
Further native/MSAA/quality/sanitizer/WASM/adoption gates depend on evidence.

[Initial screen](screening/README.md), [independent confirmation and all gates](validation/README.md).
Off frame times fall 1.89/3.14/3.69/2.75% for BMW/T-80/Sponza/Bistro.
MSAA retains its existing renderer; complete-binary controls stay within ±1.1%.
All 108 current-renderer asset pairs preserve every RGB/depth/stencil/sample byte.
755 native tests pass; live SIMD128/WASM is updated.
