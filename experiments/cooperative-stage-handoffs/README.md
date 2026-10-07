# 2026-10-05: cooperative stage handoffs, not retained

An isolated queue trial lets an exclusive raster-bin owner return its bin
between blocks of 128 triangles when the caller publishes a geometry stage.
The next owner continues from a cursor stored in existing bin padding. The
pending bit remains set until the complete bin finishes, preserving draw order
and disjoint framebuffer ownership. All three helpers and the caller can work;
there is no fifth coordinator. Decode tags reset at each ownership interval.

The accepted module and trial each match 100 model hashes and four raw frames
per model. Preliminary WASM renderer/queue/triangle gates pass 51/135/54.
A separate forced-continuation stress test yields after every triangle and
records 6,776,698 resumptions on each of native, WASM and ASan/UBSan builds.
All 135 eager/queued state and sample-plane hashes remain exact, covering
0/2/4 samples and 1/3/8 helpers. All twenty renderer translation units are
rebuilt for the changed internal layout.

Untimed stage instrumentation confirms the intended scheduling change. The
BMW averages 31.79 yields and resumptions per frame. Summed vertex-stage wall
durations fall from 3.145 to 2.388 ms/frame, and triangle-stage durations from
2.236 to 1.489 ms/frame. Helper joins rise from 22.13 to 25.78 across nine
vertex stages and from 13.05 to 20.05 across seven triangle stages. Both
instrumented modules rasterize exactly 146,178.70 triangle-bin references
per frame in this sequence. These perturbed stage durations include waits
and preemption and are not CPU busy-time or acceptance FPS.

The initial uninstrumented rendering benchmark is slower in five of six BMW
pairs. Two independent three-pair audits change BMW frame time by +0.354%
and +0.315%; T80 changes by +0.836% and -1.146%, outside the changed queue
path. All quiet guards pass on attempt one: 640x360, 4x MSAA, three helpers
plus caller, 80 warmup/100 measured frames, two AB/BA crossover rounds and
resolve/readback each frame. No concurrent builds or profiles run. Shorter
geometry stages do not establish a whole-frame gain in that measurement. The
initial decision was rejection; after the user's later report of concurrent
system load, these six pairs are historical diagnostics, not acceptance data.
Cache/register effects remain hypotheses, not measured explanations. Other
MSAA timing modes and full retention gates are not rerun for this rejection.

Evidence: build/diagnostics/{stage-handoffs,queue-preemptible-bins,
queue-preemptible-handoffs,queue-preemptible-stress}/, frozen
build/controls/queue-preemptible-bins-candidate/, and guarded
build/perf/tigerlake-20261004/queue-preemptible-bins-audit-*.

Historical note migrated from the former `experiments/README.md` on
2026-10-07; committed source blob `ad2038198d7f50bc8b80c8b3cea650200c21bb9b`.
Measurements and validation claims above retain their original baselines
and scope; this documentation move adds no new experimental result.
