# Direct opaque small-triangle MSAA commits

Status: held after native screening; not adopted. Frozen baseline `47572f4`;
production remains unchanged.

The accepted small-triangle kernel constructs a temporary four-pixel packet
even when the captured material has no alpha test. It copies positions, two
64-bit edges, coverage and four depths into that packet, then the capture
helper reads it back and commits the actual four samples. Opaque draws do
not need texture/alpha batching during this visibility stage.

Instantiate the existing exact eight-pixel kernel in two constant modes.
Opaque mode caches its triangle record on the first passing pixel, reuses
the already computed original 16.8 edge coefficients, and immediately commits
the real per-sample depth/identity/point using the accepted uniform metadata
writer. Update Hi-Z only after committed coverage. The compiler can remove
the temporary pixel packet and alpha callback in that constant mode.
Cutouts retain the existing four-pixel SIMD texture/alpha capture; large
triangles retain the general kernel. Keep every rotated sample, top-left
rule, float expression/clamp, selected shading point and primitive order.

Allocation failure still marks the scene failed and must restore all sample
planes after all workers join. A worker with a valid cached record may finish
its private stripe before observing another bin's failure; no partial result
may escape the existing joined rollback. Check exact independent original
216+576 sample-plane fixtures, rollback/ordinary replay, all four model views,
resident reuse, sanitizer and actual WASM dispatch before adoption. Audit-only
counters distinguish opaque triangles/pixels from cutout fallback; timed
archives contain no counters. The original packet-callback counter naturally
excludes the new direct opaque path.

An optional `--extent 16` variant tests more admitted small triangles under
the original <=16 integer-range proof. Its measurements and quality must be
separate; the default remains eight and no larger boxes are admitted yet.
No wider SIMD, asset reduction or approximation is introduced. Extra code
may hurt instruction locality or unrelated modes; require all-mode controls
and repeated total-frame AB/BA before accepting a gain.

Sources: own review of [accepted exact small triangles](../scene-msaa-small-triangles/README.md),
[uniform metadata](../scene-msaa-uniform-metadata/README.md), and
[current capture/rollback](../../libsoftgl/src/scene_visibility.c).
This removes a local intermediate representation; it is not copied from
another renderer and has no established FPS gain yet.

Native validation passes the original 216+576 independent sample-plane hashes,
162 position pairs, Hi-Z/rollback checks and 36 four-sample model views exactly.
Audit-only fixtures execute 414 opaque triangles, 1,917 direct pixels and 414
cutout triangles; these are fixture counts, not asset statistics. Formatting
the initial generator produced a clean-v2 source tree with byte-identical
native library and resident/quality binaries.

One quiet AB/BA screen, 24 accepted/zero rejected runs, 640×360/four threads:

| Scene | OFF time change | 2× time change | 4× time change |
| --- | ---: | ---: | ---: |
| T-80 | +5.00% | −1.13% | −0.70% |
| Bistro | −1.23% | +1.80% | −1.55% |

Bistro 4× regresses in one direction and improves in the reverse direction.
Its weak average does not justify adoption or establish a speedup. The T-80
OFF change is a control cost, not a gain from an MSAA-only algorithm.
Repeated confirmation, OFF/2× asset quality, resident reuse, sanitizer and
actual WASM gates were not run. The optional extent-16 variant is untested.
Receipts, raw attempts, frozen source patch and reproduction hashes:
[clean-v2 validation](validation/clean-v2/metadata.json).
