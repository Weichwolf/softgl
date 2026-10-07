# Exact compact DOT3 draw queue (2026-10-04)

Complete recognized DOT3 chains with at least 1,024 prepared vertices now
store exact NDC, front color, eye.z and the UV sets consumed by nonconstant
samplers in the ordered draw queue. This is 48–96 bytes per vertex instead
of 160; all float components of each required UV set are retained. Each
rendering thread decodes through the existing collision-pinned 64-entry
cache, with three spill vertices. Its 10.72KiB contains values, no pointers
to retired storage. Small and other-state draws retain raw ownership swaps.
The four queue slots share the existing 2MiB capacity budget across both
raw and packed storage, including idle slots; old storage is released before
resizing. Allocation failure returns to the existing ordered fallback.
This changes storage and available overlap, without quantization or any
claim about measured hardware cache misses. The T80 single-texture path
continues to use its existing packed stream.

Frozen f72016fd versus 4b5b002c improves BMW in all six quiet crossover
pairs in each sample mode. Independent three-pair audit medians are
4x -2.83/-3.13%, 2x -3.37/-2.91%, and off -6.22/-5.60% frame time.
T80 remains mixed: 4x +0.44/-1.91%, 2x +1.98/+0.24%, and off
+2.35/-0.61%; no repeatable relevant regression is established. All eighteen
complete AB/BA pairs pass the unchanged host-activity guard on attempt one,
with 640x360, three workers plus caller, 80 warm-up and 100 timed frames
per arm, resolve/readback every frame. Four-sample medians are BMW
24.06/24.02 FPS and T80 61.68/62.45 FPS. The BMW >30 FPS goal remains open.
The two-sample lit icosphere is mixed (-0.04/+9.44%) with large individual
variation; no stable gain is claimed for this lower-priority scene.

The existing ordered-queue contract now alternates raw and packed chains,
all three recognized DOT3 kinds, constant/nonconstant textures, source
reuse, different draw sizes and clipped vertices. All 135 eager/queued
whole-frame and sample-plane hashes also match the prior raw-only module,
across off/2x/4x and 1/3/8 workers. Full validation includes 737 native
checks, sixteen ASan/UBSan/leak contracts, 240 Mesa and exact baseline
images, 234 exact images in each MSAA mode, 100 model hashes and four raw
frames per model/mode, 51 WASM plus eighteen default-pool contracts, strict
numeric and additive writer oracles, and both Chromium/Firefox previews.
Canonical JS/WASM match the measured frozen module. Evidence/publication:
build/diagnostics/queue-packed-dot3/validation.json and publication-proof.json;
timings: build/perf/tigerlake-20261004/queue-packed-dot3*-summary.json.

An outlined queue-submission follow-up is prepared separately under
build/diagnostics/queue-packed-dot3-outlined. It has not been compiled,
measured or integrated; it is not part of this retained improvement.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
