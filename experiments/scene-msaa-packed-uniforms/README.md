# Compact metadata for uniform four-sample winners

Status: three exact native layouts rejected for adoption; no accepted gain.

A full four-sample winner currently writes one entry in several sample-major
arrays whose live entries are separated by four slots. Try one pixel-major
64-bit entry containing the original triangle id, material, sample point and
full-pixel flag. Keep all four physical depth calculations, comparisons and
stores exactly as before. A later partial overwrite expands the packed entry
into the original four sample records before updating them.

V2 materializes final uniform metadata during grouping; the existing shader
then reads the original arrays. V3 retains packed metadata for shader reads
and materializes only the material id needed by the existing pixel-list pass.
Each variant has a separate frozen source/recipe. The extra buffer is eight
bytes per framebuffer pixel (1,843,200 bytes at 640×360), with no new fixed
resolution requirement. The layout uses ordinary C11 uint64 values, not wider
SIMD. Geometry, materials, alpha, sample coverage, depths and final image target
exact parent equality; the accepted parent's existing intrapixel RGB sharing
is unchanged.

This is an own storage proposal based on the accepted
[uniform sample metadata](../scene-msaa-uniform-metadata/README.md),
[current capture/group/shader implementation](../../libsoftgl/src/scene_visibility.c)
and the measured overhead of [pending-depth packets](../scene-msaa-packet-depth-bounds/README.md).
It tests metadata locality independently of interval classification or delayed
depth reconstruction.

Require unchanged partial, alpha, material/reset and failure rollback contracts,
exact original-model planes, actual native SIMD128 ISA and quiet all-four native
timings. Useful screens need repeated 640×360 off/2×/4× AB/BA, sanitizer and
actual WASM/browser gates before adoption, commit/push and live refresh.

V4 instead reuses winner slots 0–1 of each full pixel for the id and packed
material/sample-point word. It keeps the existing uniform flag through final
grouping so the shader reads the point from that word. Partial overwrites save
the packed values first, then expand all four original records. There is no
new buffer or clearing pass in V4, and no floating-point operation changes.

All three measured variants pass the unchanged material, canonical-position,
mixed-MSAA and worker/rollback contracts against their actual frozen native
libraries. Their libraries and timed drivers pass disassembly audits for
SIMD128 only. Each screen uses both original-model drivers resident, four
total threads, 60 warm frames and 30 rotating measured frames at 640×360.

The initial one-block 4× AB/BA screens give these frame-time changes; negative
means faster. They are screening evidence, not accepted improvements:

| Variant | Bistro | Sponza | BMW | T-80 |
| --- | ---: | ---: | ---: | ---: |
| V2 materialize | −2.58% | +27.26% | +2.60% | −3.67% |
| V3 retained | +1.15% | +3.84% | +2.79% | +5.71% |
| V4 in place | −0.04% | −5.24% | +0.06% | −0.56% |

V4's initial Sponza improvement does not survive the required three-block
AB/BA repeat. The repeat keeps six timings per variant and condition, accepts
only requests with foreign CPU use at most 0.1 core, and measures all modes:

| MSAA | Bistro | Sponza | BMW | T-80 |
| --- | ---: | ---: | ---: | ---: |
| Off | +1.38% | +3.41% | −0.47% | +2.86% |
| 2× | −0.51% | +1.97% | +0.77% | −0.07% |
| 4× | +0.37% | +0.71% | +1.21% | −1.11% |

All five final endpoint-plane hashes match the accepted parent in every
accepted timing condition. No full 108-view sweep, sanitizer/WASM adoption
gate or browser deployment of these variants is claimed: the native speed
gate already fails. The first V1 generator stopped on an ambiguous destructor
match before a valid source manifest existed; it was never timed and is not
an archived measured variant.

`paired_counters.py` also runs the real Sponza V2 and control drivers under
`perf stat` with both assets resident, disabled-counter warmups, then balanced
AB/BA requests. All three hardware events run at 100% for the recorded enabled
scope. V2 uses +2.41% cycles, +1.39% instructions and +3.02% generic cache
misses; the two diagnostic requests average 33.78 ms versus 32.86 ms for the
control. This includes request warmup and worker restart, so it does not
replace the FPS gate or identify a memory-bandwidth limit. Generic
`cache-misses` is not a measured DRAM counter, and user-only software events
do not establish the absence of scheduling. The earlier +27.26% Sponza screen
is retained without claiming a proven cause for the scope-dependent timing.

`validation/` retains source reconstruction, actual build and ISA identities,
raw accepted/rejected timing records, independent fixture recipes/results and
raw counter reports. Run `python3 experiments/scene-msaa-packed-uniforms/verify.py`
to check the bindings. No experiment binary is committed.
