# SIMD128 perspective division and clipping codes

Status: rejected after exact native quality and initial full-frame screening.

The accepted affine/symmetric-projection position frontend transforms four
vertices together, then performs perspective division, viewport mapping, finite
checks and six clipping tests separately for each vertex. This trial keeps
those operations in SIMD128 until clip and viewport vectors are transposed to
the existing aligned position storage. Zero W keeps the original 1e-20 replacement,
operation grouping and current-frame behavior. No assets, draw order or shading
are changed; unsupported matrices retain their original scalar path.

Source: libsoftgl `geometry.inc` at d481c9033584c9bae1b833326650ef188fb588d0;
[accepted position frontend](../scene-position-visibility/README.md).
The trial follows rejected [setup storage layouts](../scene-prepared-primitives/README.md).
All measurements use the four shared assets at 640×360. Exact image/depth checks
must establish actual effects before any speed claim or adoption.

[Screening and contract evidence](screening/README.md): BMW/T-80/Sponza/Bistro
+0.30/-0.04/+3.04/+2.26% frame time; 36 exact off images. The additional
`simd_position_contract.c` fixture verifies uneven tails, unused zero-W gaps,
and non-finite rollback with 1/3/8 helpers and off/2×/4×. It passed 162 paired
frames and 12 rollback checks. The root renderer remains unchanged.
