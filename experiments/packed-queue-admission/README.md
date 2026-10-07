# Admit oversized full-vertex draws by their actual packed payload

Status: prepared next architecture trial; not built or timed yet.

`sg_workers_submit_stream` currently tests producer full-vertex capacities
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
