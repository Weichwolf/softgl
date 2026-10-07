# Admit oversized full-vertex draws by their actual packed payload

Status: accepted; native gain, full correctness, sanitizers and live WASM validated.

Before this change, `sg_workers_submit_stream` tested producer full-vertex capacities
against the 2 MiB immutable queue budget before trying the compact DOT3 queue.
An oversized producer allocation therefore always takes the single packed-draw
stream, even when the queue's own required packed payload fits its unchanged
budget. Following geometry then cannot use the ordered queue's cooperative
vertex stage and older raster work is finished before a new stream is started.

The candidate tries the existing queue first only when complete DOT3 chains,
nonnegative prepared counts and at least 1024 vertices guarantee its packed
route. The queue retains all its original payload checks, four slots and
aggregate 2 MiB budget; rejected draws use the original packed/serial fallback.
Other formats/raw draws retain their original gate, avoiding impossible raw
queue reservations. No geometry, material, shading formula or precision change
is proposed. SIMD remains SSE4.1 / WASM128, caller plus three helpers.

This differs from earlier [packed oversized draws](../packed-oversized-draws/README.md)
(single-job streams), [DOT3 compact queue](../dot3-compact-queue/README.md)
(storage within already-admitted draws) and [packed capacity](../ordered-packed-capacity/README.md)
(reservation rounding). It changes admission and cross-draw cooperation.

Sources: own [workers.c](../../libsoftgl/src/workers.c) and
[workers_queue_raw.inc](../../libsoftgl/src/workers_queue_raw.inc), reviewed on
accepted [1ff3c2c](https://github.com/Weichwolf/softgl/commit/1ff3c2c2c12113d0d37fe53116b823b60cba52cf),
plus the [fresh CPU attribution](../native-cpu-profiles/current-1ff/broadcast-callers.txt).
No external code copied. `prepare.py --baseline <commit>` freezes the selected
accepted source and writes only ignored build/ files. Build with native Clang 22
and test 640x360 AB/BA off/2x/4x before considering production adoption.

The Clang 22 off-mode screening uses one quiet AB/BA block per scene with
15 warmup and 30 measured complete frames. Changes: BMW -0.22% (mixed/no
gain claim), T-80 -9.96%, Sponza -15.21%, Bistro -5.04%. All four final
angle-160 RGB images are byte-identical. [Screen](screen.json) and
[receipt](screen-receipt.json) bind the frozen source, binaries, common packs
and cameras. These results do not establish adoption or a current Mesa win.
The complete off/2x/4x validation and production checks follow below.

## Native validation on 4c31bde

144 quiet accepted measurements, six per variant/scene/mode, three balanced
AB/BA blocks. Twelve measurements in three disturbed blocks were rejected;
every attempt is retained in [receipt](receipt.json). All twelve final
angle-160 RGB images are byte-identical. Negative frame-time change means
faster. BMW is mixed within 0.25%; no BMW gain is claimed.

| Scene | Off | 2x | 4x |
| --- | ---: | ---: | ---: |
| bmw | -0.24% | -0.03% | 0.11% |
| t80 | -10.32% | -6.58% | -6.50% |
| sponza | -15.20% | -12.20% | -11.98% |
| bistro | -4.97% | -3.71% | -3.52% |

[Timings](timings.json) report complete frames at 640x360, caller plus three
helpers, the shared packs/cameras, 15 warmup and 30 rotating measured frames.
All 747 production native CTests passed in 45.77 s with unchanged tolerances.
The new 99-state large-queue contract uses 640x360 and 1/3/8 helpers with
off/2x/4x. A trailing degenerate triangle referencing vertex 45000 forces a
full synchronous control without changing any rendered primitive or shader.
The queued arm explicitly verifies queue admission. Whole color/depth/stencil
and all individual sample planes, queries, texture/VBO changes, slot reuse,
source-UV lifetime, blending, fog, alpha/stencil, readback/drains and genuinely
over-budget fallback are compared. No geometry/precision/material reduction.

ASan/UBSan (Clang 19, diagnostics only) passed the new 99-state contract,
the 135-state ordered queue oracle, and the 279-frame worker attribute oracle.
Performance uses Clang 22.1.8. [Checks](checks.json) bind source/binary/log hashes.
WASM SIMD128/pthread build and all [twelve live Chromium checks](browser-checks.json)
passed without page errors; served module hashes and isolation headers match.
The original 2 MiB queue budget and 4 GiB WASM memory maximum remain.
No WASM timing gain is claimed. A fresh native three-renderer comparison is
required before claiming a current advantage over Mesa; GLimpSW remains the
further target with its different shader pipeline.
