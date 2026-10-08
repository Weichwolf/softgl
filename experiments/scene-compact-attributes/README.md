# Compact winner records with shared canonical attributes

Status: not adopted after a combined native screen failed to retain an MSAA
gain. Initial independent native controls pass; all-model/sanitizer/actual-WASM
gates were not pursued without a performance case.

Own adaptation of visibility-buffer data sharing: reduce each exact triangle
winner record from 320 to 80 bytes. Keep inverse-W, 64-bit edges, material and
primitive identity unchanged. Canonical unclipped winners reference the existing
per-vertex attribute cache rather than copying three colors and twelve UV
vectors into every triangle record. Resolve those attribute references once
per shading packet, then keep the original interpolation operation order.

Clipped winners still interpolate attributes exactly as before into a separate
240-byte exception payload. Ordinary captured triangles also retain complete
attribute payloads. Charge both record and payload allocations to the existing
128 MiB budget, restore on failure, reset payload cursors on every begin and
free them on context destruction. Native record stride is verified as 80 bytes; the same static assertion will
check actual WASM when built;
no wider SIMD, compressed depth, approximated material or frame reuse.

Expected tradeoff, not measured gain: less record traffic and fewer duplicated
attribute writes versus extra pointer resolution and less contiguous vertex
loads during shading. Initial checks must cover original capture, canonical
attributes, clipping, alpha, mixed materials, allocation/attribute rollback,
resident frame/mode reuse and all four models. Require exact independent native
and actual WASM sample-plane results before repeated FPS/production adoption.

Sources: our [existing late attributes](../../libsoftgl/src/geometry.inc) and
[winner records/shading](../../libsoftgl/src/scene_visibility.c); Burns and Hunt,
[The Visibility Buffer: A Cache-Friendly Approach to Deferred Shading, JCGT 2013](https://jcgt.org/published/0002/02/04/).
Our renderer already stores primitive visibility. This experiment specifically
removes duplicated attributes from its triangle records; it is not a claim to
have newly implemented the entire paper or reproduced its GPU gains.

`prepare.py --baseline 350eb23 --output-root <new-root>` freezes an independent
baseline and candidate. Frozen roots are never overwritten. Keep the first
trial separate from MSAA metadata compression to measure its own effect.

Initial Clang22 SIMD128 native controls: 216 original and 576 small/boundary/
clipped/alpha/overlap full-plane hashes match independent `350eb23` exactly.
Both binaries pass 162 canonical legacy/deferred comparisons, 486 captured
mesh commands and six budget rollbacks. Ordinary-draw/MSAA admission/rollback
controls pass. ISA audit reports 66,099 XMM references and no AVX/YMM/ZMM.
This does not yet prove all-model RGB correctness, actual WASM or a speedup.
[Validation](validation/) preserves sources, logs and source/library digests.

First isolated Bistro screen against `350eb23`: 2× -5.58%, 4× -5.97% time.
The apparent OFF -12.06% is driven by one 43.16 ms baseline versus the later
34.24 ms baseline and is excluded as evidence of a gain. These are screens,
not repeated confirmed improvements.

Combined with accepted four-sample compression (`7d67a8e`), the independent
216+576 exact hashes, 162 legacy comparisons and HZ/rollback controls pass.
The balanced Bistro screen gives OFF 34.767498 → 34.090974 ms (-1.95%),
2× 50.538345 → 50.709599 ms (+0.34%), 4× 60.117964 → 60.218187 ms (+0.17%).
All final angle-160 RGB images are byte-identical. The monitor rejects entire
blocks with foreign CPU activity; rejected attempts remain in the receipt.
Since the MSAA gain is not retained, do not promote this version or claim its
320→80-byte stride reduction predicts FPS. Immutable sources and complete
screen records remain under `validation/isolated-screen` and
`validation/combined-v2`. Historical `softgl-compact-surfaces-*` logs in the
original archive belong to that older experiment and are explicitly excluded
from proof for this candidate.
