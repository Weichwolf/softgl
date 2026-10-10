# Commit a complete MSAA packet before refreshing hierarchical depth

Status: both exact native packet schedules rejected for adoption; no useful
priority-scene screen gain. The production engine is unchanged.

The accepted visibility capture commits each pixel and immediately records it
in the 4×4 depth hierarchy. Reducing the cell's current maximum can rescan all
64 physical samples. Other pixels from the same packet may reduce that maximum
again, causing another scan before the packet is complete.

Store every accepted pixel in a packet first, then run the existing hierarchy
callbacks for those pixels. The first required scan sees all final packet
depths. Later callbacks can keep that real maximum. There is no visibility
query between these two loops, and a stripe owns its depth cells. All original
sample-depth arithmetic, alpha decisions, coverage, metadata writes and
rollback behavior stay in place. After the callbacks the hierarchy still
stores a real maximum and an index that selects it; no dirty or approximate
bound is introduced. No extra allocation or SIMD width is required.

The first variant changes the specialized small/rebased 4× capture only. An
independent second variant also changes the ordinary 2×/4× capture. Both start
from accepted engine revision `52aff7b`, independently of rejected compact
metadata and pending-depth trials.

This is an own scheduling proposal based on
[the capture loops](../../libsoftgl/src/scene_visibility.c),
[the current maximum-sample hierarchy](../../libsoftgl/src/raster_hz.h),
[its independent correctness fixture](../../tests/hierarchical_depth.c) and
[the failed pending-depth layouts](../scene-msaa-packet-depth-bounds/README.md).
No external algorithm or unverified performance estimate is claimed.

Require the unchanged material, sample, position and worker contracts, the
unchanged hierarchical-depth fixture against the actual frozen library, and
an actual SIMD128 ISA audit before a native screen. A useful screen needs
repeated quiet 640×360 off/2×/4× AB/BA across all four original scenes and
exact original-model planes. Sanitizer, WASM and live-browser gates precede
adoption, commit/push and deployment.

Both measured libraries pass all four unchanged native contract families:
material/sample sharing, canonical positions, mixed alpha/MSAA/admission and
serial/worker coverage with rollback. Their actual libraries and timed
drivers pass the no-AVX SIMD128 disassembly gate. The unchanged hierarchical
depth fixture also passes against both libraries and the accepted control:
each covers 131,072 tracked writes, 1,048,576 numerical bounds and 1,536 exact
hierarchy-on/off frames and sample queries for each of 2× and 4× samples.

The first private fixture invocation mistakenly used renderer fast-arithmetic
flags for the independent numerical oracle. Both candidate and unchanged
control failed the same numerical assertion. The corrected fixture invocation
matches `tests/CMakeLists.txt`: `-O2 -fno-fast-math -ffp-contract=off`, linking
the original measured fast-arithmetic libraries. Both failed receipts and
recipes are retained. No fixture source or image tolerance was changed.

One-block screens use four total threads, 60 warm frames, 30 rotating measured
frames, 640×360, original packs/cameras, both drivers resident and balanced
AB/BA. A block exceeding 0.1 foreign CPU cores is rejected in full. Negative
frame-time changes mean faster; these are not accepted FPS gains:

| Variant / samples | Bistro | Sponza | BMW | T-80 |
| --- | ---: | ---: | ---: | ---: |
| V1 small only, 4× | −0.03% | −0.62% | +0.03% | −1.69% |
| V2 all packets, 2× | −0.73% | +21.94% | +1.01% | +1.14% |
| V2 all packets, 4× | −0.88% | +0.55% | −0.36% | −0.52% |

V1's first Sponza block was rejected for foreign load; its two slow candidate
requests remain in the raw record. V2's +21.94% Sponza 2× block passes the
software load gate and is retained without attributing the full slowdown to
the algorithm or dismissing it as noise. Bistro's sub-percent aggregate
includes baseline drift and establishes no useful gain. Both variants preserve
all five endpoint-plane hashes in every accepted condition.

No three-block repeat, 108-model-view sweep, sanitizer, actual WASM candidate
test or browser adoption is claimed after these screens. Completing a packet
before a refresh is a valid exact schedule, but this implementation does not
demonstrate enough total-frame savings to ship.

Fresh CPU profiles of the actual unchanged parent are enabled after import
and a disabled-profile warmup, then include 120 rotating frames, worker
restart and final hashes. Both use user-only `cycles` inherited by the actual
workers, with zero lost samples. BMW's small/rebased kernels account for
10.38%/23.38% of self-cycle samples, plus 9.04% material resolve and separate
cube calls. Bistro has 10.36%/16.79% in those kernels and 22.64% in material
resolve. These are sampled CPU shares, not joined wall-time costs or a proof
that all of that work can be removed. They guide the independent
[shared-refresh trial](../scene-msaa-outlined-refresh/README.md).

`validation/` retains the two frozen source/build/ISA identities, raw timing
observations, actual-library contracts and both failed and corrected hierarchy
recipes/results and actual-parent CPU reports. `verify.py` reconstructs the sources and checks the evidence
bindings. No executable, texture pack or profiler binary is committed.
