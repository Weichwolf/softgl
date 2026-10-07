# 2026-10-05: exact screen-coordinate reuse across stages, not retained

Two isolated architecture trials use production ca4b10d / WASM 58ecf6ef
as their control. They preserve the existing float screen coordinates and
the exact signed 16.8 quantization. Neither changes geometry, sample positions,
depth/color/texture arithmetic or tolerances.

| Architecture | BMW paired time, audits | T80 paired time, audits | Decision |
| --- | --- | --- | --- |
| Pass six existing fixed coordinates in one stack record | +2.720% / +1.177% | +2.110% / -1.054% | Rejected |
| Cache fixed XY in packed vertex spare lanes | -0.650% / -1.666% / +0.327% | +0.631% / +0.539% / -0.493% | Held; not published |

The emitted production WASM confirms duplicate coordinate conversion: the
common rasterizer already has fixed XY, while both retained MSAA roots
convert the same coordinates again. Passing a 24-byte record removes six
scalar conversion sites from each MSAA root. The common root also changes
its conversion packing. The actual Chromium/TurboFan 4x root shrinks from
121,448 to 119,504 bytes, with an unchanged 1,504-byte stack allocation.
This is static code evidence, not dynamic conversion/spill or cache-miss
counts. Both independent three-pair BMW audits are slower; four of six
pairs regress. The smaller root does not establish a performance benefit.

The second trial writes exact fixed XY into two formerly zero lanes of
the packed vertex's existing eye block. The float NDC and eye.z remain
available. No vertex-buffer stride, decode-cache size, bin stride or
retained geometry-cache budget grows. A validity field belongs to the
immutable draw layout; its bin flag consumes existing padding. Bit checks
bound finite coordinates to +/-8192 before conversion. An exceptional or
out-of-range vertex conservatively disables cache consumption for the whole
draw. Raw draws use the original path. Both common and MSAA raster roots
read integer payloads through memcpy, without float arithmetic on their bits.

Five of the first six BMW pairs improve, but all three pairs in an additional
independent audit are slower. T80's small initial slowdown also reverses in
that third audit. The measured implementation therefore lacks a reproducible
gain and remains private. Its emitted 4x root is 121,704 bytes with a
1,488-byte stack allocation. Static register/stack changes are not an
explanation of the timing result.

All fifteen guarded AB/BA pairs pass their quiet-host guard on attempt one:
80 warmup frames, 100 measured frames, two crossover rounds per pair,
640x360, 4x MSAA, three helpers plus caller, resolve/readback each frame,
and identical model assets. No builds or profiles run during these timings.
Fresh preliminary renderer/queue/triangle contracts pass 51/135/54 each.
Each candidate matches 100 hashes and four raw frames per model against
58ecf6ef. The first trial's independent raster oracle passes 8,192 frames /
5,431,296 sample masks and 128 state/scissor cases on native/WASM/ASan.
The packed trial tests cached and ordinary paths in 16,384 frames /
10,862,592 sample masks and 256 state/scissor cases on all three platforms.
Its packing oracle additionally checks 2,097,152 arbitrary/boundary IEEE
coordinate pairs each in strict/fast native and WASM builds: 626,565 exact
cached pairs and 1,470,587 exceptional/range fallbacks per run. The private
packed-layout fixture checks the new integer payload against a double-based
reference while preserving the exact checks for all existing vertex data.
Full retention gates and other MSAA timing modes are not rerun because
neither implementation is retained. An initial missing worker declaration
in the private packed trial is fixed; its failed build log remains saved.

A fresh logical diagnostic of accepted 58ecf6ef finds 23 BMW geometry-replay
jobs/frame: 46,103 input vertices, 44,120.91 referenced and 1,982.09
unreferenced (4.30%). T80 has zero such replay jobs in this sequence.
These counts describe the current compacted bins, not the rejected tiny
lattice trial. The diagnostic retains 100 hashes and four byte-identical
frames per model. It is not timed.

Separate sequential profiles of the byte-identical accepted module cover
300 warmed frames per model with three active helpers plus caller. BMW
aggregate self samples include 20.054 seconds in the 4x raster root,
3.352 in cube sampling, 2.318 in multisample writes and 1.281 in vertex
processing. T80's raster root accounts for 5.991 seconds. These samples
include inlining, waits and preemption; they are neither CPU busy-time nor
acceptance FPS. An earlier overlapping diagnostic is preserved and excluded.
The next architecture work should examine stage handoffs and raster work
reuse; unreferenced-vertex skipping alone targets a small part of the work.

A separate untimed diagnostic confirms that the held packed-coordinate cache
is actually consumed by the models. Mean cached/total common raster calls
are 122,160.46/146,178.70 for BMW and 18,275.69/28,100.62 for T80;
cached/total MSAA calls after HZ are 62,615.71/75,477.34 and
10,464.69/17,446.07 respectively. All 100 model hashes and four raw frames
remain exact against accepted 58ecf6ef. Instrumentation and queue scheduling
affect these logical workload counts; they are not native instruction counts
or performance measurements. The lack of a reproducible gain is not explained
by the cache always falling back.

Evidence: build/diagnostics/{msaa-fixed-reuse,packed-screen-cache,
packed-screen-cache-counts,current58-visible-counts,current58-profile}/,
frozen candidate controls,
and build/perf/tigerlake-20261004/{msaa-fixed-reuse,packed-screen-cache}-audit-*.
Production source, live module 58ecf6ef and its accepted measurements remain
unchanged.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
